; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-eabihf"

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
    #dbg_value(i32 %c106.0, !1350, !DIExpression(), !1349)
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1351
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1227

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1353
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #4, !dbg !1355
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1356
    #dbg_value(i32 %add113, !1350, !DIExpression(), !1349)
  br label %for.cond107, !dbg !1357, !llvm.loop !1358

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1360, !DIExpression(), !1361)
  call void @mayo_memset(ptr %tab, i8 0, i32 16), !dbg !1361
    #dbg_value(i32 0, !1362, !DIExpression(), !1364)
  br label %for.cond116, !dbg !1365

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1366
    #dbg_value(i32 %i115.0, !1362, !DIExpression(), !1364)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1367
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1369

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1370

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1372
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1372
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #4, !dbg !1374
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1375
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1376
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1377
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #4, !dbg !1378
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1379
  %add125 = or disjoint i32 %mul124, 1, !dbg !1380
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1381
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1382
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1383
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1383
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #4, !dbg !1384
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1385
  %add130 = or disjoint i32 %mul129, 2, !dbg !1386
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1387
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1388
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1389
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1389
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #4, !dbg !1390
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1391
  %add135 = or disjoint i32 %mul134, 3, !dbg !1392
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1393
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1394
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1395
    #dbg_value(i32 %inc138, !1362, !DIExpression(), !1364)
  br label %for.cond116, !dbg !1396, !llvm.loop !1397

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1399
    #dbg_value(i32 %c140.0, !1400, !DIExpression(), !1401)
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1402
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1370

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1404

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1407

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1409
    #dbg_value(i32 %r.0, !1410, !DIExpression(), !1409)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1411
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1404

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1413
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1415
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1416
  %rem = and i32 %r.0, 15, !dbg !1417
  %add149 = or disjoint i32 %add148, %rem, !dbg !1418
    #dbg_value(i32 %add149, !1419, !DIExpression(), !1420)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1421
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1421
  %and151 = and i64 %19, 1229782938247303441, !dbg !1422
    #dbg_value(i64 %and151, !1423, !DIExpression(), !1420)
  %shr153 = lshr i64 %19, 1, !dbg !1424
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1425
    #dbg_value(i64 %and154, !1426, !DIExpression(), !1420)
  %shr156 = lshr i64 %19, 2, !dbg !1427
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1428
    #dbg_value(i64 %and157, !1429, !DIExpression(), !1420)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1430
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1430
  %shr159 = lshr i64 %20, 3, !dbg !1431
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1432
    #dbg_value(i64 %and160, !1433, !DIExpression(), !1420)
    #dbg_value(i32 0, !1434, !DIExpression(), !1436)
  br label %for.cond161, !dbg !1437

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1438
    #dbg_value(i32 %t.0, !1434, !DIExpression(), !1436)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1439
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1441

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1442
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1444
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1444
  %conv = zext i8 %21 to i64, !dbg !1444
  %mul167 = mul i64 %and151, %conv, !dbg !1445
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1446
  %add169 = or disjoint i32 %mul168, 1, !dbg !1447
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1448
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1448
  %conv171 = zext i8 %22 to i64, !dbg !1448
  %mul172 = mul i64 %and154, %conv171, !dbg !1449
  %xor173 = xor i64 %mul167, %mul172, !dbg !1450
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1451
  %add175 = or disjoint i32 %mul174, 2, !dbg !1452
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1453
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1453
  %conv177 = zext i8 %23 to i64, !dbg !1453
  %mul178 = mul i64 %and157, %conv177, !dbg !1454
  %xor179 = xor i64 %xor173, %mul178, !dbg !1455
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1456
  %add181 = or disjoint i32 %mul180, 3, !dbg !1457
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1458
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1458
  %conv183 = zext i8 %24 to i64, !dbg !1458
  %mul184 = mul i64 %and160, %conv183, !dbg !1459
  %xor185 = xor i64 %xor179, %mul184, !dbg !1460
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1461
  %sub187 = add nsw i32 %add186, -108, !dbg !1462
  %div1882 = lshr i32 %sub187, 4, !dbg !1463
  %mul189 = mul i32 %div1882, 112, !dbg !1464
  %add190 = add i32 %mul189, %c140.0, !dbg !1465
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1466
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1467
  %rem193 = and i32 %sub192, 15, !dbg !1468
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1469
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1470
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1471
  %xor196 = xor i64 %25, %xor185, !dbg !1471
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1471
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1472
    #dbg_value(i32 %inc198, !1434, !DIExpression(), !1436)
  br label %for.cond161, !dbg !1473, !llvm.loop !1474

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1476
    #dbg_value(i32 %inc201, !1410, !DIExpression(), !1409)
  br label %for.cond144, !dbg !1477, !llvm.loop !1478

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1480
    #dbg_value(i32 %add204, !1400, !DIExpression(), !1401)
  br label %for.cond141, !dbg !1481, !llvm.loop !1482

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1484
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1484
    #dbg_value(i32 %r206.0, !1485, !DIExpression(), !1486)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1487
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1407

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1489

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1492
    #dbg_value(i32 %c211.0, !1493, !DIExpression(), !1494)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1495
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1489

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1497

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1500
    #dbg_value(i32 %i216.0, !1501, !DIExpression(), !1502)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1503
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1497

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1505
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1507
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1508
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1509
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1510
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1511
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1512
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1513
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1514
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1514
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1514
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %add.ptr230, i32 noundef %cond) #4, !dbg !1515
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1516
    #dbg_value(i32 %inc236, !1501, !DIExpression(), !1502)
  br label %for.cond217, !dbg !1517, !llvm.loop !1518

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1520
    #dbg_value(i32 %add239, !1493, !DIExpression(), !1494)
  br label %for.cond212, !dbg !1521, !llvm.loop !1522

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1524
    #dbg_value(i32 %add242, !1485, !DIExpression(), !1486)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1525
  br label %for.cond207, !dbg !1525, !llvm.loop !1526

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1528
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1529 {
entry:
    #dbg_value(ptr %a, !1532, !DIExpression(), !1533)
    #dbg_value(ptr %b, !1534, !DIExpression(), !1533)
    #dbg_value(ptr %c, !1535, !DIExpression(), !1533)
    #dbg_value(i32 10, !1536, !DIExpression(), !1533)
    #dbg_value(i32 108, !1537, !DIExpression(), !1533)
    #dbg_value(i32 1, !1538, !DIExpression(), !1533)
    #dbg_value(i32 0, !1539, !DIExpression(), !1541)
  br label %for.cond, !dbg !1542

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1543
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1532, !DIExpression(), !1533)
    #dbg_value(ptr %c.addr.0, !1535, !DIExpression(), !1533)
    #dbg_value(i32 %i.0, !1539, !DIExpression(), !1541)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1544
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !1546

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1547

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !1550
    #dbg_value(i32 poison, !1551, !DIExpression(), !1552)
    #dbg_value(ptr %c.addr.1, !1535, !DIExpression(), !1533)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !1547

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef 10, i32 noundef 1) #4, !dbg !1553
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1556
    #dbg_value(i32 1, !1551, !DIExpression(), !1552)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1557
    #dbg_value(ptr %incdec.ptr, !1535, !DIExpression(), !1533)
  br label %for.cond1, !dbg !1558, !llvm.loop !1559

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw nsw i32 %i.0, 1, !dbg !1561
    #dbg_value(i32 %inc5, !1539, !DIExpression(), !1541)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %a.addr.0, i32 10, !dbg !1562
    #dbg_value(ptr %add.ptr6, !1532, !DIExpression(), !1533)
  br label %for.cond, !dbg !1563, !llvm.loop !1564

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1566
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1567 {
entry:
    #dbg_value(ptr %a, !1570, !DIExpression(), !1571)
    #dbg_value(ptr %b, !1572, !DIExpression(), !1571)
    #dbg_value(ptr %c, !1573, !DIExpression(), !1571)
    #dbg_value(i32 108, !1574, !DIExpression(), !1571)
    #dbg_value(i32 1, !1575, !DIExpression(), !1571)
    #dbg_value(i32 0, !1576, !DIExpression(), !1578)
  br label %for.cond, !dbg !1579

for.cond:                                         ; preds = %for.body3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.body3 ], !dbg !1580
    #dbg_value(i32 %i.0, !1576, !DIExpression(), !1578)
  %exitcond = icmp ne i32 %i.0, 108, !dbg !1581
  br i1 %exitcond, label %for.body3, label %for.end13, !dbg !1583

for.body3:                                        ; preds = %for.cond
    #dbg_value(i32 poison, !1584, !DIExpression(), !1587)
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1588
  %0 = load i8, ptr %add.ptr, align 1, !dbg !1591
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %b, i32 %i.0, !dbg !1592
  %1 = load i8, ptr %add.ptr6, align 1, !dbg !1593
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1594
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !1595
  store i8 %call, ptr %add.ptr9, align 1, !dbg !1596
    #dbg_value(i32 1, !1584, !DIExpression(), !1587)
    #dbg_value(i32 poison, !1584, !DIExpression(), !1587)
  %inc12 = add nuw nsw i32 %i.0, 1, !dbg !1597
    #dbg_value(i32 %inc12, !1576, !DIExpression(), !1578)
  br label %for.cond, !dbg !1598, !llvm.loop !1599

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1601
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef nonnull %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1602 {
entry:
    #dbg_value(ptr %m, !1603, !DIExpression(), !1604)
    #dbg_value(ptr %menc, !1605, !DIExpression(), !1604)
    #dbg_value(i32 1298, !1606, !DIExpression(), !1604)
    #dbg_value(i32 0, !1607, !DIExpression(), !1604)
  br label %for.cond, !dbg !1608

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1610
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1603, !DIExpression(), !1604)
    #dbg_value(i32 %i.0, !1607, !DIExpression(), !1604)
  %exitcond = icmp ne i32 %i.0, 649, !dbg !1611
  br i1 %exitcond, label %for.body, label %if.end, !dbg !1613

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1614
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1616
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1617
  %shl = shl i8 %1, 4, !dbg !1618
  %or = or i8 %shl, %0, !dbg !1619
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1620
  store i8 %or, ptr %arrayidx, align 1, !dbg !1621
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1622
    #dbg_value(i32 %inc, !1607, !DIExpression(), !1604)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1623
    #dbg_value(ptr %add.ptr3, !1603, !DIExpression(), !1604)
  br label %for.cond, !dbg !1624, !llvm.loop !1625

if.end:                                           ; preds = %for.cond
  ret void, !dbg !1627
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1628 {
entry:
    #dbg_value(i8 %a, !1631, !DIExpression(), !1632)
    #dbg_value(i8 %b, !1633, !DIExpression(), !1632)
  %xor1 = xor i8 %a, %b, !dbg !1634
  ret i8 %xor1, !dbg !1635
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef nonnull %a, ptr noundef nonnull %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1636 {
entry:
    #dbg_value(ptr %a, !1639, !DIExpression(), !1640)
    #dbg_value(ptr %b, !1641, !DIExpression(), !1640)
    #dbg_value(i32 10, !1642, !DIExpression(), !1640)
    #dbg_value(i32 1, !1643, !DIExpression(), !1640)
    #dbg_value(i8 0, !1644, !DIExpression(), !1640)
    #dbg_value(i32 0, !1645, !DIExpression(), !1647)
  br label %for.cond, !dbg !1648

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1640
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1649
    #dbg_value(i32 %i.0, !1645, !DIExpression(), !1647)
    #dbg_value(ptr %b.addr.0, !1641, !DIExpression(), !1640)
    #dbg_value(i8 %ret.0, !1644, !DIExpression(), !1640)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !1650
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1652

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1653
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1653
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1655
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !1656
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !1657
    #dbg_value(i8 %call1, !1644, !DIExpression(), !1640)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1658
    #dbg_value(i32 %inc, !1645, !DIExpression(), !1647)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !1659
    #dbg_value(ptr %add.ptr, !1641, !DIExpression(), !1640)
  br label %for.cond, !dbg !1660, !llvm.loop !1661

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1640
  ret i8 %ret.0.lcssa, !dbg !1663
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1664 {
entry:
    #dbg_value(i8 %a, !1665, !DIExpression(), !1666)
    #dbg_value(i8 %b, !1667, !DIExpression(), !1666)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1668
  %xor1 = xor i8 %a, %0, !dbg !1669
    #dbg_value(i8 %xor1, !1665, !DIExpression(), !1666)
  %1 = trunc i8 %xor1 to i1, !dbg !1670
    #dbg_value(i8 poison, !1671, !DIExpression(), !1666)
  %2 = and i8 %xor1, 2, !dbg !1672
  %mul9 = mul i8 %2, %b, !dbg !1673
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1670
  %xor11 = xor i8 %conv10, %mul9, !dbg !1674
    #dbg_value(i8 %xor11, !1671, !DIExpression(), !1666)
  %3 = and i8 %xor1, 4, !dbg !1675
  %mul16 = mul i8 %3, %b, !dbg !1676
  %xor18 = xor i8 %mul16, %xor11, !dbg !1677
    #dbg_value(i8 %xor18, !1671, !DIExpression(), !1666)
  %4 = and i8 %xor1, 8, !dbg !1678
  %mul23 = mul i8 %4, %b, !dbg !1679
  %xor25 = xor i8 %mul23, %xor18, !dbg !1680
    #dbg_value(i8 %xor25, !1671, !DIExpression(), !1666)
    #dbg_value(i8 %xor25, !1681, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1666)
  %5 = lshr i8 %xor25, 4, !dbg !1682
  %6 = lshr i8 %xor25, 3, !dbg !1683
  %7 = and i8 %6, 14, !dbg !1683
  %8 = xor i8 %5, %7, !dbg !1684
  %xor25.masked = and i8 %xor25, 15, !dbg !1685
  %9 = xor i8 %8, %xor25.masked, !dbg !1685
    #dbg_value(i8 %9, !1686, !DIExpression(), !1666)
  ret i8 %9, !dbg !1687
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1688, !DIExpression(), !1689)
    #dbg_value(i32 0, !1690, !DIExpression(), !1692)
  br label %for.cond, !dbg !1693

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1694
    #dbg_value(i32 %i.0, !1690, !DIExpression(), !1692)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1695
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1697

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1698

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1700
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1700
  %shr = lshr i64 %0, 4, !dbg !1702
  %add = or disjoint i32 %i.0, 1, !dbg !1703
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1704
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1704
  %xor = xor i64 %shr, %1, !dbg !1705
  %and = and i64 %xor, 1085102592571150095, !dbg !1706
    #dbg_value(i64 %and, !1707, !DIExpression(), !1708)
  %shl = shl nuw i64 %and, 4, !dbg !1709
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1710
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1711
  %xor3 = xor i64 %2, %shl, !dbg !1711
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1711
  %add4 = or disjoint i32 %i.0, 1, !dbg !1712
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1713
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1714
  %xor6 = xor i64 %3, %and, !dbg !1714
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1714
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1715
    #dbg_value(i32 %add7, !1690, !DIExpression(), !1692)
  br label %for.cond, !dbg !1716, !llvm.loop !1717

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1719
    #dbg_value(i32 %i8.0, !1720, !DIExpression(), !1721)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1722
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1698

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1724

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1726
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1726
  %shr13 = lshr i64 %4, 8, !dbg !1728
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1729
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1730
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1730
  %xor16 = xor i64 %shr13, %5, !dbg !1731
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1732
    #dbg_value(i64 %and17, !1733, !DIExpression(), !1734)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1735
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1736
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1736
  %shr20 = lshr i64 %6, 8, !dbg !1737
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1738
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1739
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1739
  %xor23 = xor i64 %shr20, %7, !dbg !1740
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1741
    #dbg_value(i64 %and24, !1742, !DIExpression(), !1734)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1743
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1744
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1745
  %xor27 = xor i64 %8, %shl25, !dbg !1745
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1745
  %shl28 = shl nuw i64 %and24, 8, !dbg !1746
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1747
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1748
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1749
  %xor31 = xor i64 %9, %shl28, !dbg !1749
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1749
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1750
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1751
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1752
  %xor34 = xor i64 %10, %and17, !dbg !1752
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1752
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1753
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1754
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1755
  %xor37 = xor i64 %11, %and24, !dbg !1755
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1755
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1756
    #dbg_value(i32 %add39, !1720, !DIExpression(), !1721)
  br label %for.cond9, !dbg !1757, !llvm.loop !1758

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1760
    #dbg_value(i32 %i41.0, !1761, !DIExpression(), !1762)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1763
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1724

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1765

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1767
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1767
  %shr47 = lshr i64 %12, 16, !dbg !1769
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1770
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1771
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1771
  %xor50 = xor i64 %shr47, %13, !dbg !1772
  %and51 = and i64 %xor50, 281470681808895, !dbg !1773
    #dbg_value(i64 %and51, !1774, !DIExpression(), !1775)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1776
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1777
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1777
  %shr55 = lshr i64 %14, 16, !dbg !1778
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1779
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1780
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1780
  %xor58 = xor i64 %shr55, %15, !dbg !1781
  %and59 = and i64 %xor58, 281470681808895, !dbg !1782
    #dbg_value(i64 %and59, !1783, !DIExpression(), !1775)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1784
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1785
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1786
  %xor62 = xor i64 %16, %shl60, !dbg !1786
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1786
  %shl63 = shl nuw i64 %and59, 16, !dbg !1787
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1788
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1789
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1790
  %xor66 = xor i64 %17, %shl63, !dbg !1790
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1790
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1791
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1792
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1793
  %xor69 = xor i64 %18, %and51, !dbg !1793
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1793
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1794
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1795
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1796
  %xor72 = xor i64 %19, %and59, !dbg !1796
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1796
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1797
    #dbg_value(i32 %inc, !1761, !DIExpression(), !1762)
  br label %for.cond42, !dbg !1798, !llvm.loop !1799

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1801
    #dbg_value(i32 %i75.0, !1802, !DIExpression(), !1803)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1804
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1765

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1806
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1806
  %shr81 = lshr i64 %20, 32, !dbg !1808
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1809
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1810
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1810
  %.masked = and i64 %21, 4294967295, !dbg !1811
  %and85 = xor i64 %shr81, %.masked, !dbg !1811
    #dbg_value(i64 %and85, !1812, !DIExpression(), !1813)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1814
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1815
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1816
  %xor88 = xor i64 %22, %shl86, !dbg !1816
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1816
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1817
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1818
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1819
  %xor91 = xor i64 %23, %and85, !dbg !1819
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1819
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1820
    #dbg_value(i32 %inc93, !1802, !DIExpression(), !1803)
  br label %for.cond76, !dbg !1821, !llvm.loop !1822

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1824
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 10, 12) %bs_mat_cols) unnamed_addr #0 !dbg !1825 {
entry:
    #dbg_value(i32 7, !1826, !DIExpression(), !1827)
    #dbg_value(ptr %mat, !1828, !DIExpression(), !1827)
    #dbg_value(ptr %bs_mat, !1829, !DIExpression(), !1827)
    #dbg_value(ptr %acc, !1830, !DIExpression(), !1827)
    #dbg_value(i32 11, !1831, !DIExpression(), !1827)
    #dbg_value(i32 108, !1832, !DIExpression(), !1827)
    #dbg_value(i32 %bs_mat_cols, !1833, !DIExpression(), !1827)
    #dbg_value(i32 0, !1834, !DIExpression(), !1836)
  br label %for.cond, !dbg !1837

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1838
    #dbg_value(i32 %r.0, !1834, !DIExpression(), !1836)
  %exitcond2 = icmp ne i32 %r.0, 11, !dbg !1839
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1841

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1842

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1845
    #dbg_value(i32 %c.0, !1846, !DIExpression(), !1847)
  %exitcond1 = icmp ne i32 %c.0, 108, !dbg !1848
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1842

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1850

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1853
    #dbg_value(i32 %k.0, !1854, !DIExpression(), !1855)
  %exitcond = icmp ne i32 %k.0, %bs_mat_cols, !dbg !1856
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1850

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %c.0, %bs_mat_cols, !dbg !1858
  %add = add nuw nsw i32 %mul, %k.0, !dbg !1860
  %add.ptr.idx = mul nuw nsw i32 %add, 56, !dbg !1861
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1861
  %mul8 = mul nuw nsw i32 %r.0, 108, !dbg !1862
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1863
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1863
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1863
  %mul10 = mul nuw nsw i32 %r.0, %bs_mat_cols, !dbg !1864
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !1865
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !1866
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !1866
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %1, ptr noundef nonnull %add.ptr13) #4, !dbg !1867
  %add14 = add nuw nsw i32 %k.0, 1, !dbg !1868
    #dbg_value(i32 %add14, !1854, !DIExpression(), !1855)
  br label %for.cond4, !dbg !1869, !llvm.loop !1870

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1872
    #dbg_value(i32 %inc, !1846, !DIExpression(), !1847)
  br label %for.cond1, !dbg !1873, !llvm.loop !1874

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1876
    #dbg_value(i32 %inc18, !1834, !DIExpression(), !1836)
  br label %for.cond, !dbg !1877, !llvm.loop !1878

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1880
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %V, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !1881 {
entry:
    #dbg_value(ptr %p, !1882, !DIExpression(), !1883)
    #dbg_value(ptr %P1, !1884, !DIExpression(), !1883)
    #dbg_value(ptr %V, !1885, !DIExpression(), !1883)
    #dbg_value(ptr %acc, !1886, !DIExpression(), !1883)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #4, !dbg !1887
  ret void, !dbg !1888
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef nonnull %bs_mat, ptr noundef nonnull %mat, ptr noundef nonnull %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1889 {
entry:
    #dbg_value(i32 7, !1890, !DIExpression(), !1891)
    #dbg_value(ptr %bs_mat, !1892, !DIExpression(), !1891)
    #dbg_value(ptr %mat, !1893, !DIExpression(), !1891)
    #dbg_value(ptr %acc, !1894, !DIExpression(), !1891)
    #dbg_value(i32 108, !1895, !DIExpression(), !1891)
    #dbg_value(i32 108, !1896, !DIExpression(), !1891)
    #dbg_value(i32 11, !1897, !DIExpression(), !1891)
    #dbg_value(i32 1, !1898, !DIExpression(), !1891)
    #dbg_value(i32 0, !1899, !DIExpression(), !1891)
    #dbg_value(i32 0, !1900, !DIExpression(), !1902)
  br label %for.cond, !dbg !1903

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc17 ], [ 108, %entry ], !dbg !1904
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1904
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1905
    #dbg_value(i32 %r.0, !1900, !DIExpression(), !1902)
    #dbg_value(i32 %bs_mat_entries_used.0, !1899, !DIExpression(), !1891)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !1906
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end19, !dbg !1908

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !1909
  br label %for.cond1, !dbg !1909

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %bs_mat_entries_used.1 = phi i32 [ %add14, %for.inc15 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !1891
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ %r.0, %for.cond1.preheader ], !dbg !1912
    #dbg_value(i32 %c.0, !1913, !DIExpression(), !1914)
    #dbg_value(i32 %bs_mat_entries_used.1, !1899, !DIExpression(), !1891)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !1915
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc17, !dbg !1909

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1917

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1920
    #dbg_value(i32 %k.0, !1921, !DIExpression(), !1922)
  %exitcond = icmp ne i32 %k.0, 11, !dbg !1923
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1917

for.body6:                                        ; preds = %for.cond4
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !1925
  %add.ptr = getelementptr inbounds i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !1925
  %mul8 = mul nuw nsw i32 %k.0, 108, !dbg !1927
  %1 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1928
  %arrayidx = getelementptr i8, ptr %1, i32 %c.0, !dbg !1928
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1928
  %mul9 = mul nuw nsw i32 %r.0, 11, !dbg !1929
  %add10 = add nuw nsw i32 %mul9, %k.0, !dbg !1930
  %add.ptr12.idx = mul nuw nsw i32 %add10, 56, !dbg !1931
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr12.idx, !dbg !1931
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef nonnull %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %add.ptr12) #4, !dbg !1932
  %add13 = add nuw nsw i32 %k.0, 1, !dbg !1933
    #dbg_value(i32 %add13, !1921, !DIExpression(), !1922)
  br label %for.cond4, !dbg !1934, !llvm.loop !1935

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1899, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1891)
  %add14 = add i32 %bs_mat_entries_used.1, 1, !dbg !1937
    #dbg_value(i32 %add14, !1899, !DIExpression(), !1891)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !1938
    #dbg_value(i32 %inc, !1913, !DIExpression(), !1914)
  br label %for.cond1, !dbg !1939, !llvm.loop !1940

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1891
  %inc18 = add nuw nsw i32 %r.0, 1, !dbg !1942
    #dbg_value(i32 %inc18, !1900, !DIExpression(), !1902)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !1943
  br label %for.cond, !dbg !1943, !llvm.loop !1944

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1946
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1947 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1948, !DIExpression(), !1949)
    #dbg_value(ptr %sm, !1950, !DIExpression(), !1949)
    #dbg_value(ptr %smlen, !1951, !DIExpression(), !1949)
    #dbg_value(ptr %m, !1952, !DIExpression(), !1949)
    #dbg_value(i32 %mlen, !1953, !DIExpression(), !1949)
    #dbg_value(ptr %csk, !1954, !DIExpression(), !1949)
    #dbg_value(i32 0, !1955, !DIExpression(), !1949)
    #dbg_value(i32 681, !1956, !DIExpression(), !1949)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1957
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #6, !dbg !1958
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1959
    #dbg_value(ptr %siglen, !1960, !DIExpression(DW_OP_deref), !1949)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #4, !dbg !1961
    #dbg_value(i32 0, !1955, !DIExpression(), !1949)
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1960, !DIExpression(), !1949)
  %cmp3.not = icmp eq i32 %0, 681
  br i1 %cmp3.not, label %if.end, label %if.then, !dbg !1962

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1964
    #dbg_value(i32 %1, !1960, !DIExpression(), !1949)
  %add = add i32 %1, %mlen, !dbg !1966
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #6, !dbg !1967
  br label %err, !dbg !1968

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1969
    #dbg_value(i32 %2, !1960, !DIExpression(), !1949)
  %add5 = add i32 %2, %mlen, !dbg !1970
  store i32 %add5, ptr %smlen, align 4, !dbg !1971
  br label %err, !dbg !1972

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1973, !1974)
  ret i32 0, !dbg !1975
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1976 {
entry:
    #dbg_value(ptr %p, !1977, !DIExpression(), !1978)
    #dbg_value(ptr %m, !1979, !DIExpression(), !1978)
    #dbg_value(ptr %mlen, !1980, !DIExpression(), !1978)
    #dbg_value(ptr %sm, !1981, !DIExpression(), !1978)
    #dbg_value(i32 %smlen, !1982, !DIExpression(), !1978)
    #dbg_value(ptr %pk, !1983, !DIExpression(), !1978)
    #dbg_value(i32 681, !1984, !DIExpression(), !1978)
  %cmp = icmp ult i32 %smlen, 681, !dbg !1985
  br i1 %cmp, label %return, label %if.end, !dbg !1985

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1987
  %sub = add i32 %smlen, -681, !dbg !1988
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #4, !dbg !1989
    #dbg_value(i32 %call, !1990, !DIExpression(), !1978)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1991
  br i1 %cmp1, label %if.then2, label %return, !dbg !1991

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !1993
  store i32 %sub3, ptr %mlen, align 4, !dbg !1995
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !1996
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #6, !dbg !1997
  br label %return, !dbg !1998

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ %call, %if.end ], !dbg !1978
  ret i32 %retval.0, !dbg !1999
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2000 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !2003, !DIExpression(), !2004)
    #dbg_value(ptr %m, !2005, !DIExpression(), !2004)
    #dbg_value(i32 %mlen, !2006, !DIExpression(), !2004)
    #dbg_value(ptr %sig, !2007, !DIExpression(), !2004)
    #dbg_value(ptr %cpk, !2008, !DIExpression(), !2004)
    #dbg_declare(ptr %tEnc, !2009, !DIExpression(), !2010)
    #dbg_declare(ptr %t, !2011, !DIExpression(), !2012)
    #dbg_declare(ptr %y, !2013, !DIExpression(), !2017)
  call void @mayo_memset(ptr %y, i8 0, i32 216), !dbg !2017
    #dbg_declare(ptr %s, !2018, !DIExpression(), !2019)
    #dbg_declare(ptr %pk, !2020, !DIExpression(), !2021)
  call void @mayo_memset(ptr %pk, i8 0, i32 393176), !dbg !2021
    #dbg_declare(ptr %tmp, !2022, !DIExpression(), !2026)
    #dbg_value(i32 108, !2027, !DIExpression(), !2004)
    #dbg_value(i32 118, !2028, !DIExpression(), !2004)
    #dbg_value(i32 11, !2029, !DIExpression(), !2004)
    #dbg_value(i32 54, !2030, !DIExpression(), !2004)
    #dbg_value(i32 681, !2031, !DIExpression(), !2004)
    #dbg_value(i32 48, !2032, !DIExpression(), !2004)
    #dbg_value(i32 32, !2033, !DIExpression(), !2004)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #4, !dbg !2034
    #dbg_value(i32 0, !2035, !DIExpression(), !2004)
    #dbg_value(ptr %pk, !2036, !DIExpression(), !2004)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !2037
    #dbg_value(ptr %add.ptr, !2038, !DIExpression(), !2004)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2039
    #dbg_value(ptr %add.ptr2, !2040, !DIExpression(), !2004)
  call void @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #4, !dbg !2041
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !2042
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !2043
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #6, !dbg !2044
  call void @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #4, !dbg !2045
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #4, !dbg !2046
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #4, !dbg !2047
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #4, !dbg !2048
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !2049
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2051
  %. = zext i1 %cmp21 to i32, !dbg !2004
  ret i32 %., !dbg !2052
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2053 {
entry:
    #dbg_value(ptr %p, !2054, !DIExpression(), !2055)
    #dbg_value(ptr %cpk, !2056, !DIExpression(), !2055)
    #dbg_value(ptr %pk, !2057, !DIExpression(), !2055)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #4, !dbg !2058
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2059
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2060
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #4, !dbg !2061
  ret i32 0, !dbg !2062
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %eval) unnamed_addr #0 !dbg !2063 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2066, !DIExpression(), !2067)
    #dbg_value(ptr %s, !2068, !DIExpression(), !2067)
    #dbg_value(ptr %P1, !2069, !DIExpression(), !2067)
    #dbg_value(ptr %P2, !2070, !DIExpression(), !2067)
    #dbg_value(ptr %P3, !2071, !DIExpression(), !2067)
    #dbg_value(ptr %eval, !2072, !DIExpression(), !2067)
    #dbg_declare(ptr %SPS, !2073, !DIExpression(), !2077)
  call void @mayo_memset(ptr %SPS, i8 0, i32 6776), !dbg !2077
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #4, !dbg !2078
    #dbg_declare(ptr %zero, !2079, !DIExpression(), !2080)
  call void @mayo_memset(ptr %zero, i8 0, i32 108), !dbg !2080
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #4, !dbg !2081
  ret void, !dbg !2082
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %s, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2083 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !2086, !DIExpression(), !2087)
    #dbg_value(ptr %P1, !2088, !DIExpression(), !2087)
    #dbg_value(ptr %P2, !2089, !DIExpression(), !2087)
    #dbg_value(ptr %P3, !2090, !DIExpression(), !2087)
    #dbg_value(ptr %s, !2091, !DIExpression(), !2087)
    #dbg_value(ptr %SPS, !2092, !DIExpression(), !2087)
    #dbg_declare(ptr %PS, !2093, !DIExpression(), !2097)
  call void @mayo_memset(ptr %PS, i8 0, i32 72688), !dbg !2097
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #4, !dbg !2098
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #4, !dbg !2099
  ret void, !dbg !2100
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %P3, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef nonnull %PS) unnamed_addr #0 !dbg !2101 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2104, !DIExpression(), !2105)
    #dbg_value(ptr %P2, !2106, !DIExpression(), !2105)
    #dbg_value(ptr %P3, !2107, !DIExpression(), !2105)
    #dbg_value(ptr %S, !2108, !DIExpression(), !2105)
    #dbg_value(i32 108, !2109, !DIExpression(), !2105)
    #dbg_value(i32 108, !2110, !DIExpression(), !2105)
    #dbg_value(i32 10, !2111, !DIExpression(), !2105)
    #dbg_value(i32 11, !2112, !DIExpression(), !2105)
    #dbg_value(ptr %PS, !2113, !DIExpression(), !2105)
    #dbg_value(i32 118, !2114, !DIExpression(), !2105)
    #dbg_value(i32 7, !2115, !DIExpression(), !2105)
    #dbg_declare(ptr %accumulator, !2116, !DIExpression(), !2120)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 1163008), !dbg !2120
    #dbg_value(i32 0, !2121, !DIExpression(), !2105)
    #dbg_value(i32 0, !2122, !DIExpression(), !2124)
  br label %for.cond, !dbg !2125

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ 108, %entry ], !dbg !2126
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2126
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2127
    #dbg_value(i32 %row.0, !2122, !DIExpression(), !2124)
    #dbg_value(i32 %P1_used.0, !2121, !DIExpression(), !2105)
  %exitcond4 = icmp ne i32 %row.0, 108, !dbg !2128
  br i1 %exitcond4, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2130

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2131
  br label %for.cond2, !dbg !2131

for.cond56.preheader:                             ; preds = %for.cond
  br label %for.cond56, !dbg !2134

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2105
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2136
    #dbg_value(i32 %j.0, !2137, !DIExpression(), !2138)
    #dbg_value(i32 %P1_used.1, !2121, !DIExpression(), !2105)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2139
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2131

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2105
  br label %for.cond21, !dbg !2141

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2143

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2146
    #dbg_value(i32 %col.0, !2147, !DIExpression(), !2148)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2149
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2143

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %P1_used.1, 56, !dbg !2151
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !2151
  %mul8 = mul nuw nsw i32 %row.0, 11, !dbg !2153
  %add9 = add nuw nsw i32 %mul8, %col.0, !dbg !2154
  %mul10 = shl nuw nsw i32 %add9, 4, !dbg !2155
  %mul11 = mul nuw nsw i32 %col.0, 118, !dbg !2156
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2157
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2157
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2157
  %conv = zext i8 %2 to i32, !dbg !2157
  %add13 = add nuw nsw i32 %mul10, %conv, !dbg !2158
  %add.ptr15.idx = mul nuw nsw i32 %add13, 56, !dbg !2159
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr15.idx, !dbg !2159
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #4, !dbg !2160
  %inc = add nuw nsw i32 %col.0, 1, !dbg !2161
    #dbg_value(i32 %inc, !2147, !DIExpression(), !2148)
  br label %for.cond5, !dbg !2162, !llvm.loop !2163

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2121, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2105)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2165
    #dbg_value(i32 %inc16, !2121, !DIExpression(), !2105)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2166
    #dbg_value(i32 %inc18, !2137, !DIExpression(), !2138)
  br label %for.cond2, !dbg !2167, !llvm.loop !2168

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2170
    #dbg_value(i32 %j20.0, !2171, !DIExpression(), !2172)
  %exitcond3 = icmp ne i32 %j20.0, 10, !dbg !2173
  br i1 %exitcond3, label %for.cond26.preheader, label %for.inc52, !dbg !2141

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2175

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2178
    #dbg_value(i32 %col25.0, !2179, !DIExpression(), !2180)
  %exitcond2 = icmp ne i32 %col25.0, 11, !dbg !2181
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2175

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nuw nsw i32 %row.0, 10, !dbg !2183
  %add31 = add nuw nsw i32 %mul30, %j20.0, !dbg !2185
  %add.ptr33.idx = mul nuw nsw i32 %add31, 56, !dbg !2186
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr33.idx, !dbg !2186
  %mul35 = mul nuw nsw i32 %row.0, 11, !dbg !2187
  %add36 = add nuw nsw i32 %mul35, %col25.0, !dbg !2188
  %mul37 = shl nuw nsw i32 %add36, 4, !dbg !2189
  %mul38 = mul nuw nsw i32 %col25.0, 118, !dbg !2190
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2191
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2191
  %arrayidx41 = getelementptr i8, ptr %4, i32 108, !dbg !2191
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2191
  %conv42 = zext i8 %5 to i32, !dbg !2191
  %add43 = add nuw nsw i32 %mul37, %conv42, !dbg !2192
  %add.ptr45.idx = mul nuw nsw i32 %add43, 56, !dbg !2193
  %add.ptr45 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr45.idx, !dbg !2193
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #4, !dbg !2194
  %inc47 = add nuw nsw i32 %col25.0, 1, !dbg !2195
    #dbg_value(i32 %inc47, !2179, !DIExpression(), !2180)
  br label %for.cond26, !dbg !2196, !llvm.loop !2197

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw nsw i32 %j20.0, 1, !dbg !2199
    #dbg_value(i32 %inc50, !2171, !DIExpression(), !2172)
  br label %for.cond21, !dbg !2200, !llvm.loop !2201

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw nsw i32 %row.0, 1, !dbg !2203
    #dbg_value(i32 %inc53, !2122, !DIExpression(), !2124)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !2204
  br label %for.cond, !dbg !2204, !llvm.loop !2205

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %indvars.iv6 = phi i32 [ 10, %for.cond56.preheader ], [ %indvars.iv.next7, %for.inc90 ], !dbg !2207
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2207
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ 108, %for.cond56.preheader ], !dbg !2208
    #dbg_value(i32 %row55.0, !2209, !DIExpression(), !2210)
    #dbg_value(i32 %P3_used.0, !2211, !DIExpression(), !2105)
  %exitcond9 = icmp ne i32 %row55.0, 118, !dbg !2212
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2134

for.cond61.preheader:                             ; preds = %for.cond56
  %6 = add i32 %P3_used.0, %indvars.iv6, !dbg !2214
  br label %for.cond61, !dbg !2214

while.cond.preheader:                             ; preds = %for.cond56
  br label %while.cond, !dbg !2217

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2105
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2218
    #dbg_value(i32 %j60.0, !2219, !DIExpression(), !2220)
    #dbg_value(i32 %P3_used.1, !2211, !DIExpression(), !2105)
  %exitcond8 = icmp ne i32 %P3_used.1, %6, !dbg !2221
  br i1 %exitcond8, label %for.cond66.preheader, label %for.inc90, !dbg !2214

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2223

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2226
    #dbg_value(i32 %col65.0, !2227, !DIExpression(), !2228)
  %exitcond5 = icmp ne i32 %col65.0, 11, !dbg !2229
  br i1 %exitcond5, label %for.body69, label %for.inc87, !dbg !2223

for.body69:                                       ; preds = %for.cond66
  %add.ptr71.idx = mul nsw i32 %P3_used.1, 56, !dbg !2231
  %add.ptr71 = getelementptr inbounds i8, ptr %P3, i32 %add.ptr71.idx, !dbg !2231
  %mul73 = mul nuw nsw i32 %row55.0, 11, !dbg !2233
  %add74 = add nuw nsw i32 %mul73, %col65.0, !dbg !2234
  %mul75 = shl nuw nsw i32 %add74, 4, !dbg !2235
  %mul76 = mul nuw nsw i32 %col65.0, 118, !dbg !2236
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2237
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2237
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2237
  %conv79 = zext i8 %8 to i32, !dbg !2237
  %add80 = add nuw nsw i32 %mul75, %conv79, !dbg !2238
  %add.ptr82.idx = mul nuw nsw i32 %add80, 56, !dbg !2239
  %add.ptr82 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr82.idx, !dbg !2239
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #4, !dbg !2240
  %inc84 = add nuw nsw i32 %col65.0, 1, !dbg !2241
    #dbg_value(i32 %inc84, !2227, !DIExpression(), !2228)
  br label %for.cond66, !dbg !2242, !llvm.loop !2243

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2211, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2105)
  %inc86 = add i32 %P3_used.1, 1, !dbg !2245
    #dbg_value(i32 %inc86, !2211, !DIExpression(), !2105)
  %inc88 = add nuw nsw i32 %j60.0, 1, !dbg !2246
    #dbg_value(i32 %inc88, !2219, !DIExpression(), !2220)
  br label %for.cond61, !dbg !2247, !llvm.loop !2248

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2105
  %inc91 = add nuw nsw i32 %row55.0, 1, !dbg !2250
    #dbg_value(i32 %inc91, !2209, !DIExpression(), !2210)
  %indvars.iv.next7 = add nsw i32 %indvars.iv6, -1, !dbg !2251
  br label %for.cond56, !dbg !2251, !llvm.loop !2252

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2105
    #dbg_value(i32 %i.0, !2254, !DIExpression(), !2105)
  %exitcond10 = icmp ne i32 %i.0, 1298, !dbg !2255
  br i1 %exitcond10, label %while.body, label %while.end, !dbg !2217

while.body:                                       ; preds = %while.cond
  %add.ptr99.idx = mul nuw nsw i32 %i.0, 896, !dbg !2256
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr99.idx, !dbg !2256
  %add.ptr101.idx = mul nuw nsw i32 %i.0, 56, !dbg !2258
  %add.ptr101 = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr101.idx, !dbg !2258
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #4, !dbg !2259
  %inc102 = add nuw nsw i32 %i.0, 1, !dbg !2260
    #dbg_value(i32 %inc102, !2254, !DIExpression(), !2105)
  br label %while.cond, !dbg !2217, !llvm.loop !2261

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2263
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef nonnull %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef nonnull %SPS) unnamed_addr #0 !dbg !2264 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2267, !DIExpression(), !2268)
    #dbg_value(ptr %S, !2269, !DIExpression(), !2268)
    #dbg_value(i32 108, !2270, !DIExpression(), !2268)
    #dbg_value(i32 11, !2271, !DIExpression(), !2268)
    #dbg_value(i32 118, !2272, !DIExpression(), !2268)
    #dbg_value(ptr %SPS, !2273, !DIExpression(), !2268)
    #dbg_declare(ptr %accumulator, !2274, !DIExpression(), !2278)
  call void @mayo_memset(ptr %accumulator, i8 0, i32 108416), !dbg !2278
    #dbg_value(i32 7, !2279, !DIExpression(), !2268)
    #dbg_value(i32 0, !2280, !DIExpression(), !2282)
  br label %for.cond, !dbg !2283

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2284
    #dbg_value(i32 %row.0, !2280, !DIExpression(), !2282)
  %exitcond2 = icmp ne i32 %row.0, 11, !dbg !2285
  br i1 %exitcond2, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2287

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2288

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !2291

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2292
    #dbg_value(i32 %j.0, !2293, !DIExpression(), !2294)
  %exitcond1 = icmp ne i32 %j.0, 118, !dbg !2295
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2288

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2297

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2300
    #dbg_value(i32 %col.0, !2301, !DIExpression(), !2302)
  %exitcond = icmp ne i32 %col.0, 11, !dbg !2303
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2297

for.body6:                                        ; preds = %for.cond4
  %mul = mul nuw nsw i32 %j.0, 11, !dbg !2305
  %add7 = add nuw nsw i32 %mul, %col.0, !dbg !2307
  %add.ptr.idx = mul nuw nsw i32 %add7, 56, !dbg !2308
  %add.ptr = getelementptr inbounds nuw i8, ptr %PS, i32 %add.ptr.idx, !dbg !2308
  %mul9 = mul nuw nsw i32 %row.0, 11, !dbg !2309
  %add10 = add nuw nsw i32 %mul9, %col.0, !dbg !2310
  %mul11 = shl nuw nsw i32 %add10, 4, !dbg !2311
  %mul12 = mul nuw nsw i32 %row.0, 118, !dbg !2312
  %0 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2313
  %arrayidx = getelementptr i8, ptr %0, i32 %j.0, !dbg !2313
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2313
  %conv = zext i8 %1 to i32, !dbg !2313
  %add14 = add nuw nsw i32 %mul11, %conv, !dbg !2314
  %add.ptr16.idx = mul nuw nsw i32 %add14, 56, !dbg !2315
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr16.idx, !dbg !2315
  call fastcc void @m_vec_add(i32 noundef 7, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #4, !dbg !2316
  %add17 = add nuw nsw i32 %col.0, 1, !dbg !2317
    #dbg_value(i32 %add17, !2301, !DIExpression(), !2302)
  br label %for.cond4, !dbg !2318, !llvm.loop !2319

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2321
    #dbg_value(i32 %inc, !2293, !DIExpression(), !2294)
  br label %for.cond1, !dbg !2322, !llvm.loop !2323

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %row.0, 1, !dbg !2325
    #dbg_value(i32 %inc21, !2280, !DIExpression(), !2282)
  br label %for.cond, !dbg !2326, !llvm.loop !2327

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2268
    #dbg_value(i32 %i.0, !2329, !DIExpression(), !2268)
  %exitcond3 = icmp ne i32 %i.0, 121, !dbg !2330
  br i1 %exitcond3, label %while.body, label %while.end, !dbg !2291

while.body:                                       ; preds = %while.cond
  %add.ptr29.idx = mul nuw nsw i32 %i.0, 896, !dbg !2331
  %add.ptr29 = getelementptr inbounds nuw i8, ptr %accumulator, i32 %add.ptr29.idx, !dbg !2331
  %add.ptr31.idx = mul nuw nsw i32 %i.0, 56, !dbg !2333
  %add.ptr31 = getelementptr inbounds nuw i8, ptr %SPS, i32 %add.ptr31.idx, !dbg !2333
  call fastcc void @m_vec_multiply_bins(i32 noundef 7, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #4, !dbg !2334
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !2335
    #dbg_value(i32 %inc32, !2329, !DIExpression(), !2268)
  br label %while.cond, !dbg !2291, !llvm.loop !2336

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2338
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2339 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2342, !DIExpression(), !2343)
    #dbg_value(ptr %in, !2344, !DIExpression(), !2343)
    #dbg_value(ptr %acc, !2345, !DIExpression(), !2343)
    #dbg_value(i32 0, !2346, !DIExpression(), !2348)
  br label %for.cond, !dbg !2349

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2350
    #dbg_value(i32 %i.0, !2346, !DIExpression(), !2348)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2351
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2353

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2354
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2354
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2356
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2357
  %xor = xor i64 %1, %0, !dbg !2357
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2357
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2358
    #dbg_value(i32 %inc, !2346, !DIExpression(), !2348)
  br label %for.cond, !dbg !2359, !llvm.loop !2360

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2362
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef nonnull %bins, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2363 {
entry:
    #dbg_value(i32 7, !2366, !DIExpression(), !2367)
    #dbg_value(ptr %bins, !2368, !DIExpression(), !2367)
    #dbg_value(ptr %out, !2369, !DIExpression(), !2367)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2370
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2371
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #4, !dbg !2372
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2373
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2374
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #4, !dbg !2375
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2376
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2377
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #4, !dbg !2378
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2379
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2380
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #4, !dbg !2381
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2382
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2383
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #4, !dbg !2384
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2385
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2386
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #4, !dbg !2387
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2388
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2389
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #4, !dbg !2390
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2391
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2392
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #4, !dbg !2393
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2394
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2395
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #4, !dbg !2396
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2397
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2398
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #4, !dbg !2399
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2400
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2401
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #4, !dbg !2402
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2403
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2404
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #4, !dbg !2405
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2406
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2407
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef 7, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #4, !dbg !2408
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2409
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2410
  call fastcc void @m_vec_mul_add_x(i32 noundef 7, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #4, !dbg !2411
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2412
  call fastcc void @m_vec_copy(i32 noundef 7, ptr noundef nonnull %add.ptr28, ptr noundef %out) #4, !dbg !2413
  ret void, !dbg !2414
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2415 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2416, !DIExpression(), !2417)
    #dbg_value(ptr %in, !2418, !DIExpression(), !2417)
    #dbg_value(ptr %acc, !2419, !DIExpression(), !2417)
    #dbg_value(i64 1229782938247303441, !2420, !DIExpression(), !2417)
    #dbg_value(i32 0, !2421, !DIExpression(), !2423)
  br label %for.cond, !dbg !2424

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2425
    #dbg_value(i32 %i.0, !2421, !DIExpression(), !2423)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2426
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2428

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2429
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2429
  %and = and i64 %0, 1229782938247303441, !dbg !2431
    #dbg_value(i64 %and, !2432, !DIExpression(), !2433)
  %xor = lshr i64 %0, 1, !dbg !2434
  %shr = and i64 %xor, 8608480567731124087, !dbg !2434
  %mul = mul nuw i64 %and, 9, !dbg !2435
  %xor2 = xor i64 %shr, %mul, !dbg !2436
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2437
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2438
  %xor4 = xor i64 %1, %xor2, !dbg !2438
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2438
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2439
    #dbg_value(i32 %inc, !2421, !DIExpression(), !2423)
  br label %for.cond, !dbg !2440, !llvm.loop !2441

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2443
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !2444 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2445, !DIExpression(), !2446)
    #dbg_value(ptr %in, !2447, !DIExpression(), !2446)
    #dbg_value(ptr %acc, !2448, !DIExpression(), !2446)
    #dbg_value(i64 -8608480567731124088, !2449, !DIExpression(), !2446)
    #dbg_value(i32 0, !2450, !DIExpression(), !2452)
  br label %for.cond, !dbg !2453

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2454
    #dbg_value(i32 %i.0, !2450, !DIExpression(), !2452)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2455
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2457

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2458
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2458
    #dbg_value(i64 %0, !2460, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2461)
  %xor = shl i64 %0, 1, !dbg !2462
  %shl = and i64 %xor, -1229782938247303442, !dbg !2462
  %and = lshr i64 %0, 3, !dbg !2463
  %shr = and i64 %and, 1229782938247303441, !dbg !2463
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2464
  %xor2 = xor i64 %shl, %mul, !dbg !2465
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2466
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2467
  %xor4 = xor i64 %1, %xor2, !dbg !2467
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2467
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2468
    #dbg_value(i32 %inc, !2450, !DIExpression(), !2452)
  br label %for.cond, !dbg !2469, !llvm.loop !2470

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2472
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !2473 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2474, !DIExpression(), !2475)
    #dbg_value(ptr %in, !2476, !DIExpression(), !2475)
    #dbg_value(ptr %out, !2477, !DIExpression(), !2475)
    #dbg_value(i32 0, !2478, !DIExpression(), !2480)
  br label %for.cond, !dbg !2481

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2482
    #dbg_value(i32 %i.0, !2478, !DIExpression(), !2480)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2483
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2485

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2486
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2486
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2488
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2489
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2490
    #dbg_value(i32 %inc, !2478, !DIExpression(), !2480)
  br label %for.cond, !dbg !2491, !llvm.loop !2492

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2494
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2495 {
entry:
    #dbg_value(ptr %p, !2526, !DIExpression(), !2527)
    #dbg_value(ptr %in, !2528, !DIExpression(), !2527)
    #dbg_value(ptr %out, !2529, !DIExpression(), !2527)
    #dbg_value(i32 %size, !2530, !DIExpression(), !2527)
    #dbg_value(i32 7, !2531, !DIExpression(), !2527)
    #dbg_value(i32 0, !2532, !DIExpression(), !2527)
    #dbg_value(i32 0, !2533, !DIExpression(), !2535)
  %0 = icmp sgt i32 %size, 0, !dbg !2536
  %1 = select i1 %0, i32 %size, i32 0, !dbg !2536
  br label %for.cond, !dbg !2536

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2537
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2537
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2538
    #dbg_value(i32 %r.0, !2533, !DIExpression(), !2535)
    #dbg_value(i32 %m_vecs_stored.0, !2532, !DIExpression(), !2527)
  %exitcond1 = icmp ne i32 %r.0, %1, !dbg !2539
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2541

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2542
  br label %for.cond1, !dbg !2542

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2527
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2545
    #dbg_value(i32 %c.0, !2546, !DIExpression(), !2547)
    #dbg_value(i32 %m_vecs_stored.1, !2532, !DIExpression(), !2527)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %2, !dbg !2548
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2542

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2550
  %add = add nsw i32 %mul, %c.0, !dbg !2552
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2553
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2553
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2554
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2554
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #4, !dbg !2555
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2556
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2556

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2558
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2560
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2561
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2561
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2562
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2562
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #4, !dbg !2563
  br label %for.inc, !dbg !2564

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2532, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2527)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2565
    #dbg_value(i32 %inc, !2532, !DIExpression(), !2527)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2566
    #dbg_value(i32 %inc14, !2546, !DIExpression(), !2547)
  br label %for.cond1, !dbg !2567, !llvm.loop !2568

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2527
  %inc16 = add nuw i32 %r.0, 1, !dbg !2570
    #dbg_value(i32 %inc16, !2533, !DIExpression(), !2535)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2571
  br label %for.cond, !dbg !2571, !llvm.loop !2572

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2574
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2575 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2576, !DIExpression(), !2577)
    #dbg_value(ptr %in, !2578, !DIExpression(), !2577)
    #dbg_value(ptr %out, !2579, !DIExpression(), !2577)
    #dbg_value(i32 0, !2580, !DIExpression(), !2582)
  br label %for.cond, !dbg !2583

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2584
    #dbg_value(i32 %i.0, !2580, !DIExpression(), !2582)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2585
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2587

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2588
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2588
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2590
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2591
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2592
    #dbg_value(i32 %inc, !2580, !DIExpression(), !2582)
  br label %for.cond, !dbg !2593, !llvm.loop !2594

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2596
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2597 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2598, !DIExpression(), !2599)
    #dbg_value(ptr %in, !2600, !DIExpression(), !2599)
    #dbg_value(ptr %acc, !2601, !DIExpression(), !2599)
    #dbg_value(i32 0, !2602, !DIExpression(), !2604)
  br label %for.cond, !dbg !2605

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2606
    #dbg_value(i32 %i.0, !2602, !DIExpression(), !2604)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2607
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2609

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2610
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2610
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2612
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2613
  %xor = xor i64 %1, %0, !dbg !2613
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2613
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2614
    #dbg_value(i32 %inc, !2602, !DIExpression(), !2604)
  br label %for.cond, !dbg !2615, !llvm.loop !2616

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2618
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2619 {
entry:
  %Ar = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2622, !DIExpression(), !2623)
    #dbg_value(ptr %A, !2624, !DIExpression(), !2623)
    #dbg_value(ptr %y, !2625, !DIExpression(), !2623)
    #dbg_value(ptr %r, !2626, !DIExpression(), !2623)
    #dbg_value(ptr %x, !2627, !DIExpression(), !2623)
    #dbg_value(i32 %k, !2628, !DIExpression(), !2623)
    #dbg_value(i32 %o, !2629, !DIExpression(), !2623)
    #dbg_value(i32 %m, !2630, !DIExpression(), !2623)
    #dbg_value(i32 %A_cols, !2631, !DIExpression(), !2623)
    #dbg_value(i32 0, !2632, !DIExpression(), !2634)
  %0 = mul nsw i32 %o, %k, !dbg !2635
  %1 = icmp sgt i32 %0, 0, !dbg !2635
  %2 = select i1 %1, i32 %0, i32 0, !dbg !2635
  br label %for.cond, !dbg !2635

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2636
    #dbg_value(i32 %i.0, !2632, !DIExpression(), !2634)
  %exitcond = icmp ne i32 %i.0, %2, !dbg !2637
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2639

for.cond3.preheader:                              ; preds = %for.cond
  %3 = icmp sgt i32 %m, 0, !dbg !2640
  %4 = select i1 %3, i32 %m, i32 0, !dbg !2640
  br label %for.cond3, !dbg !2640

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2642
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2642
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2644
  store i8 %5, ptr %arrayidx1, align 1, !dbg !2645
  %inc = add nuw i32 %i.0, 1, !dbg !2646
    #dbg_value(i32 %inc, !2632, !DIExpression(), !2634)
  br label %for.cond, !dbg !2647, !llvm.loop !2648

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2650
    #dbg_value(i32 %i2.0, !2651, !DIExpression(), !2652)
  %exitcond14 = icmp ne i32 %i2.0, %4, !dbg !2653
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2640

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2655
  %mul7 = mul nsw i32 %k, %o, !dbg !2657
  %add = add nsw i32 %mul7, 1, !dbg !2658
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2659
  %6 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2660
  %arrayidx10 = getelementptr i8, ptr %6, i32 %mul8, !dbg !2660
  store i8 0, ptr %arrayidx10, align 1, !dbg !2661
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2662
    #dbg_value(i32 %inc12, !2651, !DIExpression(), !2652)
  br label %for.cond3, !dbg !2663, !llvm.loop !2664

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2666
  %add15 = add nsw i32 %mul14, 1, !dbg !2667
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #4, !dbg !2668
    #dbg_value(i32 0, !2669, !DIExpression(), !2671)
  br label %for.cond17, !dbg !2672

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2673
    #dbg_value(i32 %i16.0, !2669, !DIExpression(), !2671)
  %exitcond15 = icmp ne i32 %i16.0, %4, !dbg !2674
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2676

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2677
  %7 = load i8, ptr %arrayidx20, align 1, !dbg !2677
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2679
  %8 = load i8, ptr %arrayidx21, align 1, !dbg !2679
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !2680
  %mul22 = mul nsw i32 %k, %o, !dbg !2681
  %mul23 = mul nsw i32 %k, %o, !dbg !2682
  %add24 = add nsw i32 %mul23, 1, !dbg !2683
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2684
  %9 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2685
  %arrayidx27 = getelementptr i8, ptr %9, i32 %mul25, !dbg !2685
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2686
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2687
    #dbg_value(i32 %inc29, !2669, !DIExpression(), !2671)
  br label %for.cond17, !dbg !2688, !llvm.loop !2689

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2691
  %add32 = add nsw i32 %mul31, 1, !dbg !2692
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #4, !dbg !2693
    #dbg_value(i8 0, !2694, !DIExpression(), !2623)
    #dbg_value(i32 0, !2695, !DIExpression(), !2697)
  %10 = add i32 %A_cols, -1, !dbg !2698
  %11 = icmp sgt i32 %10, 0, !dbg !2698
  %12 = select i1 %11, i32 %10, i32 0, !dbg !2698
  br label %for.cond34, !dbg !2698

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2623
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2699
    #dbg_value(i32 %i33.0, !2695, !DIExpression(), !2697)
    #dbg_value(i8 %full_rank.0, !2694, !DIExpression(), !2623)
  %exitcond17 = icmp ne i32 %i33.0, %12, !dbg !2700
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2702

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2694, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2623)
  %sub37 = add nsw i32 %m, -1, !dbg !2703
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2705
  %13 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2706
  %arrayidx40 = getelementptr i8, ptr %13, i32 %i33.0, !dbg !2706
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2706
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %14), !2694, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2623)
  %or12 = or i8 %full_rank.0, %14, !dbg !2707
    #dbg_value(i8 %or12, !2694, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2623)
    #dbg_value(i8 %or12, !2694, !DIExpression(), !2623)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2708
    #dbg_value(i32 %inc44, !2695, !DIExpression(), !2697)
  br label %for.cond34, !dbg !2709, !llvm.loop !2710

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2623
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2712
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2712

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2714

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2714, !llvm.loop !2716

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2718
    #dbg_value(i32 %row.0, !2719, !DIExpression(), !2720)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2721
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2714

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2723, !DIExpression(), !2623)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2724
  %div = sdiv i32 32, %sub54, !dbg !2724
  %add55 = add nsw i32 %row.0, %div, !dbg !2724
  %mul56 = mul nsw i32 %k, %o, !dbg !2724
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2724
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2724

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2724
  %div60 = sdiv i32 32, %sub59, !dbg !2724
  %add61 = add nsw i32 %row.0, %div60, !dbg !2724
  br label %cond.end, !dbg !2724

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2724
  br label %cond.end, !dbg !2724

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2724
    #dbg_value(i32 %cond, !2726, !DIExpression(), !2623)
    #dbg_value(i32 %row.0, !2727, !DIExpression(), !2729)
  br label %for.cond63, !dbg !2730

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2731
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2732
    #dbg_value(i32 %col.0, !2727, !DIExpression(), !2729)
    #dbg_value(i8 %finished.0, !2723, !DIExpression(), !2623)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2733
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2735

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2736
  %15 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2738
  %arrayidx69 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2738
  %16 = load i8, ptr %arrayidx69, align 1, !dbg !2738
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %16, i8 noundef zeroext 0) #4, !dbg !2739
  %not = xor i8 %finished.0, -1, !dbg !2740
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2623)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2742
  %17 = getelementptr i8, ptr %A, i32 %add76, !dbg !2743
  %arrayidx78 = getelementptr i8, ptr %17, i32 -1, !dbg !2743
  %18 = load i8, ptr %arrayidx78, align 1, !dbg !2743
  %19 = and i8 %18, %not, !dbg !2744
  %and801 = and i8 %19, %call70, !dbg !2744
    #dbg_value(i8 %and801, !2745, !DIExpression(), !2746)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2747
  %20 = load i8, ptr %arrayidx83, align 1, !dbg !2748
  %xor2 = xor i8 %20, %and801, !dbg !2748
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2748
    #dbg_value(i32 0, !2749, !DIExpression(), !2751)
  br label %for.cond87, !dbg !2752

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2753
    #dbg_value(i32 %i86.0, !2749, !DIExpression(), !2751)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2754
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2756

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2757
  %21 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2759
  %arrayidx93 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2759
  %22 = load i8, ptr %arrayidx93, align 1, !dbg !2759
  %conv94 = zext i8 %22 to i64, !dbg !2760
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2761
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2762
  %23 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2763
  %arrayidx98 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2763
  %24 = load i8, ptr %arrayidx98, align 1, !dbg !2763
  %conv99 = zext i8 %24 to i64, !dbg !2764
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2765
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2766
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2767
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2768
  %25 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2769
  %arrayidx105 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2769
  %26 = load i8, ptr %arrayidx105, align 1, !dbg !2769
  %conv106 = zext i8 %26 to i64, !dbg !2770
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2771
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2772
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2773
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2774
  %27 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2775
  %arrayidx112 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2775
  %28 = load i8, ptr %arrayidx112, align 1, !dbg !2775
  %conv113 = zext i8 %28 to i64, !dbg !2776
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2777
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2778
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2779
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2780
  %29 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2781
  %arrayidx119 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2781
  %30 = load i8, ptr %arrayidx119, align 1, !dbg !2781
  %conv120 = zext i8 %30 to i64, !dbg !2782
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2783
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2784
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2785
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2786
  %31 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2787
  %arrayidx126 = getelementptr i8, ptr %31, i32 %col.0, !dbg !2787
  %32 = load i8, ptr %arrayidx126, align 1, !dbg !2787
  %conv127 = zext i8 %32 to i64, !dbg !2788
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2789
  %xor129 = xor i64 %xor122, %shl128, !dbg !2790
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2791
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2792
  %33 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2793
  %arrayidx133 = getelementptr i8, ptr %33, i32 %col.0, !dbg !2793
  %34 = load i8, ptr %arrayidx133, align 1, !dbg !2793
  %conv134 = zext i8 %34 to i64, !dbg !2794
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2795
  %xor136 = xor i64 %xor129, %shl135, !dbg !2796
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2797
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2798
  %35 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2799
  %arrayidx140 = getelementptr i8, ptr %35, i32 %col.0, !dbg !2799
  %36 = load i8, ptr %arrayidx140, align 1, !dbg !2799
  %conv141 = zext i8 %36 to i64, !dbg !2800
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2801
  %xor143 = xor i64 %xor136, %shl142, !dbg !2802
    #dbg_value(i64 %xor143, !2803, !DIExpression(), !2804)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #4, !dbg !2805
    #dbg_value(i64 %call144, !2803, !DIExpression(), !2804)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2806
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2806
  %37 = getelementptr i8, ptr %A, i32 %add147, !dbg !2807
  %arrayidx149 = getelementptr i8, ptr %37, i32 -1, !dbg !2807
  %38 = load i8, ptr %arrayidx149, align 1, !dbg !2808
  %39 = trunc i64 %call144 to i8, !dbg !2808
  %40 = and i8 %39, 15, !dbg !2808
  %conv152 = xor i8 %40, %38, !dbg !2808
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2808
  %shr = lshr i64 %call144, 8, !dbg !2809
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2810
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2810
  %41 = getelementptr i8, ptr %A, i32 %add156, !dbg !2811
  %arrayidx158 = getelementptr i8, ptr %41, i32 -1, !dbg !2811
  %42 = load i8, ptr %arrayidx158, align 1, !dbg !2812
  %43 = trunc i64 %shr to i8, !dbg !2812
  %44 = and i8 %43, 15, !dbg !2812
  %conv161 = xor i8 %44, %42, !dbg !2812
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2812
  %shr162 = lshr i64 %call144, 16, !dbg !2813
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2814
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2814
  %45 = getelementptr i8, ptr %A, i32 %add166, !dbg !2815
  %arrayidx168 = getelementptr i8, ptr %45, i32 -1, !dbg !2815
  %46 = load i8, ptr %arrayidx168, align 1, !dbg !2816
  %47 = trunc i64 %shr162 to i8, !dbg !2816
  %48 = and i8 %47, 15, !dbg !2816
  %conv171 = xor i8 %48, %46, !dbg !2816
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2816
  %shr172 = lshr i64 %call144, 24, !dbg !2817
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2818
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2818
  %49 = getelementptr i8, ptr %A, i32 %add176, !dbg !2819
  %arrayidx178 = getelementptr i8, ptr %49, i32 -1, !dbg !2819
  %50 = load i8, ptr %arrayidx178, align 1, !dbg !2820
  %51 = trunc i64 %shr172 to i8, !dbg !2820
  %52 = and i8 %51, 15, !dbg !2820
  %conv181 = xor i8 %52, %50, !dbg !2820
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2820
  %shr182 = lshr i64 %call144, 32, !dbg !2821
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2822
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2822
  %53 = getelementptr i8, ptr %A, i32 %add186, !dbg !2823
  %arrayidx188 = getelementptr i8, ptr %53, i32 -1, !dbg !2823
  %54 = load i8, ptr %arrayidx188, align 1, !dbg !2824
  %55 = trunc i64 %shr182 to i8, !dbg !2824
  %56 = and i8 %55, 15, !dbg !2824
  %conv191 = xor i8 %56, %54, !dbg !2824
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2824
  %shr192 = lshr i64 %call144, 40, !dbg !2825
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2826
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2826
  %57 = getelementptr i8, ptr %A, i32 %add196, !dbg !2827
  %arrayidx198 = getelementptr i8, ptr %57, i32 -1, !dbg !2827
  %58 = load i8, ptr %arrayidx198, align 1, !dbg !2828
  %59 = trunc i64 %shr192 to i8, !dbg !2828
  %60 = and i8 %59, 15, !dbg !2828
  %conv201 = xor i8 %60, %58, !dbg !2828
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2828
  %shr202 = lshr i64 %call144, 48, !dbg !2829
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2830
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2830
  %61 = getelementptr i8, ptr %A, i32 %add206, !dbg !2831
  %arrayidx208 = getelementptr i8, ptr %61, i32 -1, !dbg !2831
  %62 = load i8, ptr %arrayidx208, align 1, !dbg !2832
  %63 = trunc i64 %shr202 to i8, !dbg !2832
  %64 = and i8 %63, 15, !dbg !2832
  %conv211 = xor i8 %64, %62, !dbg !2832
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2832
  %shr212 = lshr i64 %call144, 56, !dbg !2833
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2834
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2834
  %65 = getelementptr i8, ptr %A, i32 %add216, !dbg !2835
  %arrayidx218 = getelementptr i8, ptr %65, i32 -1, !dbg !2835
  %66 = load i8, ptr %arrayidx218, align 1, !dbg !2836
  %67 = trunc nuw nsw i64 %shr212 to i8, !dbg !2836
  %conv221 = xor i8 %66, %67, !dbg !2836
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2836
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2837
    #dbg_value(i32 %add223, !2749, !DIExpression(), !2751)
  br label %for.cond87, !dbg !2838, !llvm.loop !2839

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2723, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2623)
  %or2273 = or i8 %finished.0, %call70, !dbg !2841
    #dbg_value(i8 %or2273, !2723, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2623)
    #dbg_value(i8 %or2273, !2723, !DIExpression(), !2623)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2842
    #dbg_value(i32 %inc230, !2727, !DIExpression(), !2729)
  br label %for.cond63, !dbg !2843, !llvm.loop !2844

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2846

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2623
  ret i32 %retval.0, !dbg !2846
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef nonnull %c, i32 noundef range(i32 -2147483647, -2147483648) %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2847 {
entry:
    #dbg_value(ptr %a, !2848, !DIExpression(), !2849)
    #dbg_value(ptr %b, !2850, !DIExpression(), !2849)
    #dbg_value(ptr %c, !2851, !DIExpression(), !2849)
    #dbg_value(i32 %colrow_ab, !2852, !DIExpression(), !2849)
    #dbg_value(i32 %row_a, !2853, !DIExpression(), !2849)
    #dbg_value(i32 1, !2854, !DIExpression(), !2849)
    #dbg_value(i32 0, !2855, !DIExpression(), !2857)
  %0 = icmp sgt i32 %row_a, 0, !dbg !2858
  %1 = select i1 %0, i32 %row_a, i32 0, !dbg !2858
  br label %for.cond, !dbg !2858

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2859
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2848, !DIExpression(), !2849)
    #dbg_value(ptr %c.addr.0, !2851, !DIExpression(), !2849)
    #dbg_value(i32 %i.0, !2855, !DIExpression(), !2857)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2860
  br i1 %exitcond, label %for.cond1.preheader, label %for.end7, !dbg !2862

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2863

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %cmp2 = phi i1 [ false, %for.body3 ], [ true, %for.cond1.preheader ], !dbg !2866
    #dbg_value(i32 poison, !2867, !DIExpression(), !2868)
    #dbg_value(ptr %c.addr.1, !2851, !DIExpression(), !2849)
  br i1 %cmp2, label %for.body3, label %for.inc4, !dbg !2863

for.body3:                                        ; preds = %for.cond1
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %b, i32 noundef %colrow_ab, i32 noundef 1) #4, !dbg !2869
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2872
    #dbg_value(i32 1, !2867, !DIExpression(), !2868)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2873
    #dbg_value(ptr %incdec.ptr, !2851, !DIExpression(), !2849)
  br label %for.cond1, !dbg !2874, !llvm.loop !2875

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2877
    #dbg_value(i32 %inc5, !2855, !DIExpression(), !2857)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2878
    #dbg_value(ptr %add.ptr6, !2848, !DIExpression(), !2849)
  br label %for.cond, !dbg !2879, !llvm.loop !2880

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2882
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2883 {
entry:
    #dbg_value(i8 %a, !2884, !DIExpression(), !2885)
    #dbg_value(i8 %b, !2886, !DIExpression(), !2885)
  %xor1 = xor i8 %a, %b, !dbg !2887
  ret i8 %xor1, !dbg !2888
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !2889 {
entry:
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2893, !DIExpression(), !2894)
    #dbg_value(i32 %nrows, !2895, !DIExpression(), !2894)
    #dbg_value(i32 %ncols, !2896, !DIExpression(), !2894)
    #dbg_declare(ptr %_pivot_row, !2897, !DIExpression(), !2898)
    #dbg_declare(ptr %_pivot_row2, !2899, !DIExpression(), !2900)
    #dbg_declare(ptr %packed_A, !2901, !DIExpression(), !2905)
  call void @mayo_memset(ptr %packed_A, i8 0, i32 6048), !dbg !2905
  %add = add nsw i32 %ncols, 15, !dbg !2906
  %div = sdiv i32 %add, 16, !dbg !2907
    #dbg_value(i32 %div, !2908, !DIExpression(), !2894)
    #dbg_value(i32 0, !2909, !DIExpression(), !2911)
  %0 = icmp sgt i32 %nrows, 0, !dbg !2912
  %1 = select i1 %0, i32 %nrows, i32 0, !dbg !2912
  br label %for.cond, !dbg !2912

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2913
    #dbg_value(i32 %i.0, !2909, !DIExpression(), !2911)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !2914
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2916

for.cond3.preheader:                              ; preds = %for.cond
  %2 = icmp sgt i32 %div, 0, !dbg !2917
  %3 = select i1 %2, i32 %div, i32 0, !dbg !2917
  %4 = icmp sgt i32 %ncols, 0, !dbg !2917
  %5 = select i1 %4, i32 %ncols, i32 0, !dbg !2917
  br label %for.cond3, !dbg !2917

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2919
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2921
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2922
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2923
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #4, !dbg !2924
  %inc = add nuw i32 %i.0, 1, !dbg !2925
    #dbg_value(i32 %inc, !2909, !DIExpression(), !2911)
  br label %for.cond, !dbg !2926, !llvm.loop !2927

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2929
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2894
    #dbg_value(i32 %pivot_row.0, !2930, !DIExpression(), !2894)
    #dbg_value(i32 %pivot_col.0, !2931, !DIExpression(), !2932)
  %exitcond6 = icmp ne i32 %pivot_col.0, %5, !dbg !2933
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2917

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2935

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2937
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2937
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2937
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2937
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2937
    #dbg_value(i32 %cond, !2939, !DIExpression(), !2940)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2941
    #dbg_value(i32 %cond16, !2942, !DIExpression(), !2940)
    #dbg_value(i32 0, !2943, !DIExpression(), !2945)
  br label %for.cond18, !dbg !2946

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2947
    #dbg_value(i32 %i17.0, !2943, !DIExpression(), !2945)
  %exitcond2 = icmp ne i32 %i17.0, %3, !dbg !2948
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !2950

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2941
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2941
  br label %for.cond25, !dbg !2951

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2953
  store i64 0, ptr %arrayidx, align 8, !dbg !2955
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2956
  store i64 0, ptr %arrayidx21, align 8, !dbg !2957
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2958
    #dbg_value(i32 %inc23, !2943, !DIExpression(), !2945)
  br label %for.cond18, !dbg !2959, !llvm.loop !2960

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2940
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2940
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2962
    #dbg_value(i32 %row.0, !2963, !DIExpression(), !2962)
    #dbg_value(i8 %pivot.0, !2964, !DIExpression(), !2940)
    #dbg_value(i64 %pivot_is_zero.0, !2965, !DIExpression(), !2940)
  %add27 = add nsw i32 %cond16, 32, !dbg !2966
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2966
  %sub30 = add nsw i32 %nrows, -1, !dbg !2966
  %add32 = add nsw i32 %cond16, 32, !dbg !2966
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2966
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2968
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2951

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2969
  %not = xor i64 %call, -1, !dbg !2971
    #dbg_value(i64 %not, !2972, !DIExpression(), !2973)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #4, !dbg !2974
    #dbg_value(i64 %call37, !2975, !DIExpression(), !2973)
    #dbg_value(i32 0, !2976, !DIExpression(), !2978)
  br label %for.cond38, !dbg !2979

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2980
    #dbg_value(i32 %j.0, !2976, !DIExpression(), !2978)
  %exitcond3 = icmp ne i32 %j.0, %3, !dbg !2981
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !2983

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2984
  %or = or i64 %and, %not, !dbg !2986
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2987
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2988
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2989
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !2989
  %and44 = and i64 %or, %6, !dbg !2990
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2991
  %7 = load i64, ptr %arrayidx45, align 8, !dbg !2992
  %xor = xor i64 %7, %and44, !dbg !2992
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2992
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2993
    #dbg_value(i32 %inc47, !2976, !DIExpression(), !2978)
  br label %for.cond38, !dbg !2994, !llvm.loop !2995

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #4, !dbg !2997
    #dbg_value(i8 %call50, !2964, !DIExpression(), !2940)
  %conv = zext nneg i8 %call50 to i32, !dbg !2998
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #4, !dbg !2999
    #dbg_value(i64 %call51, !2965, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2940)
  %not52 = xor i64 %call51, -1, !dbg !3000
    #dbg_value(i64 %not52, !2965, !DIExpression(), !2940)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3001
    #dbg_value(i32 %inc54, !2963, !DIExpression(), !2962)
  br label %for.cond25, !dbg !3002, !llvm.loop !3003

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2940
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2940
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #4, !dbg !3005
    #dbg_value(i8 %call56, !3006, !DIExpression(), !2894)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #4, !dbg !3007
    #dbg_value(i32 %cond, !3008, !DIExpression(), !3010)
  br label %for.cond60, !dbg !3011

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3012
    #dbg_value(i32 %row59.0, !3008, !DIExpression(), !3010)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3013
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3015

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3016

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #4, !dbg !3018
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3020
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3020
    #dbg_value(i64 %and67, !3021, !DIExpression(), !3022)
    #dbg_value(i64 %and67.demorgan, !3023, !DIExpression(), !3022)
    #dbg_value(i32 0, !3024, !DIExpression(), !3026)
  br label %for.cond69, !dbg !3027

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3028
    #dbg_value(i32 %col.0, !3024, !DIExpression(), !3026)
  %exitcond4 = icmp ne i32 %col.0, %3, !dbg !3029
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3031

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3032
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3034
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3035
  %8 = load i64, ptr %arrayidx75, align 8, !dbg !3035
  %and76 = and i64 %and67.demorgan, %8, !dbg !3036
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3037
  %9 = load i64, ptr %arrayidx77, align 8, !dbg !3037
  %and78 = and i64 %9, %and67, !dbg !3038
  %add79 = add i64 %and76, %and78, !dbg !3039
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3040
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3041
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3042
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3043
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3044
    #dbg_value(i32 %inc84, !3024, !DIExpression(), !3026)
  br label %for.cond69, !dbg !3045, !llvm.loop !3046

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3048
    #dbg_value(i32 %inc87, !3008, !DIExpression(), !3010)
  br label %for.cond60, !dbg !3049, !llvm.loop !3050

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3052
    #dbg_value(i32 %row89.0, !3053, !DIExpression(), !3054)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3055
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3016

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3057
    #dbg_value(i1 %cmp94, !3059, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3060)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3061
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3062
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #4, !dbg !3063
    #dbg_value(i8 %call100, !3064, !DIExpression(), !3060)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3065
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3066
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3067
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #4, !dbg !3068
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3069
    #dbg_value(i32 %inc110, !3053, !DIExpression(), !3054)
  br label %for.cond90, !dbg !3070, !llvm.loop !3071

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2930, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2894)
  %10 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3073
  %11 = add i32 %10, 1, !dbg !3073
  %conv116 = add i32 %11, %pivot_row.0, !dbg !3073
    #dbg_value(i32 %conv116, !2930, !DIExpression(), !2894)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3074
    #dbg_value(i32 %inc118, !2931, !DIExpression(), !2932)
  br label %for.cond3, !dbg !3075, !llvm.loop !3076

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3078
    #dbg_value(i32 %i120.0, !3079, !DIExpression(), !3080)
  %exitcond8 = icmp ne i32 %i120.0, %1, !dbg !3081
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2935

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3083
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3085
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #4, !dbg !3086
    #dbg_value(i32 0, !3087, !DIExpression(), !3089)
  br label %for.cond130, !dbg !3090

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3091
    #dbg_value(i32 %j129.0, !3087, !DIExpression(), !3089)
  %exitcond7 = icmp ne i32 %j129.0, %5, !dbg !3092
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3094

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3095
  %12 = load i8, ptr %arrayidx134, align 1, !dbg !3095
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3097
  %13 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3098
  %arrayidx137 = getelementptr i8, ptr %13, i32 %j129.0, !dbg !3098
  store i8 %12, ptr %arrayidx137, align 1, !dbg !3099
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3100
    #dbg_value(i32 %inc139, !3087, !DIExpression(), !3089)
  br label %for.cond130, !dbg !3101, !llvm.loop !3102

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3104
    #dbg_value(i32 %inc142, !3079, !DIExpression(), !3080)
  br label %for.cond121, !dbg !3105, !llvm.loop !3106

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #4, !dbg !3108
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #4, !dbg !3109
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #4, !dbg !3110
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #4, !dbg !3111
  ret void, !dbg !3112
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3113 {
entry:
    #dbg_value(i8 %a, !3115, !DIExpression(), !3116)
    #dbg_value(i8 0, !3117, !DIExpression(), !3116)
  %0 = icmp ne i8 %a, 0, !dbg !3118
  %conv3 = sext i1 %0 to i8, !dbg !3119
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3120
  %xor5 = xor i8 %1, %conv3, !dbg !3121
  ret i8 %xor5, !dbg !3122
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3123 {
entry:
    #dbg_value(i8 %a, !3126, !DIExpression(), !3127)
    #dbg_value(i64 %b, !3128, !DIExpression(), !3127)
  %0 = and i8 %a, 1, !dbg !3129
  %conv1 = zext nneg i8 %0 to i64, !dbg !3130
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3131
    #dbg_value(i64 %mul, !3132, !DIExpression(), !3127)
  %1 = and i8 %a, 2, !dbg !3133
  %conv4 = zext nneg i8 %1 to i64, !dbg !3134
  %mul5 = mul i64 %b, %conv4, !dbg !3135
  %xor = xor i64 %mul, %mul5, !dbg !3136
    #dbg_value(i64 %xor, !3132, !DIExpression(), !3127)
  %2 = and i8 %a, 4, !dbg !3137
  %conv8 = zext nneg i8 %2 to i64, !dbg !3138
  %mul9 = mul i64 %b, %conv8, !dbg !3139
  %xor10 = xor i64 %xor, %mul9, !dbg !3140
    #dbg_value(i64 %xor10, !3132, !DIExpression(), !3127)
  %3 = and i8 %a, 8, !dbg !3141
  %conv13 = zext nneg i8 %3 to i64, !dbg !3142
  %mul14 = mul i64 %b, %conv13, !dbg !3143
  %xor15 = xor i64 %xor10, %mul14, !dbg !3144
    #dbg_value(i64 %xor15, !3132, !DIExpression(), !3127)
    #dbg_value(i64 %xor15, !3145, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3127)
  %shr = lshr i64 %xor15, 4, !dbg !3146
  %and16 = lshr i64 %xor15, 3, !dbg !3147
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3147
  %4 = xor i64 %shr, %shr18, !dbg !3148
  %xor19 = xor i64 %4, %xor15, !dbg !3148
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3149
    #dbg_value(i64 %and20, !3150, !DIExpression(), !3127)
  ret i64 %and20, !dbg !3151
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef nonnull %out, i32 noundef range(i32 -2147483647, -2147483648) %ncols) unnamed_addr #0 !dbg !3152 {
entry:
    #dbg_value(ptr %in, !3155, !DIExpression(), !3156)
    #dbg_value(ptr %out, !3157, !DIExpression(), !3156)
    #dbg_value(i32 %ncols, !3158, !DIExpression(), !3156)
    #dbg_value(ptr %out, !3159, !DIExpression(), !3156)
    #dbg_value(i32 0, !3160, !DIExpression(), !3156)
  br label %for.cond, !dbg !3161

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3163
    #dbg_value(i32 %i.0, !3160, !DIExpression(), !3156)
  %add = or disjoint i32 %i.0, 1, !dbg !3164
  %cmp = icmp slt i32 %add, %ncols, !dbg !3166
  br i1 %cmp, label %for.body, label %for.end, !dbg !3167

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3168
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3168
  %add2 = or disjoint i32 %i.0, 1, !dbg !3170
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3171
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3171
  %shl5 = shl i8 %1, 4, !dbg !3172
  %or = or i8 %shl5, %0, !dbg !3173
  %div = lshr exact i32 %i.0, 1, !dbg !3174
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3175
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3176
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3177
    #dbg_value(i32 %add8, !3160, !DIExpression(), !3156)
  br label %for.cond, !dbg !3178, !llvm.loop !3179

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3163
  %2 = and i32 %ncols, -2147483647, !dbg !3181
  %cmp9 = icmp eq i32 %2, 1, !dbg !3181
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3181

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3183
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3183
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3185
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3186
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3187
  br label %if.end, !dbg !3188

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3189
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3190 {
entry:
    #dbg_value(i32 %a, !3193, !DIExpression(), !3194)
    #dbg_value(i32 %b, !3195, !DIExpression(), !3194)
  %xor = xor i32 %a, %b, !dbg !3196
  %0 = icmp sgt i32 %xor, 0, !dbg !3197
  %shr = sext i1 %0 to i64, !dbg !3197
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3198
  %xor1 = xor i64 %1, %shr, !dbg !3199
  ret i64 %xor1, !dbg !3200
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3201 {
entry:
    #dbg_value(i32 %a, !3202, !DIExpression(), !3203)
    #dbg_value(i32 %b, !3204, !DIExpression(), !3203)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3205, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3203)
  %0 = icmp slt i32 %b, %a, !dbg !3206
  %shr = sext i1 %0 to i64, !dbg !3206
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3207
  %xor = xor i64 %1, %shr, !dbg !3208
  ret i64 %xor, !dbg !3209
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef nonnull %in, i32 noundef range(i32 -2147483648, 2147483647) %index) unnamed_addr #0 !dbg !3210 {
entry:
    #dbg_value(ptr %in, !3213, !DIExpression(), !3214)
    #dbg_value(i32 %index, !3215, !DIExpression(), !3214)
  %div = sdiv i32 %index, 16, !dbg !3216
    #dbg_value(i32 %div, !3217, !DIExpression(), !3214)
  %rem = srem i32 %index, 16, !dbg !3218
    #dbg_value(i32 %rem, !3219, !DIExpression(), !3214)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3220
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3220
  %mul = shl nsw i32 %rem, 2, !dbg !3221
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3222
  %shr = lshr i64 %0, %sh_prom, !dbg !3222
  %1 = trunc i64 %shr to i8, !dbg !3223
  %conv = and i8 %1, 15, !dbg !3223
  ret i8 %conv, !dbg !3224
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext range(i8 0, 16) %a) unnamed_addr #0 !dbg !3225 {
entry:
    #dbg_value(i8 %a, !3228, !DIExpression(), !3229)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #4, !dbg !3230
    #dbg_value(i8 %call, !3231, !DIExpression(), !3229)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #4, !dbg !3232
    #dbg_value(i8 %call1, !3233, !DIExpression(), !3229)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #4, !dbg !3234
    #dbg_value(i8 %call2, !3235, !DIExpression(), !3229)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #4, !dbg !3236
    #dbg_value(i8 %call3, !3237, !DIExpression(), !3229)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #4, !dbg !3238
    #dbg_value(i8 %call4, !3239, !DIExpression(), !3229)
  ret i8 %call4, !dbg !3240
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, i8 noundef zeroext range(i8 0, 16) %a, ptr noundef nonnull %acc) unnamed_addr #0 !dbg !3241 {
entry:
    #dbg_value(i32 %legs, !3244, !DIExpression(), !3245)
    #dbg_value(ptr %in, !3246, !DIExpression(), !3245)
    #dbg_value(i8 %a, !3247, !DIExpression(), !3245)
    #dbg_value(ptr %acc, !3248, !DIExpression(), !3245)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #4, !dbg !3249
    #dbg_value(i32 %call, !3250, !DIExpression(), !3245)
    #dbg_value(i64 1229782938247303441, !3251, !DIExpression(), !3245)
    #dbg_value(i32 0, !3252, !DIExpression(), !3254)
  %0 = icmp sgt i32 %legs, 0, !dbg !3255
  %1 = select i1 %0, i32 %legs, i32 0, !dbg !3255
  br label %for.cond, !dbg !3255

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3256
    #dbg_value(i32 %i.0, !3252, !DIExpression(), !3254)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3257
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3259

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3260
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3260
  %and = and i64 %2, 1229782938247303441, !dbg !3262
  %and1 = and i32 %call, 255, !dbg !3263
  %conv = zext nneg i32 %and1 to i64, !dbg !3264
  %mul = mul i64 %and, %conv, !dbg !3265
  %shr = lshr i64 %2, 1, !dbg !3266
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3267
  %shr4 = lshr i32 %call, 8, !dbg !3268
  %and5 = and i32 %shr4, 15, !dbg !3269
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3270
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3271
  %xor = xor i64 %mul, %mul7, !dbg !3272
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3273
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !3273
  %shr9 = lshr i64 %3, 2, !dbg !3274
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3275
  %shr11 = lshr i32 %call, 16, !dbg !3276
  %and12 = and i32 %shr11, 15, !dbg !3277
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3278
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3279
  %xor15 = xor i64 %xor, %mul14, !dbg !3280
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3281
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !3281
  %shr17 = lshr i64 %4, 3, !dbg !3282
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3283
  %shr19 = lshr i32 %call, 24, !dbg !3284
  %and20 = and i32 %shr19, 15, !dbg !3285
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3286
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3287
  %xor23 = xor i64 %xor15, %mul22, !dbg !3288
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3289
  %5 = load i64, ptr %arrayidx24, align 8, !dbg !3290
  %xor25 = xor i64 %5, %xor23, !dbg !3290
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3290
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3291
    #dbg_value(i32 %inc, !3252, !DIExpression(), !3254)
  br label %for.cond, !dbg !3292, !llvm.loop !3293

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3295
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef range(i32 -134217727, 134217728) %legs, ptr noundef nonnull %in, ptr noundef nonnull %out) unnamed_addr #0 !dbg !3296 {
entry:
    #dbg_value(i32 %legs, !3299, !DIExpression(), !3300)
    #dbg_value(ptr %in, !3301, !DIExpression(), !3300)
    #dbg_value(ptr %out, !3302, !DIExpression(), !3300)
    #dbg_value(ptr %in, !3303, !DIExpression(), !3300)
    #dbg_value(i32 0, !3304, !DIExpression(), !3306)
  br label %for.cond, !dbg !3307

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3308
    #dbg_value(i32 %i.0, !3304, !DIExpression(), !3306)
  %mul = shl nsw i32 %legs, 4, !dbg !3309
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3311
  br i1 %cmp, label %for.body, label %for.end, !dbg !3312

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3313
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3315
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3315
  %1 = and i8 %0, 15, !dbg !3316
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3317
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3318
  %div3 = lshr exact i32 %i.0, 1, !dbg !3319
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3320
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3320
  %3 = lshr i8 %2, 4, !dbg !3321
  %add = or disjoint i32 %i.0, 1, !dbg !3322
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3323
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3324
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3325
    #dbg_value(i32 %add8, !3304, !DIExpression(), !3306)
  br label %for.cond, !dbg !3326, !llvm.loop !3327

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3329
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, -2147483648) i32 @mul_table.22(i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3330 {
entry:
    #dbg_value(i8 %b, !3331, !DIExpression(), !3332)
  %conv = zext nneg i8 %b to i32, !dbg !3333
  %mul = mul nuw nsw i32 %conv, 134480385, !dbg !3334
    #dbg_value(i32 %mul, !3335, !DIExpression(), !3332)
    #dbg_value(i32 -252645136, !3336, !DIExpression(), !3332)
  %and = and i32 %mul, 1894838512, !dbg !3337
    #dbg_value(i32 %and, !3338, !DIExpression(), !3332)
  %shr = lshr exact i32 %and, 4, !dbg !3339
  %shr1 = lshr exact i32 %and, 3, !dbg !3340
  %0 = xor i32 %shr, %shr1, !dbg !3341
  %xor2 = xor i32 %0, %mul, !dbg !3341
  ret i32 %xor2, !dbg !3342
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3343 {
entry:
    #dbg_value(i8 %a, !3344, !DIExpression(), !3345)
    #dbg_value(i8 %b, !3346, !DIExpression(), !3345)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3347
  %xor1 = xor i8 %a, %0, !dbg !3348
    #dbg_value(i8 %xor1, !3344, !DIExpression(), !3345)
  %1 = trunc i8 %xor1 to i1, !dbg !3349
    #dbg_value(i8 poison, !3350, !DIExpression(), !3345)
  %2 = and i8 %xor1, 2, !dbg !3351
  %mul9 = mul i8 %2, %b, !dbg !3352
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3349
  %xor11 = xor i8 %conv10, %mul9, !dbg !3353
    #dbg_value(i8 %xor11, !3350, !DIExpression(), !3345)
  %3 = and i8 %xor1, 4, !dbg !3354
  %mul16 = mul i8 %3, %b, !dbg !3355
  %xor18 = xor i8 %mul16, %xor11, !dbg !3356
    #dbg_value(i8 %xor18, !3350, !DIExpression(), !3345)
  %4 = and i8 %xor1, 8, !dbg !3357
  %mul23 = mul i8 %4, %b, !dbg !3358
  %xor25 = xor i8 %mul23, %xor18, !dbg !3359
    #dbg_value(i8 %xor25, !3350, !DIExpression(), !3345)
    #dbg_value(i8 %xor25, !3360, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3345)
  %5 = lshr i8 %xor25, 4, !dbg !3361
  %6 = lshr i8 %xor25, 3, !dbg !3362
  %7 = and i8 %6, 14, !dbg !3362
  %8 = xor i8 %5, %7, !dbg !3363
  %xor25.masked = and i8 %xor25, 15, !dbg !3364
  %9 = xor i8 %8, %xor25.masked, !dbg !3364
    #dbg_value(i8 %9, !3365, !DIExpression(), !3345)
  ret i8 %9, !dbg !3366
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef range(i32 -2147483647, -2147483648) %n, i32 noundef %m) unnamed_addr #0 !dbg !3367 {
entry:
    #dbg_value(ptr %a, !3368, !DIExpression(), !3369)
    #dbg_value(ptr %b, !3370, !DIExpression(), !3369)
    #dbg_value(i32 %n, !3371, !DIExpression(), !3369)
    #dbg_value(i32 1, !3372, !DIExpression(), !3369)
    #dbg_value(i8 0, !3373, !DIExpression(), !3369)
    #dbg_value(i32 0, !3374, !DIExpression(), !3376)
  %0 = icmp sgt i32 %n, 0, !dbg !3377
  %1 = select i1 %0, i32 %n, i32 0, !dbg !3377
  br label %for.cond, !dbg !3377

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3369
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3378
    #dbg_value(i32 %i.0, !3374, !DIExpression(), !3376)
    #dbg_value(ptr %b.addr.0, !3370, !DIExpression(), !3369)
    #dbg_value(i8 %ret.0, !3373, !DIExpression(), !3369)
  %exitcond = icmp ne i32 %i.0, %1, !dbg !3379
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3381

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3382
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3382
  %3 = load i8, ptr %b.addr.0, align 1, !dbg !3384
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %2, i8 noundef zeroext %3) #4, !dbg !3385
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #4, !dbg !3386
    #dbg_value(i8 %call1, !3373, !DIExpression(), !3369)
  %inc = add nuw i32 %i.0, 1, !dbg !3387
    #dbg_value(i32 %inc, !3374, !DIExpression(), !3376)
  %add.ptr = getelementptr inbounds nuw i8, ptr %b.addr.0, i32 1, !dbg !3388
    #dbg_value(ptr %add.ptr, !3370, !DIExpression(), !3369)
  br label %for.cond, !dbg !3389, !llvm.loop !3390

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3369
  ret i8 %ret.0.lcssa, !dbg !3392
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @add_f.25(i8 noundef zeroext range(i8 0, 16) %a, i8 noundef zeroext range(i8 0, 16) %b) unnamed_addr #0 !dbg !3393 {
entry:
    #dbg_value(i8 %a, !3394, !DIExpression(), !3395)
    #dbg_value(i8 %b, !3396, !DIExpression(), !3395)
  %xor1 = xor i8 %a, %b, !dbg !3397
  ret i8 %xor1, !dbg !3398
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3399 {
entry:
    #dbg_value(ptr %state, !3407, !DIExpression(), !3408)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !3409
  store ptr %call, ptr %state, align 4, !dbg !3410
  %cmp = icmp eq ptr %call, null, !dbg !3411
  br i1 %cmp, label %if.then, label %if.end, !dbg !3411

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !3413
  br label %if.end, !dbg !3415

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !3416
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !3417
  ret void, !dbg !3418
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_init(ptr noundef %s_inc) unnamed_addr #0 !dbg !3419 {
entry:
    #dbg_value(ptr %s_inc, !3420, !DIExpression(), !3421)
    #dbg_value(i32 0, !3422, !DIExpression(), !3421)
  br label %for.cond, !dbg !3423

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3425
    #dbg_value(i32 %i.0, !3422, !DIExpression(), !3421)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3426
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3428

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s_inc, i32 %i.0, !dbg !3429
  store i64 0, ptr %arrayidx, align 8, !dbg !3431
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3432
    #dbg_value(i32 %inc, !3422, !DIExpression(), !3421)
  br label %for.cond, !dbg !3433, !llvm.loop !3434

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3436
  store i64 0, ptr %arrayidx1, align 8, !dbg !3437
  ret void, !dbg !3438
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3439 {
entry:
    #dbg_value(ptr %state, !3442, !DIExpression(), !3443)
    #dbg_value(ptr %input, !3444, !DIExpression(), !3443)
    #dbg_value(i32 %inlen, !3445, !DIExpression(), !3443)
  %0 = load ptr, ptr %state, align 4, !dbg !3446
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen) #4, !dbg !3447
  ret void, !dbg !3448
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_absorb(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen) unnamed_addr #0 !dbg !3449 {
entry:
    #dbg_value(ptr %s_inc, !3452, !DIExpression(), !3453)
    #dbg_value(i32 %r, !3454, !DIExpression(), !3453)
    #dbg_value(ptr %m, !3455, !DIExpression(), !3453)
    #dbg_value(i32 %mlen, !3456, !DIExpression(), !3453)
  br label %while.cond, !dbg !3457

while.cond:                                       ; preds = %for.end, %entry
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr, %for.end ]
  %mlen.addr.0 = phi i32 [ %mlen, %entry ], [ %sub20, %for.end ]
    #dbg_value(i32 %mlen.addr.0, !3456, !DIExpression(), !3453)
    #dbg_value(ptr %m.addr.0, !3455, !DIExpression(), !3453)
  %conv = zext i32 %mlen.addr.0 to i64, !dbg !3458
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3459
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3459
  %add = add i64 %0, %conv, !dbg !3460
  %conv1 = zext nneg i32 %r to i64, !dbg !3461
  %cmp.not = icmp ult i64 %add, %conv1, !dbg !3462
  br i1 %cmp.not, label %for.cond25.preheader, label %for.cond.preheader, !dbg !3457

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !3463

for.cond25.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa1 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  %mlen.addr.0.lcssa = phi i32 [ %mlen.addr.0, %while.cond ]
  br label %for.cond25, !dbg !3466

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3468
    #dbg_value(i32 %i.0, !3469, !DIExpression(), !3453)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3470
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !3470
  %conv4 = trunc i64 %1 to i32, !dbg !3472
  %sub = sub i32 %r, %conv4, !dbg !3473
  %cmp5 = icmp ult i32 %i.0, %sub, !dbg !3474
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3463

for.body:                                         ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %i.0, !dbg !3475
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !3475
  %conv8 = zext i8 %2 to i64, !dbg !3477
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3478
  %3 = load i64, ptr %arrayidx9, align 8, !dbg !3478
  %conv10 = zext i32 %i.0 to i64, !dbg !3479
  %add11 = add i64 %3, %conv10, !dbg !3480
  %and = shl i64 %add11, 3, !dbg !3481
  %mul = and i64 %and, 56, !dbg !3481
  %shl = shl nuw i64 %conv8, %mul, !dbg !3482
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3483
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !3483
  %conv13 = zext i32 %i.0 to i64, !dbg !3484
  %add14 = add i64 %4, %conv13, !dbg !3485
  %shr = lshr i64 %add14, 3, !dbg !3486
  %idxprom = trunc i64 %shr to i32, !dbg !3487
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !3487
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !3488
  %xor = xor i64 %5, %shl, !dbg !3488
  store i64 %xor, ptr %arrayidx15, align 8, !dbg !3488
  %inc = add nuw i32 %i.0, 1, !dbg !3489
    #dbg_value(i32 %inc, !3469, !DIExpression(), !3453)
  br label %for.cond, !dbg !3490, !llvm.loop !3491

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3493
  %6 = load i64, ptr %arrayidx17, align 8, !dbg !3493
  %7 = trunc i64 %6 to i32, !dbg !3494
  %conv19.neg = sub i32 %7, %r, !dbg !3494
  %sub20 = add i32 %conv19.neg, %mlen.addr.0, !dbg !3495
    #dbg_value(i32 %sub20, !3456, !DIExpression(), !3453)
  %8 = trunc i64 %6 to i32, !dbg !3496
  %idx.ext = sub i32 %r, %8, !dbg !3496
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %idx.ext, !dbg !3496
    #dbg_value(ptr %add.ptr, !3455, !DIExpression(), !3453)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3497
  store i64 0, ptr %arrayidx24, align 8, !dbg !3498
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !3499
  br label %while.cond, !dbg !3457, !llvm.loop !3500

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body28
  %i.1 = phi i32 [ %inc45, %for.body28 ], [ 0, %for.cond25.preheader ], !dbg !3502
    #dbg_value(i32 %i.1, !3469, !DIExpression(), !3453)
  %exitcond = icmp ne i32 %i.1, %mlen.addr.0.lcssa1, !dbg !3503
  br i1 %exitcond, label %for.body28, label %for.end46, !dbg !3466

for.body28:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.1, !dbg !3505
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !3505
  %conv30 = zext i8 %9 to i64, !dbg !3507
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3508
  %10 = load i64, ptr %arrayidx31, align 8, !dbg !3508
  %conv32 = zext i32 %i.1 to i64, !dbg !3509
  %add33 = add i64 %10, %conv32, !dbg !3510
  %and34 = shl i64 %add33, 3, !dbg !3511
  %mul35 = and i64 %and34, 56, !dbg !3511
  %shl36 = shl nuw i64 %conv30, %mul35, !dbg !3512
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3513
  %11 = load i64, ptr %arrayidx37, align 8, !dbg !3513
  %conv38 = zext i32 %i.1 to i64, !dbg !3514
  %add39 = add i64 %11, %conv38, !dbg !3515
  %shr40 = lshr i64 %add39, 3, !dbg !3516
  %idxprom41 = trunc i64 %shr40 to i32, !dbg !3517
  %arrayidx42 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom41, !dbg !3517
  %12 = load i64, ptr %arrayidx42, align 8, !dbg !3518
  %xor43 = xor i64 %12, %shl36, !dbg !3518
  store i64 %xor43, ptr %arrayidx42, align 8, !dbg !3518
  %inc45 = add i32 %i.1, 1, !dbg !3519
    #dbg_value(i32 %inc45, !3469, !DIExpression(), !3453)
  br label %for.cond25, !dbg !3520, !llvm.loop !3521

for.end46:                                        ; preds = %for.cond25
  %conv47 = zext i32 %mlen.addr.0.lcssa to i64, !dbg !3523
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !3524
  %13 = load i64, ptr %arrayidx48, align 8, !dbg !3525
  %add49 = add i64 %13, %conv47, !dbg !3525
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !3525
  ret void, !dbg !3526
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3527 {
entry:
    #dbg_value(ptr %state, !3528, !DIExpression(), !3529)
  %0 = load i64, ptr %state, align 8, !dbg !3530
    #dbg_value(i64 %0, !3531, !DIExpression(), !3529)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3532
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3532
    #dbg_value(i64 %1, !3533, !DIExpression(), !3529)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3534
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3534
    #dbg_value(i64 %2, !3535, !DIExpression(), !3529)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3536
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3536
    #dbg_value(i64 %3, !3537, !DIExpression(), !3529)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3538
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3538
    #dbg_value(i64 %4, !3539, !DIExpression(), !3529)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3540
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3540
    #dbg_value(i64 %5, !3541, !DIExpression(), !3529)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3542
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3542
    #dbg_value(i64 %6, !3543, !DIExpression(), !3529)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3544
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3544
    #dbg_value(i64 %7, !3545, !DIExpression(), !3529)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3546
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3546
    #dbg_value(i64 %8, !3547, !DIExpression(), !3529)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3548
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3548
    #dbg_value(i64 %9, !3549, !DIExpression(), !3529)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3550
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3550
    #dbg_value(i64 %10, !3551, !DIExpression(), !3529)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3552
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3552
    #dbg_value(i64 %11, !3553, !DIExpression(), !3529)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3554
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3554
    #dbg_value(i64 %12, !3555, !DIExpression(), !3529)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3556
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3556
    #dbg_value(i64 %13, !3557, !DIExpression(), !3529)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3558
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3558
    #dbg_value(i64 %14, !3559, !DIExpression(), !3529)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3560
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3560
    #dbg_value(i64 %15, !3561, !DIExpression(), !3529)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3562
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3562
    #dbg_value(i64 %16, !3563, !DIExpression(), !3529)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3564
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3564
    #dbg_value(i64 %17, !3565, !DIExpression(), !3529)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3566
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3566
    #dbg_value(i64 %18, !3567, !DIExpression(), !3529)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3568
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3568
    #dbg_value(i64 %19, !3569, !DIExpression(), !3529)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3570
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3570
    #dbg_value(i64 %20, !3571, !DIExpression(), !3529)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3572
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3572
    #dbg_value(i64 %21, !3573, !DIExpression(), !3529)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3574
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3574
    #dbg_value(i64 %22, !3575, !DIExpression(), !3529)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3576
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3576
    #dbg_value(i64 %23, !3577, !DIExpression(), !3529)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3578
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3578
    #dbg_value(i64 %24, !3579, !DIExpression(), !3529)
    #dbg_value(i32 0, !3580, !DIExpression(), !3529)
  br label %for.cond, !dbg !3581

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3529
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3529
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3529
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3529
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3529
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3529
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3529
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3529
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3529
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3529
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3529
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3529
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3529
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3529
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3529
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3529
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3529
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3529
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3529
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3529
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3529
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3529
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3529
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3529
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3583
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3529
    #dbg_value(i64 %Asu.0, !3579, !DIExpression(), !3529)
    #dbg_value(i32 %round.0, !3580, !DIExpression(), !3529)
    #dbg_value(i64 %Aba.0, !3531, !DIExpression(), !3529)
    #dbg_value(i64 %Abe.0, !3533, !DIExpression(), !3529)
    #dbg_value(i64 %Abi.0, !3535, !DIExpression(), !3529)
    #dbg_value(i64 %Abo.0, !3537, !DIExpression(), !3529)
    #dbg_value(i64 %Abu.0, !3539, !DIExpression(), !3529)
    #dbg_value(i64 %Aga.0, !3541, !DIExpression(), !3529)
    #dbg_value(i64 %Age.0, !3543, !DIExpression(), !3529)
    #dbg_value(i64 %Agi.0, !3545, !DIExpression(), !3529)
    #dbg_value(i64 %Ago.0, !3547, !DIExpression(), !3529)
    #dbg_value(i64 %Agu.0, !3549, !DIExpression(), !3529)
    #dbg_value(i64 %Aka.0, !3551, !DIExpression(), !3529)
    #dbg_value(i64 %Ake.0, !3553, !DIExpression(), !3529)
    #dbg_value(i64 %Aki.0, !3555, !DIExpression(), !3529)
    #dbg_value(i64 %Ako.0, !3557, !DIExpression(), !3529)
    #dbg_value(i64 %Aku.0, !3559, !DIExpression(), !3529)
    #dbg_value(i64 %Ama.0, !3561, !DIExpression(), !3529)
    #dbg_value(i64 %Ame.0, !3563, !DIExpression(), !3529)
    #dbg_value(i64 %Ami.0, !3565, !DIExpression(), !3529)
    #dbg_value(i64 %Amo.0, !3567, !DIExpression(), !3529)
    #dbg_value(i64 %Amu.0, !3569, !DIExpression(), !3529)
    #dbg_value(i64 %Asa.0, !3571, !DIExpression(), !3529)
    #dbg_value(i64 %Ase.0, !3573, !DIExpression(), !3529)
    #dbg_value(i64 %Asi.0, !3575, !DIExpression(), !3529)
    #dbg_value(i64 %Aso.0, !3577, !DIExpression(), !3529)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3584
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3586

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 poison, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3622
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3624
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3625
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3626
    #dbg_value(i64 %xor35, !3589, !DIExpression(), !3529)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3627
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3628
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3629
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3630
    #dbg_value(i64 %xor43, !3591, !DIExpression(), !3529)
  %25 = shl i64 %xor43, 1, !dbg !3631
  %26 = lshr i64 %xor43, 63, !dbg !3631
  %27 = or i64 %25, %26, !dbg !3631
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor57 = xor i64 %xor35, %27, !dbg !3632
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 %xor57, !3595, !DIExpression(), !3529)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3633
    #dbg_value(i64 %xor203, !3547, !DIExpression(), !3529)
  %28 = shl i64 %xor203, 55, !dbg !3634
  %29 = lshr i64 %xor203, 9, !dbg !3634
  %30 = or i64 %28, %29, !dbg !3634
    #dbg_value(i64 %30, !3588, !DIExpression(), !3529)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3635
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3636
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3637
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3638
    #dbg_value(i64 %xor31, !3588, !DIExpression(), !3529)
  %31 = shl i64 %xor31, 1, !dbg !3639
  %32 = lshr i64 %xor31, 63, !dbg !3639
  %33 = or i64 %31, %32, !dbg !3639
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor45 = xor i64 %xor43, %33, !dbg !3640
    #dbg_value(i64 %xor45, !3592, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3641
    #dbg_value(i64 %xor211, !3561, !DIExpression(), !3529)
  %34 = shl i64 %xor211, 41, !dbg !3642
  %35 = lshr i64 %xor211, 23, !dbg !3642
  %36 = or i64 %34, %35, !dbg !3642
    #dbg_value(i64 %36, !3590, !DIExpression(), !3529)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3643
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3644
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3645
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3646
    #dbg_value(i64 %xor39, !3590, !DIExpression(), !3529)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3647
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3648
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3649
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3650
    #dbg_value(i64 %xor27, !3587, !DIExpression(), !3529)
  %37 = shl i64 %xor27, 1, !dbg !3651
  %38 = lshr i64 %xor27, 63, !dbg !3651
  %39 = or i64 %37, %38, !dbg !3651
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor61 = xor i64 %xor39, %39, !dbg !3652
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 %xor61, !3596, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3653
    #dbg_value(i64 %xor207, !3559, !DIExpression(), !3529)
  %40 = shl i64 %xor207, 39, !dbg !3654
  %41 = lshr i64 %xor207, 25, !dbg !3654
  %42 = or i64 %40, %41, !dbg !3654
    #dbg_value(i64 %42, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not222 = xor i64 %42, -1, !dbg !3655
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and223 = and i64 %36, %not222, !dbg !3656
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor224 = xor i64 %30, %and223, !dbg !3657
    #dbg_value(i64 %xor224, !3618, !DIExpression(), !3529)
  %43 = shl i64 %xor39, 1, !dbg !3658
  %44 = lshr i64 %xor39, 63, !dbg !3658
  %45 = or i64 %43, %44, !dbg !3658
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor53 = xor i64 %xor31, %45, !dbg !3659
    #dbg_value(i64 %xor53, !3594, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3660
    #dbg_value(i64 %xor67, !3555, !DIExpression(), !3529)
  %46 = shl i64 %xor67, 43, !dbg !3661
  %47 = lshr i64 %xor67, 21, !dbg !3661
  %48 = or i64 %46, %47, !dbg !3661
    #dbg_value(i64 %48, !3589, !DIExpression(), !3529)
  %49 = shl i64 %xor35, 1, !dbg !3662
  %50 = lshr i64 %xor35, 63, !dbg !3662
  %51 = or i64 %49, %50, !dbg !3662
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor49 = xor i64 %xor27, %51, !dbg !3663
    #dbg_value(i64 %xor49, !3593, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3664
    #dbg_value(i64 %xor63, !3543, !DIExpression(), !3529)
  %52 = shl i64 %xor63, 44, !dbg !3665
  %53 = lshr i64 %xor63, 20, !dbg !3665
  %54 = or i64 %52, %53, !dbg !3665
    #dbg_value(i64 %54, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not = xor i64 %54, -1, !dbg !3666
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and = and i64 %48, %not, !dbg !3667
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3668
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3668
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %56 = xor i64 %and, %55, !dbg !3669
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3670
    #dbg_value(i64 %xor62, !3531, !DIExpression(), !3529)
    #dbg_value(i64 %xor62, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor81 = xor i64 %56, %xor62, !dbg !3669
    #dbg_value(i64 %xor81, !3597, !DIExpression(), !3529)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3671
    #dbg_value(i64 %xor94, !3537, !DIExpression(), !3529)
  %57 = shl i64 %xor94, 28, !dbg !3672
  %58 = lshr i64 %xor94, 36, !dbg !3672
  %59 = or i64 %57, %58, !dbg !3672
    #dbg_value(i64 %59, !3587, !DIExpression(), !3529)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3673
    #dbg_value(i64 %xor102, !3551, !DIExpression(), !3529)
  %60 = shl i64 %xor102, 3, !dbg !3674
  %61 = lshr i64 %xor102, 61, !dbg !3674
  %62 = or i64 %60, %61, !dbg !3674
    #dbg_value(i64 %62, !3589, !DIExpression(), !3529)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3675
    #dbg_value(i64 %xor98, !3549, !DIExpression(), !3529)
  %63 = shl i64 %xor98, 20, !dbg !3676
  %64 = lshr i64 %xor98, 44, !dbg !3676
  %65 = or i64 %63, %64, !dbg !3676
    #dbg_value(i64 %65, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not114 = xor i64 %65, -1, !dbg !3677
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and115 = and i64 %62, %not114, !dbg !3678
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor116 = xor i64 %59, %and115, !dbg !3679
    #dbg_value(i64 %xor116, !3602, !DIExpression(), !3529)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3680
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3681
    #dbg_value(i64 %xor129, !3533, !DIExpression(), !3529)
  %66 = shl i64 %xor129, 1, !dbg !3682
  %67 = lshr i64 %xor129, 63, !dbg !3682
  %68 = or i64 %66, %67, !dbg !3682
    #dbg_value(i64 %68, !3587, !DIExpression(), !3529)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3683
    #dbg_value(i64 %xor137, !3557, !DIExpression(), !3529)
  %69 = shl i64 %xor137, 25, !dbg !3684
  %70 = lshr i64 %xor137, 39, !dbg !3684
  %71 = or i64 %69, %70, !dbg !3684
    #dbg_value(i64 %71, !3589, !DIExpression(), !3529)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3685
    #dbg_value(i64 %xor133, !3545, !DIExpression(), !3529)
  %72 = shl i64 %xor133, 6, !dbg !3686
  %73 = lshr i64 %xor133, 58, !dbg !3686
  %74 = or i64 %72, %73, !dbg !3686
    #dbg_value(i64 %74, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not149 = xor i64 %74, -1, !dbg !3687
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and150 = and i64 %71, %not149, !dbg !3688
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor151 = xor i64 %68, %and150, !dbg !3689
    #dbg_value(i64 %xor151, !3607, !DIExpression(), !3529)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3690
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3691
    #dbg_value(i64 %xor164, !3539, !DIExpression(), !3529)
  %75 = shl i64 %xor164, 27, !dbg !3692
  %76 = lshr i64 %xor164, 37, !dbg !3692
  %77 = or i64 %75, %76, !dbg !3692
    #dbg_value(i64 %77, !3587, !DIExpression(), !3529)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3693
    #dbg_value(i64 %xor172, !3553, !DIExpression(), !3529)
  %78 = shl i64 %xor172, 10, !dbg !3694
  %79 = lshr i64 %xor172, 54, !dbg !3694
  %80 = or i64 %78, %79, !dbg !3694
    #dbg_value(i64 %80, !3589, !DIExpression(), !3529)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3695
    #dbg_value(i64 %xor168, !3541, !DIExpression(), !3529)
  %81 = shl i64 %xor168, 36, !dbg !3696
  %82 = lshr i64 %xor168, 28, !dbg !3696
  %83 = or i64 %81, %82, !dbg !3696
    #dbg_value(i64 %83, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not184 = xor i64 %83, -1, !dbg !3697
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and185 = and i64 %80, %not184, !dbg !3698
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor186 = xor i64 %77, %and185, !dbg !3699
    #dbg_value(i64 %xor186, !3612, !DIExpression(), !3529)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3700
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3701
    #dbg_value(i64 %xor199, !3535, !DIExpression(), !3529)
  %84 = shl i64 %xor199, 62, !dbg !3702
  %85 = lshr i64 %xor199, 2, !dbg !3702
  %86 = or i64 %84, %85, !dbg !3702
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not219 = xor i64 %30, -1, !dbg !3703
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and220 = and i64 %42, %not219, !dbg !3704
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor221 = xor i64 %86, %and220, !dbg !3705
    #dbg_value(i64 %xor221, !3617, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3706
    #dbg_value(i64 %xor237, !3587, !DIExpression(), !3529)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3707
    #dbg_value(i64 %xor75, !3579, !DIExpression(), !3529)
  %87 = shl i64 %xor75, 14, !dbg !3708
  %88 = lshr i64 %xor75, 50, !dbg !3708
  %89 = or i64 %87, %88, !dbg !3708
    #dbg_value(i64 %89, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3709
    #dbg_value(i64 %xor71, !3567, !DIExpression(), !3529)
  %90 = shl i64 %xor71, 21, !dbg !3710
  %91 = lshr i64 %xor71, 43, !dbg !3710
  %92 = or i64 %90, %91, !dbg !3710
    #dbg_value(i64 %92, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not85 = xor i64 %92, -1, !dbg !3711
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and86 = and i64 %89, %not85, !dbg !3712
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor87 = xor i64 %48, %and86, !dbg !3713
    #dbg_value(i64 %xor87, !3599, !DIExpression(), !3529)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3714
    #dbg_value(i64 %xor110, !3575, !DIExpression(), !3529)
  %93 = shl i64 %xor110, 61, !dbg !3715
  %94 = lshr i64 %xor110, 3, !dbg !3715
  %95 = or i64 %93, %94, !dbg !3715
    #dbg_value(i64 %95, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3716
    #dbg_value(i64 %xor106, !3563, !DIExpression(), !3529)
  %96 = shl i64 %xor106, 45, !dbg !3717
  %97 = lshr i64 %xor106, 19, !dbg !3717
  %98 = or i64 %96, %97, !dbg !3717
    #dbg_value(i64 %98, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not120 = xor i64 %98, -1, !dbg !3718
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and121 = and i64 %95, %not120, !dbg !3719
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor122 = xor i64 %62, %and121, !dbg !3720
    #dbg_value(i64 %xor122, !3604, !DIExpression(), !3529)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3721
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3722
    #dbg_value(i64 %xor145, !3571, !DIExpression(), !3529)
  %99 = shl i64 %xor145, 18, !dbg !3723
  %100 = lshr i64 %xor145, 46, !dbg !3723
  %101 = or i64 %99, %100, !dbg !3723
    #dbg_value(i64 %101, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3724
    #dbg_value(i64 %xor141, !3569, !DIExpression(), !3529)
  %102 = shl i64 %xor141, 8, !dbg !3725
  %103 = lshr i64 %xor141, 56, !dbg !3725
  %104 = or i64 %102, %103, !dbg !3725
    #dbg_value(i64 %104, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not155 = xor i64 %104, -1, !dbg !3726
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and156 = and i64 %101, %not155, !dbg !3727
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor157 = xor i64 %71, %and156, !dbg !3728
    #dbg_value(i64 %xor157, !3609, !DIExpression(), !3529)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3729
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3730
    #dbg_value(i64 %xor180, !3577, !DIExpression(), !3529)
  %105 = shl i64 %xor180, 56, !dbg !3731
  %106 = lshr i64 %xor180, 8, !dbg !3731
  %107 = or i64 %105, %106, !dbg !3731
    #dbg_value(i64 %107, !3591, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3732
    #dbg_value(i64 %xor176, !3565, !DIExpression(), !3529)
  %108 = shl i64 %xor176, 15, !dbg !3733
  %109 = lshr i64 %xor176, 49, !dbg !3733
  %110 = or i64 %108, %109, !dbg !3733
    #dbg_value(i64 %110, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %not190 = xor i64 %110, -1, !dbg !3734
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and191 = and i64 %107, %not190, !dbg !3735
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor192 = xor i64 %80, %and191, !dbg !3736
    #dbg_value(i64 %xor192, !3614, !DIExpression(), !3529)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3737
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3738
    #dbg_value(i64 %xor215, !3573, !DIExpression(), !3529)
  %111 = shl i64 %xor215, 2, !dbg !3739
  %112 = lshr i64 %xor215, 62, !dbg !3739
  %113 = or i64 %111, %112, !dbg !3739
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not225 = xor i64 %36, -1, !dbg !3740
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and226 = and i64 %113, %not225, !dbg !3741
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor227 = xor i64 %42, %and226, !dbg !3742
    #dbg_value(i64 %xor227, !3619, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3743
    #dbg_value(i64 %xor245, !3589, !DIExpression(), !3529)
  %114 = shl i64 %xor245, 1, !dbg !3744
  %115 = lshr i64 %xor245, 63, !dbg !3744
  %116 = or i64 %114, %115, !dbg !3744
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3593, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor261 = xor i64 %xor237, %116, !dbg !3745
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3618, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 %xor261, !3593, !DIExpression(), !3529)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3746
    #dbg_value(i64 %xor429, !3618, !DIExpression(), !3529)
  %117 = shl i64 %xor429, 2, !dbg !3747
  %118 = lshr i64 %xor429, 62, !dbg !3747
  %119 = or i64 %117, %118, !dbg !3747
    #dbg_value(i64 %119, !3591, !DIExpression(), !3529)
  %not123 = xor i64 %95, -1, !dbg !3748
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and124 = and i64 %59, %not123, !dbg !3749
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor125 = xor i64 %98, %and124, !dbg !3750
    #dbg_value(i64 %xor125, !3605, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not91 = xor i64 %xor62, -1, !dbg !3751
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and92 = and i64 %54, %not91, !dbg !3752
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor93 = xor i64 %89, %and92, !dbg !3753
    #dbg_value(i64 %xor93, !3601, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not126 = xor i64 %59, -1, !dbg !3754
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and127 = and i64 %65, %not126, !dbg !3755
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor128 = xor i64 %95, %and127, !dbg !3756
    #dbg_value(i64 %xor128, !3606, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3757
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not161 = xor i64 %68, -1, !dbg !3758
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and162 = and i64 %74, %not161, !dbg !3759
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor163 = xor i64 %101, %and162, !dbg !3760
    #dbg_value(i64 %xor163, !3611, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3761
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not196 = xor i64 %77, -1, !dbg !3762
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and197 = and i64 %83, %not196, !dbg !3763
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor198 = xor i64 %107, %and197, !dbg !3764
    #dbg_value(i64 %xor198, !3616, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3765
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not231 = xor i64 %86, -1, !dbg !3766
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %and232 = and i64 %30, %not231, !dbg !3767
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor233 = xor i64 %113, %and232, !dbg !3768
    #dbg_value(i64 %xor233, !3621, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3769
    #dbg_value(i64 %xor253, !3591, !DIExpression(), !3529)
  %120 = shl i64 %xor253, 1, !dbg !3770
  %121 = lshr i64 %xor253, 63, !dbg !3770
  %122 = or i64 %120, %121, !dbg !3770
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3595, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor269 = xor i64 %xor245, %122, !dbg !3771
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 %xor269, !3595, !DIExpression(), !3529)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3772
    #dbg_value(i64 %xor417, !3605, !DIExpression(), !3529)
  %123 = shl i64 %xor417, 55, !dbg !3773
  %124 = lshr i64 %xor417, 9, !dbg !3773
  %125 = or i64 %123, %124, !dbg !3773
    #dbg_value(i64 %125, !3588, !DIExpression(), !3529)
  %not82 = xor i64 %48, -1, !dbg !3774
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and83 = and i64 %92, %not82, !dbg !3775
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor84 = xor i64 %54, %and83, !dbg !3776
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %not117 = xor i64 %62, -1, !dbg !3777
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and118 = and i64 %98, %not117, !dbg !3778
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor119 = xor i64 %65, %and118, !dbg !3779
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3780
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %not152 = xor i64 %71, -1, !dbg !3781
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and153 = and i64 %104, %not152, !dbg !3782
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor154 = xor i64 %74, %and153, !dbg !3783
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3608, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3784
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %not187 = xor i64 %80, -1, !dbg !3785
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and188 = and i64 %110, %not187, !dbg !3786
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor189 = xor i64 %83, %and188, !dbg !3787
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3788
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3789
    #dbg_value(i64 %xor241, !3588, !DIExpression(), !3529)
  %not88 = xor i64 %89, -1, !dbg !3790
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and89 = and i64 %xor62, %not88, !dbg !3791
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor90 = xor i64 %92, %and89, !dbg !3792
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3793
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not158 = xor i64 %101, -1, !dbg !3794
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and159 = and i64 %68, %not158, !dbg !3795
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor160 = xor i64 %104, %and159, !dbg !3796
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3610, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3797
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not193 = xor i64 %107, -1, !dbg !3798
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and194 = and i64 %77, %not193, !dbg !3799
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor195 = xor i64 %110, %and194, !dbg !3800
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3615, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3801
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %not228 = xor i64 %113, -1, !dbg !3802
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and229 = and i64 %86, %not228, !dbg !3803
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor230 = xor i64 %36, %and229, !dbg !3804
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3620, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3805
    #dbg_value(i64 %xor249, !3590, !DIExpression(), !3529)
  %126 = shl i64 %xor249, 1, !dbg !3806
  %127 = lshr i64 %xor249, 63, !dbg !3806
  %128 = or i64 %126, %127, !dbg !3806
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3594, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor265 = xor i64 %xor241, %128, !dbg !3807
    #dbg_value(i64 %xor265, !3594, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3599, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3614, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3604, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3609, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3808
    #dbg_value(i64 %xor413, !3599, !DIExpression(), !3529)
  %129 = shl i64 %xor413, 62, !dbg !3809
  %130 = lshr i64 %xor413, 2, !dbg !3809
  %131 = or i64 %129, %130, !dbg !3809
    #dbg_value(i64 %131, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not445 = xor i64 %131, -1, !dbg !3810
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and446 = and i64 %125, %not445, !dbg !3811
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor447 = xor i64 %119, %and446, !dbg !3812
    #dbg_value(i64 %xor447, !3579, !DIExpression(), !3529)
  %132 = shl i64 %xor241, 1, !dbg !3813
  %133 = lshr i64 %xor241, 63, !dbg !3813
  %134 = or i64 %132, %133, !dbg !3813
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3592, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor257 = xor i64 %xor253, %134, !dbg !3814
    #dbg_value(i64 %xor257, !3592, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3602, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3617, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3607, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3612, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3815
    #dbg_value(i64 %xor425, !3612, !DIExpression(), !3529)
  %135 = shl i64 %xor425, 41, !dbg !3816
  %136 = lshr i64 %xor425, 23, !dbg !3816
  %137 = or i64 %135, %136, !dbg !3816
    #dbg_value(i64 %137, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not442 = xor i64 %119, -1, !dbg !3817
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and443 = and i64 %131, %not442, !dbg !3818
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3577, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor444 = xor i64 %137, %and443, !dbg !3819
    #dbg_value(i64 %xor444, !3577, !DIExpression(), !3529)
  %138 = shl i64 %xor237, 1, !dbg !3820
  %139 = lshr i64 %xor237, 63, !dbg !3820
  %140 = or i64 %138, %139, !dbg !3820
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3596, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor273 = xor i64 %xor249, %140, !dbg !3821
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3601, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3616, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3606, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3621, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(i64 %xor273, !3596, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3611, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3822
    #dbg_value(i64 %xor421, !3611, !DIExpression(), !3529)
  %141 = shl i64 %xor421, 39, !dbg !3823
  %142 = lshr i64 %xor421, 25, !dbg !3823
  %143 = or i64 %141, %142, !dbg !3823
    #dbg_value(i64 %143, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not439 = xor i64 %137, -1, !dbg !3824
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and440 = and i64 %119, %not439, !dbg !3825
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3575, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor441 = xor i64 %143, %and440, !dbg !3826
    #dbg_value(i64 %xor441, !3575, !DIExpression(), !3529)
  %not436 = xor i64 %143, -1, !dbg !3827
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and437 = and i64 %137, %not436, !dbg !3828
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor438 = xor i64 %125, %and437, !dbg !3829
    #dbg_value(i64 %xor438, !3573, !DIExpression(), !3529)
  %not433 = xor i64 %125, -1, !dbg !3830
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and434 = and i64 %143, %not433, !dbg !3831
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor435 = xor i64 %131, %and434, !dbg !3832
    #dbg_value(i64 %xor435, !3571, !DIExpression(), !3529)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3833
    #dbg_value(i64 %xor394, !3620, !DIExpression(), !3529)
  %144 = shl i64 %xor394, 56, !dbg !3834
  %145 = lshr i64 %xor394, 8, !dbg !3834
  %146 = or i64 %144, %145, !dbg !3834
    #dbg_value(i64 %146, !3591, !DIExpression(), !3529)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3835
    #dbg_value(i64 %xor382, !3602, !DIExpression(), !3529)
  %147 = shl i64 %xor382, 36, !dbg !3836
  %148 = lshr i64 %xor382, 28, !dbg !3836
  %149 = or i64 %147, %148, !dbg !3836
    #dbg_value(i64 %149, !3588, !DIExpression(), !3529)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3837
    #dbg_value(i64 %xor378, !3601, !DIExpression(), !3529)
  %150 = shl i64 %xor378, 27, !dbg !3838
  %151 = lshr i64 %xor378, 37, !dbg !3838
  %152 = or i64 %150, %151, !dbg !3838
    #dbg_value(i64 %152, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not410 = xor i64 %152, -1, !dbg !3839
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and411 = and i64 %149, %not410, !dbg !3840
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3569, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor412 = xor i64 %146, %and411, !dbg !3841
    #dbg_value(i64 %xor412, !3569, !DIExpression(), !3529)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3842
    #dbg_value(i64 %xor390, !3614, !DIExpression(), !3529)
  %153 = shl i64 %xor390, 15, !dbg !3843
  %154 = lshr i64 %xor390, 49, !dbg !3843
  %155 = or i64 %153, %154, !dbg !3843
    #dbg_value(i64 %155, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not407 = xor i64 %146, -1, !dbg !3844
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and408 = and i64 %152, %not407, !dbg !3845
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3567, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor409 = xor i64 %155, %and408, !dbg !3846
    #dbg_value(i64 %xor409, !3567, !DIExpression(), !3529)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3847
    #dbg_value(i64 %xor386, !3608, !DIExpression(), !3529)
  %156 = shl i64 %xor386, 10, !dbg !3848
  %157 = lshr i64 %xor386, 54, !dbg !3848
  %158 = or i64 %156, %157, !dbg !3848
    #dbg_value(i64 %158, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not404 = xor i64 %155, -1, !dbg !3849
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and405 = and i64 %146, %not404, !dbg !3850
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3565, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor406 = xor i64 %158, %and405, !dbg !3851
    #dbg_value(i64 %xor406, !3565, !DIExpression(), !3529)
  %not401 = xor i64 %158, -1, !dbg !3852
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and402 = and i64 %155, %not401, !dbg !3853
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3563, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor403 = xor i64 %149, %and402, !dbg !3854
    #dbg_value(i64 %xor403, !3563, !DIExpression(), !3529)
  %not398 = xor i64 %149, -1, !dbg !3855
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and399 = and i64 %158, %not398, !dbg !3856
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor400 = xor i64 %152, %and399, !dbg !3857
    #dbg_value(i64 %xor400, !3561, !DIExpression(), !3529)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3858
    #dbg_value(i64 %xor359, !3617, !DIExpression(), !3529)
  %159 = shl i64 %xor359, 18, !dbg !3859
  %160 = lshr i64 %xor359, 46, !dbg !3859
  %161 = or i64 %159, %160, !dbg !3859
    #dbg_value(i64 %161, !3591, !DIExpression(), !3529)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3860
    #dbg_value(i64 %xor347, !3604, !DIExpression(), !3529)
  %162 = shl i64 %xor347, 6, !dbg !3861
  %163 = lshr i64 %xor347, 58, !dbg !3861
  %164 = or i64 %162, %163, !dbg !3861
    #dbg_value(i64 %164, !3588, !DIExpression(), !3529)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3862
    #dbg_value(i64 %xor343, !3598, !DIExpression(), !3529)
  %165 = shl i64 %xor343, 1, !dbg !3863
  %166 = lshr i64 %xor343, 63, !dbg !3863
  %167 = or i64 %165, %166, !dbg !3863
    #dbg_value(i64 %167, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not375 = xor i64 %167, -1, !dbg !3864
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and376 = and i64 %164, %not375, !dbg !3865
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3559, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor377 = xor i64 %161, %and376, !dbg !3866
    #dbg_value(i64 %xor377, !3559, !DIExpression(), !3529)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3867
    #dbg_value(i64 %xor355, !3616, !DIExpression(), !3529)
  %168 = shl i64 %xor355, 8, !dbg !3868
  %169 = lshr i64 %xor355, 56, !dbg !3868
  %170 = or i64 %168, %169, !dbg !3868
    #dbg_value(i64 %170, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not372 = xor i64 %161, -1, !dbg !3869
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and373 = and i64 %167, %not372, !dbg !3870
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3557, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor374 = xor i64 %170, %and373, !dbg !3871
    #dbg_value(i64 %xor374, !3557, !DIExpression(), !3529)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3872
    #dbg_value(i64 %xor351, !3610, !DIExpression(), !3529)
  %171 = shl i64 %xor351, 25, !dbg !3873
  %172 = lshr i64 %xor351, 39, !dbg !3873
  %173 = or i64 %171, %172, !dbg !3873
    #dbg_value(i64 %173, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not369 = xor i64 %170, -1, !dbg !3874
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and370 = and i64 %161, %not369, !dbg !3875
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor371 = xor i64 %173, %and370, !dbg !3876
    #dbg_value(i64 %xor371, !3555, !DIExpression(), !3529)
  %not366 = xor i64 %173, -1, !dbg !3877
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and367 = and i64 %170, %not366, !dbg !3878
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3553, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor368 = xor i64 %164, %and367, !dbg !3879
    #dbg_value(i64 %xor368, !3553, !DIExpression(), !3529)
  %not363 = xor i64 %164, -1, !dbg !3880
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and364 = and i64 %173, %not363, !dbg !3881
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor365 = xor i64 %167, %and364, !dbg !3882
    #dbg_value(i64 %xor365, !3551, !DIExpression(), !3529)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3883
    #dbg_value(i64 %xor324, !3619, !DIExpression(), !3529)
  %174 = shl i64 %xor324, 61, !dbg !3884
  %175 = lshr i64 %xor324, 3, !dbg !3884
  %176 = or i64 %174, %175, !dbg !3884
    #dbg_value(i64 %176, !3591, !DIExpression(), !3529)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3885
    #dbg_value(i64 %xor312, !3606, !DIExpression(), !3529)
  %177 = shl i64 %xor312, 20, !dbg !3886
  %178 = lshr i64 %xor312, 44, !dbg !3886
  %179 = or i64 %177, %178, !dbg !3886
    #dbg_value(i64 %179, !3588, !DIExpression(), !3529)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3887
    #dbg_value(i64 %xor308, !3600, !DIExpression(), !3529)
  %180 = shl i64 %xor308, 28, !dbg !3888
  %181 = lshr i64 %xor308, 36, !dbg !3888
  %182 = or i64 %180, %181, !dbg !3888
    #dbg_value(i64 %182, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not340 = xor i64 %182, -1, !dbg !3889
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and341 = and i64 %179, %not340, !dbg !3890
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor342 = xor i64 %176, %and341, !dbg !3891
    #dbg_value(i64 %xor342, !3549, !DIExpression(), !3529)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3892
    #dbg_value(i64 %xor320, !3613, !DIExpression(), !3529)
  %183 = shl i64 %xor320, 45, !dbg !3893
  %184 = lshr i64 %xor320, 19, !dbg !3893
  %185 = or i64 %183, %184, !dbg !3893
    #dbg_value(i64 %185, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not337 = xor i64 %176, -1, !dbg !3894
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and338 = and i64 %182, %not337, !dbg !3895
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor339 = xor i64 %185, %and338, !dbg !3896
    #dbg_value(i64 %xor339, !3547, !DIExpression(), !3529)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3897
    #dbg_value(i64 %xor316, !3607, !DIExpression(), !3529)
  %186 = shl i64 %xor316, 3, !dbg !3898
  %187 = lshr i64 %xor316, 61, !dbg !3898
  %188 = or i64 %186, %187, !dbg !3898
    #dbg_value(i64 %188, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not334 = xor i64 %185, -1, !dbg !3899
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and335 = and i64 %176, %not334, !dbg !3900
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor336 = xor i64 %188, %and335, !dbg !3901
    #dbg_value(i64 %xor336, !3545, !DIExpression(), !3529)
  %not331 = xor i64 %188, -1, !dbg !3902
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and332 = and i64 %185, %not331, !dbg !3903
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3543, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor333 = xor i64 %179, %and332, !dbg !3904
    #dbg_value(i64 %xor333, !3543, !DIExpression(), !3529)
  %not328 = xor i64 %179, -1, !dbg !3905
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and329 = and i64 %188, %not328, !dbg !3906
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3541, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor330 = xor i64 %182, %and329, !dbg !3907
    #dbg_value(i64 %xor330, !3541, !DIExpression(), !3529)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3908
    #dbg_value(i64 %xor287, !3621, !DIExpression(), !3529)
  %189 = shl i64 %xor287, 14, !dbg !3909
  %190 = lshr i64 %xor287, 50, !dbg !3909
  %191 = or i64 %189, %190, !dbg !3909
    #dbg_value(i64 %191, !3591, !DIExpression(), !3529)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3910
    #dbg_value(i64 %xor275, !3603, !DIExpression(), !3529)
  %192 = shl i64 %xor275, 44, !dbg !3911
  %193 = lshr i64 %xor275, 20, !dbg !3911
  %194 = or i64 %192, %193, !dbg !3911
    #dbg_value(i64 %194, !3588, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3912
    #dbg_value(i64 %xor274, !3597, !DIExpression(), !3529)
    #dbg_value(i64 %xor274, !3587, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not305 = xor i64 %xor274, -1, !dbg !3913
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and306 = and i64 %194, %not305, !dbg !3914
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3539, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor307 = xor i64 %191, %and306, !dbg !3915
    #dbg_value(i64 %xor307, !3539, !DIExpression(), !3529)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3916
    #dbg_value(i64 %xor283, !3615, !DIExpression(), !3529)
  %195 = shl i64 %xor283, 21, !dbg !3917
  %196 = lshr i64 %xor283, 43, !dbg !3917
  %197 = or i64 %195, %196, !dbg !3917
    #dbg_value(i64 %197, !3590, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not302 = xor i64 %191, -1, !dbg !3918
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and303 = and i64 %xor274, %not302, !dbg !3919
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor304 = xor i64 %197, %and303, !dbg !3920
    #dbg_value(i64 %xor304, !3537, !DIExpression(), !3529)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3921
    #dbg_value(i64 %xor279, !3609, !DIExpression(), !3529)
  %198 = shl i64 %xor279, 43, !dbg !3922
  %199 = lshr i64 %xor279, 21, !dbg !3922
  %200 = or i64 %198, %199, !dbg !3922
    #dbg_value(i64 %200, !3589, !DIExpression(), !3529)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %not299 = xor i64 %197, -1, !dbg !3923
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and300 = and i64 %191, %not299, !dbg !3924
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3535, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor301 = xor i64 %200, %and300, !dbg !3925
    #dbg_value(i64 %xor301, !3535, !DIExpression(), !3529)
  %not296 = xor i64 %200, -1, !dbg !3926
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3529)
  %and297 = and i64 %197, %not296, !dbg !3927
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3533, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %xor298 = xor i64 %194, %and297, !dbg !3928
    #dbg_value(i64 %xor298, !3533, !DIExpression(), !3529)
  %add = or disjoint i32 %round.0, 1, !dbg !3929
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3930
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3930
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %not291 = xor i64 %194, -1, !dbg !3931
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %and292 = and i64 %200, %not291, !dbg !3932
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3529)
  %202 = xor i64 %and292, %201, !dbg !3933
  %xor295 = xor i64 %202, %xor274, !dbg !3933
    #dbg_value(i64 %xor295, !3531, !DIExpression(), !3529)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3934
    #dbg_value(i32 %add448, !3580, !DIExpression(), !3529)
  br label %for.cond, !dbg !3935, !llvm.loop !3936

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3529
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3529
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3529
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3529
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3529
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3529
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3529
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3529
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3529
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3529
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3529
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3529
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3529
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3529
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3529
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3529
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3529
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3529
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3529
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3529
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3529
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3529
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3529
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3529
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3529
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3938
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3939
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3940
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3941
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3942
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3943
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3944
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3945
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3946
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3947
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3948
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3949
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3950
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3951
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3952
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3953
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3954
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3955
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3956
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3957
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3958
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3959
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3960
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3961
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3962
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3963
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3964
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3965
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3966
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3967
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3968
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3969
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3970
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3971
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3972
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3973
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3974
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3975
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3976
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3977
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3978
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3979
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3980
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3981
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3982
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3983
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3984
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3985
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3986
  ret void, !dbg !3987
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3988 {
entry:
    #dbg_value(ptr %state, !3989, !DIExpression(), !3990)
  %0 = load ptr, ptr %state, align 4, !dbg !3991
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3992
  ret void, !dbg !3993
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_finalize(ptr noundef %s_inc, i32 noundef range(i32 72, 169) %r, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3994 {
entry:
    #dbg_value(ptr %s_inc, !3997, !DIExpression(), !3998)
    #dbg_value(i32 %r, !3999, !DIExpression(), !3998)
    #dbg_value(i8 %p, !4000, !DIExpression(), !3998)
  %conv = zext nneg i8 %p to i64, !dbg !4001
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4002
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4002
  %and = shl i64 %0, 3, !dbg !4003
  %mul = and i64 %and, 56, !dbg !4003
  %shl = shl nuw nsw i64 %conv, %mul, !dbg !4004
  %shr = lshr i64 %0, 3, !dbg !4005
  %idxprom = trunc i64 %shr to i32, !dbg !4006
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4006
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !4007
  %xor = xor i64 %1, %shl, !dbg !4007
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !4007
  %sub = shl nuw nsw i32 %r, 3, !dbg !4008
  %and3 = add nuw nsw i32 %sub, 56, !dbg !4008
  %mul4 = and i32 %and3, 56, !dbg !4008
  %sh_prom = zext nneg i32 %mul4 to i64, !dbg !4009
  %shl5 = shl nuw i64 128, %sh_prom, !dbg !4009
  %sub6 = add nsw i32 %r, -1, !dbg !4010
  %shr7 = lshr i32 %sub6, 3, !dbg !4011
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr7, !dbg !4012
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !4013
  %xor9 = xor i64 %2, %shl5, !dbg !4013
  store i64 %xor9, ptr %arrayidx8, align 8, !dbg !4013
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4014
  store i64 0, ptr %arrayidx10, align 8, !dbg !4015
  ret void, !dbg !4016
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4017 {
entry:
    #dbg_value(ptr %output, !4020, !DIExpression(), !4021)
    #dbg_value(i32 %outlen, !4022, !DIExpression(), !4021)
    #dbg_value(ptr %state, !4023, !DIExpression(), !4021)
  %0 = load ptr, ptr %state, align 4, !dbg !4024
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 168) #4, !dbg !4025
  ret void, !dbg !4026
}

; Function Attrs: nounwind
define internal fastcc void @keccak_inc_squeeze(ptr noundef %h, i32 noundef %outlen, ptr noundef %s_inc, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !4027 {
entry:
    #dbg_value(ptr %h, !4030, !DIExpression(), !4031)
    #dbg_value(i32 %outlen, !4032, !DIExpression(), !4031)
    #dbg_value(ptr %s_inc, !4033, !DIExpression(), !4031)
    #dbg_value(i32 %r, !4034, !DIExpression(), !4031)
    #dbg_value(i32 0, !4035, !DIExpression(), !4031)
  br label %for.cond, !dbg !4036

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4038
    #dbg_value(i32 %i.0, !4035, !DIExpression(), !4031)
  %exitcond = icmp ne i32 %i.0, %outlen, !dbg !4039
  br i1 %exitcond, label %land.rhs, label %for.end, !dbg !4041

land.rhs:                                         ; preds = %for.cond
  %conv = zext i32 %i.0 to i64, !dbg !4042
  %arrayidx = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4043
  %0 = load i64, ptr %arrayidx, align 8, !dbg !4043
  %cmp1 = icmp ugt i64 %0, %conv, !dbg !4044
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4045

for.body:                                         ; preds = %land.rhs
  %conv3 = zext nneg i32 %r to i64, !dbg !4046
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4048
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !4048
  %sub = sub i64 %conv3, %1, !dbg !4049
  %conv5 = zext i32 %i.0 to i64, !dbg !4050
  %add = add i64 %sub, %conv5, !dbg !4051
  %shr = lshr i64 %add, 3, !dbg !4052
  %idxprom = trunc i64 %shr to i32, !dbg !4053
  %arrayidx6 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %idxprom, !dbg !4053
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !4053
  %conv7 = zext nneg i32 %r to i64, !dbg !4054
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4055
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !4055
  %sub9 = sub i64 %conv7, %3, !dbg !4056
  %conv10 = zext i32 %i.0 to i64, !dbg !4057
  %add11 = add i64 %sub9, %conv10, !dbg !4058
  %and = shl i64 %add11, 3, !dbg !4059
  %mul = and i64 %and, 56, !dbg !4059
  %shr12 = lshr i64 %2, %mul, !dbg !4060
  %conv13 = trunc i64 %shr12 to i8, !dbg !4061
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %h, i32 %i.0, !dbg !4062
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !4063
  %inc = add i32 %i.0, 1, !dbg !4064
    #dbg_value(i32 %inc, !4035, !DIExpression(), !4031)
  br label %for.cond, !dbg !4065, !llvm.loop !4066

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %outlen, %for.cond ], [ %i.0, %land.rhs ], !dbg !4038
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %i.0.lcssa, !dbg !4068
    #dbg_value(ptr %add.ptr, !4030, !DIExpression(), !4031)
  %sub15 = sub i32 %outlen, %i.0.lcssa, !dbg !4069
    #dbg_value(i32 %sub15, !4032, !DIExpression(), !4031)
  %conv16 = zext i32 %i.0.lcssa to i64, !dbg !4070
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4071
  %4 = load i64, ptr %arrayidx17, align 8, !dbg !4072
  %sub18 = sub i64 %4, %conv16, !dbg !4072
  store i64 %sub18, ptr %arrayidx17, align 8, !dbg !4072
  br label %while.cond, !dbg !4073

while.cond:                                       ; preds = %for.end38, %for.end
  %outlen.addr.0 = phi i32 [ %sub15, %for.end ], [ %sub40, %for.end38 ], !dbg !4031
  %h.addr.0 = phi ptr [ %add.ptr, %for.end ], [ %add.ptr39, %for.end38 ], !dbg !4031
    #dbg_value(ptr %h.addr.0, !4030, !DIExpression(), !4031)
    #dbg_value(i32 %outlen.addr.0, !4032, !DIExpression(), !4031)
  %cmp19.not = icmp eq i32 %outlen.addr.0, 0, !dbg !4074
  br i1 %cmp19.not, label %while.end, label %while.body, !dbg !4073

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s_inc) #4, !dbg !4075
    #dbg_value(i32 0, !4035, !DIExpression(), !4031)
  %5 = icmp ult i32 %outlen.addr.0, %r, !dbg !4077
  %6 = select i1 %5, i32 %outlen.addr.0, i32 %r, !dbg !4077
  br label %for.cond21, !dbg !4077

for.cond21:                                       ; preds = %for.body28, %while.body
  %i.1 = phi i32 [ 0, %while.body ], [ %inc37, %for.body28 ], !dbg !4079
    #dbg_value(i32 %i.1, !4035, !DIExpression(), !4031)
  %exitcond1 = icmp ne i32 %i.1, %6, !dbg !4080
  br i1 %exitcond1, label %for.body28, label %for.end38, !dbg !4082

for.body28:                                       ; preds = %for.cond21
  %shr29 = lshr i32 %i.1, 3, !dbg !4083
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %s_inc, i32 %shr29, !dbg !4085
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !4085
  %and31 = shl nuw nsw i32 %i.1, 3, !dbg !4086
  %mul32 = and i32 %and31, 56, !dbg !4086
  %sh_prom = zext nneg i32 %mul32 to i64, !dbg !4087
  %shr33 = lshr i64 %7, %sh_prom, !dbg !4087
  %conv34 = trunc i64 %shr33 to i8, !dbg !4088
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1, !dbg !4089
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !4090
  %inc37 = add nuw nsw i32 %i.1, 1, !dbg !4091
    #dbg_value(i32 %inc37, !4035, !DIExpression(), !4031)
  br label %for.cond21, !dbg !4092, !llvm.loop !4093

for.end38:                                        ; preds = %for.cond21
  %i.1.lcssa = phi i32 [ %i.1, %for.cond21 ], !dbg !4079
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %i.1.lcssa, !dbg !4095
    #dbg_value(ptr %add.ptr39, !4030, !DIExpression(), !4031)
  %sub40 = sub i32 %outlen.addr.0, %i.1.lcssa, !dbg !4096
    #dbg_value(i32 %sub40, !4032, !DIExpression(), !4031)
  %sub41 = sub nsw i32 %r, %i.1.lcssa, !dbg !4097
  %conv42 = zext i32 %sub41 to i64, !dbg !4098
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %s_inc, i32 200, !dbg !4099
  store i64 %conv42, ptr %arrayidx43, align 8, !dbg !4100
  br label %while.cond, !dbg !4073, !llvm.loop !4101

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4103
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4104 {
entry:
    #dbg_value(ptr %dest, !4109, !DIExpression(), !4110)
    #dbg_value(ptr %src, !4111, !DIExpression(), !4110)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4112
  store ptr %call, ptr %dest, align 4, !dbg !4113
  %cmp = icmp eq ptr %call, null, !dbg !4114
  br i1 %cmp, label %if.then, label %if.end, !dbg !4114

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4116
  br label %if.end, !dbg !4118

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4119
  %1 = load ptr, ptr %src, align 4, !dbg !4120
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4121
  ret void, !dbg !4122
}

; Function Attrs: nounwind
define dso_local void @shake128_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4123 {
entry:
    #dbg_value(ptr %state, !4124, !DIExpression(), !4125)
  %0 = load ptr, ptr %state, align 4, !dbg !4126
  call void @free(ptr noundef %0) #6, !dbg !4127
  ret void, !dbg !4128
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4129 {
entry:
    #dbg_value(ptr %state, !4137, !DIExpression(), !4138)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4139
  store ptr %call, ptr %state, align 4, !dbg !4140
  %cmp = icmp eq ptr %call, null, !dbg !4141
  br i1 %cmp, label %if.then, label %if.end, !dbg !4141

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4143
  br label %if.end, !dbg !4145

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4146
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4147
  ret void, !dbg !4148
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4149 {
entry:
    #dbg_value(ptr %state, !4152, !DIExpression(), !4153)
    #dbg_value(ptr %input, !4154, !DIExpression(), !4153)
    #dbg_value(i32 %inlen, !4155, !DIExpression(), !4153)
  %0 = load ptr, ptr %state, align 4, !dbg !4156
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !4159 {
entry:
    #dbg_value(ptr %state, !4160, !DIExpression(), !4161)
  %0 = load ptr, ptr %state, align 4, !dbg !4162
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !4163
  ret void, !dbg !4164
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !4165 {
entry:
    #dbg_value(ptr %output, !4168, !DIExpression(), !4169)
    #dbg_value(i32 %outlen, !4170, !DIExpression(), !4169)
    #dbg_value(ptr %state, !4171, !DIExpression(), !4169)
  %0 = load ptr, ptr %state, align 4, !dbg !4172
  call fastcc void @keccak_inc_squeeze(ptr noundef %output, i32 noundef %outlen, ptr noundef %0, i32 noundef 136) #4, !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4175 {
entry:
    #dbg_value(ptr %dest, !4180, !DIExpression(), !4181)
    #dbg_value(ptr %src, !4182, !DIExpression(), !4181)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4183
  store ptr %call, ptr %dest, align 4, !dbg !4184
  %cmp = icmp eq ptr %call, null, !dbg !4185
  br i1 %cmp, label %if.then, label %if.end, !dbg !4185

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4187
  br label %if.end, !dbg !4189

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4190
  %1 = load ptr, ptr %src, align 4, !dbg !4191
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4192
  ret void, !dbg !4193
}

; Function Attrs: nounwind
define dso_local void @shake256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4194 {
entry:
    #dbg_value(ptr %state, !4195, !DIExpression(), !4196)
  %0 = load ptr, ptr %state, align 4, !dbg !4197
  call void @free(ptr noundef %0) #6, !dbg !4198
  ret void, !dbg !4199
}

; Function Attrs: nounwind
define dso_local void @shake128_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4200 {
entry:
    #dbg_value(ptr %state, !4208, !DIExpression(), !4209)
    #dbg_value(ptr %input, !4210, !DIExpression(), !4209)
    #dbg_value(i32 %inlen, !4211, !DIExpression(), !4209)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4212
  store ptr %call, ptr %state, align 4, !dbg !4213
  %cmp = icmp eq ptr %call, null, !dbg !4214
  br i1 %cmp, label %if.then, label %if.end, !dbg !4214

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4216
  br label %if.end, !dbg !4218

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4219
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 168, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4220
  ret void, !dbg !4221
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %m, i32 noundef %mlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !4222 {
entry:
  %t = alloca [200 x i8], align 1
    #dbg_value(ptr %s, !4225, !DIExpression(), !4226)
    #dbg_value(i32 %r, !4227, !DIExpression(), !4226)
    #dbg_value(ptr %m, !4228, !DIExpression(), !4226)
    #dbg_value(i32 %mlen, !4229, !DIExpression(), !4226)
    #dbg_value(i8 %p, !4230, !DIExpression(), !4226)
    #dbg_declare(ptr %t, !4231, !DIExpression(), !4235)
    #dbg_value(i32 0, !4236, !DIExpression(), !4226)
  br label %for.cond, !dbg !4237

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4239
    #dbg_value(i32 %i.0, !4236, !DIExpression(), !4226)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !4240
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !4242

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !4243
  br label %while.cond, !dbg !4243

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4244
  store i64 0, ptr %arrayidx, align 8, !dbg !4246
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4247
    #dbg_value(i32 %inc, !4236, !DIExpression(), !4226)
  br label %for.cond, !dbg !4248, !llvm.loop !4249

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %m.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %m, %while.cond.preheader ]
  %mlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %mlen, %while.cond.preheader ]
    #dbg_value(i32 %mlen.addr.0, !4229, !DIExpression(), !4226)
    #dbg_value(ptr %m.addr.0, !4228, !DIExpression(), !4226)
  %cmp1.not = icmp ult i32 %mlen.addr.0, %r, !dbg !4251
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !4243

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !4252

for.cond10.preheader:                             ; preds = %while.cond
  %mlen.addr.0.lcssa5 = phi i32 [ %mlen.addr.0, %while.cond ]
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %while.cond ]
  br label %for.cond10, !dbg !4255

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !4257
    #dbg_value(i32 %i.1, !4236, !DIExpression(), !4226)
  %exitcond3 = icmp ne i32 %i.1, %0, !dbg !4258
  br i1 %exitcond3, label %for.body4, label %for.end8, !dbg !4252

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !4260
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %mul, !dbg !4262
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !4263
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !4264
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !4265
  %xor = xor i64 %1, %call, !dbg !4265
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !4265
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !4266
    #dbg_value(i32 %inc7, !4236, !DIExpression(), !4226)
  br label %for.cond2, !dbg !4267, !llvm.loop !4268

for.end8:                                         ; preds = %for.cond2
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4270
  %sub = sub i32 %mlen.addr.0, %r, !dbg !4271
    #dbg_value(i32 %sub, !4229, !DIExpression(), !4226)
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 %r, !dbg !4272
    #dbg_value(ptr %add.ptr9, !4228, !DIExpression(), !4226)
  br label %while.cond, !dbg !4243, !llvm.loop !4273

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc15, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !4275
    #dbg_value(i32 %i.2, !4236, !DIExpression(), !4226)
  %exitcond4 = icmp ne i32 %i.2, %r, !dbg !4276
  br i1 %exitcond4, label %for.body12, label %for.cond17.preheader, !dbg !4255

for.cond17.preheader:                             ; preds = %for.cond10
  br label %for.cond17, !dbg !4278

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.2, !dbg !4280
  store i8 0, ptr %arrayidx13, align 1, !dbg !4282
  %inc15 = add nuw nsw i32 %i.2, 1, !dbg !4283
    #dbg_value(i32 %inc15, !4236, !DIExpression(), !4226)
  br label %for.cond10, !dbg !4284, !llvm.loop !4285

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %i.3 = phi i32 [ %inc23, %for.body19 ], [ 0, %for.cond17.preheader ], !dbg !4287
    #dbg_value(i32 %i.3, !4236, !DIExpression(), !4226)
  %exitcond6 = icmp ne i32 %i.3, %mlen.addr.0.lcssa5, !dbg !4288
  br i1 %exitcond6, label %for.body19, label %for.end24, !dbg !4278

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %m.addr.0.lcssa, i32 %i.3, !dbg !4290
  %2 = load i8, ptr %arrayidx20, align 1, !dbg !4290
  %arrayidx21 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3, !dbg !4292
  store i8 %2, ptr %arrayidx21, align 1, !dbg !4293
  %inc23 = add i32 %i.3, 1, !dbg !4294
    #dbg_value(i32 %inc23, !4236, !DIExpression(), !4226)
  br label %for.cond17, !dbg !4295, !llvm.loop !4296

for.end24:                                        ; preds = %for.cond17
  %i.3.lcssa = phi i32 [ %i.3, %for.cond17 ], !dbg !4287
  %arrayidx25 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %i.3.lcssa, !dbg !4298
  store i8 %p, ptr %arrayidx25, align 1, !dbg !4299
  %sub26 = add nsw i32 %r, -1, !dbg !4300
  %arrayidx27 = getelementptr inbounds nuw [200 x i8], ptr %t, i32 0, i32 %sub26, !dbg !4301
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !4302
  %4 = or i8 %3, -128, !dbg !4302
  store i8 %4, ptr %arrayidx27, align 1, !dbg !4302
    #dbg_value(i32 0, !4236, !DIExpression(), !4226)
  br label %for.cond29, !dbg !4303

for.cond29:                                       ; preds = %for.body33, %for.end24
  %i.4 = phi i32 [ 0, %for.end24 ], [ %inc40, %for.body33 ], !dbg !4305
    #dbg_value(i32 %i.4, !4236, !DIExpression(), !4226)
  %exitcond7 = icmp ne i32 %i.4, %0, !dbg !4306
  br i1 %exitcond7, label %for.body33, label %for.end41, !dbg !4308

for.body33:                                       ; preds = %for.cond29
  %mul34 = shl nuw nsw i32 %i.4, 3, !dbg !4309
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %t, i32 %mul34, !dbg !4311
  %call36 = call fastcc i64 @load64(ptr noundef nonnull %add.ptr35) #4, !dbg !4312
  %arrayidx37 = getelementptr inbounds nuw i64, ptr %s, i32 %i.4, !dbg !4313
  %5 = load i64, ptr %arrayidx37, align 8, !dbg !4314
  %xor38 = xor i64 %5, %call36, !dbg !4314
  store i64 %xor38, ptr %arrayidx37, align 8, !dbg !4314
  %inc40 = add nuw nsw i32 %i.4, 1, !dbg !4315
    #dbg_value(i32 %inc40, !4236, !DIExpression(), !4226)
  br label %for.cond29, !dbg !4316, !llvm.loop !4317

for.end41:                                        ; preds = %for.cond29
  ret void, !dbg !4319
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !4320 {
entry:
    #dbg_value(ptr %x, !4323, !DIExpression(), !4324)
    #dbg_value(i64 0, !4325, !DIExpression(), !4324)
    #dbg_value(i32 0, !4326, !DIExpression(), !4328)
  br label %for.cond, !dbg !4329

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !4324
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4330
    #dbg_value(i32 %i.0, !4326, !DIExpression(), !4328)
    #dbg_value(i64 %r.0, !4325, !DIExpression(), !4324)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4331
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !4333

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4324)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4334
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4334
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4324)
  %conv = zext i8 %0 to i64, !dbg !4336
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4324)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4337
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4324)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4338
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !4324)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !4338
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !4325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4324)
  %or = or i64 %r.0, %shl, !dbg !4339
    #dbg_value(i64 %or, !4325, !DIExpression(), !4324)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4340
    #dbg_value(i32 %inc, !4326, !DIExpression(), !4328)
  br label %for.cond, !dbg !4341, !llvm.loop !4342

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !4324
  ret i64 %r.0.lcssa, !dbg !4344
}

; Function Attrs: nounwind
define dso_local void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4345 {
entry:
    #dbg_value(ptr %output, !4348, !DIExpression(), !4349)
    #dbg_value(i32 %nblocks, !4350, !DIExpression(), !4349)
    #dbg_value(ptr %state, !4351, !DIExpression(), !4349)
  %0 = load ptr, ptr %state, align 4, !dbg !4352
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 168) #4, !dbg !4353
  ret void, !dbg !4354
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %h, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 72, 169) %r) unnamed_addr #0 !dbg !4355 {
entry:
    #dbg_value(ptr %h, !4356, !DIExpression(), !4357)
    #dbg_value(i32 %nblocks, !4358, !DIExpression(), !4357)
    #dbg_value(ptr %s, !4359, !DIExpression(), !4357)
    #dbg_value(i32 %r, !4360, !DIExpression(), !4357)
  %0 = lshr i32 %r, 3, !dbg !4361
  br label %while.cond, !dbg !4361

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %dec, %for.end ]
  %h.addr.0 = phi ptr [ %h, %entry ], [ %add.ptr2, %for.end ]
    #dbg_value(ptr %h.addr.0, !4356, !DIExpression(), !4357)
    #dbg_value(i32 %nblocks.addr.0, !4358, !DIExpression(), !4357)
  %cmp.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !4362
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !4361

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !4363
    #dbg_value(i32 0, !4365, !DIExpression(), !4367)
  br label %for.cond, !dbg !4368

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !4369
    #dbg_value(i32 %i.0, !4365, !DIExpression(), !4367)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !4370
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4372

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4373
  %add.ptr = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %mul, !dbg !4375
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !4376
  %1 = load i64, ptr %arrayidx, align 8, !dbg !4376
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !4377
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4378
    #dbg_value(i32 %inc, !4365, !DIExpression(), !4367)
  br label %for.cond, !dbg !4379, !llvm.loop !4380

for.end:                                          ; preds = %for.cond
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %h.addr.0, i32 %r, !dbg !4382
    #dbg_value(ptr %add.ptr2, !4356, !DIExpression(), !4357)
  %dec = add i32 %nblocks.addr.0, -1, !dbg !4383
    #dbg_value(i32 %dec, !4358, !DIExpression(), !4357)
  br label %while.cond, !dbg !4361, !llvm.loop !4384

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4386
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !4387 {
entry:
    #dbg_value(ptr %x, !4390, !DIExpression(), !4391)
    #dbg_value(i64 %u, !4392, !DIExpression(), !4391)
    #dbg_value(i32 0, !4393, !DIExpression(), !4395)
  br label %for.cond, !dbg !4396

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4397
    #dbg_value(i32 %i.0, !4393, !DIExpression(), !4395)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !4398
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4400

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !4401
  %sh_prom = zext nneg i32 %mul to i64, !dbg !4403
  %shr = lshr i64 %u, %sh_prom, !dbg !4403
  %conv = trunc i64 %shr to i8, !dbg !4404
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !4405
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4406
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4407
    #dbg_value(i32 %inc, !4393, !DIExpression(), !4395)
  br label %for.cond, !dbg !4408, !llvm.loop !4409

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4411
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4412 {
entry:
    #dbg_value(ptr %dest, !4417, !DIExpression(), !4418)
    #dbg_value(ptr %src, !4419, !DIExpression(), !4418)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4420
  store ptr %call, ptr %dest, align 4, !dbg !4421
  %cmp = icmp eq ptr %call, null, !dbg !4422
  br i1 %cmp, label %if.then, label %if.end, !dbg !4422

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4424
  br label %if.end, !dbg !4426

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4427
  %1 = load ptr, ptr %src, align 4, !dbg !4428
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4429
  ret void, !dbg !4430
}

; Function Attrs: nounwind
define dso_local void @shake128_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4431 {
entry:
    #dbg_value(ptr %state, !4434, !DIExpression(), !4435)
  %0 = load ptr, ptr %state, align 4, !dbg !4436
  call void @free(ptr noundef %0) #6, !dbg !4437
  ret void, !dbg !4438
}

; Function Attrs: nounwind
define dso_local void @shake256_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4439 {
entry:
    #dbg_value(ptr %state, !4447, !DIExpression(), !4448)
    #dbg_value(ptr %input, !4449, !DIExpression(), !4448)
    #dbg_value(i32 %inlen, !4450, !DIExpression(), !4448)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4451
  store ptr %call, ptr %state, align 4, !dbg !4452
  %cmp = icmp eq ptr %call, null, !dbg !4453
  br i1 %cmp, label %if.then, label %if.end, !dbg !4453

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4455
  br label %if.end, !dbg !4457

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4458
  call fastcc void @keccak_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !4459
  ret void, !dbg !4460
}

; Function Attrs: nounwind
define dso_local void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !4461 {
entry:
    #dbg_value(ptr %output, !4464, !DIExpression(), !4465)
    #dbg_value(i32 %nblocks, !4466, !DIExpression(), !4465)
    #dbg_value(ptr %state, !4467, !DIExpression(), !4465)
  %0 = load ptr, ptr %state, align 4, !dbg !4468
  call fastcc void @keccak_squeezeblocks(ptr noundef %output, i32 noundef %nblocks, ptr noundef %0, i32 noundef 136) #4, !dbg !4469
  ret void, !dbg !4470
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4471 {
entry:
    #dbg_value(ptr %dest, !4476, !DIExpression(), !4477)
    #dbg_value(ptr %src, !4478, !DIExpression(), !4477)
  %call = call dereferenceable_or_null(200) ptr @malloc(i32 noundef 200) #7, !dbg !4479
  store ptr %call, ptr %dest, align 4, !dbg !4480
  %cmp = icmp eq ptr %call, null, !dbg !4481
  br i1 %cmp, label %if.then, label %if.end, !dbg !4481

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4483
  br label %if.end, !dbg !4485

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4486
  %1 = load ptr, ptr %src, align 4, !dbg !4487
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 200) #6, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: nounwind
define dso_local void @shake256_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4490 {
entry:
    #dbg_value(ptr %state, !4493, !DIExpression(), !4494)
  %0 = load ptr, ptr %state, align 4, !dbg !4495
  call void @free(ptr noundef %0) #6, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: nounwind
define dso_local void @shake128(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4498 {
entry:
  %t = alloca [168 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4501, !DIExpression(), !4502)
    #dbg_value(i32 %outlen, !4503, !DIExpression(), !4502)
    #dbg_value(ptr %input, !4504, !DIExpression(), !4502)
    #dbg_value(i32 %inlen, !4505, !DIExpression(), !4502)
  %div = udiv i32 %outlen, 168, !dbg !4506
    #dbg_value(i32 %div, !4507, !DIExpression(), !4502)
    #dbg_declare(ptr %t, !4508, !DIExpression(), !4512)
    #dbg_declare(ptr %s, !4513, !DIExpression(), !4514)
  call void @shake128_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4515
  call void @shake128_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4516
  %mul = mul nuw i32 %div, 168, !dbg !4517
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4518
    #dbg_value(ptr %add.ptr, !4501, !DIExpression(), !4502)
  %mul1.neg = mul i32 %div, -168, !dbg !4519
  %sub = add i32 %mul1.neg, %outlen, !dbg !4520
    #dbg_value(i32 %sub, !4503, !DIExpression(), !4502)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4521
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4521

if.then:                                          ; preds = %entry
  call void @shake128_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4523
    #dbg_value(i32 0, !4525, !DIExpression(), !4527)
  br label %for.cond, !dbg !4528

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4529
    #dbg_value(i32 %i.0, !4525, !DIExpression(), !4527)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4530
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4532

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [168 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4533
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4533
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4535
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4536
  %inc = add i32 %i.0, 1, !dbg !4537
    #dbg_value(i32 %inc, !4525, !DIExpression(), !4527)
  br label %for.cond, !dbg !4538, !llvm.loop !4539

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4541

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake128_ctx_release(ptr noundef nonnull %s) #4, !dbg !4541
  ret void, !dbg !4542
}

; Function Attrs: nounwind
define dso_local void @shake256(ptr noundef %output, i32 noundef %outlen, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4543 {
entry:
  %t = alloca [136 x i8], align 1
  %s = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %output, !4544, !DIExpression(), !4545)
    #dbg_value(i32 %outlen, !4546, !DIExpression(), !4545)
    #dbg_value(ptr %input, !4547, !DIExpression(), !4545)
    #dbg_value(i32 %inlen, !4548, !DIExpression(), !4545)
  %div = udiv i32 %outlen, 136, !dbg !4549
    #dbg_value(i32 %div, !4550, !DIExpression(), !4545)
    #dbg_declare(ptr %t, !4551, !DIExpression(), !4555)
    #dbg_declare(ptr %s, !4556, !DIExpression(), !4557)
  call void @shake256_absorb(ptr noundef nonnull %s, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4558
  call void @shake256_squeezeblocks(ptr noundef %output, i32 noundef %div, ptr noundef nonnull %s) #4, !dbg !4559
  %mul = mul nuw i32 %div, 136, !dbg !4560
  %add.ptr = getelementptr inbounds nuw i8, ptr %output, i32 %mul, !dbg !4561
    #dbg_value(ptr %add.ptr, !4544, !DIExpression(), !4545)
  %mul1.neg = mul i32 %div, -136, !dbg !4562
  %sub = add i32 %mul1.neg, %outlen, !dbg !4563
    #dbg_value(i32 %sub, !4546, !DIExpression(), !4545)
  %tobool.not = icmp eq i32 %sub, 0, !dbg !4564
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4564

if.then:                                          ; preds = %entry
  call void @shake256_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s) #4, !dbg !4566
    #dbg_value(i32 0, !4568, !DIExpression(), !4570)
  br label %for.cond, !dbg !4571

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !4572
    #dbg_value(i32 %i.0, !4568, !DIExpression(), !4570)
  %exitcond = icmp ne i32 %i.0, %sub, !dbg !4573
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !4575

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4576
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4576
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.0, !dbg !4578
  store i8 %0, ptr %arrayidx2, align 1, !dbg !4579
  %inc = add i32 %i.0, 1, !dbg !4580
    #dbg_value(i32 %inc, !4568, !DIExpression(), !4570)
  br label %for.cond, !dbg !4581, !llvm.loop !4582

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4584

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @shake256_ctx_release(ptr noundef nonnull %s) #4, !dbg !4584
  ret void, !dbg !4585
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4586 {
entry:
    #dbg_value(ptr %state, !4594, !DIExpression(), !4595)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4596
  store ptr %call, ptr %state, align 4, !dbg !4597
  %cmp = icmp eq ptr %call, null, !dbg !4598
  br i1 %cmp, label %if.then, label %if.end, !dbg !4598

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4600
  br label %if.end, !dbg !4602

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4603
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4604
  ret void, !dbg !4605
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4606 {
entry:
    #dbg_value(ptr %dest, !4611, !DIExpression(), !4612)
    #dbg_value(ptr %src, !4613, !DIExpression(), !4612)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4614
  store ptr %call, ptr %dest, align 4, !dbg !4615
  %cmp = icmp eq ptr %call, null, !dbg !4616
  br i1 %cmp, label %if.then, label %if.end, !dbg !4616

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4618
  br label %if.end, !dbg !4620

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4621
  %1 = load ptr, ptr %src, align 4, !dbg !4622
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4625 {
entry:
    #dbg_value(ptr %state, !4626, !DIExpression(), !4627)
  %0 = load ptr, ptr %state, align 4, !dbg !4628
  call void @free(ptr noundef %0) #6, !dbg !4629
  ret void, !dbg !4630
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4631 {
entry:
    #dbg_value(ptr %state, !4634, !DIExpression(), !4635)
    #dbg_value(ptr %input, !4636, !DIExpression(), !4635)
    #dbg_value(i32 %inlen, !4637, !DIExpression(), !4635)
  %0 = load ptr, ptr %state, align 4, !dbg !4638
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 136, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: nounwind
define dso_local void @sha3_256_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4641 {
entry:
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4644, !DIExpression(), !4645)
    #dbg_value(ptr %state, !4646, !DIExpression(), !4645)
    #dbg_declare(ptr %t, !4647, !DIExpression(), !4648)
  %0 = load ptr, ptr %state, align 4, !dbg !4649
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 136, i8 noundef zeroext 6) #4, !dbg !4650
  %1 = load ptr, ptr %state, align 4, !dbg !4651
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 136) #4, !dbg !4652
  call void @sha3_256_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4653
    #dbg_value(i32 0, !4654, !DIExpression(), !4656)
  br label %for.cond, !dbg !4657

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4658
    #dbg_value(i32 %i.0, !4654, !DIExpression(), !4656)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4659
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4661

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4662
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4662
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4664
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4665
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4666
    #dbg_value(i32 %inc, !4654, !DIExpression(), !4656)
  br label %for.cond, !dbg !4667, !llvm.loop !4668

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4670
}

; Function Attrs: nounwind
define dso_local void @sha3_256(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4671 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [136 x i8], align 1
    #dbg_value(ptr %output, !4674, !DIExpression(), !4675)
    #dbg_value(ptr %input, !4676, !DIExpression(), !4675)
    #dbg_value(i32 %inlen, !4677, !DIExpression(), !4675)
    #dbg_declare(ptr %s, !4678, !DIExpression(), !4682)
    #dbg_declare(ptr %t, !4683, !DIExpression(), !4684)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4685
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 136) #4, !dbg !4686
    #dbg_value(i32 0, !4687, !DIExpression(), !4689)
  br label %for.cond, !dbg !4690

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4691
    #dbg_value(i32 %i.0, !4687, !DIExpression(), !4689)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4692
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4694

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4695
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4695
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4697
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4698
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4699
    #dbg_value(i32 %inc, !4687, !DIExpression(), !4689)
  br label %for.cond, !dbg !4700, !llvm.loop !4701

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4703
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4704 {
entry:
    #dbg_value(ptr %state, !4712, !DIExpression(), !4713)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4714
  store ptr %call, ptr %state, align 4, !dbg !4715
  %cmp = icmp eq ptr %call, null, !dbg !4716
  br i1 %cmp, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4718
  br label %if.end, !dbg !4720

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4721
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4722
  ret void, !dbg !4723
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4724 {
entry:
    #dbg_value(ptr %dest, !4729, !DIExpression(), !4730)
    #dbg_value(ptr %src, !4731, !DIExpression(), !4730)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4732
  store ptr %call, ptr %dest, align 4, !dbg !4733
  %cmp = icmp eq ptr %call, null, !dbg !4734
  br i1 %cmp, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4736
  br label %if.end, !dbg !4738

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4739
  %1 = load ptr, ptr %src, align 4, !dbg !4740
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4741
  ret void, !dbg !4742
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4743 {
entry:
    #dbg_value(ptr %state, !4746, !DIExpression(), !4747)
    #dbg_value(ptr %input, !4748, !DIExpression(), !4747)
    #dbg_value(i32 %inlen, !4749, !DIExpression(), !4747)
  %0 = load ptr, ptr %state, align 4, !dbg !4750
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 104, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4751
  ret void, !dbg !4752
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4753 {
entry:
    #dbg_value(ptr %state, !4754, !DIExpression(), !4755)
  %0 = load ptr, ptr %state, align 4, !dbg !4756
  call void @free(ptr noundef %0) #6, !dbg !4757
  ret void, !dbg !4758
}

; Function Attrs: nounwind
define dso_local void @sha3_384_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4759 {
entry:
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4762, !DIExpression(), !4763)
    #dbg_value(ptr %state, !4764, !DIExpression(), !4763)
    #dbg_declare(ptr %t, !4765, !DIExpression(), !4769)
  %0 = load ptr, ptr %state, align 4, !dbg !4770
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 104, i8 noundef zeroext 6) #4, !dbg !4771
  %1 = load ptr, ptr %state, align 4, !dbg !4772
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 104) #4, !dbg !4773
  call void @sha3_384_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4774
    #dbg_value(i32 0, !4775, !DIExpression(), !4777)
  br label %for.cond, !dbg !4778

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4779
    #dbg_value(i32 %i.0, !4775, !DIExpression(), !4777)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4780
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4782

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4783
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4783
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4785
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4786
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4787
    #dbg_value(i32 %inc, !4775, !DIExpression(), !4777)
  br label %for.cond, !dbg !4788, !llvm.loop !4789

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4791
}

; Function Attrs: nounwind
define dso_local void @sha3_384(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4792 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [104 x i8], align 1
    #dbg_value(ptr %output, !4793, !DIExpression(), !4794)
    #dbg_value(ptr %input, !4795, !DIExpression(), !4794)
    #dbg_value(i32 %inlen, !4796, !DIExpression(), !4794)
    #dbg_declare(ptr %s, !4797, !DIExpression(), !4798)
    #dbg_declare(ptr %t, !4799, !DIExpression(), !4800)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 104, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4801
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 104) #4, !dbg !4802
    #dbg_value(i32 0, !4803, !DIExpression(), !4805)
  br label %for.cond, !dbg !4806

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4807
    #dbg_value(i32 %i.0, !4803, !DIExpression(), !4805)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4808
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4810

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [104 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4811
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4811
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4813
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4814
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4815
    #dbg_value(i32 %inc, !4803, !DIExpression(), !4805)
  br label %for.cond, !dbg !4816, !llvm.loop !4817

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4819
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_init(ptr noundef %state) local_unnamed_addr #0 !dbg !4820 {
entry:
    #dbg_value(ptr %state, !4828, !DIExpression(), !4829)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4830
  store ptr %call, ptr %state, align 4, !dbg !4831
  %cmp = icmp eq ptr %call, null, !dbg !4832
  br i1 %cmp, label %if.then, label %if.end, !dbg !4832

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4834
  br label %if.end, !dbg !4836

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %state, align 4, !dbg !4837
  call fastcc void @keccak_inc_init(ptr noundef %0) #4, !dbg !4838
  ret void, !dbg !4839
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_clone(ptr noundef %dest, ptr noundef %src) local_unnamed_addr #0 !dbg !4840 {
entry:
    #dbg_value(ptr %dest, !4845, !DIExpression(), !4846)
    #dbg_value(ptr %src, !4847, !DIExpression(), !4846)
  %call = call dereferenceable_or_null(208) ptr @malloc(i32 noundef 208) #7, !dbg !4848
  store ptr %call, ptr %dest, align 4, !dbg !4849
  %cmp = icmp eq ptr %call, null, !dbg !4850
  br i1 %cmp, label %if.then, label %if.end, !dbg !4850

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4852
  br label %if.end, !dbg !4854

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %dest, align 4, !dbg !4855
  %1 = load ptr, ptr %src, align 4, !dbg !4856
  %call4 = call ptr @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef 208) #6, !dbg !4857
  ret void, !dbg !4858
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_absorb(ptr noundef %state, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4859 {
entry:
    #dbg_value(ptr %state, !4862, !DIExpression(), !4863)
    #dbg_value(ptr %input, !4864, !DIExpression(), !4863)
    #dbg_value(i32 %inlen, !4865, !DIExpression(), !4863)
  %0 = load ptr, ptr %state, align 4, !dbg !4866
  call fastcc void @keccak_inc_absorb(ptr noundef %0, i32 noundef 72, ptr noundef %input, i32 noundef %inlen) #4, !dbg !4867
  ret void, !dbg !4868
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_ctx_release(ptr noundef %state) local_unnamed_addr #0 !dbg !4869 {
entry:
    #dbg_value(ptr %state, !4870, !DIExpression(), !4871)
  %0 = load ptr, ptr %state, align 4, !dbg !4872
  call void @free(ptr noundef %0) #6, !dbg !4873
  ret void, !dbg !4874
}

; Function Attrs: nounwind
define dso_local void @sha3_512_inc_finalize(ptr noundef %output, ptr noundef %state) local_unnamed_addr #0 !dbg !4875 {
entry:
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4878, !DIExpression(), !4879)
    #dbg_value(ptr %state, !4880, !DIExpression(), !4879)
    #dbg_declare(ptr %t, !4881, !DIExpression(), !4885)
  %0 = load ptr, ptr %state, align 4, !dbg !4886
  call fastcc void @keccak_inc_finalize(ptr noundef %0, i32 noundef 72, i8 noundef zeroext 6) #4, !dbg !4887
  %1 = load ptr, ptr %state, align 4, !dbg !4888
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef %1, i32 noundef 72) #4, !dbg !4889
  call void @sha3_512_inc_ctx_release(ptr noundef nonnull %state) #4, !dbg !4890
    #dbg_value(i32 0, !4891, !DIExpression(), !4893)
  br label %for.cond, !dbg !4894

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4895
    #dbg_value(i32 %i.0, !4891, !DIExpression(), !4893)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4896
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4898

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4899
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4899
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4901
  store i8 %2, ptr %arrayidx2, align 1, !dbg !4902
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4903
    #dbg_value(i32 %inc, !4891, !DIExpression(), !4893)
  br label %for.cond, !dbg !4904, !llvm.loop !4905

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4907
}

; Function Attrs: nounwind
define dso_local void @sha3_512(ptr noundef %output, ptr noundef %input, i32 noundef %inlen) local_unnamed_addr #0 !dbg !4908 {
entry:
  %s = alloca [25 x i64], align 8
  %t = alloca [72 x i8], align 1
    #dbg_value(ptr %output, !4909, !DIExpression(), !4910)
    #dbg_value(ptr %input, !4911, !DIExpression(), !4910)
    #dbg_value(i32 %inlen, !4912, !DIExpression(), !4910)
    #dbg_declare(ptr %s, !4913, !DIExpression(), !4914)
    #dbg_declare(ptr %t, !4915, !DIExpression(), !4916)
  call fastcc void @keccak_absorb(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %input, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !4917
  call fastcc void @keccak_squeezeblocks(ptr noundef nonnull %t, i32 noundef 1, ptr noundef nonnull %s, i32 noundef 72) #4, !dbg !4918
    #dbg_value(i32 0, !4919, !DIExpression(), !4921)
  br label %for.cond, !dbg !4922

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4923
    #dbg_value(i32 %i.0, !4919, !DIExpression(), !4921)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4924
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4926

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [72 x i8], ptr %t, i32 0, i32 %i.0, !dbg !4927
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4927
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %output, i32 %i.0, !dbg !4929
  store i8 %0, ptr %arrayidx3, align 1, !dbg !4930
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4931
    #dbg_value(i32 %inc, !4919, !DIExpression(), !4921)
  br label %for.cond, !dbg !4932, !llvm.loop !4933

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4935
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !4936 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !4944, !DIExpression(), !4945)
    #dbg_value(ptr %key, !4946, !DIExpression(), !4945)
    #dbg_declare(ptr %skey, !4947, !DIExpression(), !4951)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !4952
  store ptr %call, ptr %r, align 4, !dbg !4953
  %cmp = icmp eq ptr %call, null, !dbg !4954
  br i1 %cmp, label %if.then, label %if.end, !dbg !4954

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !4956
  br label %if.end, !dbg !4958

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !4959
  %0 = load ptr, ptr %r, align 4, !dbg !4960
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !4961
  ret void, !dbg !4962
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !4963 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !4966, !DIExpression(), !4967)
    #dbg_value(ptr %key, !4968, !DIExpression(), !4967)
    #dbg_value(i32 %key_len, !4969, !DIExpression(), !4967)
    #dbg_declare(ptr %skey, !4970, !DIExpression(), !4974)
  %0 = and i32 %key_len, 60, !dbg !4975
    #dbg_value(i32 %key_len, !4976, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !4967)
  %shr1 = lshr i32 %key_len, 2, !dbg !4977
    #dbg_value(i32 %shr1, !4978, !DIExpression(), !4967)
  %shl = add nuw nsw i32 %0, 28, !dbg !4975
    #dbg_value(i32 %shl, !4979, !DIExpression(), !4967)
  %shr3 = lshr i32 %key_len, 2, !dbg !4980
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !4981
  %shr4 = lshr i32 %key_len, 2, !dbg !4982
  %sub5 = add nsw i32 %shr4, -1, !dbg !4983
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !4984
  %1 = load i32, ptr %arrayidx, align 4, !dbg !4984
    #dbg_value(i32 %1, !4985, !DIExpression(), !4967)
    #dbg_value(i32 %shr1, !4986, !DIExpression(), !4967)
    #dbg_value(i32 0, !4987, !DIExpression(), !4967)
    #dbg_value(i32 0, !4988, !DIExpression(), !4967)
  br label %for.cond, !dbg !4989

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !4991
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !4992
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !4992
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !4967
    #dbg_value(i32 %tmp.0, !4985, !DIExpression(), !4967)
    #dbg_value(i32 %k.0, !4988, !DIExpression(), !4967)
    #dbg_value(i32 %j.0, !4987, !DIExpression(), !4967)
    #dbg_value(i32 %i.0, !4986, !DIExpression(), !4967)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !4993
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !4995

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !4996

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !4998
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4998

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !5001
  %3 = lshr i32 %tmp.0, 8, !dbg !5001
  %4 = or i32 %2, %3, !dbg !5001
    #dbg_value(i32 %4, !4985, !DIExpression(), !4967)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !5003
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !5004
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !5004
  %conv = zext i8 %5 to i32, !dbg !5004
  %xor = xor i32 %call, %conv, !dbg !5005
    #dbg_value(i32 %xor, !4985, !DIExpression(), !4967)
  br label %if.end16, !dbg !5006

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !5007
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !5009
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !5009

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !5010
    #dbg_value(i32 %call15, !4985, !DIExpression(), !4967)
  br label %if.end16, !dbg !5012

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !5013
    #dbg_value(i32 %tmp.2, !4985, !DIExpression(), !4967)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !5014
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !5015
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !5015
  %xor19 = xor i32 %tmp.2, %6, !dbg !5016
    #dbg_value(i32 %xor19, !4985, !DIExpression(), !4967)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !5017
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !5018
  %inc = add i32 %j.0, 1, !dbg !5019
    #dbg_value(i32 %inc, !4987, !DIExpression(), !4967)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !5021
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !5021
  %inc24 = zext i1 %cmp21 to i32, !dbg !5021
  %spec.select1 = add i32 %k.0, %inc24, !dbg !5021
    #dbg_value(i32 %spec.select1, !4988, !DIExpression(), !4967)
    #dbg_value(i32 %spec.select, !4987, !DIExpression(), !4967)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !5022
    #dbg_value(i32 %inc26, !4986, !DIExpression(), !4967)
  br label %for.cond, !dbg !5023, !llvm.loop !5024

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5026
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !5026
    #dbg_value(i32 %j.2, !4987, !DIExpression(), !4967)
    #dbg_value(i32 %i.1, !4986, !DIExpression(), !4967)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !5027
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !4996

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !5029, !DIExpression(), !5034)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5035
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !5036
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !5037
  %7 = load i64, ptr %q, align 8, !dbg !5038
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5039
  store i64 %7, ptr %arrayidx35, align 8, !dbg !5040
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5041
  store i64 %7, ptr %arrayidx37, align 8, !dbg !5042
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5043
  store i64 %7, ptr %arrayidx39, align 8, !dbg !5044
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5045
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !5045
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5046
  store i64 %8, ptr %arrayidx41, align 8, !dbg !5047
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5048
  store i64 %8, ptr %arrayidx43, align 8, !dbg !5049
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5050
  store i64 %8, ptr %arrayidx45, align 8, !dbg !5051
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5052
  %9 = load i64, ptr %q, align 8, !dbg !5053
  %and = and i64 %9, 1229782938247303441, !dbg !5054
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5055
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !5055
  %and49 = and i64 %10, 2459565876494606882, !dbg !5056
  %or50 = or disjoint i64 %and, %and49, !dbg !5057
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5058
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !5058
  %and52 = and i64 %11, 4919131752989213764, !dbg !5059
  %or53 = or disjoint i64 %or50, %and52, !dbg !5060
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5061
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !5061
  %and55 = and i64 %12, -8608480567731124088, !dbg !5062
  %or56 = or disjoint i64 %or53, %and55, !dbg !5063
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !5064
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !5065
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5066
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !5066
  %and60 = and i64 %13, 1229782938247303441, !dbg !5067
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5068
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !5068
  %and62 = and i64 %14, 2459565876494606882, !dbg !5069
  %or63 = or disjoint i64 %and60, %and62, !dbg !5070
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5071
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !5071
  %and65 = and i64 %15, 4919131752989213764, !dbg !5072
  %or66 = or disjoint i64 %or63, %and65, !dbg !5073
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5074
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !5074
  %and68 = and i64 %16, -8608480567731124088, !dbg !5075
  %or69 = or disjoint i64 %or66, %and68, !dbg !5076
  %add70 = or disjoint i32 %j.2, 1, !dbg !5077
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !5078
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !5079
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !5080
    #dbg_value(i32 %add73, !4986, !DIExpression(), !4967)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !5081
    #dbg_value(i32 %add74, !4987, !DIExpression(), !4967)
  br label %for.cond27, !dbg !5082, !llvm.loop !5083

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !5085
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5086 {
entry:
    #dbg_value(ptr %skey, !5089, !DIExpression(), !5090)
    #dbg_value(ptr %comp_skey, !5091, !DIExpression(), !5090)
    #dbg_value(i32 %nrounds, !5092, !DIExpression(), !5090)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !5093
  %shl = add nuw nsw i32 %add, 2, !dbg !5093
    #dbg_value(i32 %shl, !5094, !DIExpression(), !5090)
    #dbg_value(i32 0, !5095, !DIExpression(), !5090)
    #dbg_value(i32 0, !5096, !DIExpression(), !5090)
  br label %for.cond, !dbg !5097

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5099
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !5099
    #dbg_value(i32 %v.0, !5096, !DIExpression(), !5090)
    #dbg_value(i32 %u.0, !5095, !DIExpression(), !5090)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !5100
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5102

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !5103
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5103
    #dbg_value(i64 %0, !5105, !DIExpression(), !5106)
    #dbg_value(i64 %0, !5107, !DIExpression(), !5106)
    #dbg_value(i64 %0, !5108, !DIExpression(), !5106)
    #dbg_value(i64 %0, !5109, !DIExpression(), !5106)
  %and = and i64 %0, 1229782938247303441, !dbg !5110
    #dbg_value(i64 %and, !5109, !DIExpression(), !5106)
    #dbg_value(i64 %0, !5108, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !5106)
    #dbg_value(i64 %0, !5107, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !5106)
    #dbg_value(i64 %0, !5105, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !5106)
  %and1 = lshr i64 %0, 1, !dbg !5111
  %shr = and i64 %and1, 1229782938247303441, !dbg !5111
    #dbg_value(i64 %shr, !5108, !DIExpression(), !5106)
  %and2 = lshr i64 %0, 2, !dbg !5112
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !5112
    #dbg_value(i64 %shr4, !5107, !DIExpression(), !5106)
  %and3 = lshr i64 %0, 3, !dbg !5113
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !5113
    #dbg_value(i64 %shr5, !5105, !DIExpression(), !5106)
  %sub = mul nuw i64 %and, 15, !dbg !5114
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !5115
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !5116
  %sub10 = mul nuw i64 %shr, 15, !dbg !5117
  %add11 = or disjoint i32 %v.0, 1, !dbg !5118
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !5119
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !5120
  %sub14 = mul nuw i64 %shr4, 15, !dbg !5121
  %add15 = or disjoint i32 %v.0, 2, !dbg !5122
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !5123
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !5124
  %sub18 = mul nuw i64 %shr5, 15, !dbg !5125
  %add19 = or disjoint i32 %v.0, 3, !dbg !5126
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !5127
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !5128
  %inc = add nuw nsw i32 %u.0, 1, !dbg !5129
    #dbg_value(i32 %inc, !5095, !DIExpression(), !5090)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !5130
    #dbg_value(i32 %add21, !5096, !DIExpression(), !5090)
  br label %for.cond, !dbg !5131, !llvm.loop !5132

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5134
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !5135 {
entry:
    #dbg_value(ptr %v, !5139, !DIExpression(), !5140)
    #dbg_value(i32 %num, !5141, !DIExpression(), !5140)
    #dbg_value(ptr %src, !5142, !DIExpression(), !5140)
  br label %while.cond, !dbg !5143

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !5139, !DIExpression(), !5140)
    #dbg_value(i32 %num.addr.0, !5141, !DIExpression(), !5140)
    #dbg_value(ptr %src.addr.0, !5142, !DIExpression(), !5140)
    #dbg_value(i32 %num.addr.0, !5141, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5140)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5144
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5143

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5145
    #dbg_value(i32 %dec, !5141, !DIExpression(), !5140)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !5146
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5148
    #dbg_value(ptr %incdec.ptr, !5139, !DIExpression(), !5140)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !5149
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !5150
    #dbg_value(ptr %add.ptr, !5142, !DIExpression(), !5140)
  br label %while.cond, !dbg !5143, !llvm.loop !5151

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5153
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !5154 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !5157, !DIExpression(), !5158)
    #dbg_declare(ptr %q, !5159, !DIExpression(), !5160)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !5161
  %conv = zext i32 %x to i64, !dbg !5162
  store i64 %conv, ptr %q, align 8, !dbg !5163
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5164
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5165
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5166
  %0 = load i64, ptr %q, align 8, !dbg !5167
  %conv5 = trunc i64 %0 to i32, !dbg !5168
  ret i32 %conv5, !dbg !5169
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !5170 {
entry:
    #dbg_value(ptr %q0, !5175, !DIExpression(), !5176)
    #dbg_value(ptr %q1, !5177, !DIExpression(), !5176)
    #dbg_value(ptr %w, !5178, !DIExpression(), !5176)
  %0 = load i32, ptr %w, align 4, !dbg !5179
  %conv = zext i32 %0 to i64, !dbg !5179
    #dbg_value(i64 %conv, !5180, !DIExpression(), !5176)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5181
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !5181
  %conv2 = zext i32 %1 to i64, !dbg !5181
    #dbg_value(i64 %conv2, !5182, !DIExpression(), !5176)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5183
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !5183
  %conv4 = zext i32 %2 to i64, !dbg !5183
    #dbg_value(i64 %conv4, !5184, !DIExpression(), !5176)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5185
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !5185
  %conv6 = zext i32 %3 to i64, !dbg !5185
    #dbg_value(i64 %conv6, !5186, !DIExpression(), !5176)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !5187
  %or = or i64 %shl, %conv, !dbg !5188
    #dbg_value(i64 %or, !5180, !DIExpression(), !5176)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !5189
  %or8 = or i64 %shl7, %conv2, !dbg !5190
    #dbg_value(i64 %or8, !5182, !DIExpression(), !5176)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !5191
  %or10 = or i64 %shl9, %conv4, !dbg !5192
    #dbg_value(i64 %or10, !5184, !DIExpression(), !5176)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !5193
  %or12 = or i64 %shl11, %conv6, !dbg !5194
    #dbg_value(i64 %or12, !5186, !DIExpression(), !5176)
  %and = and i64 %or, 281470681808895, !dbg !5195
    #dbg_value(i64 %and, !5180, !DIExpression(), !5176)
  %and13 = and i64 %or8, 281470681808895, !dbg !5196
    #dbg_value(i64 %and13, !5182, !DIExpression(), !5176)
  %and14 = and i64 %or10, 281470681808895, !dbg !5197
    #dbg_value(i64 %and14, !5184, !DIExpression(), !5176)
  %and15 = and i64 %or12, 281470681808895, !dbg !5198
    #dbg_value(i64 %and15, !5186, !DIExpression(), !5176)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !5199
  %or17 = or i64 %and, %shl16, !dbg !5200
    #dbg_value(i64 %or17, !5180, !DIExpression(), !5176)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !5201
  %or19 = or i64 %and13, %shl18, !dbg !5202
    #dbg_value(i64 %or19, !5182, !DIExpression(), !5176)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5176)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !5176)
  %and24 = and i64 %or17, 71777214294589695, !dbg !5203
    #dbg_value(i64 %and24, !5180, !DIExpression(), !5176)
  %and25 = and i64 %or19, 71777214294589695, !dbg !5204
    #dbg_value(i64 %and25, !5182, !DIExpression(), !5176)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !5184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5176)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !5186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !5176)
  %4 = shl nuw i64 %and14, 16, !dbg !5205
  %5 = shl nuw nsw i64 %and14, 8, !dbg !5205
  %and26 = or i64 %4, %5, !dbg !5205
  %shl28 = and i64 %and26, -71777214294589696, !dbg !5205
  %or29 = or disjoint i64 %and24, %shl28, !dbg !5206
  store i64 %or29, ptr %q0, align 8, !dbg !5207
  %6 = shl nuw i64 %and15, 16, !dbg !5208
  %7 = shl nuw nsw i64 %and15, 8, !dbg !5208
  %and27 = or i64 %6, %7, !dbg !5208
  %shl30 = and i64 %and27, -71777214294589696, !dbg !5208
  %or31 = or disjoint i64 %and25, %shl30, !dbg !5209
  store i64 %or31, ptr %q1, align 8, !dbg !5210
  ret void, !dbg !5211
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5212 {
entry:
    #dbg_value(ptr %q, !5213, !DIExpression(), !5214)
  %0 = load i64, ptr %q, align 8, !dbg !5215
    #dbg_value(i64 %0, !5217, !DIExpression(), !5218)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5215
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5215
    #dbg_value(i64 %1, !5219, !DIExpression(), !5218)
  %and = and i64 %0, 6148914691236517205, !dbg !5215
  %and2 = shl i64 %1, 1, !dbg !5215
  %shl = and i64 %and2, -6148914691236517206, !dbg !5215
  %or = or disjoint i64 %and, %shl, !dbg !5215
  store i64 %or, ptr %q, align 8, !dbg !5215
  %and4 = lshr i64 %0, 1, !dbg !5215
  %shr = and i64 %and4, 6148914691236517205, !dbg !5215
  %and5 = and i64 %1, -6148914691236517206, !dbg !5215
  %or6 = or disjoint i64 %shr, %and5, !dbg !5215
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5215
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !5215
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5220
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !5220
    #dbg_value(i64 %2, !5222, !DIExpression(), !5223)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5220
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !5220
    #dbg_value(i64 %3, !5224, !DIExpression(), !5223)
  %and13 = and i64 %2, 6148914691236517205, !dbg !5220
  %and14 = shl i64 %3, 1, !dbg !5220
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !5220
  %or16 = or disjoint i64 %and13, %shl15, !dbg !5220
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5220
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !5220
  %and18 = lshr i64 %2, 1, !dbg !5220
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !5220
  %and20 = and i64 %3, -6148914691236517206, !dbg !5220
  %or21 = or disjoint i64 %shr19, %and20, !dbg !5220
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5220
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !5220
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5225
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !5225
    #dbg_value(i64 %4, !5227, !DIExpression(), !5228)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5225
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !5225
    #dbg_value(i64 %5, !5229, !DIExpression(), !5228)
  %and29 = and i64 %4, 6148914691236517205, !dbg !5225
  %and30 = shl i64 %5, 1, !dbg !5225
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !5225
  %or32 = or disjoint i64 %and29, %shl31, !dbg !5225
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5225
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !5225
  %and34 = lshr i64 %4, 1, !dbg !5225
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !5225
  %and36 = and i64 %5, -6148914691236517206, !dbg !5225
  %or37 = or disjoint i64 %shr35, %and36, !dbg !5225
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5225
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !5225
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5230
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !5230
    #dbg_value(i64 %6, !5232, !DIExpression(), !5233)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5230
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !5230
    #dbg_value(i64 %7, !5234, !DIExpression(), !5233)
  %and45 = and i64 %6, 6148914691236517205, !dbg !5230
  %and46 = shl i64 %7, 1, !dbg !5230
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !5230
  %or48 = or disjoint i64 %and45, %shl47, !dbg !5230
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5230
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !5230
  %and50 = lshr i64 %6, 1, !dbg !5230
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !5230
  %and52 = and i64 %7, -6148914691236517206, !dbg !5230
  %or53 = or disjoint i64 %shr51, %and52, !dbg !5230
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5230
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !5230
  %8 = load i64, ptr %q, align 8, !dbg !5235
    #dbg_value(i64 %8, !5237, !DIExpression(), !5238)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5235
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !5235
    #dbg_value(i64 %9, !5239, !DIExpression(), !5238)
  %and61 = and i64 %8, 3689348814741910323, !dbg !5235
  %and62 = shl i64 %9, 2, !dbg !5235
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !5235
  %or64 = or disjoint i64 %and61, %shl63, !dbg !5235
  store i64 %or64, ptr %q, align 8, !dbg !5235
  %and66 = lshr i64 %8, 2, !dbg !5235
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !5235
  %and68 = and i64 %9, -3689348814741910324, !dbg !5235
  %or69 = or disjoint i64 %shr67, %and68, !dbg !5235
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5235
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !5235
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5240
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !5240
    #dbg_value(i64 %10, !5242, !DIExpression(), !5243)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5240
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !5240
    #dbg_value(i64 %11, !5244, !DIExpression(), !5243)
  %and77 = and i64 %10, 3689348814741910323, !dbg !5240
  %and78 = shl i64 %11, 2, !dbg !5240
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !5240
  %or80 = or disjoint i64 %and77, %shl79, !dbg !5240
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5240
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !5240
  %and82 = lshr i64 %10, 2, !dbg !5240
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !5240
  %and84 = and i64 %11, -3689348814741910324, !dbg !5240
  %or85 = or disjoint i64 %shr83, %and84, !dbg !5240
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5240
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !5240
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5245
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !5245
    #dbg_value(i64 %12, !5247, !DIExpression(), !5248)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5245
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !5245
    #dbg_value(i64 %13, !5249, !DIExpression(), !5248)
  %and93 = and i64 %12, 3689348814741910323, !dbg !5245
  %and94 = shl i64 %13, 2, !dbg !5245
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !5245
  %or96 = or disjoint i64 %and93, %shl95, !dbg !5245
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5245
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !5245
  %and98 = lshr i64 %12, 2, !dbg !5245
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !5245
  %and100 = and i64 %13, -3689348814741910324, !dbg !5245
  %or101 = or disjoint i64 %shr99, %and100, !dbg !5245
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5245
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !5245
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5250
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !5250
    #dbg_value(i64 %14, !5252, !DIExpression(), !5253)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5250
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !5250
    #dbg_value(i64 %15, !5254, !DIExpression(), !5253)
  %and109 = and i64 %14, 3689348814741910323, !dbg !5250
  %and110 = shl i64 %15, 2, !dbg !5250
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !5250
  %or112 = or disjoint i64 %and109, %shl111, !dbg !5250
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5250
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !5250
  %and114 = lshr i64 %14, 2, !dbg !5250
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !5250
  %and116 = and i64 %15, -3689348814741910324, !dbg !5250
  %or117 = or disjoint i64 %shr115, %and116, !dbg !5250
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5250
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !5250
  %16 = load i64, ptr %q, align 8, !dbg !5255
    #dbg_value(i64 %16, !5257, !DIExpression(), !5258)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5255
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !5255
    #dbg_value(i64 %17, !5259, !DIExpression(), !5258)
  %and125 = and i64 %16, 1085102592571150095, !dbg !5255
  %and126 = shl i64 %17, 4, !dbg !5255
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !5255
  %or128 = or disjoint i64 %and125, %shl127, !dbg !5255
  store i64 %or128, ptr %q, align 8, !dbg !5255
  %and130 = lshr i64 %16, 4, !dbg !5255
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !5255
  %and132 = and i64 %17, -1085102592571150096, !dbg !5255
  %or133 = or disjoint i64 %shr131, %and132, !dbg !5255
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5255
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !5255
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5260
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !5260
    #dbg_value(i64 %18, !5262, !DIExpression(), !5263)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5260
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !5260
    #dbg_value(i64 %19, !5264, !DIExpression(), !5263)
  %and141 = and i64 %18, 1085102592571150095, !dbg !5260
  %and142 = shl i64 %19, 4, !dbg !5260
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !5260
  %or144 = or disjoint i64 %and141, %shl143, !dbg !5260
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5260
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !5260
  %and146 = lshr i64 %18, 4, !dbg !5260
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !5260
  %and148 = and i64 %19, -1085102592571150096, !dbg !5260
  %or149 = or disjoint i64 %shr147, %and148, !dbg !5260
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5260
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !5260
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5265
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !5265
    #dbg_value(i64 %20, !5267, !DIExpression(), !5268)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5265
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !5265
    #dbg_value(i64 %21, !5269, !DIExpression(), !5268)
  %and157 = and i64 %20, 1085102592571150095, !dbg !5265
  %and158 = shl i64 %21, 4, !dbg !5265
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !5265
  %or160 = or disjoint i64 %and157, %shl159, !dbg !5265
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5265
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !5265
  %and162 = lshr i64 %20, 4, !dbg !5265
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !5265
  %and164 = and i64 %21, -1085102592571150096, !dbg !5265
  %or165 = or disjoint i64 %shr163, %and164, !dbg !5265
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5265
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !5265
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5270
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !5270
    #dbg_value(i64 %22, !5272, !DIExpression(), !5273)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5270
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !5270
    #dbg_value(i64 %23, !5274, !DIExpression(), !5273)
  %and173 = and i64 %22, 1085102592571150095, !dbg !5270
  %and174 = shl i64 %23, 4, !dbg !5270
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !5270
  %or176 = or disjoint i64 %and173, %shl175, !dbg !5270
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5270
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !5270
  %and178 = lshr i64 %22, 4, !dbg !5270
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !5270
  %and180 = and i64 %23, -1085102592571150096, !dbg !5270
  %or181 = or disjoint i64 %shr179, %and180, !dbg !5270
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5270
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !5270
  ret void, !dbg !5275
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5276 {
entry:
    #dbg_value(ptr %q, !5277, !DIExpression(), !5278)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5279
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5279
    #dbg_value(i64 %0, !5280, !DIExpression(), !5278)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5281
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5281
    #dbg_value(i64 %1, !5282, !DIExpression(), !5278)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5283
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5283
    #dbg_value(i64 %2, !5284, !DIExpression(), !5278)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5285
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5285
    #dbg_value(i64 %3, !5286, !DIExpression(), !5278)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5287
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5287
    #dbg_value(i64 %4, !5288, !DIExpression(), !5278)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5289
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5289
    #dbg_value(i64 %5, !5290, !DIExpression(), !5278)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5291
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5291
    #dbg_value(i64 %6, !5292, !DIExpression(), !5278)
  %7 = load i64, ptr %q, align 8, !dbg !5293
    #dbg_value(i64 %7, !5294, !DIExpression(), !5278)
  %xor = xor i64 %3, %5, !dbg !5295
    #dbg_value(i64 %xor, !5296, !DIExpression(), !5278)
  %xor8 = xor i64 %0, %6, !dbg !5297
    #dbg_value(i64 %xor8, !5298, !DIExpression(), !5278)
  %xor9 = xor i64 %0, %3, !dbg !5299
    #dbg_value(i64 %xor9, !5300, !DIExpression(), !5278)
  %xor10 = xor i64 %0, %5, !dbg !5301
    #dbg_value(i64 %xor10, !5302, !DIExpression(), !5278)
  %xor11 = xor i64 %1, %2, !dbg !5303
    #dbg_value(i64 %xor11, !5304, !DIExpression(), !5278)
  %xor12 = xor i64 %xor11, %7, !dbg !5305
    #dbg_value(i64 %xor12, !5306, !DIExpression(), !5278)
  %xor13 = xor i64 %xor12, %3, !dbg !5307
    #dbg_value(i64 %xor13, !5308, !DIExpression(), !5278)
  %xor14 = xor i64 %xor8, %xor, !dbg !5309
    #dbg_value(i64 %xor14, !5310, !DIExpression(), !5278)
  %xor15 = xor i64 %xor12, %0, !dbg !5311
    #dbg_value(i64 %xor15, !5312, !DIExpression(), !5278)
  %xor16 = xor i64 %xor12, %6, !dbg !5313
    #dbg_value(i64 %xor16, !5314, !DIExpression(), !5278)
  %xor17 = xor i64 %xor16, %xor10, !dbg !5315
    #dbg_value(i64 %xor17, !5316, !DIExpression(), !5278)
  %xor18 = xor i64 %4, %xor14, !dbg !5317
    #dbg_value(i64 %xor18, !5318, !DIExpression(), !5278)
  %xor19 = xor i64 %xor18, %5, !dbg !5319
    #dbg_value(i64 %xor19, !5320, !DIExpression(), !5278)
  %xor20 = xor i64 %xor18, %1, !dbg !5321
    #dbg_value(i64 %xor20, !5322, !DIExpression(), !5278)
  %xor21 = xor i64 %xor19, %7, !dbg !5323
    #dbg_value(i64 %xor21, !5324, !DIExpression(), !5278)
  %xor22 = xor i64 %xor19, %xor11, !dbg !5325
    #dbg_value(i64 %xor22, !5326, !DIExpression(), !5278)
  %xor23 = xor i64 %xor20, %xor9, !dbg !5327
    #dbg_value(i64 %xor23, !5328, !DIExpression(), !5278)
  %xor24 = xor i64 %7, %xor23, !dbg !5329
    #dbg_value(i64 %xor24, !5330, !DIExpression(), !5278)
  %xor25 = xor i64 %xor22, %xor23, !dbg !5331
    #dbg_value(i64 %xor25, !5332, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !5333, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %xor27 = xor i64 %xor11, %xor23, !dbg !5334
    #dbg_value(i64 %xor27, !5335, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !5336, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !5337, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %and = and i64 %xor14, %xor19, !dbg !5338
    #dbg_value(i64 %and, !5339, !DIExpression(), !5278)
  %and30 = and i64 %xor17, %xor21, !dbg !5340
    #dbg_value(i64 %and30, !5341, !DIExpression(), !5278)
  %xor31 = xor i64 %and30, %and, !dbg !5342
    #dbg_value(i64 %xor31, !5343, !DIExpression(), !5278)
  %and32 = and i64 %xor13, %7, !dbg !5344
    #dbg_value(i64 %and32, !5345, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !5346, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %and34 = and i64 %xor8, %xor27, !dbg !5347
    #dbg_value(i64 %and34, !5348, !DIExpression(), !5278)
  %and35 = and i64 %xor16, %xor12, !dbg !5349
    #dbg_value(i64 %and35, !5350, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !5351, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %and37 = and i64 %xor15, %xor24, !dbg !5352
    #dbg_value(i64 %and37, !5353, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !5354, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %and39 = and i64 %xor9, %xor23, !dbg !5355
    #dbg_value(i64 %and39, !5356, !DIExpression(), !5278)
  %and40 = and i64 %xor, %xor25, !dbg !5357
    #dbg_value(i64 %and40, !5358, !DIExpression(), !5278)
  %xor41 = xor i64 %and40, %and39, !dbg !5359
    #dbg_value(i64 %xor41, !5360, !DIExpression(), !5278)
  %and42 = and i64 %xor10, %xor22, !dbg !5361
    #dbg_value(i64 %and42, !5362, !DIExpression(), !5278)
  %xor43 = xor i64 %and42, %and39, !dbg !5363
    #dbg_value(i64 %xor43, !5364, !DIExpression(), !5278)
  %xor44 = xor i64 %xor31, %xor41, !dbg !5365
    #dbg_value(i64 %xor44, !5366, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !5367, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !5368, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !5369, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %xor48 = xor i64 %xor44, %xor20, !dbg !5370
    #dbg_value(i64 %xor48, !5371, !DIExpression(), !5278)
  %8 = xor i64 %xor10, %and32, !dbg !5372
  %9 = xor i64 %8, %xor22, !dbg !5372
  %10 = xor i64 %9, %and, !dbg !5372
  %xor49 = xor i64 %10, %xor43, !dbg !5372
    #dbg_value(i64 %xor49, !5373, !DIExpression(), !5278)
  %11 = xor i64 %xor27, %and35, !dbg !5374
  %12 = xor i64 %11, %xor8, !dbg !5374
  %13 = xor i64 %12, %and34, !dbg !5374
  %xor50 = xor i64 %13, %xor41, !dbg !5374
    #dbg_value(i64 %xor50, !5375, !DIExpression(), !5278)
  %14 = xor i64 %xor27, %and37, !dbg !5376
  %15 = xor i64 %14, %0, !dbg !5376
  %16 = xor i64 %15, %and34, !dbg !5376
  %xor51 = xor i64 %16, %xor43, !dbg !5376
    #dbg_value(i64 %xor51, !5377, !DIExpression(), !5278)
  %xor52 = xor i64 %xor48, %xor49, !dbg !5378
    #dbg_value(i64 %xor52, !5379, !DIExpression(), !5278)
  %and53 = and i64 %xor48, %xor50, !dbg !5380
    #dbg_value(i64 %and53, !5381, !DIExpression(), !5278)
  %xor54 = xor i64 %xor51, %and53, !dbg !5382
    #dbg_value(i64 %xor54, !5383, !DIExpression(), !5278)
  %and55 = and i64 %xor52, %xor54, !dbg !5384
    #dbg_value(i64 %and55, !5385, !DIExpression(), !5278)
  %xor56 = xor i64 %and55, %xor49, !dbg !5386
    #dbg_value(i64 %xor56, !5387, !DIExpression(), !5278)
  %xor57 = xor i64 %xor50, %xor51, !dbg !5388
    #dbg_value(i64 %xor57, !5389, !DIExpression(), !5278)
  %xor58 = xor i64 %xor49, %and53, !dbg !5390
    #dbg_value(i64 %xor58, !5391, !DIExpression(), !5278)
  %and59 = and i64 %xor58, %xor57, !dbg !5392
    #dbg_value(i64 %and59, !5393, !DIExpression(), !5278)
  %xor60 = xor i64 %and59, %xor51, !dbg !5394
    #dbg_value(i64 %xor60, !5395, !DIExpression(), !5278)
  %xor61 = xor i64 %xor50, %xor60, !dbg !5396
    #dbg_value(i64 %xor61, !5397, !DIExpression(), !5278)
  %xor62 = xor i64 %and59, %and53, !dbg !5398
    #dbg_value(i64 %xor62, !5399, !DIExpression(), !5278)
  %and63 = and i64 %xor51, %xor62, !dbg !5400
    #dbg_value(i64 %and63, !5401, !DIExpression(), !5278)
  %xor64 = xor i64 %and63, %xor61, !dbg !5402
    #dbg_value(i64 %xor64, !5403, !DIExpression(), !5278)
  %xor65 = xor i64 %xor54, %and63, !dbg !5404
    #dbg_value(i64 %xor65, !5405, !DIExpression(), !5278)
  %and66 = and i64 %xor56, %xor65, !dbg !5406
    #dbg_value(i64 %and66, !5407, !DIExpression(), !5278)
  %xor67 = xor i64 %xor52, %and66, !dbg !5408
    #dbg_value(i64 %xor67, !5409, !DIExpression(), !5278)
  %xor68 = xor i64 %xor67, %xor64, !dbg !5410
    #dbg_value(i64 %xor68, !5411, !DIExpression(), !5278)
  %xor69 = xor i64 %xor56, %xor60, !dbg !5412
    #dbg_value(i64 %xor69, !5413, !DIExpression(), !5278)
  %xor70 = xor i64 %xor56, %xor67, !dbg !5414
    #dbg_value(i64 %xor70, !5415, !DIExpression(), !5278)
  %xor71 = xor i64 %and63, %xor50, !dbg !5416
    #dbg_value(i64 %xor71, !5417, !DIExpression(), !5278)
  %xor72 = xor i64 %xor69, %xor68, !dbg !5418
    #dbg_value(i64 %xor72, !5419, !DIExpression(), !5278)
  %and73 = and i64 %xor71, %xor19, !dbg !5420
    #dbg_value(i64 %and73, !5421, !DIExpression(), !5278)
  %and74 = and i64 %xor64, %xor21, !dbg !5422
    #dbg_value(i64 %and74, !5423, !DIExpression(), !5278)
  %and75 = and i64 %xor60, %7, !dbg !5424
    #dbg_value(i64 %and75, !5425, !DIExpression(), !5278)
  %and76 = and i64 %xor70, %xor27, !dbg !5426
    #dbg_value(i64 %and76, !5427, !DIExpression(), !5278)
  %and77 = and i64 %xor67, %xor12, !dbg !5428
    #dbg_value(i64 %and77, !5429, !DIExpression(), !5278)
  %and78 = and i64 %xor56, %xor24, !dbg !5430
    #dbg_value(i64 %and78, !5431, !DIExpression(), !5278)
  %and79 = and i64 %xor69, %xor23, !dbg !5432
    #dbg_value(i64 %and79, !5433, !DIExpression(), !5278)
  %and80 = and i64 %xor72, %xor25, !dbg !5434
    #dbg_value(i64 %and80, !5435, !DIExpression(), !5278)
  %and81 = and i64 %xor68, %xor22, !dbg !5436
    #dbg_value(i64 %and81, !5437, !DIExpression(), !5278)
  %and82 = and i64 %xor71, %xor14, !dbg !5438
    #dbg_value(i64 %and82, !5439, !DIExpression(), !5278)
  %and83 = and i64 %xor64, %xor17, !dbg !5440
    #dbg_value(i64 %and83, !5441, !DIExpression(), !5278)
  %and84 = and i64 %xor60, %xor13, !dbg !5442
    #dbg_value(i64 %and84, !5443, !DIExpression(), !5278)
  %and85 = and i64 %xor70, %xor8, !dbg !5444
    #dbg_value(i64 %and85, !5445, !DIExpression(), !5278)
  %and86 = and i64 %xor67, %xor16, !dbg !5446
    #dbg_value(i64 %and86, !5447, !DIExpression(), !5278)
  %and87 = and i64 %xor56, %xor15, !dbg !5448
    #dbg_value(i64 %and87, !5449, !DIExpression(), !5278)
  %and88 = and i64 %xor69, %xor9, !dbg !5450
    #dbg_value(i64 %and88, !5451, !DIExpression(), !5278)
  %and89 = and i64 %xor72, %xor, !dbg !5452
    #dbg_value(i64 %and89, !5453, !DIExpression(), !5278)
  %and90 = and i64 %xor68, %xor10, !dbg !5454
    #dbg_value(i64 %and90, !5455, !DIExpression(), !5278)
  %xor91 = xor i64 %and88, %and89, !dbg !5456
    #dbg_value(i64 %xor91, !5457, !DIExpression(), !5278)
  %xor92 = xor i64 %and83, %and84, !dbg !5458
    #dbg_value(i64 %xor92, !5459, !DIExpression(), !5278)
  %xor93 = xor i64 %and78, %and86, !dbg !5460
    #dbg_value(i64 %xor93, !5461, !DIExpression(), !5278)
  %xor94 = xor i64 %and82, %and83, !dbg !5462
    #dbg_value(i64 %xor94, !5463, !DIExpression(), !5278)
  %xor95 = xor i64 %and75, %and85, !dbg !5464
    #dbg_value(i64 %xor95, !5465, !DIExpression(), !5278)
  %xor96 = xor i64 %and75, %and78, !dbg !5466
    #dbg_value(i64 %xor96, !5467, !DIExpression(), !5278)
  %xor97 = xor i64 %and80, %and81, !dbg !5468
    #dbg_value(i64 %xor97, !5469, !DIExpression(), !5278)
  %xor98 = xor i64 %and73, %and76, !dbg !5470
    #dbg_value(i64 %xor98, !5471, !DIExpression(), !5278)
  %xor99 = xor i64 %and79, %and80, !dbg !5472
    #dbg_value(i64 %xor99, !5473, !DIExpression(), !5278)
  %xor100 = xor i64 %and89, %and90, !dbg !5474
    #dbg_value(i64 %xor100, !5475, !DIExpression(), !5278)
  %xor101 = xor i64 %and85, %xor93, !dbg !5476
    #dbg_value(i64 %xor101, !5477, !DIExpression(), !5278)
  %xor102 = xor i64 %xor95, %xor98, !dbg !5478
    #dbg_value(i64 %xor102, !5479, !DIExpression(), !5278)
  %xor103 = xor i64 %and77, %xor91, !dbg !5480
    #dbg_value(i64 %xor103, !5481, !DIExpression(), !5278)
  %xor104 = xor i64 %and76, %xor99, !dbg !5482
    #dbg_value(i64 %xor104, !5483, !DIExpression(), !5278)
  %xor105 = xor i64 %xor91, %xor102, !dbg !5484
    #dbg_value(i64 %xor105, !5485, !DIExpression(), !5278)
  %xor106 = xor i64 %and87, %xor102, !dbg !5486
    #dbg_value(i64 %xor106, !5487, !DIExpression(), !5278)
  %xor107 = xor i64 %xor97, %xor103, !dbg !5488
    #dbg_value(i64 %xor107, !5489, !DIExpression(), !5278)
  %xor108 = xor i64 %xor94, %xor103, !dbg !5490
    #dbg_value(i64 %xor108, !5491, !DIExpression(), !5278)
  %xor109 = xor i64 %and77, %xor104, !dbg !5492
    #dbg_value(i64 %xor109, !5493, !DIExpression(), !5278)
  %xor110 = xor i64 %xor106, %xor107, !dbg !5494
    #dbg_value(i64 %xor110, !5495, !DIExpression(), !5278)
  %xor111 = xor i64 %and74, %xor108, !dbg !5496
    #dbg_value(i64 %xor111, !5497, !DIExpression(), !5278)
  %xor112 = xor i64 %xor104, %xor108, !dbg !5498
    #dbg_value(i64 %xor112, !5499, !DIExpression(), !5278)
  %17 = xor i64 %xor107, %xor101, !dbg !5500
  %xor113 = xor i64 %17, -1, !dbg !5500
    #dbg_value(i64 %xor113, !5501, !DIExpression(), !5278)
  %18 = xor i64 %xor105, %xor93, !dbg !5502
  %xor115 = xor i64 %18, -1, !dbg !5502
    #dbg_value(i64 %xor115, !5503, !DIExpression(), !5278)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !5504, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !5278)
  %xor117 = xor i64 %xor98, %xor111, !dbg !5505
    #dbg_value(i64 %xor117, !5506, !DIExpression(), !5278)
  %xor118 = xor i64 %xor96, %xor111, !dbg !5507
    #dbg_value(i64 %xor118, !5508, !DIExpression(), !5278)
  %xor119 = xor i64 %xor92, %xor110, !dbg !5509
    #dbg_value(i64 %xor119, !5510, !DIExpression(), !5278)
  %19 = xor i64 %xor117, %xor109, !dbg !5511
  %xor121 = xor i64 %19, -1, !dbg !5511
    #dbg_value(i64 %xor121, !5512, !DIExpression(), !5278)
  %20 = xor i64 %xor110, %xor100, !dbg !5513
  %21 = xor i64 %20, %xor109, !dbg !5513
  %xor123 = xor i64 %21, -1, !dbg !5513
    #dbg_value(i64 %xor123, !5514, !DIExpression(), !5278)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5515
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !5516
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5517
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !5518
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5519
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !5520
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5521
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !5522
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5523
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !5524
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5525
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !5526
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5527
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !5528
  store i64 %xor115, ptr %q, align 8, !dbg !5529
  ret void, !dbg !5530
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !5531 {
entry:
    #dbg_value(ptr %src, !5534, !DIExpression(), !5535)
  %0 = load i8, ptr %src, align 1, !dbg !5536
  %conv = zext i8 %0 to i32, !dbg !5537
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !5538
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5538
  %conv2 = zext i8 %1 to i32, !dbg !5539
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !5540
  %or = or disjoint i32 %shl, %conv, !dbg !5541
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !5542
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !5542
  %conv4 = zext i8 %2 to i32, !dbg !5543
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !5544
  %or6 = or disjoint i32 %or, %shl5, !dbg !5545
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !5546
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !5546
  %conv8 = zext i8 %3 to i32, !dbg !5547
  %shl9 = shl nuw i32 %conv8, 24, !dbg !5548
  %or10 = or disjoint i32 %or6, %shl9, !dbg !5549
  ret i32 %or10, !dbg !5550
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5551 {
entry:
    #dbg_value(ptr %r, !5552, !DIExpression(), !5553)
    #dbg_value(ptr %key, !5554, !DIExpression(), !5553)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5555
  ret void, !dbg !5556
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5557 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !5565, !DIExpression(), !5566)
    #dbg_value(ptr %key, !5567, !DIExpression(), !5566)
    #dbg_declare(ptr %skey, !5568, !DIExpression(), !5572)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !5573
  store ptr %call, ptr %r, align 4, !dbg !5574
  %cmp = icmp eq ptr %call, null, !dbg !5575
  br i1 %cmp, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5577
  br label %if.end, !dbg !5579

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !5580
  %0 = load ptr, ptr %r, align 4, !dbg !5581
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !5582
  ret void, !dbg !5583
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5584 {
entry:
    #dbg_value(ptr %r, !5585, !DIExpression(), !5586)
    #dbg_value(ptr %key, !5587, !DIExpression(), !5586)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5588
  ret void, !dbg !5589
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5590 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !5598, !DIExpression(), !5599)
    #dbg_value(ptr %key, !5600, !DIExpression(), !5599)
    #dbg_declare(ptr %skey, !5601, !DIExpression(), !5605)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !5606
  store ptr %call, ptr %r, align 4, !dbg !5607
  %cmp = icmp eq ptr %call, null, !dbg !5608
  br i1 %cmp, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !5610
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !5613
  %0 = load ptr, ptr %r, align 4, !dbg !5614
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !5615
  ret void, !dbg !5616
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !5617 {
entry:
    #dbg_value(ptr %r, !5618, !DIExpression(), !5619)
    #dbg_value(ptr %key, !5620, !DIExpression(), !5619)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !5621
  ret void, !dbg !5622
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5623 {
entry:
    #dbg_value(ptr %out, !5628, !DIExpression(), !5629)
    #dbg_value(ptr %in, !5630, !DIExpression(), !5629)
    #dbg_value(i32 %nblocks, !5631, !DIExpression(), !5629)
    #dbg_value(ptr %ctx, !5632, !DIExpression(), !5629)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5633
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5636 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5639, !DIExpression(), !5640)
    #dbg_value(ptr %in, !5641, !DIExpression(), !5640)
    #dbg_value(i32 %nblocks, !5642, !DIExpression(), !5640)
    #dbg_value(ptr %rkeys, !5643, !DIExpression(), !5640)
    #dbg_value(i32 %nrounds, !5644, !DIExpression(), !5640)
    #dbg_declare(ptr %blocks, !5645, !DIExpression(), !5647)
    #dbg_declare(ptr %t, !5648, !DIExpression(), !5652)
  br label %while.cond, !dbg !5653

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !5639, !DIExpression(), !5640)
    #dbg_value(ptr %in.addr.0, !5641, !DIExpression(), !5640)
    #dbg_value(i32 %nblocks.addr.0, !5642, !DIExpression(), !5640)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !5654
  br i1 %cmp, label %while.body, label %while.end, !dbg !5653

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !5655
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5657
  %sub = add i32 %nblocks.addr.0, -4, !dbg !5658
    #dbg_value(i32 %sub, !5642, !DIExpression(), !5640)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !5659
    #dbg_value(ptr %add.ptr, !5641, !DIExpression(), !5640)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !5660
    #dbg_value(ptr %add.ptr2, !5639, !DIExpression(), !5640)
  br label %while.cond, !dbg !5653, !llvm.loop !5661

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !5663
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5663

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !5665
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !5667
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !5668
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !5669
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !5670
  br label %if.end, !dbg !5671

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !5672
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5673 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !5676, !DIExpression(), !5677)
    #dbg_value(ptr %ivw, !5678, !DIExpression(), !5677)
    #dbg_value(ptr %sk_exp, !5679, !DIExpression(), !5677)
    #dbg_value(i32 %nrounds, !5680, !DIExpression(), !5677)
    #dbg_declare(ptr %w, !5681, !DIExpression(), !5682)
    #dbg_declare(ptr %q, !5683, !DIExpression(), !5684)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !5685
    #dbg_value(i32 0, !5686, !DIExpression(), !5677)
  br label %for.cond, !dbg !5687

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5689
    #dbg_value(i32 %i.0, !5686, !DIExpression(), !5677)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !5690
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5692

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !5693
  %add = or disjoint i32 %i.0, 4, !dbg !5695
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !5696
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !5697
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !5697
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !5698
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5699
    #dbg_value(i32 %inc, !5686, !DIExpression(), !5677)
  br label %for.cond, !dbg !5700, !llvm.loop !5701

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5703
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !5704
    #dbg_value(i32 1, !5686, !DIExpression(), !5677)
  br label %for.cond5, !dbg !5705

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !5707
    #dbg_value(i32 %i.1, !5686, !DIExpression(), !5677)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !5708
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !5710

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5711
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5713
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !5714
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !5715
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !5715
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !5716
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !5717
    #dbg_value(i32 %inc15, !5686, !DIExpression(), !5677)
  br label %for.cond5, !dbg !5718, !llvm.loop !5719

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !5721
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !5722
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !5723
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !5723
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !5724
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !5725
    #dbg_value(i32 0, !5686, !DIExpression(), !5677)
  br label %for.cond22, !dbg !5726

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !5728
    #dbg_value(i32 %i.2, !5686, !DIExpression(), !5677)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !5729
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !5731

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !5732
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !5732
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !5734
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !5734
  %add29 = or disjoint i32 %i.2, 4, !dbg !5735
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !5736
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !5736
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !5737
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !5738
    #dbg_value(i32 %inc32, !5686, !DIExpression(), !5677)
  br label %for.cond22, !dbg !5739, !llvm.loop !5740

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !5742
  ret void, !dbg !5743
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !5744 {
entry:
    #dbg_value(ptr %q, !5747, !DIExpression(), !5748)
    #dbg_value(ptr %sk, !5749, !DIExpression(), !5748)
  %0 = load i64, ptr %sk, align 8, !dbg !5750
  %1 = load i64, ptr %q, align 8, !dbg !5751
  %xor = xor i64 %1, %0, !dbg !5751
  store i64 %xor, ptr %q, align 8, !dbg !5751
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !5752
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5752
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5753
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5754
  %xor4 = xor i64 %3, %2, !dbg !5754
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !5754
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !5755
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !5755
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5756
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !5757
  %xor7 = xor i64 %5, %4, !dbg !5757
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !5757
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !5758
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !5758
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5759
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !5760
  %xor10 = xor i64 %7, %6, !dbg !5760
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !5760
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !5761
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !5761
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5762
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !5763
  %xor13 = xor i64 %9, %8, !dbg !5763
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !5763
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !5764
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !5764
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5765
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !5766
  %xor16 = xor i64 %11, %10, !dbg !5766
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !5766
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !5767
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !5767
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5768
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !5769
  %xor19 = xor i64 %13, %12, !dbg !5769
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !5769
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !5770
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !5770
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5771
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !5772
  %xor22 = xor i64 %15, %14, !dbg !5772
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !5772
  ret void, !dbg !5773
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5774 {
entry:
    #dbg_value(ptr %q, !5775, !DIExpression(), !5776)
    #dbg_value(i32 0, !5777, !DIExpression(), !5776)
  br label %for.cond, !dbg !5778

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5780
    #dbg_value(i32 %i.0, !5777, !DIExpression(), !5776)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !5781
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5783

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5784
  %0 = load i64, ptr %arrayidx, align 8, !dbg !5784
    #dbg_value(i64 %0, !5786, !DIExpression(), !5787)
  %and = and i64 %0, 65535, !dbg !5788
  %and1 = lshr i64 %0, 4, !dbg !5789
  %shr = and i64 %and1, 268369920, !dbg !5789
  %or = or disjoint i64 %and, %shr, !dbg !5790
  %and2 = shl i64 %0, 12, !dbg !5791
  %shl = and i64 %and2, 4026531840, !dbg !5791
  %or3 = or disjoint i64 %or, %shl, !dbg !5792
  %and4 = lshr i64 %0, 8, !dbg !5793
  %shr5 = and i64 %and4, 1095216660480, !dbg !5793
  %or6 = or disjoint i64 %or3, %shr5, !dbg !5794
  %and7 = shl i64 %0, 8, !dbg !5795
  %shl8 = and i64 %and7, 280375465082880, !dbg !5795
  %or9 = or disjoint i64 %or6, %shl8, !dbg !5796
  %and10 = lshr i64 %0, 12, !dbg !5797
  %shr11 = and i64 %and10, 4222124650659840, !dbg !5797
  %or12 = or disjoint i64 %or9, %shr11, !dbg !5798
  %and13 = shl i64 %0, 4, !dbg !5799
  %shl14 = and i64 %and13, -4503599627370496, !dbg !5799
  %or15 = or i64 %or12, %shl14, !dbg !5800
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !5801
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !5802
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5803
    #dbg_value(i32 %inc, !5777, !DIExpression(), !5776)
  br label %for.cond, !dbg !5804, !llvm.loop !5805

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5807
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !5808 {
entry:
    #dbg_value(ptr %q, !5809, !DIExpression(), !5810)
  %0 = load i64, ptr %q, align 8, !dbg !5811
    #dbg_value(i64 %0, !5812, !DIExpression(), !5810)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5813
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !5813
    #dbg_value(i64 %1, !5814, !DIExpression(), !5810)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5815
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !5815
    #dbg_value(i64 %2, !5816, !DIExpression(), !5810)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5817
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !5817
    #dbg_value(i64 %3, !5818, !DIExpression(), !5810)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5819
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !5819
    #dbg_value(i64 %4, !5820, !DIExpression(), !5810)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5821
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !5821
    #dbg_value(i64 %5, !5822, !DIExpression(), !5810)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5823
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !5823
    #dbg_value(i64 %6, !5824, !DIExpression(), !5810)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5825
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !5825
    #dbg_value(i64 %7, !5826, !DIExpression(), !5810)
  %8 = shl i64 %0, 48, !dbg !5827
  %9 = lshr i64 %0, 16, !dbg !5827
  %10 = or i64 %8, %9, !dbg !5827
    #dbg_value(i64 %10, !5828, !DIExpression(), !5810)
  %11 = shl i64 %1, 48, !dbg !5829
  %12 = lshr i64 %1, 16, !dbg !5829
  %13 = or i64 %11, %12, !dbg !5829
    #dbg_value(i64 %13, !5830, !DIExpression(), !5810)
  %14 = shl i64 %2, 48, !dbg !5831
  %15 = lshr i64 %2, 16, !dbg !5831
  %16 = or i64 %14, %15, !dbg !5831
    #dbg_value(i64 %16, !5832, !DIExpression(), !5810)
  %17 = shl i64 %3, 48, !dbg !5833
  %18 = lshr i64 %3, 16, !dbg !5833
  %19 = or i64 %17, %18, !dbg !5833
    #dbg_value(i64 %19, !5834, !DIExpression(), !5810)
  %20 = shl i64 %4, 48, !dbg !5835
  %21 = lshr i64 %4, 16, !dbg !5835
  %22 = or i64 %20, %21, !dbg !5835
    #dbg_value(i64 %22, !5836, !DIExpression(), !5810)
  %23 = shl i64 %5, 48, !dbg !5837
  %24 = lshr i64 %5, 16, !dbg !5837
  %25 = or i64 %23, %24, !dbg !5837
    #dbg_value(i64 %25, !5838, !DIExpression(), !5810)
  %26 = shl i64 %6, 48, !dbg !5839
  %27 = lshr i64 %6, 16, !dbg !5839
  %28 = or i64 %26, %27, !dbg !5839
    #dbg_value(i64 %28, !5840, !DIExpression(), !5810)
  %29 = shl i64 %7, 48, !dbg !5841
  %30 = lshr i64 %7, 16, !dbg !5841
  %31 = or i64 %29, %30, !dbg !5841
    #dbg_value(i64 %31, !5842, !DIExpression(), !5810)
  %xor30 = xor i64 %0, %10, !dbg !5843
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !5844
  %32 = xor i64 %31, %call, !dbg !5845
  %33 = xor i64 %32, %7, !dbg !5845
  %xor31 = xor i64 %33, %10, !dbg !5845
  store i64 %xor31, ptr %q, align 8, !dbg !5846
  %xor37 = xor i64 %1, %13, !dbg !5847
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !5848
  %34 = xor i64 %10, %call38, !dbg !5849
  %35 = xor i64 %34, %0, !dbg !5849
  %36 = xor i64 %35, %7, !dbg !5849
  %37 = xor i64 %36, %31, !dbg !5849
  %xor39 = xor i64 %37, %13, !dbg !5849
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !5850
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !5851
  %xor43 = xor i64 %2, %16, !dbg !5852
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !5853
  %38 = xor i64 %13, %call44, !dbg !5854
  %39 = xor i64 %38, %1, !dbg !5854
  %xor45 = xor i64 %39, %16, !dbg !5854
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !5855
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !5856
  %xor51 = xor i64 %3, %19, !dbg !5857
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !5858
  %40 = xor i64 %16, %call52, !dbg !5859
  %41 = xor i64 %40, %2, !dbg !5859
  %42 = xor i64 %41, %7, !dbg !5859
  %43 = xor i64 %42, %31, !dbg !5859
  %xor53 = xor i64 %43, %19, !dbg !5859
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !5860
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !5861
  %xor59 = xor i64 %4, %22, !dbg !5862
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !5863
  %44 = xor i64 %19, %call60, !dbg !5864
  %45 = xor i64 %44, %3, !dbg !5864
  %46 = xor i64 %45, %7, !dbg !5864
  %47 = xor i64 %46, %31, !dbg !5864
  %xor61 = xor i64 %47, %22, !dbg !5864
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !5865
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !5866
  %xor65 = xor i64 %5, %25, !dbg !5867
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !5868
  %48 = xor i64 %22, %call66, !dbg !5869
  %49 = xor i64 %48, %4, !dbg !5869
  %xor67 = xor i64 %49, %25, !dbg !5869
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !5870
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !5871
  %xor71 = xor i64 %6, %28, !dbg !5872
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !5873
  %50 = xor i64 %25, %call72, !dbg !5874
  %51 = xor i64 %50, %5, !dbg !5874
  %xor73 = xor i64 %51, %28, !dbg !5874
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !5875
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !5876
  %xor77 = xor i64 %7, %31, !dbg !5877
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !5878
  %52 = xor i64 %28, %call78, !dbg !5879
  %53 = xor i64 %52, %6, !dbg !5879
  %xor79 = xor i64 %53, %31, !dbg !5879
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !5880
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !5881
  ret void, !dbg !5882
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !5883 {
entry:
    #dbg_value(ptr %w, !5886, !DIExpression(), !5887)
    #dbg_value(i64 %q0, !5888, !DIExpression(), !5887)
    #dbg_value(i64 %q1, !5889, !DIExpression(), !5887)
  %and = and i64 %q0, 71777214294589695, !dbg !5890
    #dbg_value(i64 %and, !5891, !DIExpression(), !5887)
  %and1 = and i64 %q1, 71777214294589695, !dbg !5892
    #dbg_value(i64 %and1, !5893, !DIExpression(), !5887)
  %shr = lshr i64 %q0, 8, !dbg !5894
  %and2 = and i64 %shr, 71776119077928960, !dbg !5895
    #dbg_value(i64 %shr, !5896, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5887)
  %shr3 = lshr i64 %q1, 8, !dbg !5897
  %and4 = and i64 %shr3, 71776119077928960, !dbg !5898
    #dbg_value(i64 %shr3, !5899, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !5887)
  %shr5 = lshr i64 %and, 8, !dbg !5900
  %or = or disjoint i64 %and, %shr5, !dbg !5901
    #dbg_value(i64 %or, !5891, !DIExpression(), !5887)
  %shr6 = lshr i64 %and1, 8, !dbg !5902
  %or7 = or disjoint i64 %and1, %shr6, !dbg !5903
    #dbg_value(i64 %or7, !5893, !DIExpression(), !5887)
  %0 = and i64 %q0, 280375465148160, !dbg !5904
  %1 = or disjoint i64 %and2, %0, !dbg !5904
  %or9 = lshr exact i64 %1, 8, !dbg !5904
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !5896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5887)
  %2 = and i64 %q1, 280375465148160, !dbg !5905
  %3 = or disjoint i64 %and4, %2, !dbg !5905
  %or11 = lshr exact i64 %3, 8, !dbg !5905
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !5899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !5887)
  %and12 = and i64 %or, 281470681808895, !dbg !5906
    #dbg_value(i64 %and12, !5891, !DIExpression(), !5887)
  %and13 = and i64 %or7, 281470681808895, !dbg !5907
    #dbg_value(i64 %and13, !5893, !DIExpression(), !5887)
    #dbg_value(i64 %or9, !5896, !DIExpression(), !5887)
    #dbg_value(i64 %or11, !5899, !DIExpression(), !5887)
  %shr16 = lshr i64 %and12, 16, !dbg !5908
  %or181 = or disjoint i64 %and12, %shr16, !dbg !5909
  %or18 = trunc i64 %or181 to i32, !dbg !5909
  store i32 %or18, ptr %w, align 4, !dbg !5910
  %shr20 = lshr i64 %and13, 16, !dbg !5911
  %or222 = or disjoint i64 %and13, %shr20, !dbg !5912
  %or22 = trunc i64 %or222 to i32, !dbg !5912
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !5913
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !5914
  %shr25 = lshr i64 %1, 24, !dbg !5915
  %or273 = or disjoint i64 %or9, %shr25, !dbg !5916
  %or27 = trunc i64 %or273 to i32, !dbg !5916
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !5917
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !5918
  %shr30 = lshr i64 %3, 24, !dbg !5919
  %or324 = or disjoint i64 %or11, %shr30, !dbg !5920
  %or32 = trunc i64 %or324 to i32, !dbg !5920
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !5921
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !5922
  ret void, !dbg !5923
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !5924 {
entry:
    #dbg_value(ptr %dst, !5927, !DIExpression(), !5928)
    #dbg_value(ptr %v, !5929, !DIExpression(), !5928)
    #dbg_value(i32 16, !5930, !DIExpression(), !5928)
  br label %while.cond, !dbg !5931

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !5927, !DIExpression(), !5928)
    #dbg_value(ptr %v.addr.0, !5929, !DIExpression(), !5928)
    #dbg_value(i32 %num.addr.0, !5930, !DIExpression(), !5928)
    #dbg_value(i32 %num.addr.0, !5930, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5928)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !5932
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !5931

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !5933
    #dbg_value(i32 %dec, !5930, !DIExpression(), !5928)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !5934
    #dbg_value(ptr %incdec.ptr, !5929, !DIExpression(), !5928)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !5936
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !5937
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !5938
    #dbg_value(ptr %add.ptr, !5927, !DIExpression(), !5928)
  br label %while.cond, !dbg !5931, !llvm.loop !5939

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5941
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !5942 {
entry:
    #dbg_value(ptr %dst, !5945, !DIExpression(), !5946)
    #dbg_value(i32 %x, !5947, !DIExpression(), !5946)
  %conv = trunc i32 %x to i8, !dbg !5948
  store i8 %conv, ptr %dst, align 1, !dbg !5949
  %shr = lshr i32 %x, 8, !dbg !5950
  %conv1 = trunc i32 %shr to i8, !dbg !5951
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !5952
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5953
  %shr3 = lshr i32 %x, 16, !dbg !5954
  %conv4 = trunc i32 %shr3 to i8, !dbg !5955
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !5956
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !5957
  %shr6 = lshr i32 %x, 24, !dbg !5958
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !5959
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !5960
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5961
  ret void, !dbg !5962
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !5963 {
entry:
    #dbg_value(i64 %x, !5966, !DIExpression(), !5967)
  %0 = shl i64 %x, 32, !dbg !5968
  %1 = lshr i64 %x, 32, !dbg !5968
  %2 = or i64 %0, %1, !dbg !5968
  ret i64 %2, !dbg !5969
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !5970 {
entry:
    #dbg_value(ptr %out, !5973, !DIExpression(), !5974)
    #dbg_value(i32 %outlen, !5975, !DIExpression(), !5974)
    #dbg_value(ptr %iv, !5976, !DIExpression(), !5974)
    #dbg_value(ptr %ctx, !5977, !DIExpression(), !5974)
  %0 = load ptr, ptr %ctx, align 4, !dbg !5978
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !5979
  ret void, !dbg !5980
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !5981 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !5984, !DIExpression(), !5985)
    #dbg_value(i32 %outlen, !5986, !DIExpression(), !5985)
    #dbg_value(ptr %iv, !5987, !DIExpression(), !5985)
    #dbg_value(ptr %rkeys, !5988, !DIExpression(), !5985)
    #dbg_value(i32 %nrounds, !5989, !DIExpression(), !5985)
    #dbg_declare(ptr %ivw, !5990, !DIExpression(), !5991)
    #dbg_value(i32 0, !5992, !DIExpression(), !5985)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !5993
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !5994
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5995
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !5996
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5997
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !5998
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !5999
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !6000
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6001
  store i32 %call11, ptr %arrayidx, align 4, !dbg !6002
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !6003
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6004
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !6005
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !6006
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6007
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !6008
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !6009
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6010
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !6011
  br label %while.cond, !dbg !6012

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !5984, !DIExpression(), !5985)
    #dbg_value(i32 %outlen.addr.0, !5986, !DIExpression(), !5985)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !6013
  br i1 %cmp, label %while.body, label %while.end, !dbg !6012

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6014
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !6016
    #dbg_value(ptr %add.ptr21, !5984, !DIExpression(), !5985)
  %sub = add i32 %outlen.addr.0, -64, !dbg !6017
    #dbg_value(i32 %sub, !5986, !DIExpression(), !5985)
  br label %while.cond, !dbg !6012, !llvm.loop !6018

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !6020
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !6020

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !6022, !DIExpression(), !6024)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !6025
    #dbg_value(i32 0, !6026, !DIExpression(), !5985)
  br label %for.cond, !dbg !6027

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !6029
    #dbg_value(i32 %i.0, !6026, !DIExpression(), !5985)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !6030
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !6032

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !6033
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !6033
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !6035
  store i8 %0, ptr %arrayidx27, align 1, !dbg !6036
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6037
    #dbg_value(i32 %inc, !6026, !DIExpression(), !5985)
  br label %for.cond, !dbg !6038, !llvm.loop !6039

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6041

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !6041
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !6042 {
entry:
    #dbg_value(i32 %x, !6043, !DIExpression(), !6044)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !6043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6044)
  %0 = and i32 %x, 255, !dbg !6045
  %1 = shl i32 %0, 24, !dbg !6045
  %2 = and i32 %x, 65280, !dbg !6045
  %3 = shl i32 %2, 8, !dbg !6045
  %4 = and i32 %x, 16711680, !dbg !6045
  %5 = lshr i32 %4, 8, !dbg !6045
  %6 = and i32 %x, -16777216, !dbg !6045
  %7 = lshr i32 %6, 24, !dbg !6045
  %8 = or i32 %1, %3, !dbg !6045
  %9 = or i32 %8, %5, !dbg !6045
  %10 = or i32 %9, %7, !dbg !6045
  ret i32 %10, !dbg !6046
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !6047 {
entry:
    #dbg_value(ptr %out, !6050, !DIExpression(), !6051)
    #dbg_value(ptr %ivw, !6052, !DIExpression(), !6051)
    #dbg_value(ptr %sk_exp, !6053, !DIExpression(), !6051)
    #dbg_value(i32 %nrounds, !6054, !DIExpression(), !6051)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !6055
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !6056
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !6057
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !6058
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !6059
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !6060
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !6061
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !6062
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !6063
  ret void, !dbg !6064
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !6065 {
entry:
    #dbg_value(ptr %x, !6068, !DIExpression(), !6069)
  %0 = load i32, ptr %x, align 4, !dbg !6070
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !6071
  %add = add i32 %call, 4, !dbg !6072
    #dbg_value(i32 %add, !6073, !DIExpression(), !6069)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !6074
  store i32 %call1, ptr %x, align 4, !dbg !6075
  ret void, !dbg !6076
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6077 {
entry:
    #dbg_value(ptr %out, !6082, !DIExpression(), !6083)
    #dbg_value(ptr %in, !6084, !DIExpression(), !6083)
    #dbg_value(i32 %nblocks, !6085, !DIExpression(), !6083)
    #dbg_value(ptr %ctx, !6086, !DIExpression(), !6083)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6087
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !6088
  ret void, !dbg !6089
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6090 {
entry:
    #dbg_value(ptr %out, !6093, !DIExpression(), !6094)
    #dbg_value(i32 %outlen, !6095, !DIExpression(), !6094)
    #dbg_value(ptr %iv, !6096, !DIExpression(), !6094)
    #dbg_value(ptr %ctx, !6097, !DIExpression(), !6094)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6098
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !6099
  ret void, !dbg !6100
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6101 {
entry:
    #dbg_value(ptr %out, !6106, !DIExpression(), !6107)
    #dbg_value(ptr %in, !6108, !DIExpression(), !6107)
    #dbg_value(i32 %nblocks, !6109, !DIExpression(), !6107)
    #dbg_value(ptr %ctx, !6110, !DIExpression(), !6107)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6111
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !6112
  ret void, !dbg !6113
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !6114 {
entry:
    #dbg_value(ptr %out, !6117, !DIExpression(), !6118)
    #dbg_value(i32 %outlen, !6119, !DIExpression(), !6118)
    #dbg_value(ptr %iv, !6120, !DIExpression(), !6118)
    #dbg_value(ptr %ctx, !6121, !DIExpression(), !6118)
  %0 = load ptr, ptr %ctx, align 4, !dbg !6122
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !6123
  ret void, !dbg !6124
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6125 {
entry:
    #dbg_value(ptr %r, !6128, !DIExpression(), !6129)
  %0 = load ptr, ptr %r, align 4, !dbg !6130
  call void @free(ptr noundef %0) #6, !dbg !6131
  ret void, !dbg !6132
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6133 {
entry:
    #dbg_value(ptr %r, !6136, !DIExpression(), !6137)
  %0 = load ptr, ptr %r, align 4, !dbg !6138
  call void @free(ptr noundef %0) #6, !dbg !6139
  ret void, !dbg !6140
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !6141 {
entry:
    #dbg_value(ptr %r, !6144, !DIExpression(), !6145)
  %0 = load ptr, ptr %r, align 4, !dbg !6146
  call void @free(ptr noundef %0) #6, !dbg !6147
  ret void, !dbg !6148
}

; Function Attrs: nounwind
define dso_local i32 @AES_128_CTR(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef %input, i32 noundef %inputByteLen) local_unnamed_addr #0 !dbg !6149 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %output, !6152, !DIExpression(), !6153)
    #dbg_value(i32 %outputByteLen, !6154, !DIExpression(), !6153)
    #dbg_value(ptr %input, !6155, !DIExpression(), !6153)
    #dbg_value(i32 %inputByteLen, !6156, !DIExpression(), !6153)
    #dbg_declare(ptr %ctx, !6157, !DIExpression(), !6158)
    #dbg_declare(ptr %iv, !6159, !DIExpression(), !6160)
  call void @mayo_memset(ptr %iv, i8 0, i32 16), !dbg !6160
  call void @aes128_ctr_keyexp(ptr noundef nonnull %ctx, ptr noundef %input) #4, !dbg !6161
  call void @aes128_ctr(ptr noundef %output, i32 noundef %outputByteLen, ptr noundef nonnull %iv, ptr noundef nonnull %ctx) #4, !dbg !6162
  call void @aes128_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6163
  ret i32 %outputByteLen, !dbg !6164
}

; Function Attrs: nounwind
define dso_local void @AES_256_ECB(ptr noundef %input, ptr noundef %key, ptr noundef %output) local_unnamed_addr #0 !dbg !6165 {
entry:
  %ctx = alloca %struct.shake128incctx, align 4
    #dbg_value(ptr %input, !6168, !DIExpression(), !6169)
    #dbg_value(ptr %key, !6170, !DIExpression(), !6169)
    #dbg_value(ptr %output, !6171, !DIExpression(), !6169)
    #dbg_declare(ptr %ctx, !6172, !DIExpression(), !6173)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %ctx, ptr noundef %key) #4, !dbg !6174
  call void @aes256_ecb(ptr noundef %output, ptr noundef %input, i32 noundef 1, ptr noundef nonnull %ctx) #4, !dbg !6175
  call void @aes256_ctx_release(ptr noundef nonnull %ctx) #4, !dbg !6176
  ret void, !dbg !6177
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_free(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !86 {
entry:
    #dbg_value(ptr %mem, !6178, !DIExpression(), !6179)
    #dbg_value(i32 %size, !6180, !DIExpression(), !6179)
  %tobool.not = icmp eq ptr %mem, null, !dbg !6181
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !6181

if.then:                                          ; preds = %entry
  %0 = load volatile ptr, ptr @mayo_secure_free.memset_func, align 4, !dbg !6183
  %call = call ptr %0(ptr noundef nonnull %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6183
  call void @free(ptr noundef nonnull %mem) #6, !dbg !6185
  br label %if.end, !dbg !6186

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6187
}

; Function Attrs: nounwind
define dso_local void @mayo_secure_clear(ptr noundef %mem, i32 noundef %size) local_unnamed_addr #0 !dbg !94 {
entry:
    #dbg_value(ptr %mem, !6188, !DIExpression(), !6189)
    #dbg_value(i32 %size, !6190, !DIExpression(), !6189)
  %0 = load volatile ptr, ptr @mayo_secure_clear.memset_func, align 4, !dbg !6191
  %call = call ptr %0(ptr noundef %mem, i32 noundef 0, i32 noundef %size) #6, !dbg !6191
  ret void, !dbg !6192
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !6193 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !6196, !DIExpression(), !6197)
    #dbg_value(ptr %Key, !6198, !DIExpression(), !6197)
    #dbg_value(ptr %V, !6199, !DIExpression(), !6197)
    #dbg_declare(ptr %temp, !6200, !DIExpression(), !6204)
    #dbg_value(i32 0, !6205, !DIExpression(), !6207)
  br label %for.cond, !dbg !6208

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !6209
    #dbg_value(i32 %i.0, !6205, !DIExpression(), !6207)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !6210
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !6212

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !6213

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !6216
    #dbg_value(i32 %j.0, !6217, !DIExpression(), !6218)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !6219
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !6213

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6221
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6221
  %cmp4 = icmp eq i8 %0, -1, !dbg !6224
  br i1 %cmp4, label %if.then, label %if.else, !dbg !6224

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !6225
  store i8 0, ptr %arrayidx6, align 1, !dbg !6227
  %dec = add nsw i32 %j.0, -1, !dbg !6228
    #dbg_value(i32 %dec, !6217, !DIExpression(), !6218)
  br label %for.cond1, !dbg !6229, !llvm.loop !6230

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !6216
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !6232
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !6234
  %inc = add i8 %1, 1, !dbg !6234
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !6234
  br label %for.end, !dbg !6235

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !6236

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl nuw nsw i32 %i.0, 4, !dbg !6236
  %add.ptr = getelementptr inbounds nuw i8, ptr %temp, i32 %mul, !dbg !6237
  call fastcc void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !6238
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !6239
    #dbg_value(i32 %inc9, !6205, !DIExpression(), !6207)
  br label %for.cond, !dbg !6240, !llvm.loop !6241

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !6243
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !6243

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !6245

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !6247
    #dbg_value(i32 %i14.0, !6248, !DIExpression(), !6249)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !6250
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !6245

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !6252
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !6252
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !6254
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !6255
  %xor1 = xor i8 %3, %2, !dbg !6255
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !6255
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !6256
    #dbg_value(i32 %inc25, !6248, !DIExpression(), !6249)
  br label %for.cond15, !dbg !6257, !llvm.loop !6258

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !6260

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !6260
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !6261
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !6262
  ret void, !dbg !6263
}

; Function Attrs: nounwind
define internal fastcc void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef nonnull %buffer) unnamed_addr #0 !dbg !6264 {
entry:
    #dbg_value(ptr %key, !6265, !DIExpression(), !6266)
    #dbg_value(ptr %ctr, !6267, !DIExpression(), !6266)
    #dbg_value(ptr %buffer, !6268, !DIExpression(), !6266)
  call void @AES_256_ECB(ptr noundef %ctr, ptr noundef %key, ptr noundef nonnull %buffer) #4, !dbg !6269
  ret void, !dbg !6270
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %random_array, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !6271 {
entry:
    #dbg_value(ptr %random_array, !6274, !DIExpression(), !6275)
    #dbg_value(i32 %nbytes, !6276, !DIExpression(), !6275)
  %call = call fastcc i32 @randombytes_nist(ptr noundef %random_array, i32 noundef %nbytes) #4, !dbg !6277
    #dbg_value(i32 0, !6278, !DIExpression(), !6275)
  ret i32 0, !dbg !6279
}

; Function Attrs: nounwind
define internal fastcc i32 @randombytes_nist(ptr noundef %x, i32 noundef %xlen) unnamed_addr #0 !dbg !6280 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !6281, !DIExpression(), !6282)
    #dbg_value(i32 %xlen, !6283, !DIExpression(), !6282)
    #dbg_declare(ptr %block, !6284, !DIExpression(), !6285)
    #dbg_value(i32 0, !6286, !DIExpression(), !6282)
  br label %while.cond, !dbg !6287

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !6282
  %xlen.addr.0 = phi i32 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i32 %xlen.addr.0, !6283, !DIExpression(), !6282)
    #dbg_value(i32 %i.0, !6286, !DIExpression(), !6282)
  %cmp.not = icmp eq i32 %xlen.addr.0, 0, !dbg !6288
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !6287

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !6289

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !6292
    #dbg_value(i32 %j.0, !6293, !DIExpression(), !6294)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !6295
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !6289

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6297
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6297
  %cmp2 = icmp eq i8 %0, -1, !dbg !6300
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6300

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !6301
  store i8 0, ptr %arrayidx4, align 1, !dbg !6303
  %dec = add nsw i32 %j.0, -1, !dbg !6304
    #dbg_value(i32 %dec, !6293, !DIExpression(), !6294)
  br label %for.cond, !dbg !6305, !llvm.loop !6306

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !6292
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !6308
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !6310
  %inc = add i8 %1, 1, !dbg !6310
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !6310
  br label %for.end, !dbg !6311

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !6312

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call fastcc void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !6312
  %cmp6 = icmp ugt i32 %xlen.addr.0, 15, !dbg !6313
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !6313

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6315
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !6317
  %add = add i32 %i.0, 16, !dbg !6318
    #dbg_value(i32 %add, !6286, !DIExpression(), !6282)
  %sub = add i32 %xlen.addr.0, -16, !dbg !6319
    #dbg_value(i32 %sub, !6283, !DIExpression(), !6282)
  br label %if.end15, !dbg !6320

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !6321
  %call13 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %xlen.addr.0) #6, !dbg !6323
  %add14 = add i32 %i.0, %xlen.addr.0, !dbg !6324
    #dbg_value(i32 %add14, !6286, !DIExpression(), !6282)
    #dbg_value(i32 0, !6283, !DIExpression(), !6282)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %add14, %if.else10 ], !dbg !6325
  %xlen.addr.1 = phi i32 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !6325
    #dbg_value(i32 %xlen.addr.1, !6283, !DIExpression(), !6282)
    #dbg_value(i32 %i.1, !6286, !DIExpression(), !6282)
  br label %while.cond, !dbg !6287, !llvm.loop !6326

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6328
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6329
  %inc16 = add nsw i32 %2, 1, !dbg !6329
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6329
  ret i32 poison, !dbg !6330
}

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !6331 {
entry:
    #dbg_value(ptr %entropy_input, !6334, !DIExpression(), !6335)
    #dbg_value(ptr %personalization_string, !6336, !DIExpression(), !6335)
    #dbg_value(i32 %security_strength, !6337, !DIExpression(), !6335)
  call fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) #4, !dbg !6338
  ret void, !dbg !6339
}

; Function Attrs: nounwind
define internal fastcc void @randombytes_init_nist(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) unnamed_addr #0 !dbg !6340 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !6341, !DIExpression(), !6342)
    #dbg_value(ptr %personalization_string, !6343, !DIExpression(), !6342)
    #dbg_value(i32 %security_strength, !6344, !DIExpression(), !6342)
    #dbg_declare(ptr %seed_material, !6345, !DIExpression(), !6346)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !6347
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !6348
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !6348

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !6350

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !6352
    #dbg_value(i32 %i.0, !6353, !DIExpression(), !6354)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !6355
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !6350

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !6357
  %0 = load i8, ptr %arrayidx, align 1, !dbg !6357
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !6359
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !6360
  %xor1 = xor i8 %1, %0, !dbg !6360
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !6360
  %inc = add nuw nsw i32 %i.0, 1, !dbg !6361
    #dbg_value(i32 %inc, !6353, !DIExpression(), !6354)
  br label %for.cond, !dbg !6362, !llvm.loop !6363

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !6365

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !6365
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !6366
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !6367
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !6368
  ret void, !dbg !6369
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
!42 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint32_t_blocker", scope: !43, file: !58, line: 126, type: !63, isLocal: false, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint64_t_blocker", scope: !43, file: !58, line: 127, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_unsigned_char_blocker", scope: !43, file: !58, line: 128, type: !62, isLocal: false, isDefinition: true)
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
!275 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !25, file: !25, line: 312, type: !276, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!315 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !25, file: !25, line: 549, type: !276, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!316 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !25, line: 549, type: !278)
!317 = !DILocation(line: 0, scope: !315)
!318 = !DILocalVariable(name: "cpk", arg: 2, scope: !315, file: !25, line: 549, type: !18)
!319 = !DILocalVariable(name: "csk", arg: 3, scope: !315, file: !25, line: 550, type: !18)
!320 = !DILocalVariable(name: "ret", scope: !315, file: !25, line: 551, type: !45)
!321 = !DILocalVariable(name: "seed_sk", scope: !315, file: !25, line: 552, type: !18)
!322 = !DILocalVariable(name: "S", scope: !315, file: !25, line: 553, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4448, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 556)
!326 = !DILocation(line: 553, column: 17, scope: !315)
!327 = !DILocalVariable(name: "P", scope: !315, file: !25, line: 554, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3120768, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 48762)
!331 = !DILocation(line: 554, column: 12, scope: !315)
!332 = !DILocalVariable(name: "P3", scope: !315, file: !25, line: 555, type: !333)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 44800, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 700)
!336 = !DILocation(line: 555, column: 12, scope: !315)
!337 = !DILocalVariable(name: "O", scope: !315, file: !25, line: 558, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8640, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1080)
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
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24640, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 385)
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
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 7)
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
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !25, file: !25, line: 324, type: !705, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!801 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !25, file: !25, line: 373, type: !802, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 54)
!817 = !DILocation(line: 377, column: 17, scope: !801)
!818 = !DILocalVariable(name: "t", scope: !801, file: !25, line: 377, type: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 864, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 108)
!822 = !DILocation(line: 377, column: 36, scope: !801)
!823 = !DILocalVariable(name: "y", scope: !801, file: !25, line: 378, type: !819)
!824 = !DILocation(line: 378, column: 17, scope: !801)
!825 = !DILocalVariable(name: "salt", scope: !801, file: !25, line: 379, type: !112)
!826 = !DILocation(line: 379, column: 17, scope: !801)
!827 = !DILocalVariable(name: "V", scope: !801, file: !25, line: 380, type: !828)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 5192, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 649)
!831 = !DILocation(line: 380, column: 17, scope: !801)
!832 = !DILocalVariable(name: "Vdec", scope: !801, file: !25, line: 381, type: !833)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 9504, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1188)
!836 = !DILocation(line: 381, column: 7, scope: !801)
!837 = !DILocalVariable(name: "A", scope: !801, file: !25, line: 382, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 99456, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 12432)
!841 = !DILocation(line: 382, column: 17, scope: !801)
!842 = !DILocalVariable(name: "x", scope: !801, file: !25, line: 384, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 10384, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 1298)
!846 = !DILocation(line: 384, column: 17, scope: !801)
!847 = !DILocalVariable(name: "r", scope: !801, file: !25, line: 385, type: !848)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 888, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 111)
!851 = !DILocation(line: 385, column: 17, scope: !801)
!852 = !DILocalVariable(name: "s", scope: !801, file: !25, line: 386, type: !843)
!853 = !DILocation(line: 386, column: 17, scope: !801)
!854 = !DILocalVariable(name: "sk", scope: !801, file: !25, line: 388, type: !185, align: 256)
!855 = !DILocation(line: 388, column: 20, scope: !801)
!856 = !DILocalVariable(name: "Ox", scope: !801, file: !25, line: 389, type: !819)
!857 = !DILocation(line: 389, column: 17, scope: !801)
!858 = !DILocalVariable(name: "tmp", scope: !801, file: !25, line: 390, type: !859)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 904, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 113)
!862 = !DILocation(line: 390, column: 17, scope: !801)
!863 = !DILocalVariable(name: "param_m", scope: !801, file: !25, line: 394, type: !343)
!864 = !DILocalVariable(name: "param_n", scope: !801, file: !25, line: 395, type: !343)
!865 = !DILocalVariable(name: "param_o", scope: !801, file: !25, line: 396, type: !343)
!866 = !DILocalVariable(name: "param_k", scope: !801, file: !25, line: 397, type: !343)
!867 = !DILocalVariable(name: "param_v", scope: !801, file: !25, line: 398, type: !343)
!868 = !DILocalVariable(name: "param_m_bytes", scope: !801, file: !25, line: 399, type: !343)
!869 = !DILocalVariable(name: "param_v_bytes", scope: !801, file: !25, line: 400, type: !343)
!870 = !DILocalVariable(name: "param_r_bytes", scope: !801, file: !25, line: 401, type: !343)
!871 = !DILocalVariable(name: "param_sig_bytes", scope: !801, file: !25, line: 402, type: !343)
!872 = !DILocalVariable(name: "param_A_cols", scope: !801, file: !25, line: 403, type: !343)
!873 = !DILocalVariable(name: "param_digest_bytes", scope: !801, file: !25, line: 404, type: !343)
!874 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !801, file: !25, line: 405, type: !343)
!875 = !DILocalVariable(name: "param_salt_bytes", scope: !801, file: !25, line: 406, type: !343)
!876 = !DILocation(line: 408, column: 9, scope: !801)
!877 = !DILocalVariable(name: "seed_sk", scope: !801, file: !25, line: 387, type: !49)
!878 = !DILocation(line: 416, column: 3, scope: !801)
!879 = !DILocalVariable(name: "P1", scope: !801, file: !25, line: 418, type: !5)
!880 = !DILocalVariable(name: "L", scope: !801, file: !25, line: 419, type: !5)
!881 = !DILocalVariable(name: "Mtmp", scope: !801, file: !25, line: 420, type: !882)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 49280, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 770)
!885 = !DILocation(line: 420, column: 12, scope: !801)
!886 = !DILocation(line: 435, column: 23, scope: !887)
!887 = distinct !DILexicalBlock(scope: !801, file: !25, line: 435, column: 7)
!888 = !DILocation(line: 435, column: 7, scope: !887)
!889 = !DILocation(line: 442, column: 35, scope: !801)
!890 = !DILocation(line: 442, column: 3, scope: !801)
!891 = !DILocation(line: 444, column: 3, scope: !801)
!892 = !DILocation(line: 452, column: 14, scope: !801)
!893 = !DILocation(line: 452, column: 3, scope: !801)
!894 = !DILocation(line: 453, column: 57, scope: !801)
!895 = !DILocalVariable(name: "ctrbyte", scope: !801, file: !25, line: 391, type: !18)
!896 = !DILocation(line: 455, column: 3, scope: !801)
!897 = !DILocation(line: 457, column: 3, scope: !801)
!898 = !DILocation(line: 460, column: 12, scope: !801)
!899 = !DILocation(line: 462, column: 3, scope: !801)
!900 = !DILocalVariable(name: "i", scope: !901, file: !25, line: 466, type: !45)
!901 = distinct !DILexicalBlock(scope: !801, file: !25, line: 466, column: 3)
!902 = !DILocation(line: 0, scope: !901)
!903 = !DILocation(line: 466, column: 8, scope: !901)
!904 = !DILocation(line: 466, scope: !901)
!905 = !DILocation(line: 466, column: 21, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !25, line: 466, column: 3)
!907 = !DILocation(line: 466, column: 3, scope: !901)
!908 = !DILocation(line: 467, column: 18, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !25, line: 466, column: 42)
!910 = !DILocation(line: 467, column: 14, scope: !909)
!911 = !DILocation(line: 467, column: 44, scope: !909)
!912 = !DILocation(line: 467, column: 40, scope: !909)
!913 = !DILocation(line: 467, column: 5, scope: !909)
!914 = !DILocation(line: 466, column: 37, scope: !906)
!915 = !DILocation(line: 466, column: 3, scope: !906)
!916 = distinct !{!916, !907, !917, !244}
!917 = !DILocation(line: 468, column: 3, scope: !901)
!918 = !DILocation(line: 419, column: 20, scope: !801)
!919 = !DILocation(line: 470, column: 3, scope: !801)
!920 = !DILocation(line: 472, column: 3, scope: !801)
!921 = !DILocation(line: 473, column: 3, scope: !801)
!922 = !DILocalVariable(name: "i", scope: !923, file: !25, line: 475, type: !45)
!923 = distinct !DILexicalBlock(scope: !801, file: !25, line: 475, column: 3)
!924 = !DILocation(line: 0, scope: !923)
!925 = !DILocation(line: 475, column: 8, scope: !923)
!926 = !DILocation(line: 475, scope: !923)
!927 = !DILocation(line: 475, column: 21, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !25, line: 475, column: 3)
!929 = !DILocation(line: 475, column: 3, scope: !923)
!930 = !DILocation(line: 476, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !25, line: 475, column: 37)
!932 = !DILocation(line: 476, column: 41, scope: !931)
!933 = !DILocation(line: 476, column: 5, scope: !931)
!934 = !DILocation(line: 476, column: 46, scope: !931)
!935 = !DILocation(line: 475, column: 33, scope: !928)
!936 = !DILocation(line: 475, column: 3, scope: !928)
!937 = distinct !{!937, !929, !938, !244}
!938 = !DILocation(line: 477, column: 3, scope: !923)
!939 = !DILocation(line: 479, column: 12, scope: !801)
!940 = !DILocation(line: 479, column: 3, scope: !801)
!941 = !DILocation(line: 481, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !801, file: !25, line: 481, column: 7)
!943 = !DILocation(line: 484, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !25, line: 483, column: 10)
!945 = !DILocation(line: 485, column: 5, scope: !944)
!946 = !DILocalVariable(name: "i", scope: !947, file: !25, line: 489, type: !45)
!947 = distinct !DILexicalBlock(scope: !801, file: !25, line: 489, column: 3)
!948 = !DILocation(line: 0, scope: !947)
!949 = !DILocation(line: 489, column: 8, scope: !947)
!950 = !DILocation(line: 489, scope: !947)
!951 = !DILocation(line: 489, column: 21, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !25, line: 489, column: 3)
!953 = !DILocation(line: 489, column: 3, scope: !947)
!954 = !DILocation(line: 490, column: 19, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !25, line: 489, column: 42)
!956 = !DILocation(line: 490, column: 15, scope: !955)
!957 = !DILocalVariable(name: "vi", scope: !801, file: !25, line: 392, type: !18)
!958 = !DILocation(line: 491, column: 13, scope: !955)
!959 = !DILocation(line: 491, column: 29, scope: !955)
!960 = !DILocation(line: 491, column: 25, scope: !955)
!961 = !DILocation(line: 491, column: 5, scope: !955)
!962 = !DILocation(line: 492, column: 27, scope: !955)
!963 = !DILocation(line: 492, column: 23, scope: !955)
!964 = !DILocation(line: 492, column: 5, scope: !955)
!965 = !DILocation(line: 493, column: 18, scope: !955)
!966 = !DILocation(line: 493, column: 14, scope: !955)
!967 = !DILocation(line: 493, column: 28, scope: !955)
!968 = !DILocation(line: 493, column: 57, scope: !955)
!969 = !DILocation(line: 493, column: 53, scope: !955)
!970 = !DILocation(line: 493, column: 5, scope: !955)
!971 = !DILocation(line: 489, column: 37, scope: !952)
!972 = !DILocation(line: 489, column: 3, scope: !952)
!973 = distinct !{!973, !953, !974, !244}
!974 = !DILocation(line: 494, column: 3, scope: !947)
!975 = !DILocation(line: 495, column: 3, scope: !801)
!976 = !DILocation(line: 497, column: 32, scope: !801)
!977 = !DILocation(line: 497, column: 3, scope: !801)
!978 = !DILocation(line: 498, column: 11, scope: !801)
!979 = !DILabel(scope: !801, name: "err", file: !25, line: 500)
!980 = !DILocation(line: 500, column: 1, scope: !801)
!981 = !DILocation(line: 501, column: 3, scope: !801)
!982 = !DILocation(line: 502, column: 3, scope: !801)
!983 = !DILocation(line: 503, column: 3, scope: !801)
!984 = !DILocation(line: 504, column: 3, scope: !801)
!985 = !DILocation(line: 505, column: 21, scope: !801)
!986 = !DILocation(line: 505, column: 3, scope: !801)
!987 = !DILocation(line: 506, column: 3, scope: !801)
!988 = !DILocation(line: 507, column: 3, scope: !801)
!989 = !DILocation(line: 508, column: 3, scope: !801)
!990 = !DILocation(line: 509, column: 3, scope: !801)
!991 = !DILocation(line: 512, column: 3, scope: !801)
!992 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !425, file: !425, line: 251, type: !993, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !278, !49, !428, !428, !5, !5}
!995 = !DILocalVariable(name: "p", arg: 1, scope: !992, file: !425, line: 251, type: !278)
!996 = !DILocation(line: 0, scope: !992)
!997 = !DILocalVariable(name: "Vdec", arg: 2, scope: !992, file: !425, line: 251, type: !49)
!998 = !DILocalVariable(name: "L", arg: 3, scope: !992, file: !425, line: 251, type: !428)
!999 = !DILocalVariable(name: "P1", arg: 4, scope: !992, file: !425, line: 251, type: !428)
!1000 = !DILocalVariable(name: "VL", arg: 5, scope: !992, file: !425, line: 251, type: !5)
!1001 = !DILocalVariable(name: "VP1V", arg: 6, scope: !992, file: !425, line: 251, type: !5)
!1002 = !DILocalVariable(name: "param_k", scope: !992, file: !425, line: 253, type: !343)
!1003 = !DILocalVariable(name: "param_v", scope: !992, file: !425, line: 254, type: !343)
!1004 = !DILocalVariable(name: "param_o", scope: !992, file: !425, line: 255, type: !343)
!1005 = !DILocation(line: 258, column: 5, scope: !992)
!1006 = !DILocalVariable(name: "Pv", scope: !992, file: !425, line: 261, type: !1007)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 532224, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 8316)
!1010 = !DILocation(line: 261, column: 14, scope: !992)
!1011 = !DILocation(line: 262, column: 5, scope: !992)
!1012 = !DILocation(line: 263, column: 5, scope: !992)
!1013 = !DILocation(line: 265, column: 1, scope: !992)
!1014 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 46, type: !1015, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !278, !5, !49, !18}
!1017 = !DILocalVariable(name: "p", arg: 1, scope: !1014, file: !25, line: 46, type: !278)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocalVariable(name: "vPv", arg: 2, scope: !1014, file: !25, line: 46, type: !5)
!1020 = !DILocalVariable(name: "t", arg: 3, scope: !1014, file: !25, line: 47, type: !49)
!1021 = !DILocalVariable(name: "y", arg: 4, scope: !1014, file: !25, line: 47, type: !18)
!1022 = !DILocalVariable(name: "top_pos", scope: !1014, file: !25, line: 52, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1024 = !DILocalVariable(name: "m_vec_limbs", scope: !1014, file: !25, line: 53, type: !1023)
!1025 = !DILocalVariable(name: "mask", scope: !1026, file: !25, line: 57, type: !6)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !25, line: 56, column: 29)
!1027 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 56, column: 7)
!1028 = !DILocation(line: 0, scope: !1026)
!1029 = !DILocalVariable(name: "i", scope: !1030, file: !25, line: 60, type: !45)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !25, line: 60, column: 5)
!1031 = !DILocation(line: 0, scope: !1030)
!1032 = !DILocation(line: 60, column: 10, scope: !1030)
!1033 = !DILocation(line: 60, scope: !1030)
!1034 = !DILocation(line: 60, column: 23, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !25, line: 60, column: 5)
!1036 = !DILocation(line: 60, column: 5, scope: !1030)
!1037 = !DILocation(line: 61, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !25, line: 60, column: 55)
!1039 = !DILocation(line: 61, column: 46, scope: !1038)
!1040 = !DILocation(line: 60, column: 51, scope: !1035)
!1041 = !DILocation(line: 60, column: 5, scope: !1035)
!1042 = distinct !{!1042, !1036, !1043, !244}
!1043 = !DILocation(line: 62, column: 5, scope: !1030)
!1044 = !DILocalVariable(name: "temp", scope: !1014, file: !25, line: 65, type: !681)
!1045 = !DILocation(line: 65, column: 12, scope: !1014)
!1046 = !DILocalVariable(name: "temp_bytes", scope: !1014, file: !25, line: 66, type: !18)
!1047 = !DILocalVariable(name: "i", scope: !1048, file: !25, line: 67, type: !45)
!1048 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 67, column: 3)
!1049 = !DILocation(line: 0, scope: !1048)
!1050 = !DILocation(line: 67, column: 8, scope: !1048)
!1051 = !DILocation(line: 67, scope: !1048)
!1052 = !DILocation(line: 67, column: 34, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !25, line: 67, column: 3)
!1054 = !DILocation(line: 67, column: 3, scope: !1048)
!1055 = !DILocation(line: 68, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !25, line: 68, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !25, line: 67, column: 45)
!1058 = !DILocation(line: 104, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1014, file: !25, line: 104, column: 3)
!1060 = !DILocation(line: 68, scope: !1056)
!1061 = !DILocalVariable(name: "j", scope: !1056, file: !25, line: 68, type: !45)
!1062 = !DILocation(line: 0, scope: !1056)
!1063 = !DILocation(line: 68, column: 23, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !25, line: 68, column: 5)
!1065 = !DILocation(line: 70, column: 28, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !25, line: 68, column: 42)
!1067 = !DILocation(line: 70, column: 50, scope: !1066)
!1068 = !DILocation(line: 70, column: 62, scope: !1066)
!1069 = !DILocalVariable(name: "top", scope: !1066, file: !25, line: 70, type: !14)
!1070 = !DILocation(line: 0, scope: !1066)
!1071 = !DILocation(line: 71, column: 7, scope: !1066)
!1072 = !DILocation(line: 71, column: 29, scope: !1066)
!1073 = !DILocalVariable(name: "k", scope: !1074, file: !25, line: 72, type: !45)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 72, column: 7)
!1075 = !DILocation(line: 0, scope: !1074)
!1076 = !DILocation(line: 72, column: 12, scope: !1074)
!1077 = !DILocation(line: 72, scope: !1074)
!1078 = !DILocation(line: 72, column: 39, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !25, line: 72, column: 7)
!1080 = !DILocation(line: 72, column: 7, scope: !1074)
!1081 = !DILocation(line: 77, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 77, column: 7)
!1083 = !DILocation(line: 73, column: 24, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !25, line: 72, column: 50)
!1085 = !DILocation(line: 73, column: 32, scope: !1084)
!1086 = !DILocation(line: 73, column: 16, scope: !1084)
!1087 = !DILocation(line: 73, column: 9, scope: !1084)
!1088 = !DILocation(line: 73, column: 21, scope: !1084)
!1089 = !DILocation(line: 74, column: 9, scope: !1084)
!1090 = !DILocation(line: 74, column: 17, scope: !1084)
!1091 = !DILocation(line: 72, column: 46, scope: !1079)
!1092 = !DILocation(line: 72, column: 7, scope: !1079)
!1093 = distinct !{!1093, !1080, !1094, !244}
!1094 = !DILocation(line: 75, column: 7, scope: !1074)
!1095 = !DILocation(line: 77, scope: !1082)
!1096 = !DILocalVariable(name: "jj", scope: !1082, file: !25, line: 77, type: !45)
!1097 = !DILocation(line: 0, scope: !1082)
!1098 = !DILocation(line: 77, column: 27, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1082, file: !25, line: 77, column: 7)
!1100 = !DILocation(line: 96, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1066, file: !25, line: 96, column: 7)
!1102 = !DILocation(line: 78, column: 16, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !25, line: 78, column: 13)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !25, line: 77, column: 47)
!1105 = !DILocation(line: 78, column: 20, scope: !1103)
!1106 = !DILocation(line: 83, column: 44, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 78, column: 26)
!1108 = !DILocation(line: 83, column: 33, scope: !1107)
!1109 = !DILocation(line: 83, column: 25, scope: !1107)
!1110 = !DILocation(line: 83, column: 11, scope: !1107)
!1111 = !DILocation(line: 83, column: 30, scope: !1107)
!1112 = !DILocation(line: 85, column: 9, scope: !1107)
!1113 = !DILocation(line: 90, column: 44, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !25, line: 85, column: 16)
!1115 = !DILocation(line: 90, column: 33, scope: !1114)
!1116 = !DILocation(line: 90, column: 65, scope: !1114)
!1117 = !DILocation(line: 90, column: 25, scope: !1114)
!1118 = !DILocation(line: 90, column: 11, scope: !1114)
!1119 = !DILocation(line: 90, column: 30, scope: !1114)
!1120 = !DILocation(line: 77, column: 43, scope: !1099)
!1121 = !DILocation(line: 77, column: 7, scope: !1099)
!1122 = distinct !{!1122, !1081, !1123, !244}
!1123 = !DILocation(line: 93, column: 7, scope: !1082)
!1124 = !DILocation(line: 96, scope: !1101)
!1125 = !DILocalVariable(name: "k", scope: !1101, file: !25, line: 96, type: !15)
!1126 = !DILocation(line: 0, scope: !1101)
!1127 = !DILocation(line: 96, column: 28, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1101, file: !25, line: 96, column: 7)
!1129 = !DILocation(line: 97, column: 27, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !25, line: 96, column: 48)
!1131 = !DILocation(line: 97, column: 40, scope: !1130)
!1132 = !DILocation(line: 97, column: 20, scope: !1130)
!1133 = !DILocation(line: 98, column: 24, scope: !1130)
!1134 = !DILocation(line: 98, column: 39, scope: !1130)
!1135 = !DILocation(line: 98, column: 52, scope: !1130)
!1136 = !DILocation(line: 98, column: 32, scope: !1130)
!1137 = !DILocation(line: 98, column: 30, scope: !1130)
!1138 = !DILocation(line: 97, column: 64, scope: !1130)
!1139 = !DILocation(line: 97, column: 9, scope: !1130)
!1140 = !DILocation(line: 97, column: 17, scope: !1130)
!1141 = !DILocation(line: 96, column: 44, scope: !1128)
!1142 = !DILocation(line: 96, column: 7, scope: !1128)
!1143 = distinct !{!1143, !1100, !1144, !244}
!1144 = !DILocation(line: 99, column: 7, scope: !1101)
!1145 = !DILocation(line: 68, column: 38, scope: !1064)
!1146 = !DILocation(line: 68, column: 5, scope: !1064)
!1147 = distinct !{!1147, !1055, !1148, !244}
!1148 = !DILocation(line: 100, column: 5, scope: !1056)
!1149 = !DILocation(line: 67, column: 41, scope: !1053)
!1150 = !DILocation(line: 67, column: 3, scope: !1053)
!1151 = distinct !{!1151, !1054, !1152, !244}
!1152 = !DILocation(line: 101, column: 3, scope: !1048)
!1153 = !DILocation(line: 104, scope: !1059)
!1154 = !DILocalVariable(name: "i", scope: !1059, file: !25, line: 104, type: !45)
!1155 = !DILocation(line: 0, scope: !1059)
!1156 = !DILocation(line: 104, column: 21, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1059, file: !25, line: 104, column: 3)
!1158 = !DILocation(line: 110, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !25, line: 104, column: 43)
!1160 = !DILocation(line: 110, column: 33, scope: !1159)
!1161 = !DILocation(line: 110, column: 20, scope: !1159)
!1162 = !DILocation(line: 110, column: 38, scope: !1159)
!1163 = !DILocation(line: 110, column: 17, scope: !1159)
!1164 = !DILocation(line: 110, column: 5, scope: !1159)
!1165 = !DILocation(line: 110, column: 10, scope: !1159)
!1166 = !DILocation(line: 111, column: 20, scope: !1159)
!1167 = !DILocation(line: 111, column: 16, scope: !1159)
!1168 = !DILocation(line: 111, column: 41, scope: !1159)
!1169 = !DILocation(line: 111, column: 28, scope: !1159)
!1170 = !DILocation(line: 111, column: 46, scope: !1159)
!1171 = !DILocation(line: 111, column: 25, scope: !1159)
!1172 = !DILocation(line: 111, column: 9, scope: !1159)
!1173 = !DILocation(line: 111, column: 5, scope: !1159)
!1174 = !DILocation(line: 111, column: 14, scope: !1159)
!1175 = !DILocation(line: 104, column: 37, scope: !1157)
!1176 = !DILocation(line: 104, column: 3, scope: !1157)
!1177 = distinct !{!1177, !1058, !1178, !244}
!1178 = !DILocation(line: 113, column: 3, scope: !1059)
!1179 = !DILocation(line: 115, column: 1, scope: !1014)
!1180 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 156, type: !1181, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !278, !5, !18}
!1183 = !DILocalVariable(name: "p", arg: 1, scope: !1180, file: !25, line: 156, type: !278)
!1184 = !DILocation(line: 0, scope: !1180)
!1185 = !DILocalVariable(name: "VtL", arg: 2, scope: !1180, file: !25, line: 156, type: !5)
!1186 = !DILocalVariable(name: "A_out", arg: 3, scope: !1180, file: !25, line: 157, type: !18)
!1187 = !DILocalVariable(name: "bits_to_shift", scope: !1180, file: !25, line: 162, type: !45)
!1188 = !DILocalVariable(name: "words_to_shift", scope: !1180, file: !25, line: 163, type: !45)
!1189 = !DILocalVariable(name: "m_vec_limbs", scope: !1180, file: !25, line: 164, type: !343)
!1190 = !DILocalVariable(name: "A", scope: !1180, file: !25, line: 165, type: !1191)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 100352, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 1568)
!1194 = !DILocation(line: 165, column: 12, scope: !1180)
!1195 = !DILocalVariable(name: "A_width", scope: !1180, file: !25, line: 166, type: !15)
!1196 = !DILocalVariable(name: "mask", scope: !1197, file: !25, line: 171, type: !6)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !25, line: 170, column: 29)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 170, column: 7)
!1199 = !DILocation(line: 0, scope: !1197)
!1200 = !DILocalVariable(name: "i", scope: !1201, file: !25, line: 174, type: !45)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !25, line: 174, column: 5)
!1202 = !DILocation(line: 0, scope: !1201)
!1203 = !DILocation(line: 174, column: 10, scope: !1201)
!1204 = !DILocation(line: 174, scope: !1201)
!1205 = !DILocation(line: 174, column: 23, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !25, line: 174, column: 5)
!1207 = !DILocation(line: 174, column: 5, scope: !1201)
!1208 = !DILocation(line: 179, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 179, column: 3)
!1210 = !DILocation(line: 175, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !25, line: 174, column: 55)
!1212 = !DILocation(line: 175, column: 46, scope: !1211)
!1213 = !DILocation(line: 174, column: 51, scope: !1206)
!1214 = !DILocation(line: 174, column: 5, scope: !1206)
!1215 = distinct !{!1215, !1207, !1216, !244}
!1216 = !DILocation(line: 176, column: 5, scope: !1201)
!1217 = !DILocation(line: 179, scope: !1209)
!1218 = !DILocation(line: 163, column: 7, scope: !1180)
!1219 = !DILocation(line: 162, column: 7, scope: !1180)
!1220 = !DILocalVariable(name: "i", scope: !1209, file: !25, line: 179, type: !45)
!1221 = !DILocation(line: 0, scope: !1209)
!1222 = !DILocation(line: 179, column: 21, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1209, file: !25, line: 179, column: 3)
!1224 = !DILocation(line: 180, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !25, line: 180, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !25, line: 179, column: 45)
!1227 = !DILocation(line: 216, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 216, column: 3)
!1229 = !DILocation(line: 180, scope: !1225)
!1230 = !DILocalVariable(name: "j", scope: !1225, file: !25, line: 180, type: !45)
!1231 = !DILocation(line: 0, scope: !1225)
!1232 = !DILocation(line: 180, column: 36, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1225, file: !25, line: 180, column: 5)
!1234 = !DILocation(line: 182, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1233, file: !25, line: 180, column: 47)
!1236 = !DILocalVariable(name: "Mj", scope: !1180, file: !25, line: 167, type: !428)
!1237 = !DILocalVariable(name: "c", scope: !1238, file: !25, line: 183, type: !45)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 183, column: 7)
!1239 = !DILocation(line: 0, scope: !1238)
!1240 = !DILocation(line: 183, column: 12, scope: !1238)
!1241 = !DILocation(line: 183, scope: !1238)
!1242 = !DILocation(line: 183, column: 25, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !25, line: 183, column: 7)
!1244 = !DILocation(line: 183, column: 7, scope: !1238)
!1245 = !DILocation(line: 184, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !25, line: 184, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !25, line: 183, column: 44)
!1248 = !DILocation(line: 184, scope: !1246)
!1249 = !DILocalVariable(name: "k", scope: !1246, file: !25, line: 184, type: !45)
!1250 = !DILocation(line: 0, scope: !1246)
!1251 = !DILocation(line: 184, column: 27, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !25, line: 184, column: 9)
!1253 = !DILocation(line: 186, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !25, line: 184, column: 47)
!1255 = !DILocation(line: 186, column: 39, scope: !1254)
!1256 = !DILocation(line: 185, column: 24, scope: !1254)
!1257 = !DILocation(line: 185, column: 28, scope: !1254)
!1258 = !DILocation(line: 185, column: 37, scope: !1254)
!1259 = !DILocation(line: 185, column: 55, scope: !1254)
!1260 = !DILocation(line: 185, column: 32, scope: !1254)
!1261 = !DILocation(line: 185, column: 11, scope: !1254)
!1262 = !DILocation(line: 185, column: 66, scope: !1254)
!1263 = !DILocation(line: 187, column: 29, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1254, file: !25, line: 187, column: 15)
!1265 = !DILocation(line: 189, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1264, file: !25, line: 187, column: 34)
!1267 = !DILocation(line: 189, column: 48, scope: !1266)
!1268 = !DILocation(line: 189, column: 41, scope: !1266)
!1269 = !DILocation(line: 188, column: 26, scope: !1266)
!1270 = !DILocation(line: 188, column: 30, scope: !1266)
!1271 = !DILocation(line: 188, column: 39, scope: !1266)
!1272 = !DILocation(line: 188, column: 61, scope: !1266)
!1273 = !DILocation(line: 188, column: 34, scope: !1266)
!1274 = !DILocation(line: 188, column: 13, scope: !1266)
!1275 = !DILocation(line: 188, column: 72, scope: !1266)
!1276 = !DILocation(line: 190, column: 11, scope: !1266)
!1277 = !DILocation(line: 184, column: 43, scope: !1252)
!1278 = !DILocation(line: 184, column: 9, scope: !1252)
!1279 = distinct !{!1279, !1245, !1280, !244}
!1280 = !DILocation(line: 191, column: 9, scope: !1246)
!1281 = !DILocation(line: 183, column: 40, scope: !1243)
!1282 = !DILocation(line: 183, column: 7, scope: !1243)
!1283 = distinct !{!1283, !1244, !1284, !244}
!1284 = !DILocation(line: 192, column: 7, scope: !1238)
!1285 = !DILocation(line: 194, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 194, column: 11)
!1287 = !DILocation(line: 195, column: 18, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !25, line: 194, column: 19)
!1289 = !DILocalVariable(name: "Mi", scope: !1180, file: !25, line: 167, type: !428)
!1290 = !DILocalVariable(name: "c", scope: !1291, file: !25, line: 196, type: !45)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !25, line: 196, column: 9)
!1292 = !DILocation(line: 0, scope: !1291)
!1293 = !DILocation(line: 196, column: 14, scope: !1291)
!1294 = !DILocation(line: 196, scope: !1291)
!1295 = !DILocation(line: 196, column: 27, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !25, line: 196, column: 9)
!1297 = !DILocation(line: 196, column: 9, scope: !1291)
!1298 = !DILocation(line: 197, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !25, line: 197, column: 11)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !25, line: 196, column: 46)
!1301 = !DILocation(line: 197, scope: !1299)
!1302 = !DILocalVariable(name: "k", scope: !1299, file: !25, line: 197, type: !45)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocation(line: 197, column: 29, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !25, line: 197, column: 11)
!1306 = !DILocation(line: 199, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1305, file: !25, line: 197, column: 49)
!1308 = !DILocation(line: 199, column: 41, scope: !1307)
!1309 = !DILocation(line: 198, column: 26, scope: !1307)
!1310 = !DILocation(line: 198, column: 30, scope: !1307)
!1311 = !DILocation(line: 198, column: 39, scope: !1307)
!1312 = !DILocation(line: 198, column: 57, scope: !1307)
!1313 = !DILocation(line: 198, column: 34, scope: !1307)
!1314 = !DILocation(line: 198, column: 13, scope: !1307)
!1315 = !DILocation(line: 198, column: 68, scope: !1307)
!1316 = !DILocation(line: 200, column: 31, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 200, column: 17)
!1318 = !DILocation(line: 202, column: 19, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !25, line: 200, column: 36)
!1320 = !DILocation(line: 202, column: 50, scope: !1319)
!1321 = !DILocation(line: 202, column: 43, scope: !1319)
!1322 = !DILocation(line: 201, column: 28, scope: !1319)
!1323 = !DILocation(line: 201, column: 32, scope: !1319)
!1324 = !DILocation(line: 201, column: 41, scope: !1319)
!1325 = !DILocation(line: 201, column: 63, scope: !1319)
!1326 = !DILocation(line: 201, column: 36, scope: !1319)
!1327 = !DILocation(line: 201, column: 15, scope: !1319)
!1328 = !DILocation(line: 201, column: 74, scope: !1319)
!1329 = !DILocation(line: 203, column: 13, scope: !1319)
!1330 = !DILocation(line: 197, column: 45, scope: !1305)
!1331 = !DILocation(line: 197, column: 11, scope: !1305)
!1332 = distinct !{!1332, !1298, !1333, !244}
!1333 = !DILocation(line: 204, column: 11, scope: !1299)
!1334 = !DILocation(line: 196, column: 42, scope: !1296)
!1335 = !DILocation(line: 196, column: 9, scope: !1296)
!1336 = distinct !{!1336, !1297, !1337, !244}
!1337 = !DILocation(line: 205, column: 9, scope: !1291)
!1338 = !DILocation(line: 208, column: 21, scope: !1235)
!1339 = !DILocation(line: 209, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1235, file: !25, line: 209, column: 11)
!1341 = !DILocation(line: 180, column: 42, scope: !1233)
!1342 = !DILocation(line: 180, column: 5, scope: !1233)
!1343 = distinct !{!1343, !1224, !1344, !244}
!1344 = !DILocation(line: 213, column: 5, scope: !1225)
!1345 = !DILocation(line: 179, column: 40, scope: !1223)
!1346 = !DILocation(line: 179, column: 3, scope: !1223)
!1347 = distinct !{!1347, !1208, !1348, !244}
!1348 = !DILocation(line: 214, column: 3, scope: !1209)
!1349 = !DILocation(line: 0, scope: !1228)
!1350 = !DILocalVariable(name: "c", scope: !1228, file: !25, line: 216, type: !15)
!1351 = !DILocation(line: 217, column: 10, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1228, file: !25, line: 216, column: 3)
!1353 = !DILocation(line: 220, column: 31, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !25, line: 219, column: 17)
!1355 = !DILocation(line: 220, column: 5, scope: !1354)
!1356 = !DILocation(line: 219, column: 10, scope: !1352)
!1357 = !DILocation(line: 216, column: 3, scope: !1352)
!1358 = distinct !{!1358, !1227, !1359, !244}
!1359 = !DILocation(line: 221, column: 3, scope: !1228)
!1360 = !DILocalVariable(name: "tab", scope: !1180, file: !25, line: 223, type: !116)
!1361 = !DILocation(line: 223, column: 17, scope: !1180)
!1362 = !DILocalVariable(name: "i", scope: !1363, file: !25, line: 224, type: !15)
!1363 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 224, column: 3)
!1364 = !DILocation(line: 0, scope: !1363)
!1365 = !DILocation(line: 224, column: 8, scope: !1363)
!1366 = !DILocation(line: 224, scope: !1363)
!1367 = !DILocation(line: 224, column: 24, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !25, line: 224, column: 3)
!1369 = !DILocation(line: 224, column: 3, scope: !1363)
!1370 = !DILocation(line: 233, column: 3, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 233, column: 3)
!1372 = !DILocation(line: 225, column: 24, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !25, line: 224, column: 43)
!1374 = !DILocation(line: 225, column: 18, scope: !1373)
!1375 = !DILocation(line: 225, column: 11, scope: !1373)
!1376 = !DILocation(line: 225, column: 5, scope: !1373)
!1377 = !DILocation(line: 225, column: 16, scope: !1373)
!1378 = !DILocation(line: 226, column: 22, scope: !1373)
!1379 = !DILocation(line: 226, column: 11, scope: !1373)
!1380 = !DILocation(line: 226, column: 15, scope: !1373)
!1381 = !DILocation(line: 226, column: 5, scope: !1373)
!1382 = !DILocation(line: 226, column: 20, scope: !1373)
!1383 = !DILocation(line: 227, column: 28, scope: !1373)
!1384 = !DILocation(line: 227, column: 22, scope: !1373)
!1385 = !DILocation(line: 227, column: 11, scope: !1373)
!1386 = !DILocation(line: 227, column: 15, scope: !1373)
!1387 = !DILocation(line: 227, column: 5, scope: !1373)
!1388 = !DILocation(line: 227, column: 20, scope: !1373)
!1389 = !DILocation(line: 228, column: 28, scope: !1373)
!1390 = !DILocation(line: 228, column: 22, scope: !1373)
!1391 = !DILocation(line: 228, column: 11, scope: !1373)
!1392 = !DILocation(line: 228, column: 15, scope: !1373)
!1393 = !DILocation(line: 228, column: 5, scope: !1373)
!1394 = !DILocation(line: 228, column: 20, scope: !1373)
!1395 = !DILocation(line: 224, column: 39, scope: !1368)
!1396 = !DILocation(line: 224, column: 3, scope: !1368)
!1397 = distinct !{!1397, !1369, !1398, !244}
!1398 = !DILocation(line: 229, column: 3, scope: !1363)
!1399 = !DILocation(line: 233, scope: !1371)
!1400 = !DILocalVariable(name: "c", scope: !1371, file: !25, line: 233, type: !15)
!1401 = !DILocation(line: 0, scope: !1371)
!1402 = !DILocation(line: 233, column: 24, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1371, file: !25, line: 233, column: 3)
!1404 = !DILocation(line: 234, column: 5, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !25, line: 234, column: 5)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !25, line: 233, column: 44)
!1407 = !DILocation(line: 256, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1180, file: !25, line: 256, column: 3)
!1409 = !DILocation(line: 0, scope: !1405)
!1410 = !DILocalVariable(name: "r", scope: !1405, file: !25, line: 234, type: !45)
!1411 = !DILocation(line: 234, column: 32, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1405, file: !25, line: 234, column: 5)
!1413 = !DILocation(line: 236, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !25, line: 235, column: 15)
!1415 = !DILocation(line: 236, column: 29, scope: !1414)
!1416 = !DILocation(line: 236, column: 39, scope: !1414)
!1417 = !DILocation(line: 236, column: 48, scope: !1414)
!1418 = !DILocation(line: 236, column: 43, scope: !1414)
!1419 = !DILocalVariable(name: "pos", scope: !1414, file: !25, line: 236, type: !15)
!1420 = !DILocation(line: 0, scope: !1414)
!1421 = !DILocation(line: 237, column: 21, scope: !1414)
!1422 = !DILocation(line: 237, column: 28, scope: !1414)
!1423 = !DILocalVariable(name: "t0", scope: !1414, file: !25, line: 237, type: !6)
!1424 = !DILocation(line: 238, column: 29, scope: !1414)
!1425 = !DILocation(line: 238, column: 35, scope: !1414)
!1426 = !DILocalVariable(name: "t1", scope: !1414, file: !25, line: 238, type: !6)
!1427 = !DILocation(line: 239, column: 29, scope: !1414)
!1428 = !DILocation(line: 239, column: 35, scope: !1414)
!1429 = !DILocalVariable(name: "t2", scope: !1414, file: !25, line: 239, type: !6)
!1430 = !DILocation(line: 240, column: 22, scope: !1414)
!1431 = !DILocation(line: 240, column: 29, scope: !1414)
!1432 = !DILocation(line: 240, column: 35, scope: !1414)
!1433 = !DILocalVariable(name: "t3", scope: !1414, file: !25, line: 240, type: !6)
!1434 = !DILocalVariable(name: "t", scope: !1435, file: !25, line: 241, type: !15)
!1435 = distinct !DILexicalBlock(scope: !1414, file: !25, line: 241, column: 7)
!1436 = !DILocation(line: 0, scope: !1435)
!1437 = !DILocation(line: 241, column: 12, scope: !1435)
!1438 = !DILocation(line: 241, scope: !1435)
!1439 = !DILocation(line: 241, column: 28, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !25, line: 241, column: 7)
!1441 = !DILocation(line: 241, column: 7, scope: !1435)
!1442 = !DILocation(line: 244, column: 24, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !25, line: 241, column: 47)
!1444 = !DILocation(line: 244, column: 18, scope: !1443)
!1445 = !DILocation(line: 244, column: 16, scope: !1443)
!1446 = !DILocation(line: 244, column: 46, scope: !1443)
!1447 = !DILocation(line: 244, column: 50, scope: !1443)
!1448 = !DILocation(line: 244, column: 40, scope: !1443)
!1449 = !DILocation(line: 244, column: 38, scope: !1443)
!1450 = !DILocation(line: 244, column: 33, scope: !1443)
!1451 = !DILocation(line: 244, column: 68, scope: !1443)
!1452 = !DILocation(line: 244, column: 72, scope: !1443)
!1453 = !DILocation(line: 244, column: 62, scope: !1443)
!1454 = !DILocation(line: 244, column: 60, scope: !1443)
!1455 = !DILocation(line: 244, column: 55, scope: !1443)
!1456 = !DILocation(line: 245, column: 24, scope: !1443)
!1457 = !DILocation(line: 245, column: 28, scope: !1443)
!1458 = !DILocation(line: 245, column: 18, scope: !1443)
!1459 = !DILocation(line: 245, column: 16, scope: !1443)
!1460 = !DILocation(line: 244, column: 77, scope: !1443)
!1461 = !DILocation(line: 242, column: 15, scope: !1443)
!1462 = !DILocation(line: 242, column: 19, scope: !1443)
!1463 = !DILocation(line: 242, column: 33, scope: !1443)
!1464 = !DILocation(line: 242, column: 39, scope: !1443)
!1465 = !DILocation(line: 242, column: 49, scope: !1443)
!1466 = !DILocation(line: 243, column: 15, scope: !1443)
!1467 = !DILocation(line: 243, column: 19, scope: !1443)
!1468 = !DILocation(line: 243, column: 33, scope: !1443)
!1469 = !DILocation(line: 242, column: 53, scope: !1443)
!1470 = !DILocation(line: 242, column: 9, scope: !1443)
!1471 = !DILocation(line: 243, column: 40, scope: !1443)
!1472 = !DILocation(line: 241, column: 43, scope: !1440)
!1473 = !DILocation(line: 241, column: 7, scope: !1440)
!1474 = distinct !{!1474, !1441, !1475, !244}
!1475 = !DILocation(line: 246, column: 7, scope: !1435)
!1476 = !DILocation(line: 235, column: 11, scope: !1412)
!1477 = !DILocation(line: 234, column: 5, scope: !1412)
!1478 = distinct !{!1478, !1404, !1479, !244}
!1479 = !DILocation(line: 247, column: 5, scope: !1405)
!1480 = !DILocation(line: 233, column: 37, scope: !1403)
!1481 = !DILocation(line: 233, column: 3, scope: !1403)
!1482 = distinct !{!1482, !1370, !1483, !244}
!1483 = !DILocation(line: 248, column: 3, scope: !1371)
!1484 = !DILocation(line: 256, scope: !1408)
!1485 = !DILocalVariable(name: "r", scope: !1408, file: !25, line: 256, type: !45)
!1486 = !DILocation(line: 0, scope: !1408)
!1487 = !DILocation(line: 256, column: 21, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1408, file: !25, line: 256, column: 3)
!1489 = !DILocation(line: 257, column: 5, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !25, line: 257, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !25, line: 256, column: 44)
!1492 = !DILocation(line: 257, scope: !1490)
!1493 = !DILocalVariable(name: "c", scope: !1490, file: !25, line: 257, type: !45)
!1494 = !DILocation(line: 0, scope: !1490)
!1495 = !DILocation(line: 257, column: 23, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !25, line: 257, column: 5)
!1497 = !DILocation(line: 258, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !25, line: 258, column: 7)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !25, line: 257, column: 55)
!1500 = !DILocation(line: 258, scope: !1498)
!1501 = !DILocalVariable(name: "i", scope: !1498, file: !25, line: 258, type: !45)
!1502 = !DILocation(line: 0, scope: !1498)
!1503 = !DILocation(line: 258, column: 29, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !25, line: 258, column: 7)
!1505 = !DILocation(line: 259, column: 48, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1504, file: !25, line: 258, column: 48)
!1507 = !DILocation(line: 259, column: 53, scope: !1506)
!1508 = !DILocation(line: 259, column: 57, scope: !1506)
!1509 = !DILocation(line: 259, column: 34, scope: !1506)
!1510 = !DILocation(line: 260, column: 45, scope: !1506)
!1511 = !DILocation(line: 260, column: 40, scope: !1506)
!1512 = !DILocation(line: 260, column: 22, scope: !1506)
!1513 = !DILocation(line: 260, column: 50, scope: !1506)
!1514 = !DILocation(line: 261, column: 16, scope: !1506)
!1515 = !DILocation(line: 259, column: 9, scope: !1506)
!1516 = !DILocation(line: 258, column: 44, scope: !1504)
!1517 = !DILocation(line: 258, column: 7, scope: !1504)
!1518 = distinct !{!1518, !1497, !1519, !244}
!1519 = !DILocation(line: 262, column: 7, scope: !1498)
!1520 = !DILocation(line: 257, column: 48, scope: !1496)
!1521 = !DILocation(line: 257, column: 5, scope: !1496)
!1522 = distinct !{!1522, !1489, !1523, !244}
!1523 = !DILocation(line: 263, column: 5, scope: !1490)
!1524 = !DILocation(line: 256, column: 37, scope: !1488)
!1525 = !DILocation(line: 256, column: 3, scope: !1488)
!1526 = distinct !{!1526, !1407, !1527, !244}
!1527 = !DILocation(line: 264, column: 3, scope: !1408)
!1528 = !DILocation(line: 266, column: 1, scope: !1180)
!1529 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1530, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !49, !49, !18, !45, !45, !45}
!1532 = !DILocalVariable(name: "a", arg: 1, scope: !1529, file: !595, line: 82, type: !49)
!1533 = !DILocation(line: 0, scope: !1529)
!1534 = !DILocalVariable(name: "b", arg: 2, scope: !1529, file: !595, line: 82, type: !49)
!1535 = !DILocalVariable(name: "c", arg: 3, scope: !1529, file: !595, line: 83, type: !18)
!1536 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1529, file: !595, line: 83, type: !45)
!1537 = !DILocalVariable(name: "row_a", arg: 5, scope: !1529, file: !595, line: 83, type: !45)
!1538 = !DILocalVariable(name: "col_b", arg: 6, scope: !1529, file: !595, line: 83, type: !45)
!1539 = !DILocalVariable(name: "i", scope: !1540, file: !595, line: 84, type: !45)
!1540 = distinct !DILexicalBlock(scope: !1529, file: !595, line: 84, column: 5)
!1541 = !DILocation(line: 0, scope: !1540)
!1542 = !DILocation(line: 84, column: 10, scope: !1540)
!1543 = !DILocation(line: 84, scope: !1540)
!1544 = !DILocation(line: 84, column: 23, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1540, file: !595, line: 84, column: 5)
!1546 = !DILocation(line: 84, column: 5, scope: !1540)
!1547 = !DILocation(line: 85, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !595, line: 85, column: 9)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !595, line: 84, column: 53)
!1550 = !DILocation(line: 85, scope: !1548)
!1551 = !DILocalVariable(name: "j", scope: !1548, file: !595, line: 85, type: !45)
!1552 = !DILocation(line: 0, scope: !1548)
!1553 = !DILocation(line: 86, column: 18, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !595, line: 85, column: 46)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !595, line: 85, column: 9)
!1556 = !DILocation(line: 86, column: 16, scope: !1554)
!1557 = !DILocation(line: 85, column: 41, scope: !1555)
!1558 = !DILocation(line: 85, column: 9, scope: !1555)
!1559 = distinct !{!1559, !1547, !1560, !244}
!1560 = !DILocation(line: 87, column: 9, scope: !1548)
!1561 = !DILocation(line: 84, column: 32, scope: !1545)
!1562 = !DILocation(line: 84, column: 39, scope: !1545)
!1563 = !DILocation(line: 84, column: 5, scope: !1545)
!1564 = distinct !{!1564, !1546, !1565, !244}
!1565 = !DILocation(line: 88, column: 5, scope: !1540)
!1566 = !DILocation(line: 91, column: 1, scope: !1529)
!1567 = distinct !DISubprogram(name: "mat_add", scope: !595, file: !595, line: 93, type: !1568, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !49, !49, !18, !45, !45}
!1570 = !DILocalVariable(name: "a", arg: 1, scope: !1567, file: !595, line: 93, type: !49)
!1571 = !DILocation(line: 0, scope: !1567)
!1572 = !DILocalVariable(name: "b", arg: 2, scope: !1567, file: !595, line: 93, type: !49)
!1573 = !DILocalVariable(name: "c", arg: 3, scope: !1567, file: !595, line: 94, type: !18)
!1574 = !DILocalVariable(name: "m", arg: 4, scope: !1567, file: !595, line: 94, type: !45)
!1575 = !DILocalVariable(name: "n", arg: 5, scope: !1567, file: !595, line: 94, type: !45)
!1576 = !DILocalVariable(name: "i", scope: !1577, file: !595, line: 95, type: !45)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !595, line: 95, column: 5)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 95, column: 10, scope: !1577)
!1580 = !DILocation(line: 95, scope: !1577)
!1581 = !DILocation(line: 95, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !595, line: 95, column: 5)
!1583 = !DILocation(line: 95, column: 5, scope: !1577)
!1584 = !DILocalVariable(name: "j", scope: !1585, file: !595, line: 96, type: !45)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !595, line: 96, column: 9)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !595, line: 95, column: 33)
!1587 = !DILocation(line: 0, scope: !1585)
!1588 = !DILocation(line: 97, column: 42, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !595, line: 96, column: 37)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !595, line: 96, column: 9)
!1591 = !DILocation(line: 97, column: 38, scope: !1589)
!1592 = !DILocation(line: 97, column: 60, scope: !1589)
!1593 = !DILocation(line: 97, column: 56, scope: !1589)
!1594 = !DILocation(line: 97, column: 32, scope: !1589)
!1595 = !DILocation(line: 97, column: 17, scope: !1589)
!1596 = !DILocation(line: 97, column: 30, scope: !1589)
!1597 = !DILocation(line: 95, column: 28, scope: !1582)
!1598 = !DILocation(line: 95, column: 5, scope: !1582)
!1599 = distinct !{!1599, !1583, !1600, !244}
!1600 = !DILocation(line: 99, column: 5, scope: !1577)
!1601 = !DILocation(line: 102, column: 1, scope: !1567)
!1602 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 34, type: !379, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1603 = !DILocalVariable(name: "m", arg: 1, scope: !1602, file: !25, line: 34, type: !49)
!1604 = !DILocation(line: 0, scope: !1602)
!1605 = !DILocalVariable(name: "menc", arg: 2, scope: !1602, file: !25, line: 34, type: !18)
!1606 = !DILocalVariable(name: "mlen", arg: 3, scope: !1602, file: !25, line: 34, type: !45)
!1607 = !DILocalVariable(name: "i", scope: !1602, file: !25, line: 35, type: !45)
!1608 = !DILocation(line: 36, column: 8, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !25, line: 36, column: 3)
!1610 = !DILocation(line: 36, scope: !1609)
!1611 = !DILocation(line: 36, column: 17, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !25, line: 36, column: 3)
!1613 = !DILocation(line: 36, column: 3, scope: !1609)
!1614 = !DILocation(line: 37, column: 16, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !25, line: 36, column: 42)
!1616 = !DILocation(line: 37, column: 27, scope: !1615)
!1617 = !DILocation(line: 37, column: 23, scope: !1615)
!1618 = !DILocation(line: 37, column: 32, scope: !1615)
!1619 = !DILocation(line: 37, column: 20, scope: !1615)
!1620 = !DILocation(line: 37, column: 5, scope: !1615)
!1621 = !DILocation(line: 37, column: 13, scope: !1615)
!1622 = !DILocation(line: 36, column: 29, scope: !1612)
!1623 = !DILocation(line: 36, column: 36, scope: !1612)
!1624 = !DILocation(line: 36, column: 3, scope: !1612)
!1625 = distinct !{!1625, !1613, !1626, !244}
!1626 = !DILocation(line: 38, column: 3, scope: !1609)
!1627 = !DILocation(line: 44, column: 1, scope: !1602)
!1628 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1629, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!14, !14, !14}
!1631 = !DILocalVariable(name: "a", arg: 1, scope: !1628, file: !595, line: 44, type: !14)
!1632 = !DILocation(line: 0, scope: !1628)
!1633 = !DILocalVariable(name: "b", arg: 2, scope: !1628, file: !595, line: 44, type: !14)
!1634 = !DILocation(line: 45, column: 14, scope: !1628)
!1635 = !DILocation(line: 45, column: 5, scope: !1628)
!1636 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1637, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!14, !49, !49, !45, !45}
!1639 = !DILocalVariable(name: "a", arg: 1, scope: !1636, file: !595, line: 71, type: !49)
!1640 = !DILocation(line: 0, scope: !1636)
!1641 = !DILocalVariable(name: "b", arg: 2, scope: !1636, file: !595, line: 72, type: !49)
!1642 = !DILocalVariable(name: "n", arg: 3, scope: !1636, file: !595, line: 72, type: !45)
!1643 = !DILocalVariable(name: "m", arg: 4, scope: !1636, file: !595, line: 72, type: !45)
!1644 = !DILocalVariable(name: "ret", scope: !1636, file: !595, line: 73, type: !14)
!1645 = !DILocalVariable(name: "i", scope: !1646, file: !595, line: 74, type: !45)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !595, line: 74, column: 5)
!1647 = !DILocation(line: 0, scope: !1646)
!1648 = !DILocation(line: 74, column: 10, scope: !1646)
!1649 = !DILocation(line: 74, scope: !1646)
!1650 = !DILocation(line: 74, column: 23, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !595, line: 74, column: 5)
!1652 = !DILocation(line: 74, column: 5, scope: !1646)
!1653 = !DILocation(line: 75, column: 27, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !595, line: 74, column: 41)
!1655 = !DILocation(line: 75, column: 33, scope: !1654)
!1656 = !DILocation(line: 75, column: 21, scope: !1654)
!1657 = !DILocation(line: 75, column: 15, scope: !1654)
!1658 = !DILocation(line: 74, column: 28, scope: !1651)
!1659 = !DILocation(line: 74, column: 35, scope: !1651)
!1660 = !DILocation(line: 74, column: 5, scope: !1651)
!1661 = distinct !{!1661, !1652, !1662, !244}
!1662 = !DILocation(line: 76, column: 5, scope: !1646)
!1663 = !DILocation(line: 79, column: 5, scope: !1636)
!1664 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1629, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1665 = !DILocalVariable(name: "a", arg: 1, scope: !1664, file: !595, line: 10, type: !14)
!1666 = !DILocation(line: 0, scope: !1664)
!1667 = !DILocalVariable(name: "b", arg: 2, scope: !1664, file: !595, line: 10, type: !14)
!1668 = !DILocation(line: 15, column: 10, scope: !1664)
!1669 = !DILocation(line: 15, column: 7, scope: !1664)
!1670 = !DILocation(line: 18, column: 17, scope: !1664)
!1671 = !DILocalVariable(name: "p", scope: !1664, file: !595, line: 12, type: !14)
!1672 = !DILocation(line: 19, column: 13, scope: !1664)
!1673 = !DILocation(line: 19, column: 17, scope: !1664)
!1674 = !DILocation(line: 19, column: 7, scope: !1664)
!1675 = !DILocation(line: 20, column: 13, scope: !1664)
!1676 = !DILocation(line: 20, column: 17, scope: !1664)
!1677 = !DILocation(line: 20, column: 7, scope: !1664)
!1678 = !DILocation(line: 21, column: 13, scope: !1664)
!1679 = !DILocation(line: 21, column: 17, scope: !1664)
!1680 = !DILocation(line: 21, column: 7, scope: !1664)
!1681 = !DILocalVariable(name: "top_p", scope: !1664, file: !595, line: 24, type: !14)
!1682 = !DILocation(line: 25, column: 37, scope: !1664)
!1683 = !DILocation(line: 25, column: 52, scope: !1664)
!1684 = !DILocation(line: 25, column: 43, scope: !1664)
!1685 = !DILocation(line: 25, column: 59, scope: !1664)
!1686 = !DILocalVariable(name: "out", scope: !1664, file: !595, line: 25, type: !14)
!1687 = !DILocation(line: 26, column: 5, scope: !1664)
!1688 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 117, type: !5)
!1689 = !DILocation(line: 0, scope: !24)
!1690 = !DILocalVariable(name: "i", scope: !1691, file: !25, line: 123, type: !15)
!1691 = distinct !DILexicalBlock(scope: !24, file: !25, line: 123, column: 3)
!1692 = !DILocation(line: 0, scope: !1691)
!1693 = !DILocation(line: 123, column: 8, scope: !1691)
!1694 = !DILocation(line: 123, scope: !1691)
!1695 = !DILocation(line: 123, column: 24, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !25, line: 123, column: 3)
!1697 = !DILocation(line: 123, column: 3, scope: !1691)
!1698 = !DILocation(line: 129, column: 3, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !24, file: !25, line: 129, column: 3)
!1700 = !DILocation(line: 124, column: 20, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !25, line: 123, column: 38)
!1702 = !DILocation(line: 124, column: 25, scope: !1701)
!1703 = !DILocation(line: 124, column: 37, scope: !1701)
!1704 = !DILocation(line: 124, column: 33, scope: !1701)
!1705 = !DILocation(line: 124, column: 31, scope: !1701)
!1706 = !DILocation(line: 124, column: 43, scope: !1701)
!1707 = !DILocalVariable(name: "t", scope: !1701, file: !25, line: 124, type: !6)
!1708 = !DILocation(line: 0, scope: !1701)
!1709 = !DILocation(line: 125, column: 15, scope: !1701)
!1710 = !DILocation(line: 125, column: 5, scope: !1701)
!1711 = !DILocation(line: 125, column: 10, scope: !1701)
!1712 = !DILocation(line: 126, column: 9, scope: !1701)
!1713 = !DILocation(line: 126, column: 5, scope: !1701)
!1714 = !DILocation(line: 126, column: 14, scope: !1701)
!1715 = !DILocation(line: 123, column: 32, scope: !1696)
!1716 = !DILocation(line: 123, column: 3, scope: !1696)
!1717 = distinct !{!1717, !1697, !1718, !244}
!1718 = !DILocation(line: 127, column: 3, scope: !1691)
!1719 = !DILocation(line: 129, scope: !1699)
!1720 = !DILocalVariable(name: "i", scope: !1699, file: !25, line: 129, type: !15)
!1721 = !DILocation(line: 0, scope: !1699)
!1722 = !DILocation(line: 129, column: 24, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1699, file: !25, line: 129, column: 3)
!1724 = !DILocation(line: 138, column: 3, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !24, file: !25, line: 138, column: 3)
!1726 = !DILocation(line: 130, column: 21, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !25, line: 129, column: 38)
!1728 = !DILocation(line: 130, column: 26, scope: !1727)
!1729 = !DILocation(line: 130, column: 38, scope: !1727)
!1730 = !DILocation(line: 130, column: 34, scope: !1727)
!1731 = !DILocation(line: 130, column: 32, scope: !1727)
!1732 = !DILocation(line: 130, column: 44, scope: !1727)
!1733 = !DILocalVariable(name: "t0", scope: !1727, file: !25, line: 130, type: !6)
!1734 = !DILocation(line: 0, scope: !1727)
!1735 = !DILocation(line: 131, column: 25, scope: !1727)
!1736 = !DILocation(line: 131, column: 21, scope: !1727)
!1737 = !DILocation(line: 131, column: 30, scope: !1727)
!1738 = !DILocation(line: 131, column: 42, scope: !1727)
!1739 = !DILocation(line: 131, column: 38, scope: !1727)
!1740 = !DILocation(line: 131, column: 36, scope: !1727)
!1741 = !DILocation(line: 131, column: 48, scope: !1727)
!1742 = !DILocalVariable(name: "t1", scope: !1727, file: !25, line: 131, type: !6)
!1743 = !DILocation(line: 132, column: 17, scope: !1727)
!1744 = !DILocation(line: 132, column: 5, scope: !1727)
!1745 = !DILocation(line: 132, column: 10, scope: !1727)
!1746 = !DILocation(line: 133, column: 21, scope: !1727)
!1747 = !DILocation(line: 133, column: 9, scope: !1727)
!1748 = !DILocation(line: 133, column: 5, scope: !1727)
!1749 = !DILocation(line: 133, column: 14, scope: !1727)
!1750 = !DILocation(line: 134, column: 9, scope: !1727)
!1751 = !DILocation(line: 134, column: 5, scope: !1727)
!1752 = !DILocation(line: 134, column: 14, scope: !1727)
!1753 = !DILocation(line: 135, column: 9, scope: !1727)
!1754 = !DILocation(line: 135, column: 5, scope: !1727)
!1755 = !DILocation(line: 135, column: 14, scope: !1727)
!1756 = !DILocation(line: 129, column: 32, scope: !1723)
!1757 = !DILocation(line: 129, column: 3, scope: !1723)
!1758 = distinct !{!1758, !1698, !1759, !244}
!1759 = !DILocation(line: 136, column: 3, scope: !1699)
!1760 = !DILocation(line: 138, scope: !1725)
!1761 = !DILocalVariable(name: "i", scope: !1725, file: !25, line: 138, type: !15)
!1762 = !DILocation(line: 0, scope: !1725)
!1763 = !DILocation(line: 138, column: 24, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1725, file: !25, line: 138, column: 3)
!1765 = !DILocation(line: 148, column: 3, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !24, file: !25, line: 148, column: 3)
!1767 = !DILocation(line: 139, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !25, line: 138, column: 34)
!1769 = !DILocation(line: 139, column: 26, scope: !1768)
!1770 = !DILocation(line: 139, column: 39, scope: !1768)
!1771 = !DILocation(line: 139, column: 35, scope: !1768)
!1772 = !DILocation(line: 139, column: 33, scope: !1768)
!1773 = !DILocation(line: 139, column: 45, scope: !1768)
!1774 = !DILocalVariable(name: "t0", scope: !1768, file: !25, line: 139, type: !6)
!1775 = !DILocation(line: 0, scope: !1768)
!1776 = !DILocation(line: 140, column: 25, scope: !1768)
!1777 = !DILocation(line: 140, column: 21, scope: !1768)
!1778 = !DILocation(line: 140, column: 30, scope: !1768)
!1779 = !DILocation(line: 140, column: 43, scope: !1768)
!1780 = !DILocation(line: 140, column: 39, scope: !1768)
!1781 = !DILocation(line: 140, column: 37, scope: !1768)
!1782 = !DILocation(line: 140, column: 50, scope: !1768)
!1783 = !DILocalVariable(name: "t1", scope: !1768, file: !25, line: 140, type: !6)
!1784 = !DILocation(line: 142, column: 16, scope: !1768)
!1785 = !DILocation(line: 142, column: 5, scope: !1768)
!1786 = !DILocation(line: 142, column: 10, scope: !1768)
!1787 = !DILocation(line: 143, column: 20, scope: !1768)
!1788 = !DILocation(line: 143, column: 9, scope: !1768)
!1789 = !DILocation(line: 143, column: 5, scope: !1768)
!1790 = !DILocation(line: 143, column: 14, scope: !1768)
!1791 = !DILocation(line: 144, column: 9, scope: !1768)
!1792 = !DILocation(line: 144, column: 5, scope: !1768)
!1793 = !DILocation(line: 144, column: 14, scope: !1768)
!1794 = !DILocation(line: 145, column: 9, scope: !1768)
!1795 = !DILocation(line: 145, column: 5, scope: !1768)
!1796 = !DILocation(line: 145, column: 15, scope: !1768)
!1797 = !DILocation(line: 138, column: 30, scope: !1764)
!1798 = !DILocation(line: 138, column: 3, scope: !1764)
!1799 = distinct !{!1799, !1724, !1800, !244}
!1800 = !DILocation(line: 146, column: 3, scope: !1725)
!1801 = !DILocation(line: 148, scope: !1766)
!1802 = !DILocalVariable(name: "i", scope: !1766, file: !25, line: 148, type: !15)
!1803 = !DILocation(line: 0, scope: !1766)
!1804 = !DILocation(line: 148, column: 24, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1766, file: !25, line: 148, column: 3)
!1806 = !DILocation(line: 149, column: 20, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1805, file: !25, line: 148, column: 34)
!1808 = !DILocation(line: 149, column: 25, scope: !1807)
!1809 = !DILocation(line: 149, column: 38, scope: !1807)
!1810 = !DILocation(line: 149, column: 34, scope: !1807)
!1811 = !DILocation(line: 149, column: 44, scope: !1807)
!1812 = !DILocalVariable(name: "t", scope: !1807, file: !25, line: 149, type: !6)
!1813 = !DILocation(line: 0, scope: !1807)
!1814 = !DILocation(line: 150, column: 15, scope: !1807)
!1815 = !DILocation(line: 150, column: 5, scope: !1807)
!1816 = !DILocation(line: 150, column: 10, scope: !1807)
!1817 = !DILocation(line: 151, column: 9, scope: !1807)
!1818 = !DILocation(line: 151, column: 5, scope: !1807)
!1819 = !DILocation(line: 151, column: 14, scope: !1807)
!1820 = !DILocation(line: 148, column: 30, scope: !1805)
!1821 = !DILocation(line: 148, column: 3, scope: !1805)
!1822 = distinct !{!1822, !1765, !1823, !244}
!1823 = !DILocation(line: 152, column: 3, scope: !1766)
!1824 = !DILocation(line: 153, column: 1, scope: !24)
!1825 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !425, file: !425, line: 63, type: !481, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1826 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1825, file: !425, line: 63, type: !343)
!1827 = !DILocation(line: 0, scope: !1825)
!1828 = !DILocalVariable(name: "mat", arg: 2, scope: !1825, file: !425, line: 63, type: !49)
!1829 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1825, file: !425, line: 63, type: !428)
!1830 = !DILocalVariable(name: "acc", arg: 4, scope: !1825, file: !425, line: 63, type: !5)
!1831 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1825, file: !425, line: 64, type: !343)
!1832 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1825, file: !425, line: 64, type: !343)
!1833 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1825, file: !425, line: 64, type: !343)
!1834 = !DILocalVariable(name: "r", scope: !1835, file: !425, line: 66, type: !45)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !425, line: 66, column: 5)
!1836 = !DILocation(line: 0, scope: !1835)
!1837 = !DILocation(line: 66, column: 10, scope: !1835)
!1838 = !DILocation(line: 66, scope: !1835)
!1839 = !DILocation(line: 66, column: 23, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !425, line: 66, column: 5)
!1841 = !DILocation(line: 66, column: 5, scope: !1835)
!1842 = !DILocation(line: 67, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !425, line: 67, column: 9)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !425, line: 66, column: 40)
!1845 = !DILocation(line: 67, scope: !1843)
!1846 = !DILocalVariable(name: "c", scope: !1843, file: !425, line: 67, type: !45)
!1847 = !DILocation(line: 0, scope: !1843)
!1848 = !DILocation(line: 67, column: 27, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !425, line: 67, column: 9)
!1850 = !DILocation(line: 68, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !425, line: 68, column: 13)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !425, line: 67, column: 44)
!1853 = !DILocation(line: 68, scope: !1851)
!1854 = !DILocalVariable(name: "k", scope: !1851, file: !425, line: 68, type: !45)
!1855 = !DILocation(line: 0, scope: !1851)
!1856 = !DILocation(line: 68, column: 31, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !425, line: 68, column: 13)
!1858 = !DILocation(line: 69, column: 70, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1857, file: !425, line: 68, column: 54)
!1860 = !DILocation(line: 69, column: 84, scope: !1859)
!1861 = !DILocation(line: 69, column: 51, scope: !1859)
!1862 = !DILocation(line: 69, column: 96, scope: !1859)
!1863 = !DILocation(line: 69, column: 90, scope: !1859)
!1864 = !DILocation(line: 69, column: 136, scope: !1859)
!1865 = !DILocation(line: 69, column: 150, scope: !1859)
!1866 = !DILocation(line: 69, column: 117, scope: !1859)
!1867 = !DILocation(line: 69, column: 17, scope: !1859)
!1868 = !DILocation(line: 68, column: 48, scope: !1857)
!1869 = !DILocation(line: 68, column: 13, scope: !1857)
!1870 = distinct !{!1870, !1850, !1871, !244}
!1871 = !DILocation(line: 70, column: 13, scope: !1851)
!1872 = !DILocation(line: 67, column: 40, scope: !1849)
!1873 = !DILocation(line: 67, column: 9, scope: !1849)
!1874 = distinct !{!1874, !1842, !1875, !244}
!1875 = !DILocation(line: 71, column: 9, scope: !1843)
!1876 = !DILocation(line: 66, column: 36, scope: !1840)
!1877 = !DILocation(line: 66, column: 5, scope: !1840)
!1878 = distinct !{!1878, !1841, !1879, !244}
!1879 = !DILocation(line: 72, column: 5, scope: !1835)
!1880 = !DILocation(line: 73, column: 1, scope: !1825)
!1881 = distinct !DISubprogram(name: "P1_times_Vt", scope: !425, file: !425, line: 86, type: !471, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1882 = !DILocalVariable(name: "p", arg: 1, scope: !1881, file: !425, line: 86, type: !278)
!1883 = !DILocation(line: 0, scope: !1881)
!1884 = !DILocalVariable(name: "P1", arg: 2, scope: !1881, file: !425, line: 86, type: !428)
!1885 = !DILocalVariable(name: "V", arg: 3, scope: !1881, file: !425, line: 86, type: !49)
!1886 = !DILocalVariable(name: "acc", arg: 4, scope: !1881, file: !425, line: 86, type: !5)
!1887 = !DILocation(line: 90, column: 5, scope: !1881)
!1888 = !DILocation(line: 92, column: 1, scope: !1881)
!1889 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !425, file: !425, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1890 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1889, file: !425, line: 32, type: !343)
!1891 = !DILocation(line: 0, scope: !1889)
!1892 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1889, file: !425, line: 32, type: !428)
!1893 = !DILocalVariable(name: "mat", arg: 3, scope: !1889, file: !425, line: 32, type: !49)
!1894 = !DILocalVariable(name: "acc", arg: 4, scope: !1889, file: !425, line: 32, type: !5)
!1895 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1889, file: !425, line: 33, type: !343)
!1896 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1889, file: !425, line: 33, type: !343)
!1897 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1889, file: !425, line: 33, type: !343)
!1898 = !DILocalVariable(name: "triangular", arg: 8, scope: !1889, file: !425, line: 33, type: !343)
!1899 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1889, file: !425, line: 34, type: !45)
!1900 = !DILocalVariable(name: "r", scope: !1901, file: !425, line: 35, type: !45)
!1901 = distinct !DILexicalBlock(scope: !1889, file: !425, line: 35, column: 5)
!1902 = !DILocation(line: 0, scope: !1901)
!1903 = !DILocation(line: 35, column: 10, scope: !1901)
!1904 = !DILocation(line: 34, column: 9, scope: !1889)
!1905 = !DILocation(line: 35, scope: !1901)
!1906 = !DILocation(line: 35, column: 23, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !425, line: 35, column: 5)
!1908 = !DILocation(line: 35, column: 5, scope: !1901)
!1909 = !DILocation(line: 36, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !425, line: 36, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !425, line: 35, column: 43)
!1912 = !DILocation(line: 36, scope: !1910)
!1913 = !DILocalVariable(name: "c", scope: !1910, file: !425, line: 36, type: !45)
!1914 = !DILocation(line: 0, scope: !1910)
!1915 = !DILocation(line: 36, column: 40, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !425, line: 36, column: 9)
!1917 = !DILocation(line: 37, column: 13, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !425, line: 37, column: 13)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !425, line: 36, column: 60)
!1920 = !DILocation(line: 37, scope: !1918)
!1921 = !DILocalVariable(name: "k", scope: !1918, file: !425, line: 37, type: !45)
!1922 = !DILocation(line: 0, scope: !1918)
!1923 = !DILocation(line: 37, column: 31, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !425, line: 37, column: 13)
!1925 = !DILocation(line: 38, column: 51, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1924, file: !425, line: 37, column: 51)
!1927 = !DILocation(line: 38, column: 94, scope: !1926)
!1928 = !DILocation(line: 38, column: 88, scope: !1926)
!1929 = !DILocation(line: 38, column: 137, scope: !1926)
!1930 = !DILocation(line: 38, column: 148, scope: !1926)
!1931 = !DILocation(line: 38, column: 118, scope: !1926)
!1932 = !DILocation(line: 38, column: 17, scope: !1926)
!1933 = !DILocation(line: 37, column: 45, scope: !1924)
!1934 = !DILocation(line: 37, column: 13, scope: !1924)
!1935 = distinct !{!1935, !1917, !1936, !244}
!1936 = !DILocation(line: 39, column: 13, scope: !1918)
!1937 = !DILocation(line: 40, column: 33, scope: !1919)
!1938 = !DILocation(line: 36, column: 56, scope: !1916)
!1939 = !DILocation(line: 36, column: 9, scope: !1916)
!1940 = distinct !{!1940, !1909, !1941, !244}
!1941 = !DILocation(line: 41, column: 9, scope: !1910)
!1942 = !DILocation(line: 35, column: 39, scope: !1907)
!1943 = !DILocation(line: 35, column: 5, scope: !1907)
!1944 = distinct !{!1944, !1908, !1945, !244}
!1945 = !DILocation(line: 42, column: 5, scope: !1901)
!1946 = !DILocation(line: 43, column: 1, scope: !1889)
!1947 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !25, file: !25, line: 515, type: !802, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1948 = !DILocalVariable(name: "p", arg: 1, scope: !1947, file: !25, line: 515, type: !278)
!1949 = !DILocation(line: 0, scope: !1947)
!1950 = !DILocalVariable(name: "sm", arg: 2, scope: !1947, file: !25, line: 515, type: !18)
!1951 = !DILocalVariable(name: "smlen", arg: 3, scope: !1947, file: !25, line: 515, type: !804)
!1952 = !DILocalVariable(name: "m", arg: 4, scope: !1947, file: !25, line: 516, type: !49)
!1953 = !DILocalVariable(name: "mlen", arg: 5, scope: !1947, file: !25, line: 516, type: !15)
!1954 = !DILocalVariable(name: "csk", arg: 6, scope: !1947, file: !25, line: 516, type: !49)
!1955 = !DILocalVariable(name: "ret", scope: !1947, file: !25, line: 517, type: !45)
!1956 = !DILocalVariable(name: "param_sig_bytes", scope: !1947, file: !25, line: 518, type: !343)
!1957 = !DILocation(line: 520, column: 14, scope: !1947)
!1958 = !DILocation(line: 520, column: 3, scope: !1947)
!1959 = !DILocation(line: 521, column: 48, scope: !1947)
!1960 = !DILocalVariable(name: "siglen", scope: !1947, file: !25, line: 519, type: !15)
!1961 = !DILocation(line: 521, column: 9, scope: !1947)
!1962 = !DILocation(line: 522, column: 22, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !25, line: 522, column: 7)
!1964 = !DILocation(line: 523, column: 19, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1963, file: !25, line: 522, column: 60)
!1966 = !DILocation(line: 523, column: 26, scope: !1965)
!1967 = !DILocation(line: 523, column: 5, scope: !1965)
!1968 = !DILocation(line: 524, column: 5, scope: !1965)
!1969 = !DILocation(line: 527, column: 12, scope: !1947)
!1970 = !DILocation(line: 527, column: 19, scope: !1947)
!1971 = !DILocation(line: 527, column: 10, scope: !1947)
!1972 = !DILocation(line: 527, column: 3, scope: !1947)
!1973 = !DILabel(scope: !1947, name: "err", file: !25, line: 528)
!1974 = !DILocation(line: 528, column: 1, scope: !1947)
!1975 = !DILocation(line: 529, column: 3, scope: !1947)
!1976 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !25, file: !25, line: 532, type: !802, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1977 = !DILocalVariable(name: "p", arg: 1, scope: !1976, file: !25, line: 532, type: !278)
!1978 = !DILocation(line: 0, scope: !1976)
!1979 = !DILocalVariable(name: "m", arg: 2, scope: !1976, file: !25, line: 532, type: !18)
!1980 = !DILocalVariable(name: "mlen", arg: 3, scope: !1976, file: !25, line: 532, type: !804)
!1981 = !DILocalVariable(name: "sm", arg: 4, scope: !1976, file: !25, line: 533, type: !49)
!1982 = !DILocalVariable(name: "smlen", arg: 5, scope: !1976, file: !25, line: 533, type: !15)
!1983 = !DILocalVariable(name: "pk", arg: 6, scope: !1976, file: !25, line: 533, type: !49)
!1984 = !DILocalVariable(name: "param_sig_bytes", scope: !1976, file: !25, line: 534, type: !343)
!1985 = !DILocation(line: 535, column: 13, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1976, file: !25, line: 535, column: 7)
!1987 = !DILocation(line: 539, column: 25, scope: !1976)
!1988 = !DILocation(line: 539, column: 50, scope: !1976)
!1989 = !DILocation(line: 539, column: 7, scope: !1976)
!1990 = !DILocalVariable(name: "result", scope: !1976, file: !25, line: 538, type: !45)
!1991 = !DILocation(line: 541, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1976, file: !25, line: 541, column: 7)
!1993 = !DILocation(line: 542, column: 19, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1992, file: !25, line: 541, column: 26)
!1995 = !DILocation(line: 542, column: 11, scope: !1994)
!1996 = !DILocation(line: 543, column: 19, scope: !1994)
!1997 = !DILocation(line: 543, column: 5, scope: !1994)
!1998 = !DILocation(line: 544, column: 3, scope: !1994)
!1999 = !DILocation(line: 547, column: 1, scope: !1976)
!2000 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !25, file: !25, line: 631, type: !2001, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!45, !278, !49, !15, !49, !49}
!2003 = !DILocalVariable(name: "p", arg: 1, scope: !2000, file: !25, line: 631, type: !278)
!2004 = !DILocation(line: 0, scope: !2000)
!2005 = !DILocalVariable(name: "m", arg: 2, scope: !2000, file: !25, line: 631, type: !49)
!2006 = !DILocalVariable(name: "mlen", arg: 3, scope: !2000, file: !25, line: 631, type: !15)
!2007 = !DILocalVariable(name: "sig", arg: 4, scope: !2000, file: !25, line: 632, type: !49)
!2008 = !DILocalVariable(name: "cpk", arg: 5, scope: !2000, file: !25, line: 632, type: !49)
!2009 = !DILocalVariable(name: "tEnc", scope: !2000, file: !25, line: 633, type: !814)
!2010 = !DILocation(line: 633, column: 17, scope: !2000)
!2011 = !DILocalVariable(name: "t", scope: !2000, file: !25, line: 634, type: !819)
!2012 = !DILocation(line: 634, column: 17, scope: !2000)
!2013 = !DILocalVariable(name: "y", scope: !2000, file: !25, line: 635, type: !2014)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1728, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 216)
!2017 = !DILocation(line: 635, column: 17, scope: !2000)
!2018 = !DILocalVariable(name: "s", scope: !2000, file: !25, line: 636, type: !843)
!2019 = !DILocation(line: 636, column: 17, scope: !2000)
!2020 = !DILocalVariable(name: "pk", scope: !2000, file: !25, line: 637, type: !180)
!2021 = !DILocation(line: 637, column: 12, scope: !2000)
!2022 = !DILocalVariable(name: "tmp", scope: !2000, file: !25, line: 638, type: !2023)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !2024)
!2024 = !{!2025}
!2025 = !DISubrange(count: 80)
!2026 = !DILocation(line: 638, column: 17, scope: !2000)
!2027 = !DILocalVariable(name: "param_m", scope: !2000, file: !25, line: 640, type: !343)
!2028 = !DILocalVariable(name: "param_n", scope: !2000, file: !25, line: 641, type: !343)
!2029 = !DILocalVariable(name: "param_k", scope: !2000, file: !25, line: 642, type: !343)
!2030 = !DILocalVariable(name: "param_m_bytes", scope: !2000, file: !25, line: 643, type: !343)
!2031 = !DILocalVariable(name: "param_sig_bytes", scope: !2000, file: !25, line: 644, type: !343)
!2032 = !DILocalVariable(name: "param_digest_bytes", scope: !2000, file: !25, line: 645, type: !343)
!2033 = !DILocalVariable(name: "param_salt_bytes", scope: !2000, file: !25, line: 646, type: !343)
!2034 = !DILocation(line: 648, column: 13, scope: !2000)
!2035 = !DILocalVariable(name: "ret", scope: !2000, file: !25, line: 648, type: !45)
!2036 = !DILocalVariable(name: "P1", scope: !2000, file: !25, line: 653, type: !5)
!2037 = !DILocation(line: 654, column: 21, scope: !2000)
!2038 = !DILocalVariable(name: "P2", scope: !2000, file: !25, line: 654, type: !5)
!2039 = !DILocation(line: 655, column: 21, scope: !2000)
!2040 = !DILocalVariable(name: "P3", scope: !2000, file: !25, line: 655, type: !5)
!2041 = !DILocation(line: 670, column: 3, scope: !2000)
!2042 = !DILocation(line: 673, column: 14, scope: !2000)
!2043 = !DILocation(line: 673, column: 58, scope: !2000)
!2044 = !DILocation(line: 673, column: 3, scope: !2000)
!2045 = !DILocation(line: 675, column: 3, scope: !2000)
!2046 = !DILocation(line: 676, column: 3, scope: !2000)
!2047 = !DILocation(line: 679, column: 3, scope: !2000)
!2048 = !DILocation(line: 681, column: 3, scope: !2000)
!2049 = !DILocation(line: 683, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2000, file: !25, line: 683, column: 7)
!2051 = !DILocation(line: 683, column: 29, scope: !2050)
!2052 = !DILocation(line: 687, column: 1, scope: !2000)
!2053 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !25, file: !25, line: 620, type: !705, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2054 = !DILocalVariable(name: "p", arg: 1, scope: !2053, file: !25, line: 620, type: !278)
!2055 = !DILocation(line: 0, scope: !2053)
!2056 = !DILocalVariable(name: "cpk", arg: 2, scope: !2053, file: !25, line: 620, type: !49)
!2057 = !DILocalVariable(name: "pk", arg: 3, scope: !2053, file: !25, line: 621, type: !5)
!2058 = !DILocation(line: 622, column: 3, scope: !2053)
!2059 = !DILocation(line: 624, column: 21, scope: !2053)
!2060 = !DILocation(line: 625, column: 40, scope: !2053)
!2061 = !DILocation(line: 624, column: 3, scope: !2053)
!2062 = !DILocation(line: 628, column: 3, scope: !2053)
!2063 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 300, type: !2064, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !278, !49, !428, !428, !428, !18}
!2066 = !DILocalVariable(name: "p", arg: 1, scope: !2063, file: !25, line: 300, type: !278)
!2067 = !DILocation(line: 0, scope: !2063)
!2068 = !DILocalVariable(name: "s", arg: 2, scope: !2063, file: !25, line: 300, type: !49)
!2069 = !DILocalVariable(name: "P1", arg: 3, scope: !2063, file: !25, line: 301, type: !428)
!2070 = !DILocalVariable(name: "P2", arg: 4, scope: !2063, file: !25, line: 301, type: !428)
!2071 = !DILocalVariable(name: "P3", arg: 5, scope: !2063, file: !25, line: 302, type: !428)
!2072 = !DILocalVariable(name: "eval", arg: 6, scope: !2063, file: !25, line: 302, type: !18)
!2073 = !DILocalVariable(name: "SPS", scope: !2063, file: !25, line: 303, type: !2074)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 54208, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 847)
!2077 = !DILocation(line: 303, column: 12, scope: !2063)
!2078 = !DILocation(line: 305, column: 3, scope: !2063)
!2079 = !DILocalVariable(name: "zero", scope: !2063, file: !25, line: 306, type: !819)
!2080 = !DILocation(line: 306, column: 17, scope: !2063)
!2081 = !DILocation(line: 307, column: 3, scope: !2063)
!2082 = !DILocation(line: 308, column: 1, scope: !2063)
!2083 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !425, file: !425, line: 287, type: !2084, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !278, !428, !428, !428, !49, !5}
!2086 = !DILocalVariable(name: "p", arg: 1, scope: !2083, file: !425, line: 287, type: !278)
!2087 = !DILocation(line: 0, scope: !2083)
!2088 = !DILocalVariable(name: "P1", arg: 2, scope: !2083, file: !425, line: 287, type: !428)
!2089 = !DILocalVariable(name: "P2", arg: 3, scope: !2083, file: !425, line: 287, type: !428)
!2090 = !DILocalVariable(name: "P3", arg: 4, scope: !2083, file: !425, line: 287, type: !428)
!2091 = !DILocalVariable(name: "s", arg: 5, scope: !2083, file: !425, line: 287, type: !49)
!2092 = !DILocalVariable(name: "SPS", arg: 6, scope: !2083, file: !425, line: 288, type: !5)
!2093 = !DILocalVariable(name: "PS", scope: !2083, file: !425, line: 296, type: !2094)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 581504, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 9086)
!2097 = !DILocation(line: 296, column: 14, scope: !2083)
!2098 = !DILocation(line: 297, column: 5, scope: !2083)
!2099 = !DILocation(line: 300, column: 5, scope: !2083)
!2100 = !DILocation(line: 302, column: 1, scope: !2083)
!2101 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !425, file: !425, line: 156, type: !2102, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !428, !428, !428, !49, !343, !343, !343, !343, !5}
!2104 = !DILocalVariable(name: "P1", arg: 1, scope: !2101, file: !425, line: 156, type: !428)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocalVariable(name: "P2", arg: 2, scope: !2101, file: !425, line: 156, type: !428)
!2107 = !DILocalVariable(name: "P3", arg: 3, scope: !2101, file: !425, line: 156, type: !428)
!2108 = !DILocalVariable(name: "S", arg: 4, scope: !2101, file: !425, line: 156, type: !49)
!2109 = !DILocalVariable(name: "m", arg: 5, scope: !2101, file: !425, line: 157, type: !343)
!2110 = !DILocalVariable(name: "v", arg: 6, scope: !2101, file: !425, line: 157, type: !343)
!2111 = !DILocalVariable(name: "o", arg: 7, scope: !2101, file: !425, line: 157, type: !343)
!2112 = !DILocalVariable(name: "k", arg: 8, scope: !2101, file: !425, line: 157, type: !343)
!2113 = !DILocalVariable(name: "PS", arg: 9, scope: !2101, file: !425, line: 157, type: !5)
!2114 = !DILocalVariable(name: "n", scope: !2101, file: !425, line: 159, type: !343)
!2115 = !DILocalVariable(name: "m_vec_limbs", scope: !2101, file: !425, line: 160, type: !343)
!2116 = !DILocalVariable(name: "accumulator", scope: !2101, file: !425, line: 162, type: !2117)
!2117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 9304064, elements: !2118)
!2118 = !{!2119}
!2119 = !DISubrange(count: 145376)
!2120 = !DILocation(line: 162, column: 14, scope: !2101)
!2121 = !DILocalVariable(name: "P1_used", scope: !2101, file: !425, line: 163, type: !45)
!2122 = !DILocalVariable(name: "row", scope: !2123, file: !425, line: 164, type: !45)
!2123 = distinct !DILexicalBlock(scope: !2101, file: !425, line: 164, column: 5)
!2124 = !DILocation(line: 0, scope: !2123)
!2125 = !DILocation(line: 164, column: 10, scope: !2123)
!2126 = !DILocation(line: 163, column: 9, scope: !2101)
!2127 = !DILocation(line: 164, scope: !2123)
!2128 = !DILocation(line: 164, column: 27, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2123, file: !425, line: 164, column: 5)
!2130 = !DILocation(line: 164, column: 5, scope: !2123)
!2131 = !DILocation(line: 165, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !425, line: 165, column: 9)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !425, line: 164, column: 39)
!2134 = !DILocation(line: 180, column: 5, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2101, file: !425, line: 180, column: 5)
!2136 = !DILocation(line: 165, scope: !2132)
!2137 = !DILocalVariable(name: "j", scope: !2132, file: !425, line: 165, type: !45)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !DILocation(line: 165, column: 29, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !425, line: 165, column: 9)
!2141 = !DILocation(line: 172, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !425, line: 172, column: 9)
!2143 = !DILocation(line: 166, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !425, line: 166, column: 13)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !425, line: 165, column: 39)
!2146 = !DILocation(line: 166, scope: !2144)
!2147 = !DILocalVariable(name: "col", scope: !2144, file: !425, line: 166, type: !45)
!2148 = !DILocation(line: 0, scope: !2144)
!2149 = !DILocation(line: 166, column: 35, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !425, line: 166, column: 13)
!2151 = !DILocation(line: 167, column: 43, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2150, file: !425, line: 166, column: 47)
!2153 = !DILocation(line: 167, column: 91, scope: !2152)
!2154 = !DILocation(line: 167, column: 95, scope: !2152)
!2155 = !DILocation(line: 167, column: 102, scope: !2152)
!2156 = !DILocation(line: 167, column: 115, scope: !2152)
!2157 = !DILocation(line: 167, column: 109, scope: !2152)
!2158 = !DILocation(line: 167, column: 107, scope: !2152)
!2159 = !DILocation(line: 167, column: 82, scope: !2152)
!2160 = !DILocation(line: 167, column: 17, scope: !2152)
!2161 = !DILocation(line: 166, column: 43, scope: !2150)
!2162 = !DILocation(line: 166, column: 13, scope: !2150)
!2163 = distinct !{!2163, !2143, !2164, !244}
!2164 = !DILocation(line: 168, column: 13, scope: !2144)
!2165 = !DILocation(line: 169, column: 21, scope: !2145)
!2166 = !DILocation(line: 165, column: 35, scope: !2140)
!2167 = !DILocation(line: 165, column: 9, scope: !2140)
!2168 = distinct !{!2168, !2131, !2169, !244}
!2169 = !DILocation(line: 170, column: 9, scope: !2132)
!2170 = !DILocation(line: 172, scope: !2142)
!2171 = !DILocalVariable(name: "j", scope: !2142, file: !425, line: 172, type: !45)
!2172 = !DILocation(line: 0, scope: !2142)
!2173 = !DILocation(line: 172, column: 27, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2142, file: !425, line: 172, column: 9)
!2175 = !DILocation(line: 173, column: 13, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !425, line: 173, column: 13)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !425, line: 172, column: 37)
!2178 = !DILocation(line: 173, scope: !2176)
!2179 = !DILocalVariable(name: "col", scope: !2176, file: !425, line: 173, type: !45)
!2180 = !DILocation(line: 0, scope: !2176)
!2181 = !DILocation(line: 173, column: 35, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !425, line: 173, column: 13)
!2183 = !DILocation(line: 174, column: 50, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2182, file: !425, line: 173, column: 47)
!2185 = !DILocation(line: 174, column: 54, scope: !2184)
!2186 = !DILocation(line: 174, column: 43, scope: !2184)
!2187 = !DILocation(line: 174, column: 93, scope: !2184)
!2188 = !DILocation(line: 174, column: 97, scope: !2184)
!2189 = !DILocation(line: 174, column: 104, scope: !2184)
!2190 = !DILocation(line: 174, column: 118, scope: !2184)
!2191 = !DILocation(line: 174, column: 111, scope: !2184)
!2192 = !DILocation(line: 174, column: 109, scope: !2184)
!2193 = !DILocation(line: 174, column: 84, scope: !2184)
!2194 = !DILocation(line: 174, column: 17, scope: !2184)
!2195 = !DILocation(line: 173, column: 43, scope: !2182)
!2196 = !DILocation(line: 173, column: 13, scope: !2182)
!2197 = distinct !{!2197, !2175, !2198, !244}
!2198 = !DILocation(line: 175, column: 13, scope: !2176)
!2199 = !DILocation(line: 172, column: 33, scope: !2174)
!2200 = !DILocation(line: 172, column: 9, scope: !2174)
!2201 = distinct !{!2201, !2141, !2202, !244}
!2202 = !DILocation(line: 176, column: 9, scope: !2142)
!2203 = !DILocation(line: 164, column: 35, scope: !2129)
!2204 = !DILocation(line: 164, column: 5, scope: !2129)
!2205 = distinct !{!2205, !2130, !2206, !244}
!2206 = !DILocation(line: 177, column: 5, scope: !2123)
!2207 = !DILocation(line: 179, column: 9, scope: !2101)
!2208 = !DILocation(line: 180, scope: !2135)
!2209 = !DILocalVariable(name: "row", scope: !2135, file: !425, line: 180, type: !45)
!2210 = !DILocation(line: 0, scope: !2135)
!2211 = !DILocalVariable(name: "P3_used", scope: !2101, file: !425, line: 179, type: !45)
!2212 = !DILocation(line: 180, column: 27, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2135, file: !425, line: 180, column: 5)
!2214 = !DILocation(line: 181, column: 9, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !425, line: 181, column: 9)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !425, line: 180, column: 39)
!2217 = !DILocation(line: 191, column: 5, scope: !2101)
!2218 = !DILocation(line: 181, scope: !2215)
!2219 = !DILocalVariable(name: "j", scope: !2215, file: !425, line: 181, type: !45)
!2220 = !DILocation(line: 0, scope: !2215)
!2221 = !DILocation(line: 181, column: 29, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2215, file: !425, line: 181, column: 9)
!2223 = !DILocation(line: 182, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !425, line: 182, column: 13)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !425, line: 181, column: 39)
!2226 = !DILocation(line: 182, scope: !2224)
!2227 = !DILocalVariable(name: "col", scope: !2224, file: !425, line: 182, type: !45)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 182, column: 35, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !425, line: 182, column: 13)
!2231 = !DILocation(line: 183, column: 43, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !425, line: 182, column: 47)
!2233 = !DILocation(line: 183, column: 89, scope: !2232)
!2234 = !DILocation(line: 183, column: 93, scope: !2232)
!2235 = !DILocation(line: 183, column: 100, scope: !2232)
!2236 = !DILocation(line: 183, column: 113, scope: !2232)
!2237 = !DILocation(line: 183, column: 107, scope: !2232)
!2238 = !DILocation(line: 183, column: 105, scope: !2232)
!2239 = !DILocation(line: 183, column: 80, scope: !2232)
!2240 = !DILocation(line: 183, column: 17, scope: !2232)
!2241 = !DILocation(line: 182, column: 43, scope: !2230)
!2242 = !DILocation(line: 182, column: 13, scope: !2230)
!2243 = distinct !{!2243, !2223, !2244, !244}
!2244 = !DILocation(line: 184, column: 13, scope: !2224)
!2245 = !DILocation(line: 185, column: 21, scope: !2225)
!2246 = !DILocation(line: 181, column: 35, scope: !2222)
!2247 = !DILocation(line: 181, column: 9, scope: !2222)
!2248 = distinct !{!2248, !2214, !2249, !244}
!2249 = !DILocation(line: 186, column: 9, scope: !2215)
!2250 = !DILocation(line: 180, column: 35, scope: !2213)
!2251 = !DILocation(line: 180, column: 5, scope: !2213)
!2252 = distinct !{!2252, !2134, !2253, !244}
!2253 = !DILocation(line: 187, column: 5, scope: !2135)
!2254 = !DILocalVariable(name: "i", scope: !2101, file: !425, line: 190, type: !45)
!2255 = !DILocation(line: 191, column: 14, scope: !2101)
!2256 = !DILocation(line: 192, column: 54, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2101, file: !425, line: 191, column: 23)
!2258 = !DILocation(line: 192, column: 81, scope: !2257)
!2259 = !DILocation(line: 192, column: 9, scope: !2257)
!2260 = !DILocation(line: 193, column: 10, scope: !2257)
!2261 = distinct !{!2261, !2217, !2262, !244}
!2262 = !DILocation(line: 194, column: 5, scope: !2101)
!2263 = !DILocation(line: 196, column: 1, scope: !2101)
!2264 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !425, file: !425, line: 200, type: !2265, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !428, !49, !45, !45, !45, !5}
!2267 = !DILocalVariable(name: "PS", arg: 1, scope: !2264, file: !425, line: 200, type: !428)
!2268 = !DILocation(line: 0, scope: !2264)
!2269 = !DILocalVariable(name: "S", arg: 2, scope: !2264, file: !425, line: 200, type: !49)
!2270 = !DILocalVariable(name: "m", arg: 3, scope: !2264, file: !425, line: 200, type: !45)
!2271 = !DILocalVariable(name: "k", arg: 4, scope: !2264, file: !425, line: 200, type: !45)
!2272 = !DILocalVariable(name: "n", arg: 5, scope: !2264, file: !425, line: 200, type: !45)
!2273 = !DILocalVariable(name: "SPS", arg: 6, scope: !2264, file: !425, line: 200, type: !5)
!2274 = !DILocalVariable(name: "accumulator", scope: !2264, file: !425, line: 201, type: !2275)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 867328, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 13552)
!2278 = !DILocation(line: 201, column: 14, scope: !2264)
!2279 = !DILocalVariable(name: "m_vec_limbs", scope: !2264, file: !425, line: 202, type: !343)
!2280 = !DILocalVariable(name: "row", scope: !2281, file: !425, line: 203, type: !45)
!2281 = distinct !DILexicalBlock(scope: !2264, file: !425, line: 203, column: 5)
!2282 = !DILocation(line: 0, scope: !2281)
!2283 = !DILocation(line: 203, column: 10, scope: !2281)
!2284 = !DILocation(line: 203, scope: !2281)
!2285 = !DILocation(line: 203, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !425, line: 203, column: 5)
!2287 = !DILocation(line: 203, column: 5, scope: !2281)
!2288 = !DILocation(line: 204, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !425, line: 204, column: 9)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !425, line: 203, column: 39)
!2291 = !DILocation(line: 213, column: 5, scope: !2264)
!2292 = !DILocation(line: 204, scope: !2289)
!2293 = !DILocalVariable(name: "j", scope: !2289, file: !425, line: 204, type: !45)
!2294 = !DILocation(line: 0, scope: !2289)
!2295 = !DILocation(line: 204, column: 27, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !425, line: 204, column: 9)
!2297 = !DILocation(line: 205, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !425, line: 205, column: 13)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !425, line: 204, column: 37)
!2300 = !DILocation(line: 205, scope: !2298)
!2301 = !DILocalVariable(name: "col", scope: !2298, file: !425, line: 205, type: !45)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 205, column: 35, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !425, line: 205, column: 13)
!2305 = !DILocation(line: 206, column: 52, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2304, file: !425, line: 205, column: 50)
!2307 = !DILocation(line: 206, column: 56, scope: !2306)
!2308 = !DILocation(line: 206, column: 47, scope: !2306)
!2309 = !DILocation(line: 206, column: 99, scope: !2306)
!2310 = !DILocation(line: 206, column: 103, scope: !2306)
!2311 = !DILocation(line: 206, column: 110, scope: !2306)
!2312 = !DILocation(line: 206, column: 123, scope: !2306)
!2313 = !DILocation(line: 206, column: 117, scope: !2306)
!2314 = !DILocation(line: 206, column: 115, scope: !2306)
!2315 = !DILocation(line: 206, column: 90, scope: !2306)
!2316 = !DILocation(line: 206, column: 21, scope: !2306)
!2317 = !DILocation(line: 205, column: 44, scope: !2304)
!2318 = !DILocation(line: 205, column: 13, scope: !2304)
!2319 = distinct !{!2319, !2297, !2320, !244}
!2320 = !DILocation(line: 207, column: 13, scope: !2298)
!2321 = !DILocation(line: 204, column: 33, scope: !2296)
!2322 = !DILocation(line: 204, column: 9, scope: !2296)
!2323 = distinct !{!2323, !2288, !2324, !244}
!2324 = !DILocation(line: 208, column: 9, scope: !2289)
!2325 = !DILocation(line: 203, column: 35, scope: !2286)
!2326 = !DILocation(line: 203, column: 5, scope: !2286)
!2327 = distinct !{!2327, !2287, !2328, !244}
!2328 = !DILocation(line: 209, column: 5, scope: !2281)
!2329 = !DILocalVariable(name: "i", scope: !2264, file: !425, line: 212, type: !45)
!2330 = !DILocation(line: 213, column: 14, scope: !2264)
!2331 = !DILocation(line: 214, column: 54, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2264, file: !425, line: 213, column: 21)
!2333 = !DILocation(line: 214, column: 82, scope: !2332)
!2334 = !DILocation(line: 214, column: 9, scope: !2332)
!2335 = !DILocation(line: 215, column: 10, scope: !2332)
!2336 = distinct !{!2336, !2291, !2337, !244}
!2337 = !DILocation(line: 216, column: 5, scope: !2264)
!2338 = !DILocation(line: 217, column: 1, scope: !2264)
!2339 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2340, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !45, !428, !5}
!2342 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2339, file: !539, line: 22, type: !45)
!2343 = !DILocation(line: 0, scope: !2339)
!2344 = !DILocalVariable(name: "in", arg: 2, scope: !2339, file: !539, line: 22, type: !428)
!2345 = !DILocalVariable(name: "acc", arg: 3, scope: !2339, file: !539, line: 22, type: !5)
!2346 = !DILocalVariable(name: "i", scope: !2347, file: !539, line: 24, type: !15)
!2347 = distinct !DILexicalBlock(scope: !2339, file: !539, line: 24, column: 5)
!2348 = !DILocation(line: 0, scope: !2347)
!2349 = !DILocation(line: 24, column: 10, scope: !2347)
!2350 = !DILocation(line: 24, scope: !2347)
!2351 = !DILocation(line: 24, column: 26, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !539, line: 24, column: 5)
!2353 = !DILocation(line: 24, column: 5, scope: !2347)
!2354 = !DILocation(line: 26, column: 19, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !539, line: 25, column: 5)
!2356 = !DILocation(line: 26, column: 9, scope: !2355)
!2357 = !DILocation(line: 26, column: 16, scope: !2355)
!2358 = !DILocation(line: 24, column: 46, scope: !2352)
!2359 = !DILocation(line: 24, column: 5, scope: !2352)
!2360 = distinct !{!2360, !2353, !2361, !244}
!2361 = !DILocation(line: 27, column: 5, scope: !2347)
!2362 = !DILocation(line: 28, column: 1, scope: !2339)
!2363 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !539, file: !539, line: 67, type: !2364, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !45, !5, !5}
!2366 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2363, file: !539, line: 67, type: !45)
!2367 = !DILocation(line: 0, scope: !2363)
!2368 = !DILocalVariable(name: "bins", arg: 2, scope: !2363, file: !539, line: 67, type: !5)
!2369 = !DILocalVariable(name: "out", arg: 3, scope: !2363, file: !539, line: 67, type: !5)
!2370 = !DILocation(line: 68, column: 44, scope: !2363)
!2371 = !DILocation(line: 68, column: 73, scope: !2363)
!2372 = !DILocation(line: 68, column: 5, scope: !2363)
!2373 = !DILocation(line: 69, column: 40, scope: !2363)
!2374 = !DILocation(line: 69, column: 69, scope: !2363)
!2375 = !DILocation(line: 69, column: 5, scope: !2363)
!2376 = !DILocation(line: 70, column: 44, scope: !2363)
!2377 = !DILocation(line: 70, column: 74, scope: !2363)
!2378 = !DILocation(line: 70, column: 5, scope: !2363)
!2379 = !DILocation(line: 71, column: 40, scope: !2363)
!2380 = !DILocation(line: 71, column: 69, scope: !2363)
!2381 = !DILocation(line: 71, column: 5, scope: !2363)
!2382 = !DILocation(line: 72, column: 44, scope: !2363)
!2383 = !DILocation(line: 72, column: 73, scope: !2363)
!2384 = !DILocation(line: 72, column: 5, scope: !2363)
!2385 = !DILocation(line: 73, column: 40, scope: !2363)
!2386 = !DILocation(line: 73, column: 69, scope: !2363)
!2387 = !DILocation(line: 73, column: 5, scope: !2363)
!2388 = !DILocation(line: 74, column: 44, scope: !2363)
!2389 = !DILocation(line: 74, column: 74, scope: !2363)
!2390 = !DILocation(line: 74, column: 5, scope: !2363)
!2391 = !DILocation(line: 75, column: 40, scope: !2363)
!2392 = !DILocation(line: 75, column: 69, scope: !2363)
!2393 = !DILocation(line: 75, column: 5, scope: !2363)
!2394 = !DILocation(line: 76, column: 44, scope: !2363)
!2395 = !DILocation(line: 76, column: 74, scope: !2363)
!2396 = !DILocation(line: 76, column: 5, scope: !2363)
!2397 = !DILocation(line: 77, column: 40, scope: !2363)
!2398 = !DILocation(line: 77, column: 69, scope: !2363)
!2399 = !DILocation(line: 77, column: 5, scope: !2363)
!2400 = !DILocation(line: 78, column: 44, scope: !2363)
!2401 = !DILocation(line: 78, column: 74, scope: !2363)
!2402 = !DILocation(line: 78, column: 5, scope: !2363)
!2403 = !DILocation(line: 79, column: 40, scope: !2363)
!2404 = !DILocation(line: 79, column: 69, scope: !2363)
!2405 = !DILocation(line: 79, column: 5, scope: !2363)
!2406 = !DILocation(line: 80, column: 44, scope: !2363)
!2407 = !DILocation(line: 80, column: 74, scope: !2363)
!2408 = !DILocation(line: 80, column: 5, scope: !2363)
!2409 = !DILocation(line: 81, column: 40, scope: !2363)
!2410 = !DILocation(line: 81, column: 69, scope: !2363)
!2411 = !DILocation(line: 81, column: 5, scope: !2363)
!2412 = !DILocation(line: 82, column: 35, scope: !2363)
!2413 = !DILocation(line: 82, column: 5, scope: !2363)
!2414 = !DILocation(line: 83, column: 1, scope: !2363)
!2415 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !539, file: !539, line: 57, type: !2340, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2416 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2415, file: !539, line: 57, type: !45)
!2417 = !DILocation(line: 0, scope: !2415)
!2418 = !DILocalVariable(name: "in", arg: 2, scope: !2415, file: !539, line: 57, type: !428)
!2419 = !DILocalVariable(name: "acc", arg: 3, scope: !2415, file: !539, line: 57, type: !5)
!2420 = !DILocalVariable(name: "mask_lsb", scope: !2415, file: !539, line: 59, type: !6)
!2421 = !DILocalVariable(name: "i", scope: !2422, file: !539, line: 60, type: !45)
!2422 = distinct !DILexicalBlock(scope: !2415, file: !539, line: 60, column: 5)
!2423 = !DILocation(line: 0, scope: !2422)
!2424 = !DILocation(line: 60, column: 9, scope: !2422)
!2425 = !DILocation(line: 60, scope: !2422)
!2426 = !DILocation(line: 60, column: 20, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !539, line: 60, column: 5)
!2428 = !DILocation(line: 60, column: 5, scope: !2422)
!2429 = !DILocation(line: 61, column: 22, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !539, line: 60, column: 43)
!2431 = !DILocation(line: 61, column: 28, scope: !2430)
!2432 = !DILocalVariable(name: "t", scope: !2430, file: !539, line: 61, type: !6)
!2433 = !DILocation(line: 0, scope: !2430)
!2434 = !DILocation(line: 62, column: 32, scope: !2430)
!2435 = !DILocation(line: 62, column: 43, scope: !2430)
!2436 = !DILocation(line: 62, column: 38, scope: !2430)
!2437 = !DILocation(line: 62, column: 9, scope: !2430)
!2438 = !DILocation(line: 62, column: 16, scope: !2430)
!2439 = !DILocation(line: 60, column: 40, scope: !2427)
!2440 = !DILocation(line: 60, column: 5, scope: !2427)
!2441 = distinct !{!2441, !2428, !2442, !244}
!2442 = !DILocation(line: 63, column: 5, scope: !2422)
!2443 = !DILocation(line: 64, column: 1, scope: !2415)
!2444 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !539, file: !539, line: 47, type: !2340, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2445 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2444, file: !539, line: 47, type: !45)
!2446 = !DILocation(line: 0, scope: !2444)
!2447 = !DILocalVariable(name: "in", arg: 2, scope: !2444, file: !539, line: 47, type: !428)
!2448 = !DILocalVariable(name: "acc", arg: 3, scope: !2444, file: !539, line: 47, type: !5)
!2449 = !DILocalVariable(name: "mask_msb", scope: !2444, file: !539, line: 49, type: !6)
!2450 = !DILocalVariable(name: "i", scope: !2451, file: !539, line: 50, type: !45)
!2451 = distinct !DILexicalBlock(scope: !2444, file: !539, line: 50, column: 5)
!2452 = !DILocation(line: 0, scope: !2451)
!2453 = !DILocation(line: 50, column: 9, scope: !2451)
!2454 = !DILocation(line: 50, scope: !2451)
!2455 = !DILocation(line: 50, column: 20, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !539, line: 50, column: 5)
!2457 = !DILocation(line: 50, column: 5, scope: !2451)
!2458 = !DILocation(line: 51, column: 22, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !539, line: 50, column: 43)
!2460 = !DILocalVariable(name: "t", scope: !2459, file: !539, line: 51, type: !6)
!2461 = !DILocation(line: 0, scope: !2459)
!2462 = !DILocation(line: 52, column: 32, scope: !2459)
!2463 = !DILocation(line: 52, column: 44, scope: !2459)
!2464 = !DILocation(line: 52, column: 50, scope: !2459)
!2465 = !DILocation(line: 52, column: 38, scope: !2459)
!2466 = !DILocation(line: 52, column: 9, scope: !2459)
!2467 = !DILocation(line: 52, column: 16, scope: !2459)
!2468 = !DILocation(line: 50, column: 40, scope: !2456)
!2469 = !DILocation(line: 50, column: 5, scope: !2456)
!2470 = distinct !{!2470, !2457, !2471, !244}
!2471 = !DILocation(line: 53, column: 5, scope: !2451)
!2472 = !DILocation(line: 54, column: 1, scope: !2444)
!2473 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2340, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2474 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2473, file: !539, line: 13, type: !45)
!2475 = !DILocation(line: 0, scope: !2473)
!2476 = !DILocalVariable(name: "in", arg: 2, scope: !2473, file: !539, line: 13, type: !428)
!2477 = !DILocalVariable(name: "out", arg: 3, scope: !2473, file: !539, line: 13, type: !5)
!2478 = !DILocalVariable(name: "i", scope: !2479, file: !539, line: 15, type: !15)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !539, line: 15, column: 5)
!2480 = !DILocation(line: 0, scope: !2479)
!2481 = !DILocation(line: 15, column: 10, scope: !2479)
!2482 = !DILocation(line: 15, scope: !2479)
!2483 = !DILocation(line: 15, column: 26, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !539, line: 15, column: 5)
!2485 = !DILocation(line: 15, column: 5, scope: !2479)
!2486 = !DILocation(line: 17, column: 18, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !539, line: 16, column: 5)
!2488 = !DILocation(line: 17, column: 9, scope: !2487)
!2489 = !DILocation(line: 17, column: 16, scope: !2487)
!2490 = !DILocation(line: 15, column: 46, scope: !2484)
!2491 = !DILocation(line: 15, column: 5, scope: !2484)
!2492 = distinct !{!2492, !2485, !2493, !244}
!2493 = !DILocation(line: 18, column: 5, scope: !2479)
!2494 = !DILocation(line: 19, column: 1, scope: !2473)
!2495 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !58, file: !58, line: 14, type: !2496, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2498, !428, !5, !45}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2501, file: !36, line: 266, baseType: !45, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2501, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2501, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2501, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2501, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2501, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2501, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2501, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2501, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2501, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2501, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2501, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2501, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2501, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2501, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2501, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2501, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2501, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2501, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2501, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2501, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2501, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2501, file: !36, line: 288, baseType: !165, size: 32, offset: 704)
!2526 = !DILocalVariable(name: "p", arg: 1, scope: !2495, file: !58, line: 14, type: !2498)
!2527 = !DILocation(line: 0, scope: !2495)
!2528 = !DILocalVariable(name: "in", arg: 2, scope: !2495, file: !58, line: 14, type: !428)
!2529 = !DILocalVariable(name: "out", arg: 3, scope: !2495, file: !58, line: 14, type: !5)
!2530 = !DILocalVariable(name: "size", arg: 4, scope: !2495, file: !58, line: 14, type: !45)
!2531 = !DILocalVariable(name: "m_vec_limbs", scope: !2495, file: !58, line: 19, type: !343)
!2532 = !DILocalVariable(name: "m_vecs_stored", scope: !2495, file: !58, line: 20, type: !45)
!2533 = !DILocalVariable(name: "r", scope: !2534, file: !58, line: 21, type: !45)
!2534 = distinct !DILexicalBlock(scope: !2495, file: !58, line: 21, column: 5)
!2535 = !DILocation(line: 0, scope: !2534)
!2536 = !DILocation(line: 21, column: 10, scope: !2534)
!2537 = !DILocation(line: 20, column: 9, scope: !2495)
!2538 = !DILocation(line: 21, scope: !2534)
!2539 = !DILocation(line: 21, column: 23, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2534, file: !58, line: 21, column: 5)
!2541 = !DILocation(line: 21, column: 5, scope: !2534)
!2542 = !DILocation(line: 22, column: 9, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !58, line: 22, column: 9)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !58, line: 21, column: 36)
!2545 = !DILocation(line: 22, scope: !2543)
!2546 = !DILocalVariable(name: "c", scope: !2543, file: !58, line: 22, type: !45)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 22, column: 27, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !58, line: 22, column: 9)
!2550 = !DILocation(line: 23, column: 59, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2549, file: !58, line: 22, column: 40)
!2552 = !DILocation(line: 23, column: 66, scope: !2551)
!2553 = !DILocation(line: 23, column: 40, scope: !2551)
!2554 = !DILocation(line: 23, column: 76, scope: !2551)
!2555 = !DILocation(line: 23, column: 13, scope: !2551)
!2556 = !DILocation(line: 24, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !58, line: 24, column: 17)
!2558 = !DILocation(line: 25, column: 62, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !58, line: 24, column: 25)
!2560 = !DILocation(line: 25, column: 69, scope: !2559)
!2561 = !DILocation(line: 25, column: 43, scope: !2559)
!2562 = !DILocation(line: 25, column: 79, scope: !2559)
!2563 = !DILocation(line: 25, column: 17, scope: !2559)
!2564 = !DILocation(line: 26, column: 13, scope: !2559)
!2565 = !DILocation(line: 27, column: 27, scope: !2551)
!2566 = !DILocation(line: 22, column: 36, scope: !2549)
!2567 = !DILocation(line: 22, column: 9, scope: !2549)
!2568 = distinct !{!2568, !2542, !2569, !244}
!2569 = !DILocation(line: 28, column: 9, scope: !2543)
!2570 = !DILocation(line: 21, column: 32, scope: !2540)
!2571 = !DILocation(line: 21, column: 5, scope: !2540)
!2572 = distinct !{!2572, !2541, !2573, !244}
!2573 = !DILocation(line: 29, column: 5, scope: !2534)
!2574 = !DILocation(line: 30, column: 1, scope: !2495)
!2575 = distinct !DISubprogram(name: "m_vec_copy", scope: !539, file: !539, line: 13, type: !2340, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2576 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2575, file: !539, line: 13, type: !45)
!2577 = !DILocation(line: 0, scope: !2575)
!2578 = !DILocalVariable(name: "in", arg: 2, scope: !2575, file: !539, line: 13, type: !428)
!2579 = !DILocalVariable(name: "out", arg: 3, scope: !2575, file: !539, line: 13, type: !5)
!2580 = !DILocalVariable(name: "i", scope: !2581, file: !539, line: 15, type: !15)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !539, line: 15, column: 5)
!2582 = !DILocation(line: 0, scope: !2581)
!2583 = !DILocation(line: 15, column: 10, scope: !2581)
!2584 = !DILocation(line: 15, scope: !2581)
!2585 = !DILocation(line: 15, column: 26, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !539, line: 15, column: 5)
!2587 = !DILocation(line: 15, column: 5, scope: !2581)
!2588 = !DILocation(line: 17, column: 18, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !539, line: 16, column: 5)
!2590 = !DILocation(line: 17, column: 9, scope: !2589)
!2591 = !DILocation(line: 17, column: 16, scope: !2589)
!2592 = !DILocation(line: 15, column: 46, scope: !2586)
!2593 = !DILocation(line: 15, column: 5, scope: !2586)
!2594 = distinct !{!2594, !2587, !2595, !244}
!2595 = !DILocation(line: 18, column: 5, scope: !2581)
!2596 = !DILocation(line: 19, column: 1, scope: !2575)
!2597 = distinct !DISubprogram(name: "m_vec_add", scope: !539, file: !539, line: 22, type: !2340, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2598 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2597, file: !539, line: 22, type: !45)
!2599 = !DILocation(line: 0, scope: !2597)
!2600 = !DILocalVariable(name: "in", arg: 2, scope: !2597, file: !539, line: 22, type: !428)
!2601 = !DILocalVariable(name: "acc", arg: 3, scope: !2597, file: !539, line: 22, type: !5)
!2602 = !DILocalVariable(name: "i", scope: !2603, file: !539, line: 24, type: !15)
!2603 = distinct !DILexicalBlock(scope: !2597, file: !539, line: 24, column: 5)
!2604 = !DILocation(line: 0, scope: !2603)
!2605 = !DILocation(line: 24, column: 10, scope: !2603)
!2606 = !DILocation(line: 24, scope: !2603)
!2607 = !DILocation(line: 24, column: 26, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !539, line: 24, column: 5)
!2609 = !DILocation(line: 24, column: 5, scope: !2603)
!2610 = !DILocation(line: 26, column: 19, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !539, line: 25, column: 5)
!2612 = !DILocation(line: 26, column: 9, scope: !2611)
!2613 = !DILocation(line: 26, column: 16, scope: !2611)
!2614 = !DILocation(line: 24, column: 46, scope: !2608)
!2615 = !DILocation(line: 24, column: 5, scope: !2608)
!2616 = distinct !{!2616, !2609, !2617, !244}
!2617 = !DILocation(line: 27, column: 5, scope: !2603)
!2618 = !DILocation(line: 28, column: 1, scope: !2597)
!2619 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2620, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!45, !2498, !18, !49, !49, !18, !45, !45, !45, !45}
!2622 = !DILocalVariable(name: "p", arg: 1, scope: !2619, file: !58, line: 40, type: !2498)
!2623 = !DILocation(line: 0, scope: !2619)
!2624 = !DILocalVariable(name: "A", arg: 2, scope: !2619, file: !58, line: 40, type: !18)
!2625 = !DILocalVariable(name: "y", arg: 3, scope: !2619, file: !58, line: 41, type: !49)
!2626 = !DILocalVariable(name: "r", arg: 4, scope: !2619, file: !58, line: 41, type: !49)
!2627 = !DILocalVariable(name: "x", arg: 5, scope: !2619, file: !58, line: 42, type: !18)
!2628 = !DILocalVariable(name: "k", arg: 6, scope: !2619, file: !58, line: 42, type: !45)
!2629 = !DILocalVariable(name: "o", arg: 7, scope: !2619, file: !58, line: 42, type: !45)
!2630 = !DILocalVariable(name: "m", arg: 8, scope: !2619, file: !58, line: 42, type: !45)
!2631 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2619, file: !58, line: 42, type: !45)
!2632 = !DILocalVariable(name: "i", scope: !2633, file: !58, line: 51, type: !45)
!2633 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 51, column: 5)
!2634 = !DILocation(line: 0, scope: !2633)
!2635 = !DILocation(line: 51, column: 10, scope: !2633)
!2636 = !DILocation(line: 51, scope: !2633)
!2637 = !DILocation(line: 51, column: 23, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !58, line: 51, column: 5)
!2639 = !DILocation(line: 51, column: 5, scope: !2633)
!2640 = !DILocation(line: 57, column: 5, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 57, column: 5)
!2642 = !DILocation(line: 52, column: 16, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !58, line: 51, column: 37)
!2644 = !DILocation(line: 52, column: 9, scope: !2643)
!2645 = !DILocation(line: 52, column: 14, scope: !2643)
!2646 = !DILocation(line: 51, column: 33, scope: !2638)
!2647 = !DILocation(line: 51, column: 5, scope: !2638)
!2648 = distinct !{!2648, !2639, !2649, !244}
!2649 = !DILocation(line: 53, column: 5, scope: !2633)
!2650 = !DILocation(line: 57, scope: !2641)
!2651 = !DILocalVariable(name: "i", scope: !2641, file: !58, line: 57, type: !45)
!2652 = !DILocation(line: 0, scope: !2641)
!2653 = !DILocation(line: 57, column: 23, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2641, file: !58, line: 57, column: 5)
!2655 = !DILocation(line: 58, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 57, column: 33)
!2657 = !DILocation(line: 58, column: 26, scope: !2656)
!2658 = !DILocation(line: 58, column: 30, scope: !2656)
!2659 = !DILocation(line: 58, column: 21, scope: !2656)
!2660 = !DILocation(line: 58, column: 9, scope: !2656)
!2661 = !DILocation(line: 58, column: 36, scope: !2656)
!2662 = !DILocation(line: 57, column: 29, scope: !2654)
!2663 = !DILocation(line: 57, column: 5, scope: !2654)
!2664 = distinct !{!2664, !2640, !2665, !244}
!2665 = !DILocation(line: 59, column: 5, scope: !2641)
!2666 = !DILocation(line: 60, column: 25, scope: !2619)
!2667 = !DILocation(line: 60, column: 29, scope: !2619)
!2668 = !DILocation(line: 60, column: 5, scope: !2619)
!2669 = !DILocalVariable(name: "i", scope: !2670, file: !58, line: 63, type: !45)
!2670 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 63, column: 5)
!2671 = !DILocation(line: 0, scope: !2670)
!2672 = !DILocation(line: 63, column: 10, scope: !2670)
!2673 = !DILocation(line: 63, scope: !2670)
!2674 = !DILocation(line: 63, column: 23, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !58, line: 63, column: 5)
!2676 = !DILocation(line: 63, column: 5, scope: !2670)
!2677 = !DILocation(line: 64, column: 44, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !58, line: 63, column: 33)
!2679 = !DILocation(line: 64, column: 50, scope: !2678)
!2680 = !DILocation(line: 64, column: 38, scope: !2678)
!2681 = !DILocation(line: 64, column: 13, scope: !2678)
!2682 = !DILocation(line: 64, column: 26, scope: !2678)
!2683 = !DILocation(line: 64, column: 30, scope: !2678)
!2684 = !DILocation(line: 64, column: 21, scope: !2678)
!2685 = !DILocation(line: 64, column: 9, scope: !2678)
!2686 = !DILocation(line: 64, column: 36, scope: !2678)
!2687 = !DILocation(line: 63, column: 29, scope: !2675)
!2688 = !DILocation(line: 63, column: 5, scope: !2675)
!2689 = distinct !{!2689, !2676, !2690, !244}
!2690 = !DILocation(line: 65, column: 5, scope: !2670)
!2691 = !DILocation(line: 67, column: 16, scope: !2619)
!2692 = !DILocation(line: 67, column: 20, scope: !2619)
!2693 = !DILocation(line: 67, column: 5, scope: !2619)
!2694 = !DILocalVariable(name: "full_rank", scope: !2619, file: !58, line: 70, type: !14)
!2695 = !DILocalVariable(name: "i", scope: !2696, file: !58, line: 71, type: !45)
!2696 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 71, column: 5)
!2697 = !DILocation(line: 0, scope: !2696)
!2698 = !DILocation(line: 71, column: 10, scope: !2696)
!2699 = !DILocation(line: 71, scope: !2696)
!2700 = !DILocation(line: 71, column: 23, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !58, line: 71, column: 5)
!2702 = !DILocation(line: 71, column: 5, scope: !2696)
!2703 = !DILocation(line: 72, column: 27, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !58, line: 71, column: 42)
!2705 = !DILocation(line: 72, column: 32, scope: !2704)
!2706 = !DILocation(line: 72, column: 22, scope: !2704)
!2707 = !DILocation(line: 72, column: 19, scope: !2704)
!2708 = !DILocation(line: 71, column: 38, scope: !2701)
!2709 = !DILocation(line: 71, column: 5, scope: !2701)
!2710 = distinct !{!2710, !2702, !2711, !244}
!2711 = !DILocation(line: 73, column: 5, scope: !2696)
!2712 = !DILocation(line: 80, column: 19, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 80, column: 9)
!2714 = !DILocation(line: 88, column: 5, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2619, file: !58, line: 88, column: 5)
!2716 = distinct !{!2716, !2714, !2717, !244}
!2717 = !DILocation(line: 122, column: 5, scope: !2715)
!2718 = !DILocation(line: 88, scope: !2715)
!2719 = !DILocalVariable(name: "row", scope: !2715, file: !58, line: 88, type: !45)
!2720 = !DILocation(line: 0, scope: !2715)
!2721 = !DILocation(line: 88, column: 31, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !58, line: 88, column: 5)
!2723 = !DILocalVariable(name: "finished", scope: !2619, file: !58, line: 46, type: !14)
!2724 = !DILocation(line: 90, column: 27, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !58, line: 88, column: 44)
!2726 = !DILocalVariable(name: "col_upper_bound", scope: !2619, file: !58, line: 47, type: !45)
!2727 = !DILocalVariable(name: "col", scope: !2728, file: !58, line: 93, type: !45)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !58, line: 93, column: 9)
!2729 = !DILocation(line: 0, scope: !2728)
!2730 = !DILocation(line: 93, column: 14, scope: !2728)
!2731 = !DILocation(line: 0, scope: !2725)
!2732 = !DILocation(line: 93, scope: !2728)
!2733 = !DILocation(line: 93, column: 33, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2728, file: !58, line: 93, column: 9)
!2735 = !DILocation(line: 93, column: 9, scope: !2728)
!2736 = !DILocation(line: 97, column: 50, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !58, line: 93, column: 60)
!2738 = !DILocation(line: 97, column: 44, scope: !2737)
!2739 = !DILocation(line: 97, column: 30, scope: !2737)
!2740 = !DILocation(line: 97, column: 73, scope: !2737)
!2741 = !DILocalVariable(name: "correct_column", scope: !2619, file: !58, line: 48, type: !14)
!2742 = !DILocation(line: 99, column: 63, scope: !2737)
!2743 = !DILocation(line: 99, column: 48, scope: !2737)
!2744 = !DILocation(line: 99, column: 46, scope: !2737)
!2745 = !DILocalVariable(name: "u", scope: !2737, file: !58, line: 99, type: !14)
!2746 = !DILocation(line: 0, scope: !2737)
!2747 = !DILocation(line: 100, column: 13, scope: !2737)
!2748 = !DILocation(line: 100, column: 20, scope: !2737)
!2749 = !DILocalVariable(name: "i", scope: !2750, file: !58, line: 102, type: !45)
!2750 = distinct !DILexicalBlock(scope: !2737, file: !58, line: 102, column: 13)
!2751 = !DILocation(line: 0, scope: !2750)
!2752 = !DILocation(line: 102, column: 18, scope: !2750)
!2753 = !DILocation(line: 102, scope: !2750)
!2754 = !DILocation(line: 102, column: 31, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2750, file: !58, line: 102, column: 13)
!2756 = !DILocation(line: 102, column: 13, scope: !2750)
!2757 = !DILocation(line: 103, column: 53, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !58, line: 102, column: 46)
!2759 = !DILocation(line: 103, column: 45, scope: !2758)
!2760 = !DILocation(line: 103, column: 34, scope: !2758)
!2761 = !DILocation(line: 103, column: 95, scope: !2758)
!2762 = !DILocation(line: 103, column: 99, scope: !2758)
!2763 = !DILocation(line: 103, column: 91, scope: !2758)
!2764 = !DILocation(line: 103, column: 80, scope: !2758)
!2765 = !DILocation(line: 103, column: 115, scope: !2758)
!2766 = !DILocation(line: 103, column: 76, scope: !2758)
!2767 = !DILocation(line: 104, column: 49, scope: !2758)
!2768 = !DILocation(line: 104, column: 53, scope: !2758)
!2769 = !DILocation(line: 104, column: 45, scope: !2758)
!2770 = !DILocation(line: 104, column: 34, scope: !2758)
!2771 = !DILocation(line: 104, column: 69, scope: !2758)
!2772 = !DILocation(line: 104, column: 30, scope: !2758)
!2773 = !DILocation(line: 104, column: 95, scope: !2758)
!2774 = !DILocation(line: 104, column: 99, scope: !2758)
!2775 = !DILocation(line: 104, column: 91, scope: !2758)
!2776 = !DILocation(line: 104, column: 80, scope: !2758)
!2777 = !DILocation(line: 104, column: 115, scope: !2758)
!2778 = !DILocation(line: 104, column: 76, scope: !2758)
!2779 = !DILocation(line: 105, column: 49, scope: !2758)
!2780 = !DILocation(line: 105, column: 53, scope: !2758)
!2781 = !DILocation(line: 105, column: 45, scope: !2758)
!2782 = !DILocation(line: 105, column: 34, scope: !2758)
!2783 = !DILocation(line: 105, column: 69, scope: !2758)
!2784 = !DILocation(line: 105, column: 30, scope: !2758)
!2785 = !DILocation(line: 105, column: 95, scope: !2758)
!2786 = !DILocation(line: 105, column: 99, scope: !2758)
!2787 = !DILocation(line: 105, column: 91, scope: !2758)
!2788 = !DILocation(line: 105, column: 80, scope: !2758)
!2789 = !DILocation(line: 105, column: 115, scope: !2758)
!2790 = !DILocation(line: 105, column: 76, scope: !2758)
!2791 = !DILocation(line: 106, column: 49, scope: !2758)
!2792 = !DILocation(line: 106, column: 53, scope: !2758)
!2793 = !DILocation(line: 106, column: 45, scope: !2758)
!2794 = !DILocation(line: 106, column: 34, scope: !2758)
!2795 = !DILocation(line: 106, column: 69, scope: !2758)
!2796 = !DILocation(line: 106, column: 30, scope: !2758)
!2797 = !DILocation(line: 106, column: 95, scope: !2758)
!2798 = !DILocation(line: 106, column: 99, scope: !2758)
!2799 = !DILocation(line: 106, column: 91, scope: !2758)
!2800 = !DILocation(line: 106, column: 80, scope: !2758)
!2801 = !DILocation(line: 106, column: 115, scope: !2758)
!2802 = !DILocation(line: 106, column: 76, scope: !2758)
!2803 = !DILocalVariable(name: "tmp", scope: !2758, file: !58, line: 103, type: !6)
!2804 = !DILocation(line: 0, scope: !2758)
!2805 = !DILocation(line: 108, column: 23, scope: !2758)
!2806 = !DILocation(line: 110, column: 34, scope: !2758)
!2807 = !DILocation(line: 110, column: 17, scope: !2758)
!2808 = !DILocation(line: 110, column: 48, scope: !2758)
!2809 = !DILocation(line: 111, column: 56, scope: !2758)
!2810 = !DILocation(line: 111, column: 34, scope: !2758)
!2811 = !DILocation(line: 111, column: 17, scope: !2758)
!2812 = !DILocation(line: 111, column: 48, scope: !2758)
!2813 = !DILocation(line: 112, column: 56, scope: !2758)
!2814 = !DILocation(line: 112, column: 34, scope: !2758)
!2815 = !DILocation(line: 112, column: 17, scope: !2758)
!2816 = !DILocation(line: 112, column: 48, scope: !2758)
!2817 = !DILocation(line: 113, column: 56, scope: !2758)
!2818 = !DILocation(line: 113, column: 34, scope: !2758)
!2819 = !DILocation(line: 113, column: 17, scope: !2758)
!2820 = !DILocation(line: 113, column: 48, scope: !2758)
!2821 = !DILocation(line: 114, column: 56, scope: !2758)
!2822 = !DILocation(line: 114, column: 34, scope: !2758)
!2823 = !DILocation(line: 114, column: 17, scope: !2758)
!2824 = !DILocation(line: 114, column: 48, scope: !2758)
!2825 = !DILocation(line: 115, column: 56, scope: !2758)
!2826 = !DILocation(line: 115, column: 34, scope: !2758)
!2827 = !DILocation(line: 115, column: 17, scope: !2758)
!2828 = !DILocation(line: 115, column: 48, scope: !2758)
!2829 = !DILocation(line: 116, column: 56, scope: !2758)
!2830 = !DILocation(line: 116, column: 34, scope: !2758)
!2831 = !DILocation(line: 116, column: 17, scope: !2758)
!2832 = !DILocation(line: 116, column: 48, scope: !2758)
!2833 = !DILocation(line: 117, column: 56, scope: !2758)
!2834 = !DILocation(line: 117, column: 34, scope: !2758)
!2835 = !DILocation(line: 117, column: 17, scope: !2758)
!2836 = !DILocation(line: 117, column: 48, scope: !2758)
!2837 = !DILocation(line: 102, column: 40, scope: !2755)
!2838 = !DILocation(line: 102, column: 13, scope: !2755)
!2839 = distinct !{!2839, !2756, !2840, !244}
!2840 = !DILocation(line: 118, column: 13, scope: !2750)
!2841 = !DILocation(line: 120, column: 33, scope: !2737)
!2842 = !DILocation(line: 93, column: 56, scope: !2734)
!2843 = !DILocation(line: 93, column: 9, scope: !2734)
!2844 = distinct !{!2844, !2735, !2845, !244}
!2845 = !DILocation(line: 121, column: 9, scope: !2728)
!2846 = !DILocation(line: 124, column: 1, scope: !2619)
!2847 = distinct !DISubprogram(name: "mat_mul", scope: !595, file: !595, line: 82, type: !1530, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2848 = !DILocalVariable(name: "a", arg: 1, scope: !2847, file: !595, line: 82, type: !49)
!2849 = !DILocation(line: 0, scope: !2847)
!2850 = !DILocalVariable(name: "b", arg: 2, scope: !2847, file: !595, line: 82, type: !49)
!2851 = !DILocalVariable(name: "c", arg: 3, scope: !2847, file: !595, line: 83, type: !18)
!2852 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2847, file: !595, line: 83, type: !45)
!2853 = !DILocalVariable(name: "row_a", arg: 5, scope: !2847, file: !595, line: 83, type: !45)
!2854 = !DILocalVariable(name: "col_b", arg: 6, scope: !2847, file: !595, line: 83, type: !45)
!2855 = !DILocalVariable(name: "i", scope: !2856, file: !595, line: 84, type: !45)
!2856 = distinct !DILexicalBlock(scope: !2847, file: !595, line: 84, column: 5)
!2857 = !DILocation(line: 0, scope: !2856)
!2858 = !DILocation(line: 84, column: 10, scope: !2856)
!2859 = !DILocation(line: 84, scope: !2856)
!2860 = !DILocation(line: 84, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !595, line: 84, column: 5)
!2862 = !DILocation(line: 84, column: 5, scope: !2856)
!2863 = !DILocation(line: 85, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !595, line: 85, column: 9)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !595, line: 84, column: 53)
!2866 = !DILocation(line: 85, scope: !2864)
!2867 = !DILocalVariable(name: "j", scope: !2864, file: !595, line: 85, type: !45)
!2868 = !DILocation(line: 0, scope: !2864)
!2869 = !DILocation(line: 86, column: 18, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !595, line: 85, column: 46)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !595, line: 85, column: 9)
!2872 = !DILocation(line: 86, column: 16, scope: !2870)
!2873 = !DILocation(line: 85, column: 41, scope: !2871)
!2874 = !DILocation(line: 85, column: 9, scope: !2871)
!2875 = distinct !{!2875, !2863, !2876, !244}
!2876 = !DILocation(line: 87, column: 9, scope: !2864)
!2877 = !DILocation(line: 84, column: 32, scope: !2861)
!2878 = !DILocation(line: 84, column: 39, scope: !2861)
!2879 = !DILocation(line: 84, column: 5, scope: !2861)
!2880 = distinct !{!2880, !2862, !2881, !244}
!2881 = !DILocation(line: 88, column: 5, scope: !2856)
!2882 = !DILocation(line: 91, column: 1, scope: !2847)
!2883 = distinct !DISubprogram(name: "sub_f", scope: !595, file: !595, line: 49, type: !1629, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2884 = !DILocalVariable(name: "a", arg: 1, scope: !2883, file: !595, line: 49, type: !14)
!2885 = !DILocation(line: 0, scope: !2883)
!2886 = !DILocalVariable(name: "b", arg: 2, scope: !2883, file: !595, line: 49, type: !14)
!2887 = !DILocation(line: 50, column: 14, scope: !2883)
!2888 = !DILocation(line: 50, column: 5, scope: !2883)
!2889 = distinct !DISubprogram(name: "EF", scope: !2890, file: !2890, line: 60, type: !2891, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2890 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !18, !45, !45}
!2893 = !DILocalVariable(name: "A", arg: 1, scope: !2889, file: !2890, line: 60, type: !18)
!2894 = !DILocation(line: 0, scope: !2889)
!2895 = !DILocalVariable(name: "nrows", arg: 2, scope: !2889, file: !2890, line: 60, type: !45)
!2896 = !DILocalVariable(name: "ncols", arg: 3, scope: !2889, file: !2890, line: 60, type: !45)
!2897 = !DILocalVariable(name: "_pivot_row", scope: !2889, file: !2890, line: 62, type: !681, align: 256)
!2898 = !DILocation(line: 62, column: 27, scope: !2889)
!2899 = !DILocalVariable(name: "_pivot_row2", scope: !2889, file: !2890, line: 63, type: !681, align: 256)
!2900 = !DILocation(line: 63, column: 27, scope: !2889)
!2901 = !DILocalVariable(name: "packed_A", scope: !2889, file: !2890, line: 64, type: !2902, align: 256)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 48384, elements: !2903)
!2903 = !{!2904}
!2904 = !DISubrange(count: 756)
!2905 = !DILocation(line: 64, column: 27, scope: !2889)
!2906 = !DILocation(line: 66, column: 26, scope: !2889)
!2907 = !DILocation(line: 66, column: 32, scope: !2889)
!2908 = !DILocalVariable(name: "row_len", scope: !2889, file: !2890, line: 66, type: !45)
!2909 = !DILocalVariable(name: "i", scope: !2910, file: !2890, line: 69, type: !45)
!2910 = distinct !DILexicalBlock(scope: !2889, file: !2890, line: 69, column: 5)
!2911 = !DILocation(line: 0, scope: !2910)
!2912 = !DILocation(line: 69, column: 10, scope: !2910)
!2913 = !DILocation(line: 69, scope: !2910)
!2914 = !DILocation(line: 69, column: 23, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !2890, line: 69, column: 5)
!2916 = !DILocation(line: 69, column: 5, scope: !2910)
!2917 = !DILocation(line: 77, column: 5, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2889, file: !2890, line: 77, column: 5)
!2919 = !DILocation(line: 70, column: 29, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !2890, line: 69, column: 37)
!2921 = !DILocation(line: 70, column: 25, scope: !2920)
!2922 = !DILocation(line: 70, column: 51, scope: !2920)
!2923 = !DILocation(line: 70, column: 47, scope: !2920)
!2924 = !DILocation(line: 70, column: 9, scope: !2920)
!2925 = !DILocation(line: 69, column: 33, scope: !2915)
!2926 = !DILocation(line: 69, column: 5, scope: !2915)
!2927 = distinct !{!2927, !2916, !2928, !244}
!2928 = !DILocation(line: 71, column: 5, scope: !2910)
!2929 = !DILocation(line: 77, scope: !2918)
!2930 = !DILocalVariable(name: "pivot_row", scope: !2889, file: !2890, line: 76, type: !45)
!2931 = !DILocalVariable(name: "pivot_col", scope: !2918, file: !2890, line: 77, type: !45)
!2932 = !DILocation(line: 0, scope: !2918)
!2933 = !DILocation(line: 77, column: 39, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2918, file: !2890, line: 77, column: 5)
!2935 = !DILocation(line: 138, column: 5, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2889, file: !2890, line: 138, column: 5)
!2937 = !DILocation(line: 79, column: 37, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !2890, line: 77, column: 61)
!2939 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2938, file: !2890, line: 79, type: !45)
!2940 = !DILocation(line: 0, scope: !2938)
!2941 = !DILocation(line: 80, column: 37, scope: !2938)
!2942 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2938, file: !2890, line: 80, type: !45)
!2943 = !DILocalVariable(name: "i", scope: !2944, file: !2890, line: 85, type: !45)
!2944 = distinct !DILexicalBlock(scope: !2938, file: !2890, line: 85, column: 9)
!2945 = !DILocation(line: 0, scope: !2944)
!2946 = !DILocation(line: 85, column: 14, scope: !2944)
!2947 = !DILocation(line: 85, scope: !2944)
!2948 = !DILocation(line: 85, column: 27, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2944, file: !2890, line: 85, column: 9)
!2950 = !DILocation(line: 85, column: 9, scope: !2944)
!2951 = !DILocation(line: 93, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !2890, line: 93, column: 9)
!2953 = !DILocation(line: 86, column: 13, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2949, file: !2890, line: 85, column: 43)
!2955 = !DILocation(line: 86, column: 27, scope: !2954)
!2956 = !DILocation(line: 87, column: 13, scope: !2954)
!2957 = !DILocation(line: 87, column: 28, scope: !2954)
!2958 = !DILocation(line: 85, column: 39, scope: !2949)
!2959 = !DILocation(line: 85, column: 9, scope: !2949)
!2960 = distinct !{!2960, !2950, !2961, !244}
!2961 = !DILocation(line: 88, column: 9, scope: !2944)
!2962 = !DILocation(line: 0, scope: !2952)
!2963 = !DILocalVariable(name: "row", scope: !2952, file: !2890, line: 93, type: !45)
!2964 = !DILocalVariable(name: "pivot", scope: !2938, file: !2890, line: 91, type: !14)
!2965 = !DILocalVariable(name: "pivot_is_zero", scope: !2938, file: !2890, line: 92, type: !6)
!2966 = !DILocation(line: 94, column: 24, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2952, file: !2890, line: 93, column: 9)
!2968 = !DILocation(line: 94, column: 21, scope: !2967)
!2969 = !DILocation(line: 96, column: 38, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !2890, line: 94, column: 80)
!2971 = !DILocation(line: 96, column: 37, scope: !2970)
!2972 = !DILocalVariable(name: "is_pivot_row", scope: !2970, file: !2890, line: 96, type: !6)
!2973 = !DILocation(line: 0, scope: !2970)
!2974 = !DILocation(line: 97, column: 40, scope: !2970)
!2975 = !DILocalVariable(name: "below_pivot_row", scope: !2970, file: !2890, line: 97, type: !6)
!2976 = !DILocalVariable(name: "j", scope: !2977, file: !2890, line: 99, type: !45)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !2890, line: 99, column: 13)
!2978 = !DILocation(line: 0, scope: !2977)
!2979 = !DILocation(line: 99, column: 18, scope: !2977)
!2980 = !DILocation(line: 99, scope: !2977)
!2981 = !DILocation(line: 99, column: 31, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !2890, line: 99, column: 13)
!2983 = !DILocation(line: 99, column: 13, scope: !2977)
!2984 = !DILocation(line: 100, column: 67, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2982, file: !2890, line: 99, column: 47)
!2986 = !DILocation(line: 100, column: 48, scope: !2985)
!2987 = !DILocation(line: 101, column: 47, scope: !2985)
!2988 = !DILocation(line: 101, column: 57, scope: !2985)
!2989 = !DILocation(line: 101, column: 34, scope: !2985)
!2990 = !DILocation(line: 100, column: 85, scope: !2985)
!2991 = !DILocation(line: 100, column: 17, scope: !2985)
!2992 = !DILocation(line: 100, column: 31, scope: !2985)
!2993 = !DILocation(line: 99, column: 43, scope: !2982)
!2994 = !DILocation(line: 99, column: 13, scope: !2982)
!2995 = distinct !{!2995, !2983, !2996, !244}
!2996 = !DILocation(line: 102, column: 13, scope: !2977)
!2997 = !DILocation(line: 103, column: 21, scope: !2970)
!2998 = !DILocation(line: 104, column: 44, scope: !2970)
!2999 = !DILocation(line: 104, column: 30, scope: !2970)
!3000 = !DILocation(line: 104, column: 29, scope: !2970)
!3001 = !DILocation(line: 94, column: 76, scope: !2967)
!3002 = !DILocation(line: 93, column: 9, scope: !2967)
!3003 = distinct !{!3003, !2951, !3004, !244}
!3004 = !DILocation(line: 105, column: 9, scope: !2952)
!3005 = !DILocation(line: 108, column: 19, scope: !2938)
!3006 = !DILocalVariable(name: "inverse", scope: !2889, file: !2890, line: 75, type: !14)
!3007 = !DILocation(line: 109, column: 9, scope: !2938)
!3008 = !DILocalVariable(name: "row", scope: !3009, file: !2890, line: 113, type: !45)
!3009 = distinct !DILexicalBlock(scope: !2938, file: !2890, line: 113, column: 9)
!3010 = !DILocation(line: 0, scope: !3009)
!3011 = !DILocation(line: 113, column: 14, scope: !3009)
!3012 = !DILocation(line: 113, scope: !3009)
!3013 = !DILocation(line: 113, column: 51, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3009, file: !2890, line: 113, column: 9)
!3015 = !DILocation(line: 113, column: 9, scope: !3009)
!3016 = !DILocation(line: 124, column: 9, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2938, file: !2890, line: 124, column: 9)
!3018 = !DILocation(line: 114, column: 33, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3014, file: !2890, line: 113, column: 84)
!3020 = !DILocation(line: 114, column: 63, scope: !3019)
!3021 = !DILocalVariable(name: "do_copy", scope: !3019, file: !2890, line: 114, type: !6)
!3022 = !DILocation(line: 0, scope: !3019)
!3023 = !DILocalVariable(name: "do_not_copy", scope: !3019, file: !2890, line: 115, type: !6)
!3024 = !DILocalVariable(name: "col", scope: !3025, file: !2890, line: 116, type: !45)
!3025 = distinct !DILexicalBlock(scope: !3019, file: !2890, line: 116, column: 13)
!3026 = !DILocation(line: 0, scope: !3025)
!3027 = !DILocation(line: 116, column: 18, scope: !3025)
!3028 = !DILocation(line: 116, scope: !3025)
!3029 = !DILocation(line: 116, column: 35, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !2890, line: 116, column: 13)
!3031 = !DILocation(line: 116, column: 13, scope: !3025)
!3032 = !DILocation(line: 118, column: 49, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !2890, line: 116, column: 53)
!3034 = !DILocation(line: 118, column: 59, scope: !3033)
!3035 = !DILocation(line: 118, column: 36, scope: !3033)
!3036 = !DILocation(line: 118, column: 34, scope: !3033)
!3037 = !DILocation(line: 119, column: 32, scope: !3033)
!3038 = !DILocation(line: 119, column: 30, scope: !3033)
!3039 = !DILocation(line: 118, column: 67, scope: !3033)
!3040 = !DILocation(line: 117, column: 30, scope: !3033)
!3041 = !DILocation(line: 117, column: 40, scope: !3033)
!3042 = !DILocation(line: 117, column: 17, scope: !3033)
!3043 = !DILocation(line: 117, column: 47, scope: !3033)
!3044 = !DILocation(line: 116, column: 49, scope: !3030)
!3045 = !DILocation(line: 116, column: 13, scope: !3030)
!3046 = distinct !{!3046, !3031, !3047, !244}
!3047 = !DILocation(line: 120, column: 13, scope: !3025)
!3048 = !DILocation(line: 113, column: 80, scope: !3014)
!3049 = !DILocation(line: 113, column: 9, scope: !3014)
!3050 = distinct !{!3050, !3015, !3051, !244}
!3051 = !DILocation(line: 121, column: 9, scope: !3009)
!3052 = !DILocation(line: 124, scope: !3017)
!3053 = !DILocalVariable(name: "row", scope: !3017, file: !2890, line: 124, type: !45)
!3054 = !DILocation(line: 0, scope: !3017)
!3055 = !DILocation(line: 124, column: 51, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3017, file: !2890, line: 124, column: 9)
!3057 = !DILocation(line: 125, column: 46, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3056, file: !2890, line: 124, column: 67)
!3059 = !DILocalVariable(name: "below_pivot", scope: !3058, file: !2890, line: 125, type: !14)
!3060 = !DILocation(line: 0, scope: !3058)
!3061 = !DILocation(line: 126, column: 74, scope: !3058)
!3062 = !DILocation(line: 126, column: 68, scope: !3058)
!3063 = !DILocation(line: 126, column: 41, scope: !3058)
!3064 = !DILocalVariable(name: "elt_to_elim", scope: !3058, file: !2890, line: 126, type: !14)
!3065 = !DILocation(line: 128, column: 63, scope: !3058)
!3066 = !DILocation(line: 129, column: 52, scope: !3058)
!3067 = !DILocation(line: 129, column: 46, scope: !3058)
!3068 = !DILocation(line: 128, column: 13, scope: !3058)
!3069 = !DILocation(line: 124, column: 63, scope: !3056)
!3070 = !DILocation(line: 124, column: 9, scope: !3056)
!3071 = distinct !{!3071, !3016, !3072, !244}
!3072 = !DILocation(line: 130, column: 9, scope: !3017)
!3073 = !DILocation(line: 132, column: 19, scope: !2938)
!3074 = !DILocation(line: 77, column: 57, scope: !2934)
!3075 = !DILocation(line: 77, column: 5, scope: !2934)
!3076 = distinct !{!3076, !2917, !3077, !244}
!3077 = !DILocation(line: 133, column: 5, scope: !2918)
!3078 = !DILocation(line: 138, scope: !2936)
!3079 = !DILocalVariable(name: "i", scope: !2936, file: !2890, line: 138, type: !45)
!3080 = !DILocation(line: 0, scope: !2936)
!3081 = !DILocation(line: 138, column: 23, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2936, file: !2890, line: 138, column: 5)
!3083 = !DILocation(line: 139, column: 47, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !2890, line: 138, column: 37)
!3085 = !DILocation(line: 139, column: 43, scope: !3084)
!3086 = !DILocation(line: 139, column: 9, scope: !3084)
!3087 = !DILocalVariable(name: "j", scope: !3088, file: !2890, line: 140, type: !45)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !2890, line: 140, column: 9)
!3089 = !DILocation(line: 0, scope: !3088)
!3090 = !DILocation(line: 140, column: 14, scope: !3088)
!3091 = !DILocation(line: 140, scope: !3088)
!3092 = !DILocation(line: 140, column: 27, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !2890, line: 140, column: 9)
!3094 = !DILocation(line: 140, column: 9, scope: !3088)
!3095 = !DILocation(line: 141, column: 32, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !2890, line: 140, column: 41)
!3097 = !DILocation(line: 141, column: 17, scope: !3096)
!3098 = !DILocation(line: 141, column: 13, scope: !3096)
!3099 = !DILocation(line: 141, column: 30, scope: !3096)
!3100 = !DILocation(line: 140, column: 37, scope: !3093)
!3101 = !DILocation(line: 140, column: 9, scope: !3093)
!3102 = distinct !{!3102, !3094, !3103, !244}
!3103 = !DILocation(line: 142, column: 9, scope: !3088)
!3104 = !DILocation(line: 138, column: 33, scope: !3082)
!3105 = !DILocation(line: 138, column: 5, scope: !3082)
!3106 = distinct !{!3106, !2935, !3107, !244}
!3107 = !DILocation(line: 143, column: 5, scope: !2936)
!3108 = !DILocation(line: 145, column: 5, scope: !2889)
!3109 = !DILocation(line: 146, column: 5, scope: !2889)
!3110 = !DILocation(line: 147, column: 5, scope: !2889)
!3111 = !DILocation(line: 148, column: 5, scope: !2889)
!3112 = !DILocation(line: 149, column: 1, scope: !2889)
!3113 = distinct !DISubprogram(name: "ct_compare_8", scope: !3114, file: !3114, line: 51, type: !1629, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3114 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3115 = !DILocalVariable(name: "a", arg: 1, scope: !3113, file: !3114, line: 51, type: !14)
!3116 = !DILocation(line: 0, scope: !3113)
!3117 = !DILocalVariable(name: "b", arg: 2, scope: !3113, file: !3114, line: 51, type: !14)
!3118 = !DILocation(line: 52, column: 42, scope: !3113)
!3119 = !DILocation(line: 52, column: 13, scope: !3113)
!3120 = !DILocation(line: 52, column: 71, scope: !3113)
!3121 = !DILocation(line: 52, column: 69, scope: !3113)
!3122 = !DILocation(line: 52, column: 5, scope: !3113)
!3123 = distinct !DISubprogram(name: "mul_fx8", scope: !595, file: !595, line: 29, type: !3124, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!6, !14, !6}
!3126 = !DILocalVariable(name: "a", arg: 1, scope: !3123, file: !595, line: 29, type: !14)
!3127 = !DILocation(line: 0, scope: !3123)
!3128 = !DILocalVariable(name: "b", arg: 2, scope: !3123, file: !595, line: 29, type: !6)
!3129 = !DILocation(line: 32, column: 13, scope: !3123)
!3130 = !DILocation(line: 32, column: 10, scope: !3123)
!3131 = !DILocation(line: 32, column: 17, scope: !3123)
!3132 = !DILocalVariable(name: "p", scope: !3123, file: !595, line: 31, type: !6)
!3133 = !DILocation(line: 33, column: 13, scope: !3123)
!3134 = !DILocation(line: 33, column: 10, scope: !3123)
!3135 = !DILocation(line: 33, column: 17, scope: !3123)
!3136 = !DILocation(line: 33, column: 7, scope: !3123)
!3137 = !DILocation(line: 34, column: 13, scope: !3123)
!3138 = !DILocation(line: 34, column: 10, scope: !3123)
!3139 = !DILocation(line: 34, column: 17, scope: !3123)
!3140 = !DILocation(line: 34, column: 7, scope: !3123)
!3141 = !DILocation(line: 35, column: 13, scope: !3123)
!3142 = !DILocation(line: 35, column: 10, scope: !3123)
!3143 = !DILocation(line: 35, column: 17, scope: !3123)
!3144 = !DILocation(line: 35, column: 7, scope: !3123)
!3145 = !DILocalVariable(name: "top_p", scope: !3123, file: !595, line: 38, type: !6)
!3146 = !DILocation(line: 39, column: 32, scope: !3123)
!3147 = !DILocation(line: 39, column: 47, scope: !3123)
!3148 = !DILocation(line: 39, column: 38, scope: !3123)
!3149 = !DILocation(line: 39, column: 54, scope: !3123)
!3150 = !DILocalVariable(name: "out", scope: !3123, file: !595, line: 39, type: !6)
!3151 = !DILocation(line: 40, column: 5, scope: !3123)
!3152 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2890, file: !2890, line: 24, type: !3153, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !49, !5, !45}
!3155 = !DILocalVariable(name: "in", arg: 1, scope: !3152, file: !2890, line: 24, type: !49)
!3156 = !DILocation(line: 0, scope: !3152)
!3157 = !DILocalVariable(name: "out", arg: 2, scope: !3152, file: !2890, line: 24, type: !5)
!3158 = !DILocalVariable(name: "ncols", arg: 3, scope: !3152, file: !2890, line: 24, type: !45)
!3159 = !DILocalVariable(name: "out8", scope: !3152, file: !2890, line: 26, type: !18)
!3160 = !DILocalVariable(name: "i", scope: !3152, file: !2890, line: 25, type: !45)
!3161 = !DILocation(line: 27, column: 9, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3152, file: !2890, line: 27, column: 5)
!3163 = !DILocation(line: 27, scope: !3162)
!3164 = !DILocation(line: 27, column: 17, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !2890, line: 27, column: 5)
!3166 = !DILocation(line: 27, column: 20, scope: !3165)
!3167 = !DILocation(line: 27, column: 5, scope: !3162)
!3168 = !DILocation(line: 31, column: 23, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !2890, line: 27, column: 36)
!3170 = !DILocation(line: 31, column: 44, scope: !3169)
!3171 = !DILocation(line: 31, column: 40, scope: !3169)
!3172 = !DILocation(line: 31, column: 48, scope: !3169)
!3173 = !DILocation(line: 31, column: 37, scope: !3169)
!3174 = !DILocation(line: 31, column: 15, scope: !3169)
!3175 = !DILocation(line: 31, column: 9, scope: !3169)
!3176 = !DILocation(line: 31, column: 20, scope: !3169)
!3177 = !DILocation(line: 27, column: 31, scope: !3165)
!3178 = !DILocation(line: 27, column: 5, scope: !3165)
!3179 = distinct !{!3179, !3167, !3180, !244}
!3180 = !DILocation(line: 33, column: 5, scope: !3162)
!3181 = !DILocation(line: 34, column: 19, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3152, file: !2890, line: 34, column: 9)
!3183 = !DILocation(line: 38, column: 23, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3182, file: !2890, line: 34, column: 24)
!3185 = !DILocation(line: 38, column: 15, scope: !3184)
!3186 = !DILocation(line: 38, column: 9, scope: !3184)
!3187 = !DILocation(line: 38, column: 20, scope: !3184)
!3188 = !DILocation(line: 40, column: 5, scope: !3184)
!3189 = !DILocation(line: 41, column: 1, scope: !3152)
!3190 = distinct !DISubprogram(name: "ct_compare_64", scope: !3114, file: !3114, line: 46, type: !3191, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!6, !45, !45}
!3193 = !DILocalVariable(name: "a", arg: 1, scope: !3190, file: !3114, line: 46, type: !45)
!3194 = !DILocation(line: 0, scope: !3190)
!3195 = !DILocalVariable(name: "b", arg: 2, scope: !3190, file: !3114, line: 46, type: !45)
!3196 = !DILocation(line: 47, column: 38, scope: !3190)
!3197 = !DILocation(line: 47, column: 44, scope: !3190)
!3198 = !DILocation(line: 47, column: 73, scope: !3190)
!3199 = !DILocation(line: 47, column: 71, scope: !3190)
!3200 = !DILocation(line: 47, column: 5, scope: !3190)
!3201 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3114, file: !3114, line: 35, type: !3191, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3202 = !DILocalVariable(name: "a", arg: 1, scope: !3201, file: !3114, line: 35, type: !45)
!3203 = !DILocation(line: 0, scope: !3201)
!3204 = !DILocalVariable(name: "b", arg: 2, scope: !3201, file: !3114, line: 35, type: !45)
!3205 = !DILocalVariable(name: "diff", scope: !3201, file: !3114, line: 36, type: !46)
!3206 = !DILocation(line: 37, column: 30, scope: !3201)
!3207 = !DILocation(line: 37, column: 59, scope: !3201)
!3208 = !DILocation(line: 37, column: 57, scope: !3201)
!3209 = !DILocation(line: 37, column: 5, scope: !3201)
!3210 = distinct !DISubprogram(name: "m_extract_element", scope: !2890, file: !2890, line: 16, type: !3211, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!14, !428, !45}
!3213 = !DILocalVariable(name: "in", arg: 1, scope: !3210, file: !2890, line: 16, type: !428)
!3214 = !DILocation(line: 0, scope: !3210)
!3215 = !DILocalVariable(name: "index", arg: 2, scope: !3210, file: !2890, line: 16, type: !45)
!3216 = !DILocation(line: 17, column: 27, scope: !3210)
!3217 = !DILocalVariable(name: "leg", scope: !3210, file: !2890, line: 17, type: !343)
!3218 = !DILocation(line: 18, column: 30, scope: !3210)
!3219 = !DILocalVariable(name: "offset", scope: !3210, file: !2890, line: 18, type: !343)
!3220 = !DILocation(line: 20, column: 13, scope: !3210)
!3221 = !DILocation(line: 20, column: 31, scope: !3210)
!3222 = !DILocation(line: 20, column: 21, scope: !3210)
!3223 = !DILocation(line: 20, column: 12, scope: !3210)
!3224 = !DILocation(line: 20, column: 5, scope: !3210)
!3225 = distinct !DISubprogram(name: "inverse_f", scope: !595, file: !595, line: 58, type: !3226, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!14, !14}
!3228 = !DILocalVariable(name: "a", arg: 1, scope: !3225, file: !595, line: 58, type: !14)
!3229 = !DILocation(line: 0, scope: !3225)
!3230 = !DILocation(line: 62, column: 24, scope: !3225)
!3231 = !DILocalVariable(name: "a2", scope: !3225, file: !595, line: 62, type: !14)
!3232 = !DILocation(line: 63, column: 24, scope: !3225)
!3233 = !DILocalVariable(name: "a4", scope: !3225, file: !595, line: 63, type: !14)
!3234 = !DILocation(line: 64, column: 24, scope: !3225)
!3235 = !DILocalVariable(name: "a8", scope: !3225, file: !595, line: 64, type: !14)
!3236 = !DILocation(line: 65, column: 24, scope: !3225)
!3237 = !DILocalVariable(name: "a6", scope: !3225, file: !595, line: 65, type: !14)
!3238 = !DILocation(line: 66, column: 25, scope: !3225)
!3239 = !DILocalVariable(name: "a14", scope: !3225, file: !595, line: 66, type: !14)
!3240 = !DILocation(line: 68, column: 5, scope: !3225)
!3241 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3114, file: !3114, line: 94, type: !3242, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !343, !428, !14, !5}
!3244 = !DILocalVariable(name: "legs", arg: 1, scope: !3241, file: !3114, line: 94, type: !343)
!3245 = !DILocation(line: 0, scope: !3241)
!3246 = !DILocalVariable(name: "in", arg: 2, scope: !3241, file: !3114, line: 94, type: !428)
!3247 = !DILocalVariable(name: "a", arg: 3, scope: !3241, file: !3114, line: 94, type: !14)
!3248 = !DILocalVariable(name: "acc", arg: 4, scope: !3241, file: !3114, line: 94, type: !5)
!3249 = !DILocation(line: 95, column: 20, scope: !3241)
!3250 = !DILocalVariable(name: "tab", scope: !3241, file: !3114, line: 95, type: !19)
!3251 = !DILocalVariable(name: "lsb_ask", scope: !3241, file: !3114, line: 97, type: !6)
!3252 = !DILocalVariable(name: "i", scope: !3253, file: !3114, line: 99, type: !45)
!3253 = distinct !DILexicalBlock(scope: !3241, file: !3114, line: 99, column: 5)
!3254 = !DILocation(line: 0, scope: !3253)
!3255 = !DILocation(line: 99, column: 9, scope: !3253)
!3256 = !DILocation(line: 99, scope: !3253)
!3257 = !DILocation(line: 99, column: 20, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !3114, line: 99, column: 5)
!3259 = !DILocation(line: 99, column: 5, scope: !3253)
!3260 = !DILocation(line: 100, column: 21, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !3114, line: 99, column: 32)
!3262 = !DILocation(line: 100, column: 33, scope: !3261)
!3263 = !DILocation(line: 100, column: 51, scope: !3261)
!3264 = !DILocation(line: 100, column: 46, scope: !3261)
!3265 = !DILocation(line: 100, column: 44, scope: !3261)
!3266 = !DILocation(line: 101, column: 27, scope: !3261)
!3267 = !DILocation(line: 101, column: 33, scope: !3261)
!3268 = !DILocation(line: 101, column: 52, scope: !3261)
!3269 = !DILocation(line: 101, column: 59, scope: !3261)
!3270 = !DILocation(line: 101, column: 46, scope: !3261)
!3271 = !DILocation(line: 101, column: 44, scope: !3261)
!3272 = !DILocation(line: 101, column: 17, scope: !3261)
!3273 = !DILocation(line: 102, column: 21, scope: !3261)
!3274 = !DILocation(line: 102, column: 27, scope: !3261)
!3275 = !DILocation(line: 102, column: 33, scope: !3261)
!3276 = !DILocation(line: 102, column: 52, scope: !3261)
!3277 = !DILocation(line: 102, column: 59, scope: !3261)
!3278 = !DILocation(line: 102, column: 46, scope: !3261)
!3279 = !DILocation(line: 102, column: 44, scope: !3261)
!3280 = !DILocation(line: 102, column: 17, scope: !3261)
!3281 = !DILocation(line: 103, column: 21, scope: !3261)
!3282 = !DILocation(line: 103, column: 27, scope: !3261)
!3283 = !DILocation(line: 103, column: 33, scope: !3261)
!3284 = !DILocation(line: 103, column: 52, scope: !3261)
!3285 = !DILocation(line: 103, column: 59, scope: !3261)
!3286 = !DILocation(line: 103, column: 46, scope: !3261)
!3287 = !DILocation(line: 103, column: 44, scope: !3261)
!3288 = !DILocation(line: 103, column: 17, scope: !3261)
!3289 = !DILocation(line: 100, column: 9, scope: !3261)
!3290 = !DILocation(line: 100, column: 16, scope: !3261)
!3291 = !DILocation(line: 99, column: 29, scope: !3258)
!3292 = !DILocation(line: 99, column: 5, scope: !3258)
!3293 = distinct !{!3293, !3259, !3294, !244}
!3294 = !DILocation(line: 104, column: 5, scope: !3253)
!3295 = !DILocation(line: 105, column: 1, scope: !3241)
!3296 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2890, file: !2890, line: 44, type: !3297, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !45, !428, !18}
!3299 = !DILocalVariable(name: "legs", arg: 1, scope: !3296, file: !2890, line: 44, type: !45)
!3300 = !DILocation(line: 0, scope: !3296)
!3301 = !DILocalVariable(name: "in", arg: 2, scope: !3296, file: !2890, line: 44, type: !428)
!3302 = !DILocalVariable(name: "out", arg: 3, scope: !3296, file: !2890, line: 44, type: !18)
!3303 = !DILocalVariable(name: "in8", scope: !3296, file: !2890, line: 45, type: !49)
!3304 = !DILocalVariable(name: "i", scope: !3305, file: !2890, line: 46, type: !45)
!3305 = distinct !DILexicalBlock(scope: !3296, file: !2890, line: 46, column: 5)
!3306 = !DILocation(line: 0, scope: !3305)
!3307 = !DILocation(line: 46, column: 9, scope: !3305)
!3308 = !DILocation(line: 46, scope: !3305)
!3309 = !DILocation(line: 46, column: 29, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3305, file: !2890, line: 46, column: 5)
!3311 = !DILocation(line: 46, column: 22, scope: !3310)
!3312 = !DILocation(line: 46, column: 5, scope: !3305)
!3313 = !DILocation(line: 51, column: 26, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !2890, line: 46, column: 42)
!3315 = !DILocation(line: 51, column: 21, scope: !3314)
!3316 = !DILocation(line: 51, column: 31, scope: !3314)
!3317 = !DILocation(line: 51, column: 9, scope: !3314)
!3318 = !DILocation(line: 51, column: 18, scope: !3314)
!3319 = !DILocation(line: 52, column: 26, scope: !3314)
!3320 = !DILocation(line: 52, column: 21, scope: !3314)
!3321 = !DILocation(line: 52, column: 30, scope: !3314)
!3322 = !DILocation(line: 52, column: 14, scope: !3314)
!3323 = !DILocation(line: 52, column: 9, scope: !3314)
!3324 = !DILocation(line: 52, column: 18, scope: !3314)
!3325 = !DILocation(line: 46, column: 37, scope: !3310)
!3326 = !DILocation(line: 46, column: 5, scope: !3310)
!3327 = distinct !{!3327, !3312, !3328, !244}
!3328 = !DILocation(line: 54, column: 5, scope: !3305)
!3329 = !DILocation(line: 55, column: 1, scope: !3296)
!3330 = distinct !DISubprogram(name: "mul_table", scope: !595, file: !595, line: 136, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3331 = !DILocalVariable(name: "b", arg: 1, scope: !3330, file: !595, line: 136, type: !12)
!3332 = !DILocation(line: 0, scope: !3330)
!3333 = !DILocation(line: 137, column: 19, scope: !3330)
!3334 = !DILocation(line: 137, column: 33, scope: !3330)
!3335 = !DILocalVariable(name: "x", scope: !3330, file: !595, line: 137, type: !19)
!3336 = !DILocalVariable(name: "high_nibble_mask", scope: !3330, file: !595, line: 139, type: !19)
!3337 = !DILocation(line: 141, column: 28, scope: !3330)
!3338 = !DILocalVariable(name: "high_half", scope: !3330, file: !595, line: 141, type: !19)
!3339 = !DILocation(line: 142, column: 28, scope: !3330)
!3340 = !DILocation(line: 142, column: 47, scope: !3330)
!3341 = !DILocation(line: 142, column: 34, scope: !3330)
!3342 = !DILocation(line: 142, column: 5, scope: !3330)
!3343 = distinct !DISubprogram(name: "mul_f", scope: !595, file: !595, line: 10, type: !1629, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3344 = !DILocalVariable(name: "a", arg: 1, scope: !3343, file: !595, line: 10, type: !14)
!3345 = !DILocation(line: 0, scope: !3343)
!3346 = !DILocalVariable(name: "b", arg: 2, scope: !3343, file: !595, line: 10, type: !14)
!3347 = !DILocation(line: 15, column: 10, scope: !3343)
!3348 = !DILocation(line: 15, column: 7, scope: !3343)
!3349 = !DILocation(line: 18, column: 17, scope: !3343)
!3350 = !DILocalVariable(name: "p", scope: !3343, file: !595, line: 12, type: !14)
!3351 = !DILocation(line: 19, column: 13, scope: !3343)
!3352 = !DILocation(line: 19, column: 17, scope: !3343)
!3353 = !DILocation(line: 19, column: 7, scope: !3343)
!3354 = !DILocation(line: 20, column: 13, scope: !3343)
!3355 = !DILocation(line: 20, column: 17, scope: !3343)
!3356 = !DILocation(line: 20, column: 7, scope: !3343)
!3357 = !DILocation(line: 21, column: 13, scope: !3343)
!3358 = !DILocation(line: 21, column: 17, scope: !3343)
!3359 = !DILocation(line: 21, column: 7, scope: !3343)
!3360 = !DILocalVariable(name: "top_p", scope: !3343, file: !595, line: 24, type: !14)
!3361 = !DILocation(line: 25, column: 37, scope: !3343)
!3362 = !DILocation(line: 25, column: 52, scope: !3343)
!3363 = !DILocation(line: 25, column: 43, scope: !3343)
!3364 = !DILocation(line: 25, column: 59, scope: !3343)
!3365 = !DILocalVariable(name: "out", scope: !3343, file: !595, line: 25, type: !14)
!3366 = !DILocation(line: 26, column: 5, scope: !3343)
!3367 = distinct !DISubprogram(name: "lincomb", scope: !595, file: !595, line: 71, type: !1637, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3368 = !DILocalVariable(name: "a", arg: 1, scope: !3367, file: !595, line: 71, type: !49)
!3369 = !DILocation(line: 0, scope: !3367)
!3370 = !DILocalVariable(name: "b", arg: 2, scope: !3367, file: !595, line: 72, type: !49)
!3371 = !DILocalVariable(name: "n", arg: 3, scope: !3367, file: !595, line: 72, type: !45)
!3372 = !DILocalVariable(name: "m", arg: 4, scope: !3367, file: !595, line: 72, type: !45)
!3373 = !DILocalVariable(name: "ret", scope: !3367, file: !595, line: 73, type: !14)
!3374 = !DILocalVariable(name: "i", scope: !3375, file: !595, line: 74, type: !45)
!3375 = distinct !DILexicalBlock(scope: !3367, file: !595, line: 74, column: 5)
!3376 = !DILocation(line: 0, scope: !3375)
!3377 = !DILocation(line: 74, column: 10, scope: !3375)
!3378 = !DILocation(line: 74, scope: !3375)
!3379 = !DILocation(line: 74, column: 23, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3375, file: !595, line: 74, column: 5)
!3381 = !DILocation(line: 74, column: 5, scope: !3375)
!3382 = !DILocation(line: 75, column: 27, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !595, line: 74, column: 41)
!3384 = !DILocation(line: 75, column: 33, scope: !3383)
!3385 = !DILocation(line: 75, column: 21, scope: !3383)
!3386 = !DILocation(line: 75, column: 15, scope: !3383)
!3387 = !DILocation(line: 74, column: 28, scope: !3380)
!3388 = !DILocation(line: 74, column: 35, scope: !3380)
!3389 = !DILocation(line: 74, column: 5, scope: !3380)
!3390 = distinct !{!3390, !3381, !3391, !244}
!3391 = !DILocation(line: 76, column: 5, scope: !3375)
!3392 = !DILocation(line: 79, column: 5, scope: !3367)
!3393 = distinct !DISubprogram(name: "add_f", scope: !595, file: !595, line: 44, type: !1629, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3394 = !DILocalVariable(name: "a", arg: 1, scope: !3393, file: !595, line: 44, type: !14)
!3395 = !DILocation(line: 0, scope: !3393)
!3396 = !DILocalVariable(name: "b", arg: 2, scope: !3393, file: !595, line: 44, type: !14)
!3397 = !DILocation(line: 45, column: 14, scope: !3393)
!3398 = !DILocation(line: 45, column: 5, scope: !3393)
!3399 = distinct !DISubprogram(name: "shake128_inc_init", scope: !71, file: !71, line: 688, type: !3400, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128incctx", file: !71, line: 31, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 29, size: 32, elements: !3405)
!3405 = !{!3406}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3404, file: !71, line: 30, baseType: !5, size: 32)
!3407 = !DILocalVariable(name: "state", arg: 1, scope: !3399, file: !71, line: 688, type: !3402)
!3408 = !DILocation(line: 0, scope: !3399)
!3409 = !DILocation(line: 689, column: 18, scope: !3399)
!3410 = !DILocation(line: 689, column: 16, scope: !3399)
!3411 = !DILocation(line: 690, column: 20, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3399, file: !71, line: 690, column: 9)
!3413 = !DILocation(line: 691, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !71, line: 690, column: 29)
!3415 = !DILocation(line: 692, column: 5, scope: !3414)
!3416 = !DILocation(line: 693, column: 28, scope: !3399)
!3417 = !DILocation(line: 693, column: 5, scope: !3399)
!3418 = !DILocation(line: 694, column: 1, scope: !3399)
!3419 = distinct !DISubprogram(name: "keccak_inc_init", scope: !71, file: !71, line: 580, type: !26, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3420 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3419, file: !71, line: 580, type: !5)
!3421 = !DILocation(line: 0, scope: !3419)
!3422 = !DILocalVariable(name: "i", scope: !3419, file: !71, line: 581, type: !15)
!3423 = !DILocation(line: 583, column: 10, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !71, line: 583, column: 5)
!3425 = !DILocation(line: 583, scope: !3424)
!3426 = !DILocation(line: 583, column: 19, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !71, line: 583, column: 5)
!3428 = !DILocation(line: 583, column: 5, scope: !3424)
!3429 = !DILocation(line: 584, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3427, file: !71, line: 583, column: 30)
!3431 = !DILocation(line: 584, column: 18, scope: !3430)
!3432 = !DILocation(line: 583, column: 25, scope: !3427)
!3433 = !DILocation(line: 583, column: 5, scope: !3427)
!3434 = distinct !{!3434, !3428, !3435, !244}
!3435 = !DILocation(line: 585, column: 5, scope: !3424)
!3436 = !DILocation(line: 586, column: 5, scope: !3419)
!3437 = !DILocation(line: 586, column: 15, scope: !3419)
!3438 = !DILocation(line: 587, column: 1, scope: !3419)
!3439 = distinct !DISubprogram(name: "shake128_inc_absorb", scope: !71, file: !71, line: 696, type: !3440, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3402, !257, !15}
!3442 = !DILocalVariable(name: "state", arg: 1, scope: !3439, file: !71, line: 696, type: !3402)
!3443 = !DILocation(line: 0, scope: !3439)
!3444 = !DILocalVariable(name: "input", arg: 2, scope: !3439, file: !71, line: 696, type: !257)
!3445 = !DILocalVariable(name: "inlen", arg: 3, scope: !3439, file: !71, line: 696, type: !15)
!3446 = !DILocation(line: 697, column: 30, scope: !3439)
!3447 = !DILocation(line: 697, column: 5, scope: !3439)
!3448 = !DILocation(line: 698, column: 1, scope: !3439)
!3449 = distinct !DISubprogram(name: "keccak_inc_absorb", scope: !71, file: !71, line: 603, type: !3450, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !5, !19, !257, !15}
!3452 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3449, file: !71, line: 603, type: !5)
!3453 = !DILocation(line: 0, scope: !3449)
!3454 = !DILocalVariable(name: "r", arg: 2, scope: !3449, file: !71, line: 603, type: !19)
!3455 = !DILocalVariable(name: "m", arg: 3, scope: !3449, file: !71, line: 603, type: !257)
!3456 = !DILocalVariable(name: "mlen", arg: 4, scope: !3449, file: !71, line: 604, type: !15)
!3457 = !DILocation(line: 608, column: 5, scope: !3449)
!3458 = !DILocation(line: 608, column: 12, scope: !3449)
!3459 = !DILocation(line: 608, column: 19, scope: !3449)
!3460 = !DILocation(line: 608, column: 17, scope: !3449)
!3461 = !DILocation(line: 608, column: 32, scope: !3449)
!3462 = !DILocation(line: 608, column: 29, scope: !3449)
!3463 = !DILocation(line: 609, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !71, line: 609, column: 9)
!3465 = distinct !DILexicalBlock(scope: !3449, file: !71, line: 608, column: 35)
!3466 = !DILocation(line: 621, column: 5, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3449, file: !71, line: 621, column: 5)
!3468 = !DILocation(line: 609, scope: !3464)
!3469 = !DILocalVariable(name: "i", scope: !3449, file: !71, line: 605, type: !15)
!3470 = !DILocation(line: 609, column: 39, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3464, file: !71, line: 609, column: 9)
!3472 = !DILocation(line: 609, column: 29, scope: !3471)
!3473 = !DILocation(line: 609, column: 27, scope: !3471)
!3474 = !DILocation(line: 609, column: 23, scope: !3471)
!3475 = !DILocation(line: 612, column: 54, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3471, file: !71, line: 609, column: 55)
!3477 = !DILocation(line: 612, column: 44, scope: !3476)
!3478 = !DILocation(line: 612, column: 69, scope: !3476)
!3479 = !DILocation(line: 612, column: 81, scope: !3476)
!3480 = !DILocation(line: 612, column: 79, scope: !3476)
!3481 = !DILocation(line: 612, column: 65, scope: !3476)
!3482 = !DILocation(line: 612, column: 59, scope: !3476)
!3483 = !DILocation(line: 612, column: 20, scope: !3476)
!3484 = !DILocation(line: 612, column: 32, scope: !3476)
!3485 = !DILocation(line: 612, column: 30, scope: !3476)
!3486 = !DILocation(line: 612, column: 35, scope: !3476)
!3487 = !DILocation(line: 612, column: 13, scope: !3476)
!3488 = !DILocation(line: 612, column: 41, scope: !3476)
!3489 = !DILocation(line: 609, column: 51, scope: !3471)
!3490 = !DILocation(line: 609, column: 9, scope: !3471)
!3491 = distinct !{!3491, !3463, !3492, !244}
!3492 = !DILocation(line: 613, column: 9, scope: !3464)
!3493 = !DILocation(line: 614, column: 30, scope: !3465)
!3494 = !DILocation(line: 614, column: 17, scope: !3465)
!3495 = !DILocation(line: 614, column: 14, scope: !3465)
!3496 = !DILocation(line: 615, column: 11, scope: !3465)
!3497 = !DILocation(line: 616, column: 9, scope: !3465)
!3498 = !DILocation(line: 616, column: 19, scope: !3465)
!3499 = !DILocation(line: 618, column: 9, scope: !3465)
!3500 = distinct !{!3500, !3457, !3501, !244}
!3501 = !DILocation(line: 619, column: 5, scope: !3449)
!3502 = !DILocation(line: 621, scope: !3467)
!3503 = !DILocation(line: 621, column: 19, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3467, file: !71, line: 621, column: 5)
!3505 = !DILocation(line: 622, column: 50, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3504, file: !71, line: 621, column: 32)
!3507 = !DILocation(line: 622, column: 40, scope: !3506)
!3508 = !DILocation(line: 622, column: 65, scope: !3506)
!3509 = !DILocation(line: 622, column: 77, scope: !3506)
!3510 = !DILocation(line: 622, column: 75, scope: !3506)
!3511 = !DILocation(line: 622, column: 61, scope: !3506)
!3512 = !DILocation(line: 622, column: 55, scope: !3506)
!3513 = !DILocation(line: 622, column: 16, scope: !3506)
!3514 = !DILocation(line: 622, column: 28, scope: !3506)
!3515 = !DILocation(line: 622, column: 26, scope: !3506)
!3516 = !DILocation(line: 622, column: 31, scope: !3506)
!3517 = !DILocation(line: 622, column: 9, scope: !3506)
!3518 = !DILocation(line: 622, column: 37, scope: !3506)
!3519 = !DILocation(line: 621, column: 28, scope: !3504)
!3520 = !DILocation(line: 621, column: 5, scope: !3504)
!3521 = distinct !{!3521, !3466, !3522, !244}
!3522 = !DILocation(line: 623, column: 5, scope: !3467)
!3523 = !DILocation(line: 624, column: 18, scope: !3449)
!3524 = !DILocation(line: 624, column: 5, scope: !3449)
!3525 = !DILocation(line: 624, column: 15, scope: !3449)
!3526 = !DILocation(line: 625, column: 1, scope: !3449)
!3527 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !71, file: !71, line: 236, type: !26, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3528 = !DILocalVariable(name: "state", arg: 1, scope: !3527, file: !71, line: 236, type: !5)
!3529 = !DILocation(line: 0, scope: !3527)
!3530 = !DILocation(line: 253, column: 11, scope: !3527)
!3531 = !DILocalVariable(name: "Aba", scope: !3527, file: !71, line: 239, type: !6)
!3532 = !DILocation(line: 254, column: 11, scope: !3527)
!3533 = !DILocalVariable(name: "Abe", scope: !3527, file: !71, line: 239, type: !6)
!3534 = !DILocation(line: 255, column: 11, scope: !3527)
!3535 = !DILocalVariable(name: "Abi", scope: !3527, file: !71, line: 239, type: !6)
!3536 = !DILocation(line: 256, column: 11, scope: !3527)
!3537 = !DILocalVariable(name: "Abo", scope: !3527, file: !71, line: 239, type: !6)
!3538 = !DILocation(line: 257, column: 11, scope: !3527)
!3539 = !DILocalVariable(name: "Abu", scope: !3527, file: !71, line: 239, type: !6)
!3540 = !DILocation(line: 258, column: 11, scope: !3527)
!3541 = !DILocalVariable(name: "Aga", scope: !3527, file: !71, line: 240, type: !6)
!3542 = !DILocation(line: 259, column: 11, scope: !3527)
!3543 = !DILocalVariable(name: "Age", scope: !3527, file: !71, line: 240, type: !6)
!3544 = !DILocation(line: 260, column: 11, scope: !3527)
!3545 = !DILocalVariable(name: "Agi", scope: !3527, file: !71, line: 240, type: !6)
!3546 = !DILocation(line: 261, column: 11, scope: !3527)
!3547 = !DILocalVariable(name: "Ago", scope: !3527, file: !71, line: 240, type: !6)
!3548 = !DILocation(line: 262, column: 11, scope: !3527)
!3549 = !DILocalVariable(name: "Agu", scope: !3527, file: !71, line: 240, type: !6)
!3550 = !DILocation(line: 263, column: 11, scope: !3527)
!3551 = !DILocalVariable(name: "Aka", scope: !3527, file: !71, line: 241, type: !6)
!3552 = !DILocation(line: 264, column: 11, scope: !3527)
!3553 = !DILocalVariable(name: "Ake", scope: !3527, file: !71, line: 241, type: !6)
!3554 = !DILocation(line: 265, column: 11, scope: !3527)
!3555 = !DILocalVariable(name: "Aki", scope: !3527, file: !71, line: 241, type: !6)
!3556 = !DILocation(line: 266, column: 11, scope: !3527)
!3557 = !DILocalVariable(name: "Ako", scope: !3527, file: !71, line: 241, type: !6)
!3558 = !DILocation(line: 267, column: 11, scope: !3527)
!3559 = !DILocalVariable(name: "Aku", scope: !3527, file: !71, line: 241, type: !6)
!3560 = !DILocation(line: 268, column: 11, scope: !3527)
!3561 = !DILocalVariable(name: "Ama", scope: !3527, file: !71, line: 242, type: !6)
!3562 = !DILocation(line: 269, column: 11, scope: !3527)
!3563 = !DILocalVariable(name: "Ame", scope: !3527, file: !71, line: 242, type: !6)
!3564 = !DILocation(line: 270, column: 11, scope: !3527)
!3565 = !DILocalVariable(name: "Ami", scope: !3527, file: !71, line: 242, type: !6)
!3566 = !DILocation(line: 271, column: 11, scope: !3527)
!3567 = !DILocalVariable(name: "Amo", scope: !3527, file: !71, line: 242, type: !6)
!3568 = !DILocation(line: 272, column: 11, scope: !3527)
!3569 = !DILocalVariable(name: "Amu", scope: !3527, file: !71, line: 242, type: !6)
!3570 = !DILocation(line: 273, column: 11, scope: !3527)
!3571 = !DILocalVariable(name: "Asa", scope: !3527, file: !71, line: 243, type: !6)
!3572 = !DILocation(line: 274, column: 11, scope: !3527)
!3573 = !DILocalVariable(name: "Ase", scope: !3527, file: !71, line: 243, type: !6)
!3574 = !DILocation(line: 275, column: 11, scope: !3527)
!3575 = !DILocalVariable(name: "Asi", scope: !3527, file: !71, line: 243, type: !6)
!3576 = !DILocation(line: 276, column: 11, scope: !3527)
!3577 = !DILocalVariable(name: "Aso", scope: !3527, file: !71, line: 243, type: !6)
!3578 = !DILocation(line: 277, column: 11, scope: !3527)
!3579 = !DILocalVariable(name: "Asu", scope: !3527, file: !71, line: 243, type: !6)
!3580 = !DILocalVariable(name: "round", scope: !3527, file: !71, line: 237, type: !45)
!3581 = !DILocation(line: 279, column: 10, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3527, file: !71, line: 279, column: 5)
!3583 = !DILocation(line: 279, scope: !3582)
!3584 = !DILocation(line: 279, column: 27, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3582, file: !71, line: 279, column: 5)
!3586 = !DILocation(line: 279, column: 5, scope: !3582)
!3587 = !DILocalVariable(name: "BCa", scope: !3527, file: !71, line: 244, type: !6)
!3588 = !DILocalVariable(name: "BCe", scope: !3527, file: !71, line: 244, type: !6)
!3589 = !DILocalVariable(name: "BCi", scope: !3527, file: !71, line: 244, type: !6)
!3590 = !DILocalVariable(name: "BCo", scope: !3527, file: !71, line: 244, type: !6)
!3591 = !DILocalVariable(name: "BCu", scope: !3527, file: !71, line: 244, type: !6)
!3592 = !DILocalVariable(name: "Da", scope: !3527, file: !71, line: 245, type: !6)
!3593 = !DILocalVariable(name: "De", scope: !3527, file: !71, line: 245, type: !6)
!3594 = !DILocalVariable(name: "Di", scope: !3527, file: !71, line: 245, type: !6)
!3595 = !DILocalVariable(name: "Do", scope: !3527, file: !71, line: 245, type: !6)
!3596 = !DILocalVariable(name: "Du", scope: !3527, file: !71, line: 245, type: !6)
!3597 = !DILocalVariable(name: "Eba", scope: !3527, file: !71, line: 246, type: !6)
!3598 = !DILocalVariable(name: "Ebe", scope: !3527, file: !71, line: 246, type: !6)
!3599 = !DILocalVariable(name: "Ebi", scope: !3527, file: !71, line: 246, type: !6)
!3600 = !DILocalVariable(name: "Ebo", scope: !3527, file: !71, line: 246, type: !6)
!3601 = !DILocalVariable(name: "Ebu", scope: !3527, file: !71, line: 246, type: !6)
!3602 = !DILocalVariable(name: "Ega", scope: !3527, file: !71, line: 247, type: !6)
!3603 = !DILocalVariable(name: "Ege", scope: !3527, file: !71, line: 247, type: !6)
!3604 = !DILocalVariable(name: "Egi", scope: !3527, file: !71, line: 247, type: !6)
!3605 = !DILocalVariable(name: "Ego", scope: !3527, file: !71, line: 247, type: !6)
!3606 = !DILocalVariable(name: "Egu", scope: !3527, file: !71, line: 247, type: !6)
!3607 = !DILocalVariable(name: "Eka", scope: !3527, file: !71, line: 248, type: !6)
!3608 = !DILocalVariable(name: "Eke", scope: !3527, file: !71, line: 248, type: !6)
!3609 = !DILocalVariable(name: "Eki", scope: !3527, file: !71, line: 248, type: !6)
!3610 = !DILocalVariable(name: "Eko", scope: !3527, file: !71, line: 248, type: !6)
!3611 = !DILocalVariable(name: "Eku", scope: !3527, file: !71, line: 248, type: !6)
!3612 = !DILocalVariable(name: "Ema", scope: !3527, file: !71, line: 249, type: !6)
!3613 = !DILocalVariable(name: "Eme", scope: !3527, file: !71, line: 249, type: !6)
!3614 = !DILocalVariable(name: "Emi", scope: !3527, file: !71, line: 249, type: !6)
!3615 = !DILocalVariable(name: "Emo", scope: !3527, file: !71, line: 249, type: !6)
!3616 = !DILocalVariable(name: "Emu", scope: !3527, file: !71, line: 249, type: !6)
!3617 = !DILocalVariable(name: "Esa", scope: !3527, file: !71, line: 250, type: !6)
!3618 = !DILocalVariable(name: "Ese", scope: !3527, file: !71, line: 250, type: !6)
!3619 = !DILocalVariable(name: "Esi", scope: !3527, file: !71, line: 250, type: !6)
!3620 = !DILocalVariable(name: "Eso", scope: !3527, file: !71, line: 250, type: !6)
!3621 = !DILocalVariable(name: "Esu", scope: !3527, file: !71, line: 250, type: !6)
!3622 = !DILocation(line: 283, column: 19, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3585, file: !71, line: 279, column: 50)
!3624 = !DILocation(line: 283, column: 25, scope: !3623)
!3625 = !DILocation(line: 283, column: 31, scope: !3623)
!3626 = !DILocation(line: 283, column: 37, scope: !3623)
!3627 = !DILocation(line: 285, column: 19, scope: !3623)
!3628 = !DILocation(line: 285, column: 25, scope: !3623)
!3629 = !DILocation(line: 285, column: 31, scope: !3623)
!3630 = !DILocation(line: 285, column: 37, scope: !3623)
!3631 = !DILocation(line: 291, column: 20, scope: !3623)
!3632 = !DILocation(line: 291, column: 18, scope: !3623)
!3633 = !DILocation(line: 361, column: 13, scope: !3623)
!3634 = !DILocation(line: 362, column: 15, scope: !3623)
!3635 = !DILocation(line: 282, column: 19, scope: !3623)
!3636 = !DILocation(line: 282, column: 25, scope: !3623)
!3637 = !DILocation(line: 282, column: 31, scope: !3623)
!3638 = !DILocation(line: 282, column: 37, scope: !3623)
!3639 = !DILocation(line: 288, column: 20, scope: !3623)
!3640 = !DILocation(line: 288, column: 18, scope: !3623)
!3641 = !DILocation(line: 365, column: 13, scope: !3623)
!3642 = !DILocation(line: 366, column: 15, scope: !3623)
!3643 = !DILocation(line: 284, column: 19, scope: !3623)
!3644 = !DILocation(line: 284, column: 25, scope: !3623)
!3645 = !DILocation(line: 284, column: 31, scope: !3623)
!3646 = !DILocation(line: 284, column: 37, scope: !3623)
!3647 = !DILocation(line: 281, column: 19, scope: !3623)
!3648 = !DILocation(line: 281, column: 25, scope: !3623)
!3649 = !DILocation(line: 281, column: 31, scope: !3623)
!3650 = !DILocation(line: 281, column: 37, scope: !3623)
!3651 = !DILocation(line: 292, column: 20, scope: !3623)
!3652 = !DILocation(line: 292, column: 18, scope: !3623)
!3653 = !DILocation(line: 363, column: 13, scope: !3623)
!3654 = !DILocation(line: 364, column: 15, scope: !3623)
!3655 = !DILocation(line: 370, column: 23, scope: !3623)
!3656 = !DILocation(line: 370, column: 29, scope: !3623)
!3657 = !DILocation(line: 370, column: 19, scope: !3623)
!3658 = !DILocation(line: 290, column: 20, scope: !3623)
!3659 = !DILocation(line: 290, column: 18, scope: !3623)
!3660 = !DILocation(line: 298, column: 13, scope: !3623)
!3661 = !DILocation(line: 299, column: 15, scope: !3623)
!3662 = !DILocation(line: 289, column: 20, scope: !3623)
!3663 = !DILocation(line: 289, column: 18, scope: !3623)
!3664 = !DILocation(line: 296, column: 13, scope: !3623)
!3665 = !DILocation(line: 297, column: 15, scope: !3623)
!3666 = !DILocation(line: 304, column: 23, scope: !3623)
!3667 = !DILocation(line: 304, column: 29, scope: !3623)
!3668 = !DILocation(line: 305, column: 16, scope: !3623)
!3669 = !DILocation(line: 305, column: 13, scope: !3623)
!3670 = !DILocation(line: 294, column: 13, scope: !3623)
!3671 = !DILocation(line: 311, column: 13, scope: !3623)
!3672 = !DILocation(line: 312, column: 15, scope: !3623)
!3673 = !DILocation(line: 315, column: 13, scope: !3623)
!3674 = !DILocation(line: 316, column: 15, scope: !3623)
!3675 = !DILocation(line: 313, column: 13, scope: !3623)
!3676 = !DILocation(line: 314, column: 15, scope: !3623)
!3677 = !DILocation(line: 321, column: 23, scope: !3623)
!3678 = !DILocation(line: 321, column: 29, scope: !3623)
!3679 = !DILocation(line: 321, column: 19, scope: !3623)
!3680 = !DILocation(line: 376, column: 19, scope: !3623)
!3681 = !DILocation(line: 327, column: 13, scope: !3623)
!3682 = !DILocation(line: 328, column: 15, scope: !3623)
!3683 = !DILocation(line: 331, column: 13, scope: !3623)
!3684 = !DILocation(line: 332, column: 15, scope: !3623)
!3685 = !DILocation(line: 329, column: 13, scope: !3623)
!3686 = !DILocation(line: 330, column: 15, scope: !3623)
!3687 = !DILocation(line: 337, column: 23, scope: !3623)
!3688 = !DILocation(line: 337, column: 29, scope: !3623)
!3689 = !DILocation(line: 337, column: 19, scope: !3623)
!3690 = !DILocation(line: 376, column: 25, scope: !3623)
!3691 = !DILocation(line: 343, column: 13, scope: !3623)
!3692 = !DILocation(line: 344, column: 15, scope: !3623)
!3693 = !DILocation(line: 347, column: 13, scope: !3623)
!3694 = !DILocation(line: 348, column: 15, scope: !3623)
!3695 = !DILocation(line: 345, column: 13, scope: !3623)
!3696 = !DILocation(line: 346, column: 15, scope: !3623)
!3697 = !DILocation(line: 353, column: 23, scope: !3623)
!3698 = !DILocation(line: 353, column: 29, scope: !3623)
!3699 = !DILocation(line: 353, column: 19, scope: !3623)
!3700 = !DILocation(line: 376, column: 31, scope: !3623)
!3701 = !DILocation(line: 359, column: 13, scope: !3623)
!3702 = !DILocation(line: 360, column: 15, scope: !3623)
!3703 = !DILocation(line: 369, column: 23, scope: !3623)
!3704 = !DILocation(line: 369, column: 29, scope: !3623)
!3705 = !DILocation(line: 369, column: 19, scope: !3623)
!3706 = !DILocation(line: 376, column: 37, scope: !3623)
!3707 = !DILocation(line: 302, column: 13, scope: !3623)
!3708 = !DILocation(line: 303, column: 15, scope: !3623)
!3709 = !DILocation(line: 300, column: 13, scope: !3623)
!3710 = !DILocation(line: 301, column: 15, scope: !3623)
!3711 = !DILocation(line: 307, column: 23, scope: !3623)
!3712 = !DILocation(line: 307, column: 29, scope: !3623)
!3713 = !DILocation(line: 307, column: 19, scope: !3623)
!3714 = !DILocation(line: 319, column: 13, scope: !3623)
!3715 = !DILocation(line: 320, column: 15, scope: !3623)
!3716 = !DILocation(line: 317, column: 13, scope: !3623)
!3717 = !DILocation(line: 318, column: 15, scope: !3623)
!3718 = !DILocation(line: 323, column: 23, scope: !3623)
!3719 = !DILocation(line: 323, column: 29, scope: !3623)
!3720 = !DILocation(line: 323, column: 19, scope: !3623)
!3721 = !DILocation(line: 378, column: 19, scope: !3623)
!3722 = !DILocation(line: 335, column: 13, scope: !3623)
!3723 = !DILocation(line: 336, column: 15, scope: !3623)
!3724 = !DILocation(line: 333, column: 13, scope: !3623)
!3725 = !DILocation(line: 334, column: 15, scope: !3623)
!3726 = !DILocation(line: 339, column: 23, scope: !3623)
!3727 = !DILocation(line: 339, column: 29, scope: !3623)
!3728 = !DILocation(line: 339, column: 19, scope: !3623)
!3729 = !DILocation(line: 378, column: 25, scope: !3623)
!3730 = !DILocation(line: 351, column: 13, scope: !3623)
!3731 = !DILocation(line: 352, column: 15, scope: !3623)
!3732 = !DILocation(line: 349, column: 13, scope: !3623)
!3733 = !DILocation(line: 350, column: 15, scope: !3623)
!3734 = !DILocation(line: 355, column: 23, scope: !3623)
!3735 = !DILocation(line: 355, column: 29, scope: !3623)
!3736 = !DILocation(line: 355, column: 19, scope: !3623)
!3737 = !DILocation(line: 378, column: 31, scope: !3623)
!3738 = !DILocation(line: 367, column: 13, scope: !3623)
!3739 = !DILocation(line: 368, column: 15, scope: !3623)
!3740 = !DILocation(line: 371, column: 23, scope: !3623)
!3741 = !DILocation(line: 371, column: 29, scope: !3623)
!3742 = !DILocation(line: 371, column: 19, scope: !3623)
!3743 = !DILocation(line: 378, column: 37, scope: !3623)
!3744 = !DILocation(line: 384, column: 20, scope: !3623)
!3745 = !DILocation(line: 384, column: 18, scope: !3623)
!3746 = !DILocation(line: 462, column: 13, scope: !3623)
!3747 = !DILocation(line: 463, column: 15, scope: !3623)
!3748 = !DILocation(line: 324, column: 23, scope: !3623)
!3749 = !DILocation(line: 324, column: 29, scope: !3623)
!3750 = !DILocation(line: 324, column: 19, scope: !3623)
!3751 = !DILocation(line: 309, column: 23, scope: !3623)
!3752 = !DILocation(line: 309, column: 29, scope: !3623)
!3753 = !DILocation(line: 309, column: 19, scope: !3623)
!3754 = !DILocation(line: 325, column: 23, scope: !3623)
!3755 = !DILocation(line: 325, column: 29, scope: !3623)
!3756 = !DILocation(line: 325, column: 19, scope: !3623)
!3757 = !DILocation(line: 380, column: 19, scope: !3623)
!3758 = !DILocation(line: 341, column: 23, scope: !3623)
!3759 = !DILocation(line: 341, column: 29, scope: !3623)
!3760 = !DILocation(line: 341, column: 19, scope: !3623)
!3761 = !DILocation(line: 380, column: 25, scope: !3623)
!3762 = !DILocation(line: 357, column: 23, scope: !3623)
!3763 = !DILocation(line: 357, column: 29, scope: !3623)
!3764 = !DILocation(line: 357, column: 19, scope: !3623)
!3765 = !DILocation(line: 380, column: 31, scope: !3623)
!3766 = !DILocation(line: 373, column: 23, scope: !3623)
!3767 = !DILocation(line: 373, column: 29, scope: !3623)
!3768 = !DILocation(line: 373, column: 19, scope: !3623)
!3769 = !DILocation(line: 380, column: 37, scope: !3623)
!3770 = !DILocation(line: 386, column: 20, scope: !3623)
!3771 = !DILocation(line: 386, column: 18, scope: !3623)
!3772 = !DILocation(line: 456, column: 13, scope: !3623)
!3773 = !DILocation(line: 457, column: 15, scope: !3623)
!3774 = !DILocation(line: 306, column: 23, scope: !3623)
!3775 = !DILocation(line: 306, column: 29, scope: !3623)
!3776 = !DILocation(line: 306, column: 19, scope: !3623)
!3777 = !DILocation(line: 322, column: 23, scope: !3623)
!3778 = !DILocation(line: 322, column: 29, scope: !3623)
!3779 = !DILocation(line: 322, column: 19, scope: !3623)
!3780 = !DILocation(line: 377, column: 19, scope: !3623)
!3781 = !DILocation(line: 338, column: 23, scope: !3623)
!3782 = !DILocation(line: 338, column: 29, scope: !3623)
!3783 = !DILocation(line: 338, column: 19, scope: !3623)
!3784 = !DILocation(line: 377, column: 25, scope: !3623)
!3785 = !DILocation(line: 354, column: 23, scope: !3623)
!3786 = !DILocation(line: 354, column: 29, scope: !3623)
!3787 = !DILocation(line: 354, column: 19, scope: !3623)
!3788 = !DILocation(line: 377, column: 31, scope: !3623)
!3789 = !DILocation(line: 377, column: 37, scope: !3623)
!3790 = !DILocation(line: 308, column: 23, scope: !3623)
!3791 = !DILocation(line: 308, column: 29, scope: !3623)
!3792 = !DILocation(line: 308, column: 19, scope: !3623)
!3793 = !DILocation(line: 379, column: 19, scope: !3623)
!3794 = !DILocation(line: 340, column: 23, scope: !3623)
!3795 = !DILocation(line: 340, column: 29, scope: !3623)
!3796 = !DILocation(line: 340, column: 19, scope: !3623)
!3797 = !DILocation(line: 379, column: 25, scope: !3623)
!3798 = !DILocation(line: 356, column: 23, scope: !3623)
!3799 = !DILocation(line: 356, column: 29, scope: !3623)
!3800 = !DILocation(line: 356, column: 19, scope: !3623)
!3801 = !DILocation(line: 379, column: 31, scope: !3623)
!3802 = !DILocation(line: 372, column: 23, scope: !3623)
!3803 = !DILocation(line: 372, column: 29, scope: !3623)
!3804 = !DILocation(line: 372, column: 19, scope: !3623)
!3805 = !DILocation(line: 379, column: 37, scope: !3623)
!3806 = !DILocation(line: 385, column: 20, scope: !3623)
!3807 = !DILocation(line: 385, column: 18, scope: !3623)
!3808 = !DILocation(line: 454, column: 13, scope: !3623)
!3809 = !DILocation(line: 455, column: 15, scope: !3623)
!3810 = !DILocation(line: 468, column: 23, scope: !3623)
!3811 = !DILocation(line: 468, column: 29, scope: !3623)
!3812 = !DILocation(line: 468, column: 19, scope: !3623)
!3813 = !DILocation(line: 383, column: 20, scope: !3623)
!3814 = !DILocation(line: 383, column: 18, scope: !3623)
!3815 = !DILocation(line: 460, column: 13, scope: !3623)
!3816 = !DILocation(line: 461, column: 15, scope: !3623)
!3817 = !DILocation(line: 467, column: 23, scope: !3623)
!3818 = !DILocation(line: 467, column: 29, scope: !3623)
!3819 = !DILocation(line: 467, column: 19, scope: !3623)
!3820 = !DILocation(line: 387, column: 20, scope: !3623)
!3821 = !DILocation(line: 387, column: 18, scope: !3623)
!3822 = !DILocation(line: 458, column: 13, scope: !3623)
!3823 = !DILocation(line: 459, column: 15, scope: !3623)
!3824 = !DILocation(line: 466, column: 23, scope: !3623)
!3825 = !DILocation(line: 466, column: 29, scope: !3623)
!3826 = !DILocation(line: 466, column: 19, scope: !3623)
!3827 = !DILocation(line: 465, column: 23, scope: !3623)
!3828 = !DILocation(line: 465, column: 29, scope: !3623)
!3829 = !DILocation(line: 465, column: 19, scope: !3623)
!3830 = !DILocation(line: 464, column: 23, scope: !3623)
!3831 = !DILocation(line: 464, column: 29, scope: !3623)
!3832 = !DILocation(line: 464, column: 19, scope: !3623)
!3833 = !DILocation(line: 446, column: 13, scope: !3623)
!3834 = !DILocation(line: 447, column: 15, scope: !3623)
!3835 = !DILocation(line: 440, column: 13, scope: !3623)
!3836 = !DILocation(line: 441, column: 15, scope: !3623)
!3837 = !DILocation(line: 438, column: 13, scope: !3623)
!3838 = !DILocation(line: 439, column: 15, scope: !3623)
!3839 = !DILocation(line: 452, column: 23, scope: !3623)
!3840 = !DILocation(line: 452, column: 29, scope: !3623)
!3841 = !DILocation(line: 452, column: 19, scope: !3623)
!3842 = !DILocation(line: 444, column: 13, scope: !3623)
!3843 = !DILocation(line: 445, column: 15, scope: !3623)
!3844 = !DILocation(line: 451, column: 23, scope: !3623)
!3845 = !DILocation(line: 451, column: 29, scope: !3623)
!3846 = !DILocation(line: 451, column: 19, scope: !3623)
!3847 = !DILocation(line: 442, column: 13, scope: !3623)
!3848 = !DILocation(line: 443, column: 15, scope: !3623)
!3849 = !DILocation(line: 450, column: 23, scope: !3623)
!3850 = !DILocation(line: 450, column: 29, scope: !3623)
!3851 = !DILocation(line: 450, column: 19, scope: !3623)
!3852 = !DILocation(line: 449, column: 23, scope: !3623)
!3853 = !DILocation(line: 449, column: 29, scope: !3623)
!3854 = !DILocation(line: 449, column: 19, scope: !3623)
!3855 = !DILocation(line: 448, column: 23, scope: !3623)
!3856 = !DILocation(line: 448, column: 29, scope: !3623)
!3857 = !DILocation(line: 448, column: 19, scope: !3623)
!3858 = !DILocation(line: 430, column: 13, scope: !3623)
!3859 = !DILocation(line: 431, column: 15, scope: !3623)
!3860 = !DILocation(line: 424, column: 13, scope: !3623)
!3861 = !DILocation(line: 425, column: 15, scope: !3623)
!3862 = !DILocation(line: 422, column: 13, scope: !3623)
!3863 = !DILocation(line: 423, column: 15, scope: !3623)
!3864 = !DILocation(line: 436, column: 23, scope: !3623)
!3865 = !DILocation(line: 436, column: 29, scope: !3623)
!3866 = !DILocation(line: 436, column: 19, scope: !3623)
!3867 = !DILocation(line: 428, column: 13, scope: !3623)
!3868 = !DILocation(line: 429, column: 15, scope: !3623)
!3869 = !DILocation(line: 435, column: 23, scope: !3623)
!3870 = !DILocation(line: 435, column: 29, scope: !3623)
!3871 = !DILocation(line: 435, column: 19, scope: !3623)
!3872 = !DILocation(line: 426, column: 13, scope: !3623)
!3873 = !DILocation(line: 427, column: 15, scope: !3623)
!3874 = !DILocation(line: 434, column: 23, scope: !3623)
!3875 = !DILocation(line: 434, column: 29, scope: !3623)
!3876 = !DILocation(line: 434, column: 19, scope: !3623)
!3877 = !DILocation(line: 433, column: 23, scope: !3623)
!3878 = !DILocation(line: 433, column: 29, scope: !3623)
!3879 = !DILocation(line: 433, column: 19, scope: !3623)
!3880 = !DILocation(line: 432, column: 23, scope: !3623)
!3881 = !DILocation(line: 432, column: 29, scope: !3623)
!3882 = !DILocation(line: 432, column: 19, scope: !3623)
!3883 = !DILocation(line: 414, column: 13, scope: !3623)
!3884 = !DILocation(line: 415, column: 15, scope: !3623)
!3885 = !DILocation(line: 408, column: 13, scope: !3623)
!3886 = !DILocation(line: 409, column: 15, scope: !3623)
!3887 = !DILocation(line: 406, column: 13, scope: !3623)
!3888 = !DILocation(line: 407, column: 15, scope: !3623)
!3889 = !DILocation(line: 420, column: 23, scope: !3623)
!3890 = !DILocation(line: 420, column: 29, scope: !3623)
!3891 = !DILocation(line: 420, column: 19, scope: !3623)
!3892 = !DILocation(line: 412, column: 13, scope: !3623)
!3893 = !DILocation(line: 413, column: 15, scope: !3623)
!3894 = !DILocation(line: 419, column: 23, scope: !3623)
!3895 = !DILocation(line: 419, column: 29, scope: !3623)
!3896 = !DILocation(line: 419, column: 19, scope: !3623)
!3897 = !DILocation(line: 410, column: 13, scope: !3623)
!3898 = !DILocation(line: 411, column: 15, scope: !3623)
!3899 = !DILocation(line: 418, column: 23, scope: !3623)
!3900 = !DILocation(line: 418, column: 29, scope: !3623)
!3901 = !DILocation(line: 418, column: 19, scope: !3623)
!3902 = !DILocation(line: 417, column: 23, scope: !3623)
!3903 = !DILocation(line: 417, column: 29, scope: !3623)
!3904 = !DILocation(line: 417, column: 19, scope: !3623)
!3905 = !DILocation(line: 416, column: 23, scope: !3623)
!3906 = !DILocation(line: 416, column: 29, scope: !3623)
!3907 = !DILocation(line: 416, column: 19, scope: !3623)
!3908 = !DILocation(line: 397, column: 13, scope: !3623)
!3909 = !DILocation(line: 398, column: 15, scope: !3623)
!3910 = !DILocation(line: 391, column: 13, scope: !3623)
!3911 = !DILocation(line: 392, column: 15, scope: !3623)
!3912 = !DILocation(line: 389, column: 13, scope: !3623)
!3913 = !DILocation(line: 404, column: 23, scope: !3623)
!3914 = !DILocation(line: 404, column: 29, scope: !3623)
!3915 = !DILocation(line: 404, column: 19, scope: !3623)
!3916 = !DILocation(line: 395, column: 13, scope: !3623)
!3917 = !DILocation(line: 396, column: 15, scope: !3623)
!3918 = !DILocation(line: 403, column: 23, scope: !3623)
!3919 = !DILocation(line: 403, column: 29, scope: !3623)
!3920 = !DILocation(line: 403, column: 19, scope: !3623)
!3921 = !DILocation(line: 393, column: 13, scope: !3623)
!3922 = !DILocation(line: 394, column: 15, scope: !3623)
!3923 = !DILocation(line: 402, column: 23, scope: !3623)
!3924 = !DILocation(line: 402, column: 29, scope: !3623)
!3925 = !DILocation(line: 402, column: 19, scope: !3623)
!3926 = !DILocation(line: 401, column: 23, scope: !3623)
!3927 = !DILocation(line: 401, column: 29, scope: !3623)
!3928 = !DILocation(line: 401, column: 19, scope: !3623)
!3929 = !DILocation(line: 400, column: 45, scope: !3623)
!3930 = !DILocation(line: 400, column: 16, scope: !3623)
!3931 = !DILocation(line: 399, column: 23, scope: !3623)
!3932 = !DILocation(line: 399, column: 29, scope: !3623)
!3933 = !DILocation(line: 400, column: 13, scope: !3623)
!3934 = !DILocation(line: 279, column: 44, scope: !3585)
!3935 = !DILocation(line: 279, column: 5, scope: !3585)
!3936 = distinct !{!3936, !3586, !3937, !244}
!3937 = !DILocation(line: 469, column: 5, scope: !3582)
!3938 = !DILocation(line: 472, column: 14, scope: !3527)
!3939 = !DILocation(line: 473, column: 5, scope: !3527)
!3940 = !DILocation(line: 473, column: 14, scope: !3527)
!3941 = !DILocation(line: 474, column: 5, scope: !3527)
!3942 = !DILocation(line: 474, column: 14, scope: !3527)
!3943 = !DILocation(line: 475, column: 5, scope: !3527)
!3944 = !DILocation(line: 475, column: 14, scope: !3527)
!3945 = !DILocation(line: 476, column: 5, scope: !3527)
!3946 = !DILocation(line: 476, column: 14, scope: !3527)
!3947 = !DILocation(line: 477, column: 5, scope: !3527)
!3948 = !DILocation(line: 477, column: 14, scope: !3527)
!3949 = !DILocation(line: 478, column: 5, scope: !3527)
!3950 = !DILocation(line: 478, column: 14, scope: !3527)
!3951 = !DILocation(line: 479, column: 5, scope: !3527)
!3952 = !DILocation(line: 479, column: 14, scope: !3527)
!3953 = !DILocation(line: 480, column: 5, scope: !3527)
!3954 = !DILocation(line: 480, column: 14, scope: !3527)
!3955 = !DILocation(line: 481, column: 5, scope: !3527)
!3956 = !DILocation(line: 481, column: 14, scope: !3527)
!3957 = !DILocation(line: 482, column: 5, scope: !3527)
!3958 = !DILocation(line: 482, column: 15, scope: !3527)
!3959 = !DILocation(line: 483, column: 5, scope: !3527)
!3960 = !DILocation(line: 483, column: 15, scope: !3527)
!3961 = !DILocation(line: 484, column: 5, scope: !3527)
!3962 = !DILocation(line: 484, column: 15, scope: !3527)
!3963 = !DILocation(line: 485, column: 5, scope: !3527)
!3964 = !DILocation(line: 485, column: 15, scope: !3527)
!3965 = !DILocation(line: 486, column: 5, scope: !3527)
!3966 = !DILocation(line: 486, column: 15, scope: !3527)
!3967 = !DILocation(line: 487, column: 5, scope: !3527)
!3968 = !DILocation(line: 487, column: 15, scope: !3527)
!3969 = !DILocation(line: 488, column: 5, scope: !3527)
!3970 = !DILocation(line: 488, column: 15, scope: !3527)
!3971 = !DILocation(line: 489, column: 5, scope: !3527)
!3972 = !DILocation(line: 489, column: 15, scope: !3527)
!3973 = !DILocation(line: 490, column: 5, scope: !3527)
!3974 = !DILocation(line: 490, column: 15, scope: !3527)
!3975 = !DILocation(line: 491, column: 5, scope: !3527)
!3976 = !DILocation(line: 491, column: 15, scope: !3527)
!3977 = !DILocation(line: 492, column: 5, scope: !3527)
!3978 = !DILocation(line: 492, column: 15, scope: !3527)
!3979 = !DILocation(line: 493, column: 5, scope: !3527)
!3980 = !DILocation(line: 493, column: 15, scope: !3527)
!3981 = !DILocation(line: 494, column: 5, scope: !3527)
!3982 = !DILocation(line: 494, column: 15, scope: !3527)
!3983 = !DILocation(line: 495, column: 5, scope: !3527)
!3984 = !DILocation(line: 495, column: 15, scope: !3527)
!3985 = !DILocation(line: 496, column: 5, scope: !3527)
!3986 = !DILocation(line: 496, column: 15, scope: !3527)
!3987 = !DILocation(line: 497, column: 1, scope: !3527)
!3988 = distinct !DISubprogram(name: "shake128_inc_finalize", scope: !71, file: !71, line: 700, type: !3400, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3989 = !DILocalVariable(name: "state", arg: 1, scope: !3988, file: !71, line: 700, type: !3402)
!3990 = !DILocation(line: 0, scope: !3988)
!3991 = !DILocation(line: 701, column: 32, scope: !3988)
!3992 = !DILocation(line: 701, column: 5, scope: !3988)
!3993 = !DILocation(line: 702, column: 1, scope: !3988)
!3994 = distinct !DISubprogram(name: "keccak_inc_finalize", scope: !71, file: !71, line: 640, type: !3995, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !5, !19, !12}
!3997 = !DILocalVariable(name: "s_inc", arg: 1, scope: !3994, file: !71, line: 640, type: !5)
!3998 = !DILocation(line: 0, scope: !3994)
!3999 = !DILocalVariable(name: "r", arg: 2, scope: !3994, file: !71, line: 640, type: !19)
!4000 = !DILocalVariable(name: "p", arg: 3, scope: !3994, file: !71, line: 640, type: !12)
!4001 = !DILocation(line: 643, column: 30, scope: !3994)
!4002 = !DILocation(line: 643, column: 51, scope: !3994)
!4003 = !DILocation(line: 643, column: 48, scope: !3994)
!4004 = !DILocation(line: 643, column: 42, scope: !3994)
!4005 = !DILocation(line: 643, column: 21, scope: !3994)
!4006 = !DILocation(line: 643, column: 5, scope: !3994)
!4007 = !DILocation(line: 643, column: 27, scope: !3994)
!4008 = !DILocation(line: 644, column: 48, scope: !3994)
!4009 = !DILocation(line: 644, column: 42, scope: !3994)
!4010 = !DILocation(line: 644, column: 14, scope: !3994)
!4011 = !DILocation(line: 644, column: 19, scope: !3994)
!4012 = !DILocation(line: 644, column: 5, scope: !3994)
!4013 = !DILocation(line: 644, column: 25, scope: !3994)
!4014 = !DILocation(line: 645, column: 5, scope: !3994)
!4015 = !DILocation(line: 645, column: 15, scope: !3994)
!4016 = !DILocation(line: 646, column: 1, scope: !3994)
!4017 = distinct !DISubprogram(name: "shake128_inc_squeeze", scope: !71, file: !71, line: 704, type: !4018, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !11, !15, !3402}
!4020 = !DILocalVariable(name: "output", arg: 1, scope: !4017, file: !71, line: 704, type: !11)
!4021 = !DILocation(line: 0, scope: !4017)
!4022 = !DILocalVariable(name: "outlen", arg: 2, scope: !4017, file: !71, line: 704, type: !15)
!4023 = !DILocalVariable(name: "state", arg: 3, scope: !4017, file: !71, line: 704, type: !3402)
!4024 = !DILocation(line: 705, column: 47, scope: !4017)
!4025 = !DILocation(line: 705, column: 5, scope: !4017)
!4026 = !DILocation(line: 706, column: 1, scope: !4017)
!4027 = distinct !DISubprogram(name: "keccak_inc_squeeze", scope: !71, file: !71, line: 661, type: !4028, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !11, !15, !5, !19}
!4030 = !DILocalVariable(name: "h", arg: 1, scope: !4027, file: !71, line: 661, type: !11)
!4031 = !DILocation(line: 0, scope: !4027)
!4032 = !DILocalVariable(name: "outlen", arg: 2, scope: !4027, file: !71, line: 661, type: !15)
!4033 = !DILocalVariable(name: "s_inc", arg: 3, scope: !4027, file: !71, line: 662, type: !5)
!4034 = !DILocalVariable(name: "r", arg: 4, scope: !4027, file: !71, line: 662, type: !19)
!4035 = !DILocalVariable(name: "i", scope: !4027, file: !71, line: 663, type: !15)
!4036 = !DILocation(line: 666, column: 10, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4027, file: !71, line: 666, column: 5)
!4038 = !DILocation(line: 666, scope: !4037)
!4039 = !DILocation(line: 666, column: 19, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !71, line: 666, column: 5)
!4041 = !DILocation(line: 666, column: 28, scope: !4040)
!4042 = !DILocation(line: 666, column: 31, scope: !4040)
!4043 = !DILocation(line: 666, column: 35, scope: !4040)
!4044 = !DILocation(line: 666, column: 33, scope: !4040)
!4045 = !DILocation(line: 666, column: 5, scope: !4037)
!4046 = !DILocation(line: 669, column: 33, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4040, file: !71, line: 666, column: 51)
!4048 = !DILocation(line: 669, column: 37, scope: !4047)
!4049 = !DILocation(line: 669, column: 35, scope: !4047)
!4050 = !DILocation(line: 669, column: 49, scope: !4047)
!4051 = !DILocation(line: 669, column: 47, scope: !4047)
!4052 = !DILocation(line: 669, column: 52, scope: !4047)
!4053 = !DILocation(line: 669, column: 26, scope: !4047)
!4054 = !DILocation(line: 669, column: 68, scope: !4047)
!4055 = !DILocation(line: 669, column: 72, scope: !4047)
!4056 = !DILocation(line: 669, column: 70, scope: !4047)
!4057 = !DILocation(line: 669, column: 84, scope: !4047)
!4058 = !DILocation(line: 669, column: 82, scope: !4047)
!4059 = !DILocation(line: 669, column: 64, scope: !4047)
!4060 = !DILocation(line: 669, column: 58, scope: !4047)
!4061 = !DILocation(line: 669, column: 16, scope: !4047)
!4062 = !DILocation(line: 669, column: 9, scope: !4047)
!4063 = !DILocation(line: 669, column: 14, scope: !4047)
!4064 = !DILocation(line: 666, column: 47, scope: !4040)
!4065 = !DILocation(line: 666, column: 5, scope: !4040)
!4066 = distinct !{!4066, !4045, !4067, !244}
!4067 = !DILocation(line: 670, column: 5, scope: !4037)
!4068 = !DILocation(line: 671, column: 7, scope: !4027)
!4069 = !DILocation(line: 672, column: 12, scope: !4027)
!4070 = !DILocation(line: 673, column: 18, scope: !4027)
!4071 = !DILocation(line: 673, column: 5, scope: !4027)
!4072 = !DILocation(line: 673, column: 15, scope: !4027)
!4073 = !DILocation(line: 676, column: 5, scope: !4027)
!4074 = !DILocation(line: 676, column: 19, scope: !4027)
!4075 = !DILocation(line: 677, column: 9, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4027, file: !71, line: 676, column: 24)
!4077 = !DILocation(line: 679, column: 14, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4076, file: !71, line: 679, column: 9)
!4079 = !DILocation(line: 679, scope: !4078)
!4080 = !DILocation(line: 679, column: 32, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4078, file: !71, line: 679, column: 9)
!4082 = !DILocation(line: 679, column: 9, scope: !4078)
!4083 = !DILocation(line: 680, column: 38, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4081, file: !71, line: 679, column: 47)
!4085 = !DILocation(line: 680, column: 30, scope: !4084)
!4086 = !DILocation(line: 680, column: 50, scope: !4084)
!4087 = !DILocation(line: 680, column: 44, scope: !4084)
!4088 = !DILocation(line: 680, column: 20, scope: !4084)
!4089 = !DILocation(line: 680, column: 13, scope: !4084)
!4090 = !DILocation(line: 680, column: 18, scope: !4084)
!4091 = !DILocation(line: 679, column: 43, scope: !4081)
!4092 = !DILocation(line: 679, column: 9, scope: !4081)
!4093 = distinct !{!4093, !4082, !4094, !244}
!4094 = !DILocation(line: 681, column: 9, scope: !4078)
!4095 = !DILocation(line: 682, column: 11, scope: !4076)
!4096 = !DILocation(line: 683, column: 16, scope: !4076)
!4097 = !DILocation(line: 684, column: 23, scope: !4076)
!4098 = !DILocation(line: 684, column: 21, scope: !4076)
!4099 = !DILocation(line: 684, column: 9, scope: !4076)
!4100 = !DILocation(line: 684, column: 19, scope: !4076)
!4101 = distinct !{!4101, !4073, !4102, !244}
!4102 = !DILocation(line: 685, column: 5, scope: !4027)
!4103 = !DILocation(line: 686, column: 1, scope: !4027)
!4104 = distinct !DISubprogram(name: "shake128_inc_ctx_clone", scope: !71, file: !71, line: 708, type: !4105, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !3402, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3403)
!4109 = !DILocalVariable(name: "dest", arg: 1, scope: !4104, file: !71, line: 708, type: !3402)
!4110 = !DILocation(line: 0, scope: !4104)
!4111 = !DILocalVariable(name: "src", arg: 2, scope: !4104, file: !71, line: 708, type: !4107)
!4112 = !DILocation(line: 709, column: 17, scope: !4104)
!4113 = !DILocation(line: 709, column: 15, scope: !4104)
!4114 = !DILocation(line: 710, column: 19, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4104, file: !71, line: 710, column: 9)
!4116 = !DILocation(line: 711, column: 9, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4115, file: !71, line: 710, column: 28)
!4118 = !DILocation(line: 712, column: 5, scope: !4117)
!4119 = !DILocation(line: 713, column: 18, scope: !4104)
!4120 = !DILocation(line: 713, column: 28, scope: !4104)
!4121 = !DILocation(line: 713, column: 5, scope: !4104)
!4122 = !DILocation(line: 714, column: 1, scope: !4104)
!4123 = distinct !DISubprogram(name: "shake128_inc_ctx_release", scope: !71, file: !71, line: 716, type: !3400, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4124 = !DILocalVariable(name: "state", arg: 1, scope: !4123, file: !71, line: 716, type: !3402)
!4125 = !DILocation(line: 0, scope: !4123)
!4126 = !DILocation(line: 717, column: 17, scope: !4123)
!4127 = !DILocation(line: 717, column: 5, scope: !4123)
!4128 = !DILocation(line: 718, column: 1, scope: !4123)
!4129 = distinct !DISubprogram(name: "shake256_inc_init", scope: !71, file: !71, line: 720, type: !4130, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256incctx", file: !71, line: 41, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 39, size: 32, elements: !4135)
!4135 = !{!4136}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4134, file: !71, line: 40, baseType: !5, size: 32)
!4137 = !DILocalVariable(name: "state", arg: 1, scope: !4129, file: !71, line: 720, type: !4132)
!4138 = !DILocation(line: 0, scope: !4129)
!4139 = !DILocation(line: 721, column: 18, scope: !4129)
!4140 = !DILocation(line: 721, column: 16, scope: !4129)
!4141 = !DILocation(line: 722, column: 20, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4129, file: !71, line: 722, column: 9)
!4143 = !DILocation(line: 723, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4142, file: !71, line: 722, column: 29)
!4145 = !DILocation(line: 724, column: 5, scope: !4144)
!4146 = !DILocation(line: 725, column: 28, scope: !4129)
!4147 = !DILocation(line: 725, column: 5, scope: !4129)
!4148 = !DILocation(line: 726, column: 1, scope: !4129)
!4149 = distinct !DISubprogram(name: "shake256_inc_absorb", scope: !71, file: !71, line: 728, type: !4150, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !4132, !257, !15}
!4152 = !DILocalVariable(name: "state", arg: 1, scope: !4149, file: !71, line: 728, type: !4132)
!4153 = !DILocation(line: 0, scope: !4149)
!4154 = !DILocalVariable(name: "input", arg: 2, scope: !4149, file: !71, line: 728, type: !257)
!4155 = !DILocalVariable(name: "inlen", arg: 3, scope: !4149, file: !71, line: 728, type: !15)
!4156 = !DILocation(line: 729, column: 30, scope: !4149)
!4157 = !DILocation(line: 729, column: 5, scope: !4149)
!4158 = !DILocation(line: 730, column: 1, scope: !4149)
!4159 = distinct !DISubprogram(name: "shake256_inc_finalize", scope: !71, file: !71, line: 732, type: !4130, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4160 = !DILocalVariable(name: "state", arg: 1, scope: !4159, file: !71, line: 732, type: !4132)
!4161 = !DILocation(line: 0, scope: !4159)
!4162 = !DILocation(line: 733, column: 32, scope: !4159)
!4163 = !DILocation(line: 733, column: 5, scope: !4159)
!4164 = !DILocation(line: 734, column: 1, scope: !4159)
!4165 = distinct !DISubprogram(name: "shake256_inc_squeeze", scope: !71, file: !71, line: 736, type: !4166, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !11, !15, !4132}
!4168 = !DILocalVariable(name: "output", arg: 1, scope: !4165, file: !71, line: 736, type: !11)
!4169 = !DILocation(line: 0, scope: !4165)
!4170 = !DILocalVariable(name: "outlen", arg: 2, scope: !4165, file: !71, line: 736, type: !15)
!4171 = !DILocalVariable(name: "state", arg: 3, scope: !4165, file: !71, line: 736, type: !4132)
!4172 = !DILocation(line: 737, column: 47, scope: !4165)
!4173 = !DILocation(line: 737, column: 5, scope: !4165)
!4174 = !DILocation(line: 738, column: 1, scope: !4165)
!4175 = distinct !DISubprogram(name: "shake256_inc_ctx_clone", scope: !71, file: !71, line: 740, type: !4176, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4132, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4133)
!4180 = !DILocalVariable(name: "dest", arg: 1, scope: !4175, file: !71, line: 740, type: !4132)
!4181 = !DILocation(line: 0, scope: !4175)
!4182 = !DILocalVariable(name: "src", arg: 2, scope: !4175, file: !71, line: 740, type: !4178)
!4183 = !DILocation(line: 741, column: 17, scope: !4175)
!4184 = !DILocation(line: 741, column: 15, scope: !4175)
!4185 = !DILocation(line: 742, column: 19, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4175, file: !71, line: 742, column: 9)
!4187 = !DILocation(line: 743, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4186, file: !71, line: 742, column: 28)
!4189 = !DILocation(line: 744, column: 5, scope: !4188)
!4190 = !DILocation(line: 745, column: 18, scope: !4175)
!4191 = !DILocation(line: 745, column: 28, scope: !4175)
!4192 = !DILocation(line: 745, column: 5, scope: !4175)
!4193 = !DILocation(line: 746, column: 1, scope: !4175)
!4194 = distinct !DISubprogram(name: "shake256_inc_ctx_release", scope: !71, file: !71, line: 748, type: !4130, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4195 = !DILocalVariable(name: "state", arg: 1, scope: !4194, file: !71, line: 748, type: !4132)
!4196 = !DILocation(line: 0, scope: !4194)
!4197 = !DILocation(line: 749, column: 17, scope: !4194)
!4198 = !DILocation(line: 749, column: 5, scope: !4194)
!4199 = !DILocation(line: 750, column: 1, scope: !4194)
!4200 = distinct !DISubprogram(name: "shake128_absorb", scope: !71, file: !71, line: 764, type: !4201, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !4203, !257, !15}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake128ctx", file: !71, line: 36, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 34, size: 32, elements: !4206)
!4206 = !{!4207}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4205, file: !71, line: 35, baseType: !5, size: 32)
!4208 = !DILocalVariable(name: "state", arg: 1, scope: !4200, file: !71, line: 764, type: !4203)
!4209 = !DILocation(line: 0, scope: !4200)
!4210 = !DILocalVariable(name: "input", arg: 2, scope: !4200, file: !71, line: 764, type: !257)
!4211 = !DILocalVariable(name: "inlen", arg: 3, scope: !4200, file: !71, line: 764, type: !15)
!4212 = !DILocation(line: 765, column: 18, scope: !4200)
!4213 = !DILocation(line: 765, column: 16, scope: !4200)
!4214 = !DILocation(line: 766, column: 20, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4200, file: !71, line: 766, column: 9)
!4216 = !DILocation(line: 767, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4215, file: !71, line: 766, column: 29)
!4218 = !DILocation(line: 768, column: 5, scope: !4217)
!4219 = !DILocation(line: 769, column: 26, scope: !4200)
!4220 = !DILocation(line: 769, column: 5, scope: !4200)
!4221 = !DILocation(line: 770, column: 1, scope: !4200)
!4222 = distinct !DISubprogram(name: "keccak_absorb", scope: !71, file: !71, line: 512, type: !4223, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !5, !19, !257, !15, !12}
!4225 = !DILocalVariable(name: "s", arg: 1, scope: !4222, file: !71, line: 512, type: !5)
!4226 = !DILocation(line: 0, scope: !4222)
!4227 = !DILocalVariable(name: "r", arg: 2, scope: !4222, file: !71, line: 512, type: !19)
!4228 = !DILocalVariable(name: "m", arg: 3, scope: !4222, file: !71, line: 512, type: !257)
!4229 = !DILocalVariable(name: "mlen", arg: 4, scope: !4222, file: !71, line: 513, type: !15)
!4230 = !DILocalVariable(name: "p", arg: 5, scope: !4222, file: !71, line: 513, type: !12)
!4231 = !DILocalVariable(name: "t", scope: !4222, file: !71, line: 515, type: !4232)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1600, elements: !4233)
!4233 = !{!4234}
!4234 = !DISubrange(count: 200)
!4235 = !DILocation(line: 515, column: 13, scope: !4222)
!4236 = !DILocalVariable(name: "i", scope: !4222, file: !71, line: 514, type: !15)
!4237 = !DILocation(line: 518, column: 10, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4222, file: !71, line: 518, column: 5)
!4239 = !DILocation(line: 518, scope: !4238)
!4240 = !DILocation(line: 518, column: 19, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !71, line: 518, column: 5)
!4242 = !DILocation(line: 518, column: 5, scope: !4238)
!4243 = !DILocation(line: 522, column: 5, scope: !4222)
!4244 = !DILocation(line: 519, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4241, file: !71, line: 518, column: 30)
!4246 = !DILocation(line: 519, column: 14, scope: !4245)
!4247 = !DILocation(line: 518, column: 25, scope: !4241)
!4248 = !DILocation(line: 518, column: 5, scope: !4241)
!4249 = distinct !{!4249, !4242, !4250, !244}
!4250 = !DILocation(line: 520, column: 5, scope: !4238)
!4251 = !DILocation(line: 522, column: 17, scope: !4222)
!4252 = !DILocation(line: 523, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !71, line: 523, column: 9)
!4254 = distinct !DILexicalBlock(scope: !4222, file: !71, line: 522, column: 23)
!4255 = !DILocation(line: 532, column: 5, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4222, file: !71, line: 532, column: 5)
!4257 = !DILocation(line: 523, scope: !4253)
!4258 = !DILocation(line: 523, column: 23, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4253, file: !71, line: 523, column: 9)
!4260 = !DILocation(line: 524, column: 34, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4259, file: !71, line: 523, column: 37)
!4262 = !DILocation(line: 524, column: 30, scope: !4261)
!4263 = !DILocation(line: 524, column: 21, scope: !4261)
!4264 = !DILocation(line: 524, column: 13, scope: !4261)
!4265 = !DILocation(line: 524, column: 18, scope: !4261)
!4266 = !DILocation(line: 523, column: 32, scope: !4259)
!4267 = !DILocation(line: 523, column: 9, scope: !4259)
!4268 = distinct !{!4268, !4252, !4269, !244}
!4269 = !DILocation(line: 525, column: 9, scope: !4253)
!4270 = !DILocation(line: 527, column: 9, scope: !4254)
!4271 = !DILocation(line: 528, column: 14, scope: !4254)
!4272 = !DILocation(line: 529, column: 11, scope: !4254)
!4273 = distinct !{!4273, !4243, !4274, !244}
!4274 = !DILocation(line: 530, column: 5, scope: !4222)
!4275 = !DILocation(line: 532, scope: !4256)
!4276 = !DILocation(line: 532, column: 19, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4256, file: !71, line: 532, column: 5)
!4278 = !DILocation(line: 535, column: 5, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4222, file: !71, line: 535, column: 5)
!4280 = !DILocation(line: 533, column: 9, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4277, file: !71, line: 532, column: 29)
!4282 = !DILocation(line: 533, column: 14, scope: !4281)
!4283 = !DILocation(line: 532, column: 24, scope: !4277)
!4284 = !DILocation(line: 532, column: 5, scope: !4277)
!4285 = distinct !{!4285, !4255, !4286, !244}
!4286 = !DILocation(line: 534, column: 5, scope: !4256)
!4287 = !DILocation(line: 535, scope: !4279)
!4288 = !DILocation(line: 535, column: 19, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4279, file: !71, line: 535, column: 5)
!4290 = !DILocation(line: 536, column: 16, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4289, file: !71, line: 535, column: 32)
!4292 = !DILocation(line: 536, column: 9, scope: !4291)
!4293 = !DILocation(line: 536, column: 14, scope: !4291)
!4294 = !DILocation(line: 535, column: 27, scope: !4289)
!4295 = !DILocation(line: 535, column: 5, scope: !4289)
!4296 = distinct !{!4296, !4278, !4297, !244}
!4297 = !DILocation(line: 537, column: 5, scope: !4279)
!4298 = !DILocation(line: 538, column: 5, scope: !4222)
!4299 = !DILocation(line: 538, column: 10, scope: !4222)
!4300 = !DILocation(line: 539, column: 9, scope: !4222)
!4301 = !DILocation(line: 539, column: 5, scope: !4222)
!4302 = !DILocation(line: 539, column: 14, scope: !4222)
!4303 = !DILocation(line: 540, column: 10, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4222, file: !71, line: 540, column: 5)
!4305 = !DILocation(line: 540, scope: !4304)
!4306 = !DILocation(line: 540, column: 19, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !71, line: 540, column: 5)
!4308 = !DILocation(line: 540, column: 5, scope: !4304)
!4309 = !DILocation(line: 541, column: 30, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !71, line: 540, column: 33)
!4311 = !DILocation(line: 541, column: 26, scope: !4310)
!4312 = !DILocation(line: 541, column: 17, scope: !4310)
!4313 = !DILocation(line: 541, column: 9, scope: !4310)
!4314 = !DILocation(line: 541, column: 14, scope: !4310)
!4315 = !DILocation(line: 540, column: 28, scope: !4307)
!4316 = !DILocation(line: 540, column: 5, scope: !4307)
!4317 = distinct !{!4317, !4308, !4318, !244}
!4318 = !DILocation(line: 542, column: 5, scope: !4304)
!4319 = !DILocation(line: 543, column: 1, scope: !4222)
!4320 = distinct !DISubprogram(name: "load64", scope: !71, file: !71, line: 190, type: !4321, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!6, !257}
!4323 = !DILocalVariable(name: "x", arg: 1, scope: !4320, file: !71, line: 190, type: !257)
!4324 = !DILocation(line: 0, scope: !4320)
!4325 = !DILocalVariable(name: "r", scope: !4320, file: !71, line: 191, type: !6)
!4326 = !DILocalVariable(name: "i", scope: !4327, file: !71, line: 192, type: !15)
!4327 = distinct !DILexicalBlock(scope: !4320, file: !71, line: 192, column: 5)
!4328 = !DILocation(line: 0, scope: !4327)
!4329 = !DILocation(line: 192, column: 10, scope: !4327)
!4330 = !DILocation(line: 192, scope: !4327)
!4331 = !DILocation(line: 192, column: 26, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4327, file: !71, line: 192, column: 5)
!4333 = !DILocation(line: 192, column: 5, scope: !4327)
!4334 = !DILocation(line: 193, column: 24, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4332, file: !71, line: 192, column: 36)
!4336 = !DILocation(line: 193, column: 14, scope: !4335)
!4337 = !DILocation(line: 193, column: 34, scope: !4335)
!4338 = !DILocation(line: 193, column: 29, scope: !4335)
!4339 = !DILocation(line: 193, column: 11, scope: !4335)
!4340 = !DILocation(line: 192, column: 31, scope: !4332)
!4341 = !DILocation(line: 192, column: 5, scope: !4332)
!4342 = distinct !{!4342, !4333, !4343, !244}
!4343 = !DILocation(line: 194, column: 5, scope: !4327)
!4344 = !DILocation(line: 196, column: 5, scope: !4320)
!4345 = distinct !DISubprogram(name: "shake128_squeezeblocks", scope: !71, file: !71, line: 784, type: !4346, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !11, !15, !4203}
!4348 = !DILocalVariable(name: "output", arg: 1, scope: !4345, file: !71, line: 784, type: !11)
!4349 = !DILocation(line: 0, scope: !4345)
!4350 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4345, file: !71, line: 784, type: !15)
!4351 = !DILocalVariable(name: "state", arg: 3, scope: !4345, file: !71, line: 784, type: !4203)
!4352 = !DILocation(line: 785, column: 50, scope: !4345)
!4353 = !DILocation(line: 785, column: 5, scope: !4345)
!4354 = !DILocation(line: 786, column: 1, scope: !4345)
!4355 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !71, file: !71, line: 558, type: !4028, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4356 = !DILocalVariable(name: "h", arg: 1, scope: !4355, file: !71, line: 558, type: !11)
!4357 = !DILocation(line: 0, scope: !4355)
!4358 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4355, file: !71, line: 558, type: !15)
!4359 = !DILocalVariable(name: "s", arg: 3, scope: !4355, file: !71, line: 559, type: !5)
!4360 = !DILocalVariable(name: "r", arg: 4, scope: !4355, file: !71, line: 559, type: !19)
!4361 = !DILocation(line: 560, column: 5, scope: !4355)
!4362 = !DILocation(line: 560, column: 20, scope: !4355)
!4363 = !DILocation(line: 561, column: 9, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4355, file: !71, line: 560, column: 25)
!4365 = !DILocalVariable(name: "i", scope: !4366, file: !71, line: 562, type: !15)
!4366 = distinct !DILexicalBlock(scope: !4364, file: !71, line: 562, column: 9)
!4367 = !DILocation(line: 0, scope: !4366)
!4368 = !DILocation(line: 562, column: 14, scope: !4366)
!4369 = !DILocation(line: 562, scope: !4366)
!4370 = !DILocation(line: 562, column: 30, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4366, file: !71, line: 562, column: 9)
!4372 = !DILocation(line: 562, column: 9, scope: !4366)
!4373 = !DILocation(line: 563, column: 27, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4371, file: !71, line: 562, column: 47)
!4375 = !DILocation(line: 563, column: 23, scope: !4374)
!4376 = !DILocation(line: 563, column: 32, scope: !4374)
!4377 = !DILocation(line: 563, column: 13, scope: !4374)
!4378 = !DILocation(line: 562, column: 43, scope: !4371)
!4379 = !DILocation(line: 562, column: 9, scope: !4371)
!4380 = distinct !{!4380, !4372, !4381, !244}
!4381 = !DILocation(line: 564, column: 9, scope: !4366)
!4382 = !DILocation(line: 565, column: 11, scope: !4364)
!4383 = !DILocation(line: 566, column: 16, scope: !4364)
!4384 = distinct !{!4384, !4361, !4385, !244}
!4385 = !DILocation(line: 567, column: 5, scope: !4355)
!4386 = !DILocation(line: 568, column: 1, scope: !4355)
!4387 = distinct !DISubprogram(name: "store64", scope: !71, file: !71, line: 207, type: !4388, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !11, !6}
!4390 = !DILocalVariable(name: "x", arg: 1, scope: !4387, file: !71, line: 207, type: !11)
!4391 = !DILocation(line: 0, scope: !4387)
!4392 = !DILocalVariable(name: "u", arg: 2, scope: !4387, file: !71, line: 207, type: !6)
!4393 = !DILocalVariable(name: "i", scope: !4394, file: !71, line: 208, type: !15)
!4394 = distinct !DILexicalBlock(scope: !4387, file: !71, line: 208, column: 5)
!4395 = !DILocation(line: 0, scope: !4394)
!4396 = !DILocation(line: 208, column: 10, scope: !4394)
!4397 = !DILocation(line: 208, scope: !4394)
!4398 = !DILocation(line: 208, column: 26, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4394, file: !71, line: 208, column: 5)
!4400 = !DILocation(line: 208, column: 5, scope: !4394)
!4401 = !DILocation(line: 209, column: 34, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !71, line: 208, column: 36)
!4403 = !DILocation(line: 209, column: 29, scope: !4402)
!4404 = !DILocation(line: 209, column: 16, scope: !4402)
!4405 = !DILocation(line: 209, column: 9, scope: !4402)
!4406 = !DILocation(line: 209, column: 14, scope: !4402)
!4407 = !DILocation(line: 208, column: 31, scope: !4399)
!4408 = !DILocation(line: 208, column: 5, scope: !4399)
!4409 = distinct !{!4409, !4400, !4410, !244}
!4410 = !DILocation(line: 210, column: 5, scope: !4394)
!4411 = !DILocation(line: 211, column: 1, scope: !4387)
!4412 = distinct !DISubprogram(name: "shake128_ctx_clone", scope: !71, file: !71, line: 788, type: !4413, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4203, !4415}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4204)
!4417 = !DILocalVariable(name: "dest", arg: 1, scope: !4412, file: !71, line: 788, type: !4203)
!4418 = !DILocation(line: 0, scope: !4412)
!4419 = !DILocalVariable(name: "src", arg: 2, scope: !4412, file: !71, line: 788, type: !4415)
!4420 = !DILocation(line: 789, column: 17, scope: !4412)
!4421 = !DILocation(line: 789, column: 15, scope: !4412)
!4422 = !DILocation(line: 790, column: 19, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4412, file: !71, line: 790, column: 9)
!4424 = !DILocation(line: 791, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4423, file: !71, line: 790, column: 28)
!4426 = !DILocation(line: 792, column: 5, scope: !4425)
!4427 = !DILocation(line: 793, column: 18, scope: !4412)
!4428 = !DILocation(line: 793, column: 28, scope: !4412)
!4429 = !DILocation(line: 793, column: 5, scope: !4412)
!4430 = !DILocation(line: 794, column: 1, scope: !4412)
!4431 = distinct !DISubprogram(name: "shake128_ctx_release", scope: !71, file: !71, line: 797, type: !4432, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{null, !4203}
!4434 = !DILocalVariable(name: "state", arg: 1, scope: !4431, file: !71, line: 797, type: !4203)
!4435 = !DILocation(line: 0, scope: !4431)
!4436 = !DILocation(line: 798, column: 17, scope: !4431)
!4437 = !DILocation(line: 798, column: 5, scope: !4431)
!4438 = !DILocation(line: 799, column: 1, scope: !4431)
!4439 = distinct !DISubprogram(name: "shake256_absorb", scope: !71, file: !71, line: 812, type: !4440, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4442, !257, !15}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 32)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "shake256ctx", file: !71, line: 46, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 44, size: 32, elements: !4445)
!4445 = !{!4446}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4444, file: !71, line: 45, baseType: !5, size: 32)
!4447 = !DILocalVariable(name: "state", arg: 1, scope: !4439, file: !71, line: 812, type: !4442)
!4448 = !DILocation(line: 0, scope: !4439)
!4449 = !DILocalVariable(name: "input", arg: 2, scope: !4439, file: !71, line: 812, type: !257)
!4450 = !DILocalVariable(name: "inlen", arg: 3, scope: !4439, file: !71, line: 812, type: !15)
!4451 = !DILocation(line: 813, column: 18, scope: !4439)
!4452 = !DILocation(line: 813, column: 16, scope: !4439)
!4453 = !DILocation(line: 814, column: 20, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4439, file: !71, line: 814, column: 9)
!4455 = !DILocation(line: 815, column: 9, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4454, file: !71, line: 814, column: 29)
!4457 = !DILocation(line: 816, column: 5, scope: !4456)
!4458 = !DILocation(line: 817, column: 26, scope: !4439)
!4459 = !DILocation(line: 817, column: 5, scope: !4439)
!4460 = !DILocation(line: 818, column: 1, scope: !4439)
!4461 = distinct !DISubprogram(name: "shake256_squeezeblocks", scope: !71, file: !71, line: 832, type: !4462, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !11, !15, !4442}
!4464 = !DILocalVariable(name: "output", arg: 1, scope: !4461, file: !71, line: 832, type: !11)
!4465 = !DILocation(line: 0, scope: !4461)
!4466 = !DILocalVariable(name: "nblocks", arg: 2, scope: !4461, file: !71, line: 832, type: !15)
!4467 = !DILocalVariable(name: "state", arg: 3, scope: !4461, file: !71, line: 832, type: !4442)
!4468 = !DILocation(line: 833, column: 50, scope: !4461)
!4469 = !DILocation(line: 833, column: 5, scope: !4461)
!4470 = !DILocation(line: 834, column: 1, scope: !4461)
!4471 = distinct !DISubprogram(name: "shake256_ctx_clone", scope: !71, file: !71, line: 836, type: !4472, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4442, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4476 = !DILocalVariable(name: "dest", arg: 1, scope: !4471, file: !71, line: 836, type: !4442)
!4477 = !DILocation(line: 0, scope: !4471)
!4478 = !DILocalVariable(name: "src", arg: 2, scope: !4471, file: !71, line: 836, type: !4474)
!4479 = !DILocation(line: 837, column: 17, scope: !4471)
!4480 = !DILocation(line: 837, column: 15, scope: !4471)
!4481 = !DILocation(line: 838, column: 19, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4471, file: !71, line: 838, column: 9)
!4483 = !DILocation(line: 839, column: 9, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !71, line: 838, column: 28)
!4485 = !DILocation(line: 840, column: 5, scope: !4484)
!4486 = !DILocation(line: 841, column: 18, scope: !4471)
!4487 = !DILocation(line: 841, column: 28, scope: !4471)
!4488 = !DILocation(line: 841, column: 5, scope: !4471)
!4489 = !DILocation(line: 842, column: 1, scope: !4471)
!4490 = distinct !DISubprogram(name: "shake256_ctx_release", scope: !71, file: !71, line: 845, type: !4491, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !4442}
!4493 = !DILocalVariable(name: "state", arg: 1, scope: !4490, file: !71, line: 845, type: !4442)
!4494 = !DILocation(line: 0, scope: !4490)
!4495 = !DILocation(line: 846, column: 17, scope: !4490)
!4496 = !DILocation(line: 846, column: 5, scope: !4490)
!4497 = !DILocation(line: 847, column: 1, scope: !4490)
!4498 = distinct !DISubprogram(name: "shake128", scope: !71, file: !71, line: 859, type: !4499, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{null, !11, !15, !257, !15}
!4501 = !DILocalVariable(name: "output", arg: 1, scope: !4498, file: !71, line: 859, type: !11)
!4502 = !DILocation(line: 0, scope: !4498)
!4503 = !DILocalVariable(name: "outlen", arg: 2, scope: !4498, file: !71, line: 859, type: !15)
!4504 = !DILocalVariable(name: "input", arg: 3, scope: !4498, file: !71, line: 860, type: !257)
!4505 = !DILocalVariable(name: "inlen", arg: 4, scope: !4498, file: !71, line: 860, type: !15)
!4506 = !DILocation(line: 861, column: 29, scope: !4498)
!4507 = !DILocalVariable(name: "nblocks", scope: !4498, file: !71, line: 861, type: !15)
!4508 = !DILocalVariable(name: "t", scope: !4498, file: !71, line: 862, type: !4509)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1344, elements: !4510)
!4510 = !{!4511}
!4511 = !DISubrange(count: 168)
!4512 = !DILocation(line: 862, column: 13, scope: !4498)
!4513 = !DILocalVariable(name: "s", scope: !4498, file: !71, line: 863, type: !4204)
!4514 = !DILocation(line: 863, column: 17, scope: !4498)
!4515 = !DILocation(line: 865, column: 5, scope: !4498)
!4516 = !DILocation(line: 866, column: 5, scope: !4498)
!4517 = !DILocation(line: 868, column: 23, scope: !4498)
!4518 = !DILocation(line: 868, column: 12, scope: !4498)
!4519 = !DILocation(line: 869, column: 23, scope: !4498)
!4520 = !DILocation(line: 869, column: 12, scope: !4498)
!4521 = !DILocation(line: 871, column: 9, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4498, file: !71, line: 871, column: 9)
!4523 = !DILocation(line: 872, column: 9, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4522, file: !71, line: 871, column: 17)
!4525 = !DILocalVariable(name: "i", scope: !4526, file: !71, line: 873, type: !15)
!4526 = distinct !DILexicalBlock(scope: !4524, file: !71, line: 873, column: 9)
!4527 = !DILocation(line: 0, scope: !4526)
!4528 = !DILocation(line: 873, column: 14, scope: !4526)
!4529 = !DILocation(line: 873, scope: !4526)
!4530 = !DILocation(line: 873, column: 30, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4526, file: !71, line: 873, column: 9)
!4532 = !DILocation(line: 873, column: 9, scope: !4526)
!4533 = !DILocation(line: 874, column: 25, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4531, file: !71, line: 873, column: 45)
!4535 = !DILocation(line: 874, column: 13, scope: !4534)
!4536 = !DILocation(line: 874, column: 23, scope: !4534)
!4537 = !DILocation(line: 873, column: 40, scope: !4531)
!4538 = !DILocation(line: 873, column: 9, scope: !4531)
!4539 = distinct !{!4539, !4532, !4540, !244}
!4540 = !DILocation(line: 875, column: 9, scope: !4526)
!4541 = !DILocation(line: 877, column: 5, scope: !4498)
!4542 = !DILocation(line: 878, column: 1, scope: !4498)
!4543 = distinct !DISubprogram(name: "shake256", scope: !71, file: !71, line: 890, type: !4499, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4544 = !DILocalVariable(name: "output", arg: 1, scope: !4543, file: !71, line: 890, type: !11)
!4545 = !DILocation(line: 0, scope: !4543)
!4546 = !DILocalVariable(name: "outlen", arg: 2, scope: !4543, file: !71, line: 890, type: !15)
!4547 = !DILocalVariable(name: "input", arg: 3, scope: !4543, file: !71, line: 891, type: !257)
!4548 = !DILocalVariable(name: "inlen", arg: 4, scope: !4543, file: !71, line: 891, type: !15)
!4549 = !DILocation(line: 892, column: 29, scope: !4543)
!4550 = !DILocalVariable(name: "nblocks", scope: !4543, file: !71, line: 892, type: !15)
!4551 = !DILocalVariable(name: "t", scope: !4543, file: !71, line: 893, type: !4552)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1088, elements: !4553)
!4553 = !{!4554}
!4554 = !DISubrange(count: 136)
!4555 = !DILocation(line: 893, column: 13, scope: !4543)
!4556 = !DILocalVariable(name: "s", scope: !4543, file: !71, line: 894, type: !4443)
!4557 = !DILocation(line: 894, column: 17, scope: !4543)
!4558 = !DILocation(line: 896, column: 5, scope: !4543)
!4559 = !DILocation(line: 897, column: 5, scope: !4543)
!4560 = !DILocation(line: 899, column: 23, scope: !4543)
!4561 = !DILocation(line: 899, column: 12, scope: !4543)
!4562 = !DILocation(line: 900, column: 23, scope: !4543)
!4563 = !DILocation(line: 900, column: 12, scope: !4543)
!4564 = !DILocation(line: 902, column: 9, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4543, file: !71, line: 902, column: 9)
!4566 = !DILocation(line: 903, column: 9, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4565, file: !71, line: 902, column: 17)
!4568 = !DILocalVariable(name: "i", scope: !4569, file: !71, line: 904, type: !15)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !71, line: 904, column: 9)
!4570 = !DILocation(line: 0, scope: !4569)
!4571 = !DILocation(line: 904, column: 14, scope: !4569)
!4572 = !DILocation(line: 904, scope: !4569)
!4573 = !DILocation(line: 904, column: 30, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4569, file: !71, line: 904, column: 9)
!4575 = !DILocation(line: 904, column: 9, scope: !4569)
!4576 = !DILocation(line: 905, column: 25, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !71, line: 904, column: 45)
!4578 = !DILocation(line: 905, column: 13, scope: !4577)
!4579 = !DILocation(line: 905, column: 23, scope: !4577)
!4580 = !DILocation(line: 904, column: 40, scope: !4574)
!4581 = !DILocation(line: 904, column: 9, scope: !4574)
!4582 = distinct !{!4582, !4575, !4583, !244}
!4583 = !DILocation(line: 906, column: 9, scope: !4569)
!4584 = !DILocation(line: 908, column: 5, scope: !4543)
!4585 = !DILocation(line: 909, column: 1, scope: !4543)
!4586 = distinct !DISubprogram(name: "sha3_256_inc_init", scope: !71, file: !71, line: 911, type: !4587, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_256incctx", file: !71, line: 51, baseType: !4591)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 49, size: 32, elements: !4592)
!4592 = !{!4593}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4591, file: !71, line: 50, baseType: !5, size: 32)
!4594 = !DILocalVariable(name: "state", arg: 1, scope: !4586, file: !71, line: 911, type: !4589)
!4595 = !DILocation(line: 0, scope: !4586)
!4596 = !DILocation(line: 912, column: 18, scope: !4586)
!4597 = !DILocation(line: 912, column: 16, scope: !4586)
!4598 = !DILocation(line: 913, column: 20, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4586, file: !71, line: 913, column: 9)
!4600 = !DILocation(line: 914, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4599, file: !71, line: 913, column: 29)
!4602 = !DILocation(line: 915, column: 5, scope: !4601)
!4603 = !DILocation(line: 916, column: 28, scope: !4586)
!4604 = !DILocation(line: 916, column: 5, scope: !4586)
!4605 = !DILocation(line: 917, column: 1, scope: !4586)
!4606 = distinct !DISubprogram(name: "sha3_256_inc_ctx_clone", scope: !71, file: !71, line: 919, type: !4607, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4589, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4611 = !DILocalVariable(name: "dest", arg: 1, scope: !4606, file: !71, line: 919, type: !4589)
!4612 = !DILocation(line: 0, scope: !4606)
!4613 = !DILocalVariable(name: "src", arg: 2, scope: !4606, file: !71, line: 919, type: !4609)
!4614 = !DILocation(line: 920, column: 17, scope: !4606)
!4615 = !DILocation(line: 920, column: 15, scope: !4606)
!4616 = !DILocation(line: 921, column: 19, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4606, file: !71, line: 921, column: 9)
!4618 = !DILocation(line: 922, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !71, line: 921, column: 28)
!4620 = !DILocation(line: 923, column: 5, scope: !4619)
!4621 = !DILocation(line: 924, column: 18, scope: !4606)
!4622 = !DILocation(line: 924, column: 28, scope: !4606)
!4623 = !DILocation(line: 924, column: 5, scope: !4606)
!4624 = !DILocation(line: 925, column: 1, scope: !4606)
!4625 = distinct !DISubprogram(name: "sha3_256_inc_ctx_release", scope: !71, file: !71, line: 927, type: !4587, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4626 = !DILocalVariable(name: "state", arg: 1, scope: !4625, file: !71, line: 927, type: !4589)
!4627 = !DILocation(line: 0, scope: !4625)
!4628 = !DILocation(line: 928, column: 17, scope: !4625)
!4629 = !DILocation(line: 928, column: 5, scope: !4625)
!4630 = !DILocation(line: 929, column: 1, scope: !4625)
!4631 = distinct !DISubprogram(name: "sha3_256_inc_absorb", scope: !71, file: !71, line: 931, type: !4632, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !4589, !257, !15}
!4634 = !DILocalVariable(name: "state", arg: 1, scope: !4631, file: !71, line: 931, type: !4589)
!4635 = !DILocation(line: 0, scope: !4631)
!4636 = !DILocalVariable(name: "input", arg: 2, scope: !4631, file: !71, line: 931, type: !257)
!4637 = !DILocalVariable(name: "inlen", arg: 3, scope: !4631, file: !71, line: 931, type: !15)
!4638 = !DILocation(line: 932, column: 30, scope: !4631)
!4639 = !DILocation(line: 932, column: 5, scope: !4631)
!4640 = !DILocation(line: 933, column: 1, scope: !4631)
!4641 = distinct !DISubprogram(name: "sha3_256_inc_finalize", scope: !71, file: !71, line: 935, type: !4642, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !11, !4589}
!4644 = !DILocalVariable(name: "output", arg: 1, scope: !4641, file: !71, line: 935, type: !11)
!4645 = !DILocation(line: 0, scope: !4641)
!4646 = !DILocalVariable(name: "state", arg: 2, scope: !4641, file: !71, line: 935, type: !4589)
!4647 = !DILocalVariable(name: "t", scope: !4641, file: !71, line: 936, type: !4552)
!4648 = !DILocation(line: 936, column: 13, scope: !4641)
!4649 = !DILocation(line: 937, column: 32, scope: !4641)
!4650 = !DILocation(line: 937, column: 5, scope: !4641)
!4651 = !DILocation(line: 939, column: 39, scope: !4641)
!4652 = !DILocation(line: 939, column: 5, scope: !4641)
!4653 = !DILocation(line: 941, column: 5, scope: !4641)
!4654 = !DILocalVariable(name: "i", scope: !4655, file: !71, line: 943, type: !15)
!4655 = distinct !DILexicalBlock(scope: !4641, file: !71, line: 943, column: 5)
!4656 = !DILocation(line: 0, scope: !4655)
!4657 = !DILocation(line: 943, column: 10, scope: !4655)
!4658 = !DILocation(line: 943, scope: !4655)
!4659 = !DILocation(line: 943, column: 26, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4655, file: !71, line: 943, column: 5)
!4661 = !DILocation(line: 943, column: 5, scope: !4655)
!4662 = !DILocation(line: 944, column: 21, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !71, line: 943, column: 37)
!4664 = !DILocation(line: 944, column: 9, scope: !4663)
!4665 = !DILocation(line: 944, column: 19, scope: !4663)
!4666 = !DILocation(line: 943, column: 33, scope: !4660)
!4667 = !DILocation(line: 943, column: 5, scope: !4660)
!4668 = distinct !{!4668, !4661, !4669, !244}
!4669 = !DILocation(line: 945, column: 5, scope: !4655)
!4670 = !DILocation(line: 946, column: 1, scope: !4641)
!4671 = distinct !DISubprogram(name: "sha3_256", scope: !71, file: !71, line: 957, type: !4672, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !11, !257, !15}
!4674 = !DILocalVariable(name: "output", arg: 1, scope: !4671, file: !71, line: 957, type: !11)
!4675 = !DILocation(line: 0, scope: !4671)
!4676 = !DILocalVariable(name: "input", arg: 2, scope: !4671, file: !71, line: 957, type: !257)
!4677 = !DILocalVariable(name: "inlen", arg: 3, scope: !4671, file: !71, line: 957, type: !15)
!4678 = !DILocalVariable(name: "s", scope: !4671, file: !71, line: 958, type: !4679)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1600, elements: !4680)
!4680 = !{!4681}
!4681 = !DISubrange(count: 25)
!4682 = !DILocation(line: 958, column: 14, scope: !4671)
!4683 = !DILocalVariable(name: "t", scope: !4671, file: !71, line: 959, type: !4552)
!4684 = !DILocation(line: 959, column: 13, scope: !4671)
!4685 = !DILocation(line: 962, column: 5, scope: !4671)
!4686 = !DILocation(line: 965, column: 5, scope: !4671)
!4687 = !DILocalVariable(name: "i", scope: !4688, file: !71, line: 967, type: !15)
!4688 = distinct !DILexicalBlock(scope: !4671, file: !71, line: 967, column: 5)
!4689 = !DILocation(line: 0, scope: !4688)
!4690 = !DILocation(line: 967, column: 10, scope: !4688)
!4691 = !DILocation(line: 967, scope: !4688)
!4692 = !DILocation(line: 967, column: 26, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4688, file: !71, line: 967, column: 5)
!4694 = !DILocation(line: 967, column: 5, scope: !4688)
!4695 = !DILocation(line: 968, column: 21, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !71, line: 967, column: 37)
!4697 = !DILocation(line: 968, column: 9, scope: !4696)
!4698 = !DILocation(line: 968, column: 19, scope: !4696)
!4699 = !DILocation(line: 967, column: 33, scope: !4693)
!4700 = !DILocation(line: 967, column: 5, scope: !4693)
!4701 = distinct !{!4701, !4694, !4702, !244}
!4702 = !DILocation(line: 969, column: 5, scope: !4688)
!4703 = !DILocation(line: 970, column: 1, scope: !4671)
!4704 = distinct !DISubprogram(name: "sha3_384_inc_init", scope: !71, file: !71, line: 972, type: !4705, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4707}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_384incctx", file: !71, line: 56, baseType: !4709)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 54, size: 32, elements: !4710)
!4710 = !{!4711}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4709, file: !71, line: 55, baseType: !5, size: 32)
!4712 = !DILocalVariable(name: "state", arg: 1, scope: !4704, file: !71, line: 972, type: !4707)
!4713 = !DILocation(line: 0, scope: !4704)
!4714 = !DILocation(line: 973, column: 18, scope: !4704)
!4715 = !DILocation(line: 973, column: 16, scope: !4704)
!4716 = !DILocation(line: 974, column: 20, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4704, file: !71, line: 974, column: 9)
!4718 = !DILocation(line: 975, column: 9, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4717, file: !71, line: 974, column: 29)
!4720 = !DILocation(line: 976, column: 5, scope: !4719)
!4721 = !DILocation(line: 977, column: 28, scope: !4704)
!4722 = !DILocation(line: 977, column: 5, scope: !4704)
!4723 = !DILocation(line: 978, column: 1, scope: !4704)
!4724 = distinct !DISubprogram(name: "sha3_384_inc_ctx_clone", scope: !71, file: !71, line: 980, type: !4725, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4707, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4708)
!4729 = !DILocalVariable(name: "dest", arg: 1, scope: !4724, file: !71, line: 980, type: !4707)
!4730 = !DILocation(line: 0, scope: !4724)
!4731 = !DILocalVariable(name: "src", arg: 2, scope: !4724, file: !71, line: 980, type: !4727)
!4732 = !DILocation(line: 981, column: 17, scope: !4724)
!4733 = !DILocation(line: 981, column: 15, scope: !4724)
!4734 = !DILocation(line: 982, column: 19, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4724, file: !71, line: 982, column: 9)
!4736 = !DILocation(line: 983, column: 9, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4735, file: !71, line: 982, column: 28)
!4738 = !DILocation(line: 984, column: 5, scope: !4737)
!4739 = !DILocation(line: 985, column: 18, scope: !4724)
!4740 = !DILocation(line: 985, column: 28, scope: !4724)
!4741 = !DILocation(line: 985, column: 5, scope: !4724)
!4742 = !DILocation(line: 986, column: 1, scope: !4724)
!4743 = distinct !DISubprogram(name: "sha3_384_inc_absorb", scope: !71, file: !71, line: 988, type: !4744, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !4707, !257, !15}
!4746 = !DILocalVariable(name: "state", arg: 1, scope: !4743, file: !71, line: 988, type: !4707)
!4747 = !DILocation(line: 0, scope: !4743)
!4748 = !DILocalVariable(name: "input", arg: 2, scope: !4743, file: !71, line: 988, type: !257)
!4749 = !DILocalVariable(name: "inlen", arg: 3, scope: !4743, file: !71, line: 988, type: !15)
!4750 = !DILocation(line: 989, column: 30, scope: !4743)
!4751 = !DILocation(line: 989, column: 5, scope: !4743)
!4752 = !DILocation(line: 990, column: 1, scope: !4743)
!4753 = distinct !DISubprogram(name: "sha3_384_inc_ctx_release", scope: !71, file: !71, line: 992, type: !4705, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4754 = !DILocalVariable(name: "state", arg: 1, scope: !4753, file: !71, line: 992, type: !4707)
!4755 = !DILocation(line: 0, scope: !4753)
!4756 = !DILocation(line: 993, column: 17, scope: !4753)
!4757 = !DILocation(line: 993, column: 5, scope: !4753)
!4758 = !DILocation(line: 994, column: 1, scope: !4753)
!4759 = distinct !DISubprogram(name: "sha3_384_inc_finalize", scope: !71, file: !71, line: 996, type: !4760, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{null, !11, !4707}
!4762 = !DILocalVariable(name: "output", arg: 1, scope: !4759, file: !71, line: 996, type: !11)
!4763 = !DILocation(line: 0, scope: !4759)
!4764 = !DILocalVariable(name: "state", arg: 2, scope: !4759, file: !71, line: 996, type: !4707)
!4765 = !DILocalVariable(name: "t", scope: !4759, file: !71, line: 997, type: !4766)
!4766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, elements: !4767)
!4767 = !{!4768}
!4768 = !DISubrange(count: 104)
!4769 = !DILocation(line: 997, column: 13, scope: !4759)
!4770 = !DILocation(line: 998, column: 32, scope: !4759)
!4771 = !DILocation(line: 998, column: 5, scope: !4759)
!4772 = !DILocation(line: 1000, column: 39, scope: !4759)
!4773 = !DILocation(line: 1000, column: 5, scope: !4759)
!4774 = !DILocation(line: 1002, column: 5, scope: !4759)
!4775 = !DILocalVariable(name: "i", scope: !4776, file: !71, line: 1004, type: !15)
!4776 = distinct !DILexicalBlock(scope: !4759, file: !71, line: 1004, column: 5)
!4777 = !DILocation(line: 0, scope: !4776)
!4778 = !DILocation(line: 1004, column: 10, scope: !4776)
!4779 = !DILocation(line: 1004, scope: !4776)
!4780 = !DILocation(line: 1004, column: 26, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4776, file: !71, line: 1004, column: 5)
!4782 = !DILocation(line: 1004, column: 5, scope: !4776)
!4783 = !DILocation(line: 1005, column: 21, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4781, file: !71, line: 1004, column: 37)
!4785 = !DILocation(line: 1005, column: 9, scope: !4784)
!4786 = !DILocation(line: 1005, column: 19, scope: !4784)
!4787 = !DILocation(line: 1004, column: 33, scope: !4781)
!4788 = !DILocation(line: 1004, column: 5, scope: !4781)
!4789 = distinct !{!4789, !4782, !4790, !244}
!4790 = !DILocation(line: 1006, column: 5, scope: !4776)
!4791 = !DILocation(line: 1007, column: 1, scope: !4759)
!4792 = distinct !DISubprogram(name: "sha3_384", scope: !71, file: !71, line: 1018, type: !4672, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4793 = !DILocalVariable(name: "output", arg: 1, scope: !4792, file: !71, line: 1018, type: !11)
!4794 = !DILocation(line: 0, scope: !4792)
!4795 = !DILocalVariable(name: "input", arg: 2, scope: !4792, file: !71, line: 1018, type: !257)
!4796 = !DILocalVariable(name: "inlen", arg: 3, scope: !4792, file: !71, line: 1018, type: !15)
!4797 = !DILocalVariable(name: "s", scope: !4792, file: !71, line: 1019, type: !4679)
!4798 = !DILocation(line: 1019, column: 14, scope: !4792)
!4799 = !DILocalVariable(name: "t", scope: !4792, file: !71, line: 1020, type: !4766)
!4800 = !DILocation(line: 1020, column: 13, scope: !4792)
!4801 = !DILocation(line: 1023, column: 5, scope: !4792)
!4802 = !DILocation(line: 1026, column: 5, scope: !4792)
!4803 = !DILocalVariable(name: "i", scope: !4804, file: !71, line: 1028, type: !15)
!4804 = distinct !DILexicalBlock(scope: !4792, file: !71, line: 1028, column: 5)
!4805 = !DILocation(line: 0, scope: !4804)
!4806 = !DILocation(line: 1028, column: 10, scope: !4804)
!4807 = !DILocation(line: 1028, scope: !4804)
!4808 = !DILocation(line: 1028, column: 26, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4804, file: !71, line: 1028, column: 5)
!4810 = !DILocation(line: 1028, column: 5, scope: !4804)
!4811 = !DILocation(line: 1029, column: 21, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !71, line: 1028, column: 37)
!4813 = !DILocation(line: 1029, column: 9, scope: !4812)
!4814 = !DILocation(line: 1029, column: 19, scope: !4812)
!4815 = !DILocation(line: 1028, column: 33, scope: !4809)
!4816 = !DILocation(line: 1028, column: 5, scope: !4809)
!4817 = distinct !{!4817, !4810, !4818, !244}
!4818 = !DILocation(line: 1030, column: 5, scope: !4804)
!4819 = !DILocation(line: 1031, column: 1, scope: !4792)
!4820 = distinct !DISubprogram(name: "sha3_512_inc_init", scope: !71, file: !71, line: 1033, type: !4821, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4823}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 32)
!4824 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha3_512incctx", file: !71, line: 61, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 59, size: 32, elements: !4826)
!4826 = !{!4827}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4825, file: !71, line: 60, baseType: !5, size: 32)
!4828 = !DILocalVariable(name: "state", arg: 1, scope: !4820, file: !71, line: 1033, type: !4823)
!4829 = !DILocation(line: 0, scope: !4820)
!4830 = !DILocation(line: 1034, column: 18, scope: !4820)
!4831 = !DILocation(line: 1034, column: 16, scope: !4820)
!4832 = !DILocation(line: 1035, column: 20, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4820, file: !71, line: 1035, column: 9)
!4834 = !DILocation(line: 1036, column: 9, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4833, file: !71, line: 1035, column: 29)
!4836 = !DILocation(line: 1037, column: 5, scope: !4835)
!4837 = !DILocation(line: 1038, column: 28, scope: !4820)
!4838 = !DILocation(line: 1038, column: 5, scope: !4820)
!4839 = !DILocation(line: 1039, column: 1, scope: !4820)
!4840 = distinct !DISubprogram(name: "sha3_512_inc_ctx_clone", scope: !71, file: !71, line: 1041, type: !4841, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{null, !4823, !4843}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4824)
!4845 = !DILocalVariable(name: "dest", arg: 1, scope: !4840, file: !71, line: 1041, type: !4823)
!4846 = !DILocation(line: 0, scope: !4840)
!4847 = !DILocalVariable(name: "src", arg: 2, scope: !4840, file: !71, line: 1041, type: !4843)
!4848 = !DILocation(line: 1042, column: 17, scope: !4840)
!4849 = !DILocation(line: 1042, column: 15, scope: !4840)
!4850 = !DILocation(line: 1043, column: 19, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4840, file: !71, line: 1043, column: 9)
!4852 = !DILocation(line: 1044, column: 9, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4851, file: !71, line: 1043, column: 28)
!4854 = !DILocation(line: 1045, column: 5, scope: !4853)
!4855 = !DILocation(line: 1046, column: 18, scope: !4840)
!4856 = !DILocation(line: 1046, column: 28, scope: !4840)
!4857 = !DILocation(line: 1046, column: 5, scope: !4840)
!4858 = !DILocation(line: 1047, column: 1, scope: !4840)
!4859 = distinct !DISubprogram(name: "sha3_512_inc_absorb", scope: !71, file: !71, line: 1049, type: !4860, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !4823, !257, !15}
!4862 = !DILocalVariable(name: "state", arg: 1, scope: !4859, file: !71, line: 1049, type: !4823)
!4863 = !DILocation(line: 0, scope: !4859)
!4864 = !DILocalVariable(name: "input", arg: 2, scope: !4859, file: !71, line: 1049, type: !257)
!4865 = !DILocalVariable(name: "inlen", arg: 3, scope: !4859, file: !71, line: 1049, type: !15)
!4866 = !DILocation(line: 1050, column: 30, scope: !4859)
!4867 = !DILocation(line: 1050, column: 5, scope: !4859)
!4868 = !DILocation(line: 1051, column: 1, scope: !4859)
!4869 = distinct !DISubprogram(name: "sha3_512_inc_ctx_release", scope: !71, file: !71, line: 1053, type: !4821, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4870 = !DILocalVariable(name: "state", arg: 1, scope: !4869, file: !71, line: 1053, type: !4823)
!4871 = !DILocation(line: 0, scope: !4869)
!4872 = !DILocation(line: 1054, column: 17, scope: !4869)
!4873 = !DILocation(line: 1054, column: 5, scope: !4869)
!4874 = !DILocation(line: 1055, column: 1, scope: !4869)
!4875 = distinct !DISubprogram(name: "sha3_512_inc_finalize", scope: !71, file: !71, line: 1057, type: !4876, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{null, !11, !4823}
!4878 = !DILocalVariable(name: "output", arg: 1, scope: !4875, file: !71, line: 1057, type: !11)
!4879 = !DILocation(line: 0, scope: !4875)
!4880 = !DILocalVariable(name: "state", arg: 2, scope: !4875, file: !71, line: 1057, type: !4823)
!4881 = !DILocalVariable(name: "t", scope: !4875, file: !71, line: 1058, type: !4882)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !4883)
!4883 = !{!4884}
!4884 = !DISubrange(count: 72)
!4885 = !DILocation(line: 1058, column: 13, scope: !4875)
!4886 = !DILocation(line: 1059, column: 32, scope: !4875)
!4887 = !DILocation(line: 1059, column: 5, scope: !4875)
!4888 = !DILocation(line: 1061, column: 39, scope: !4875)
!4889 = !DILocation(line: 1061, column: 5, scope: !4875)
!4890 = !DILocation(line: 1063, column: 5, scope: !4875)
!4891 = !DILocalVariable(name: "i", scope: !4892, file: !71, line: 1065, type: !15)
!4892 = distinct !DILexicalBlock(scope: !4875, file: !71, line: 1065, column: 5)
!4893 = !DILocation(line: 0, scope: !4892)
!4894 = !DILocation(line: 1065, column: 10, scope: !4892)
!4895 = !DILocation(line: 1065, scope: !4892)
!4896 = !DILocation(line: 1065, column: 26, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4892, file: !71, line: 1065, column: 5)
!4898 = !DILocation(line: 1065, column: 5, scope: !4892)
!4899 = !DILocation(line: 1066, column: 21, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4897, file: !71, line: 1065, column: 37)
!4901 = !DILocation(line: 1066, column: 9, scope: !4900)
!4902 = !DILocation(line: 1066, column: 19, scope: !4900)
!4903 = !DILocation(line: 1065, column: 33, scope: !4897)
!4904 = !DILocation(line: 1065, column: 5, scope: !4897)
!4905 = distinct !{!4905, !4898, !4906, !244}
!4906 = !DILocation(line: 1067, column: 5, scope: !4892)
!4907 = !DILocation(line: 1068, column: 1, scope: !4875)
!4908 = distinct !DISubprogram(name: "sha3_512", scope: !71, file: !71, line: 1079, type: !4672, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !28)
!4909 = !DILocalVariable(name: "output", arg: 1, scope: !4908, file: !71, line: 1079, type: !11)
!4910 = !DILocation(line: 0, scope: !4908)
!4911 = !DILocalVariable(name: "input", arg: 2, scope: !4908, file: !71, line: 1079, type: !257)
!4912 = !DILocalVariable(name: "inlen", arg: 3, scope: !4908, file: !71, line: 1079, type: !15)
!4913 = !DILocalVariable(name: "s", scope: !4908, file: !71, line: 1080, type: !4679)
!4914 = !DILocation(line: 1080, column: 14, scope: !4908)
!4915 = !DILocalVariable(name: "t", scope: !4908, file: !71, line: 1081, type: !4882)
!4916 = !DILocation(line: 1081, column: 13, scope: !4908)
!4917 = !DILocation(line: 1084, column: 5, scope: !4908)
!4918 = !DILocation(line: 1087, column: 5, scope: !4908)
!4919 = !DILocalVariable(name: "i", scope: !4920, file: !71, line: 1089, type: !15)
!4920 = distinct !DILexicalBlock(scope: !4908, file: !71, line: 1089, column: 5)
!4921 = !DILocation(line: 0, scope: !4920)
!4922 = !DILocation(line: 1089, column: 10, scope: !4920)
!4923 = !DILocation(line: 1089, scope: !4920)
!4924 = !DILocation(line: 1089, column: 26, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4920, file: !71, line: 1089, column: 5)
!4926 = !DILocation(line: 1089, column: 5, scope: !4920)
!4927 = !DILocation(line: 1090, column: 21, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4925, file: !71, line: 1089, column: 37)
!4929 = !DILocation(line: 1090, column: 9, scope: !4928)
!4930 = !DILocation(line: 1090, column: 19, scope: !4928)
!4931 = !DILocation(line: 1089, column: 33, scope: !4925)
!4932 = !DILocation(line: 1089, column: 5, scope: !4925)
!4933 = distinct !{!4933, !4926, !4934, !244}
!4934 = !DILocation(line: 1091, column: 5, scope: !4920)
!4935 = !DILocation(line: 1092, column: 1, scope: !4908)
!4936 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !80, file: !80, line: 635, type: !4937, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{null, !4939, !49}
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !80, line: 46, baseType: !4941)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 44, size: 32, elements: !4942)
!4942 = !{!4943}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !4941, file: !80, line: 45, baseType: !5, size: 32)
!4944 = !DILocalVariable(name: "r", arg: 1, scope: !4936, file: !80, line: 635, type: !4939)
!4945 = !DILocation(line: 0, scope: !4936)
!4946 = !DILocalVariable(name: "key", arg: 2, scope: !4936, file: !80, line: 635, type: !49)
!4947 = !DILocalVariable(name: "skey", scope: !4936, file: !80, line: 636, type: !4948)
!4948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1408, elements: !4949)
!4949 = !{!4950}
!4950 = !DISubrange(count: 22)
!4951 = !DILocation(line: 636, column: 14, scope: !4936)
!4952 = !DILocation(line: 638, column: 17, scope: !4936)
!4953 = !DILocation(line: 638, column: 15, scope: !4936)
!4954 = !DILocation(line: 639, column: 19, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4936, file: !80, line: 639, column: 9)
!4956 = !DILocation(line: 640, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4955, file: !80, line: 639, column: 28)
!4958 = !DILocation(line: 641, column: 5, scope: !4957)
!4959 = !DILocation(line: 643, column: 5, scope: !4936)
!4960 = !DILocation(line: 644, column: 32, scope: !4936)
!4961 = !DILocation(line: 644, column: 5, scope: !4936)
!4962 = !DILocation(line: 645, column: 1, scope: !4936)
!4963 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !80, file: !80, line: 403, type: !4964, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !5, !49, !17}
!4966 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !4963, file: !80, line: 403, type: !5)
!4967 = !DILocation(line: 0, scope: !4963)
!4968 = !DILocalVariable(name: "key", arg: 2, scope: !4963, file: !80, line: 403, type: !49)
!4969 = !DILocalVariable(name: "key_len", arg: 3, scope: !4963, file: !80, line: 403, type: !17)
!4970 = !DILocalVariable(name: "skey", scope: !4963, file: !80, line: 406, type: !4971)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !4972)
!4972 = !{!4973}
!4973 = !DISubrange(count: 60)
!4974 = !DILocation(line: 406, column: 14, scope: !4963)
!4975 = !DILocation(line: 410, column: 26, scope: !4963)
!4976 = !DILocalVariable(name: "nrounds", scope: !4963, file: !80, line: 407, type: !17)
!4977 = !DILocation(line: 409, column: 19, scope: !4963)
!4978 = !DILocalVariable(name: "nk", scope: !4963, file: !80, line: 404, type: !17)
!4979 = !DILocalVariable(name: "nkf", scope: !4963, file: !80, line: 404, type: !17)
!4980 = !DILocation(line: 411, column: 37, scope: !4963)
!4981 = !DILocation(line: 411, column: 5, scope: !4963)
!4982 = !DILocation(line: 412, column: 25, scope: !4963)
!4983 = !DILocation(line: 412, column: 31, scope: !4963)
!4984 = !DILocation(line: 412, column: 11, scope: !4963)
!4985 = !DILocalVariable(name: "tmp", scope: !4963, file: !80, line: 405, type: !19)
!4986 = !DILocalVariable(name: "i", scope: !4963, file: !80, line: 404, type: !17)
!4987 = !DILocalVariable(name: "j", scope: !4963, file: !80, line: 404, type: !17)
!4988 = !DILocalVariable(name: "k", scope: !4963, file: !80, line: 404, type: !17)
!4989 = !DILocation(line: 413, column: 10, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4963, file: !80, line: 413, column: 5)
!4991 = !DILocation(line: 413, scope: !4990)
!4992 = !DILocation(line: 0, scope: !4990)
!4993 = !DILocation(line: 413, column: 34, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !80, line: 413, column: 5)
!4995 = !DILocation(line: 413, column: 5, scope: !4990)
!4996 = !DILocation(line: 428, column: 5, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4963, file: !80, line: 428, column: 5)
!4998 = !DILocation(line: 414, column: 15, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !80, line: 414, column: 13)
!5000 = distinct !DILexicalBlock(scope: !4994, file: !80, line: 413, column: 47)
!5001 = !DILocation(line: 415, column: 31, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4999, file: !80, line: 414, column: 21)
!5003 = !DILocation(line: 416, column: 19, scope: !5002)
!5004 = !DILocation(line: 416, column: 35, scope: !5002)
!5005 = !DILocation(line: 416, column: 33, scope: !5002)
!5006 = !DILocation(line: 417, column: 9, scope: !5002)
!5007 = !DILocation(line: 417, column: 23, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4999, file: !80, line: 417, column: 20)
!5009 = !DILocation(line: 417, column: 27, scope: !5008)
!5010 = !DILocation(line: 418, column: 19, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5008, file: !80, line: 417, column: 38)
!5012 = !DILocation(line: 419, column: 9, scope: !5011)
!5013 = !DILocation(line: 0, scope: !4999)
!5014 = !DILocation(line: 420, column: 23, scope: !5000)
!5015 = !DILocation(line: 420, column: 16, scope: !5000)
!5016 = !DILocation(line: 420, column: 13, scope: !5000)
!5017 = !DILocation(line: 421, column: 9, scope: !5000)
!5018 = !DILocation(line: 421, column: 17, scope: !5000)
!5019 = !DILocation(line: 422, column: 13, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5000, file: !80, line: 422, column: 13)
!5021 = !DILocation(line: 422, column: 18, scope: !5020)
!5022 = !DILocation(line: 413, column: 43, scope: !4994)
!5023 = !DILocation(line: 413, column: 5, scope: !4994)
!5024 = distinct !{!5024, !4995, !5025, !244}
!5025 = !DILocation(line: 426, column: 5, scope: !4990)
!5026 = !DILocation(line: 428, scope: !4997)
!5027 = !DILocation(line: 428, column: 26, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4997, file: !80, line: 428, column: 5)
!5029 = !DILocalVariable(name: "q", scope: !5030, file: !80, line: 429, type: !5031)
!5030 = distinct !DILexicalBlock(scope: !5028, file: !80, line: 428, column: 49)
!5031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !5032)
!5032 = !{!5033}
!5033 = !DISubrange(count: 8)
!5034 = !DILocation(line: 429, column: 18, scope: !5030)
!5035 = !DILocation(line: 431, column: 43, scope: !5030)
!5036 = !DILocation(line: 431, column: 54, scope: !5030)
!5037 = !DILocation(line: 431, column: 9, scope: !5030)
!5038 = !DILocation(line: 432, column: 16, scope: !5030)
!5039 = !DILocation(line: 432, column: 9, scope: !5030)
!5040 = !DILocation(line: 432, column: 14, scope: !5030)
!5041 = !DILocation(line: 433, column: 9, scope: !5030)
!5042 = !DILocation(line: 433, column: 14, scope: !5030)
!5043 = !DILocation(line: 434, column: 9, scope: !5030)
!5044 = !DILocation(line: 434, column: 14, scope: !5030)
!5045 = !DILocation(line: 435, column: 16, scope: !5030)
!5046 = !DILocation(line: 435, column: 9, scope: !5030)
!5047 = !DILocation(line: 435, column: 14, scope: !5030)
!5048 = !DILocation(line: 436, column: 9, scope: !5030)
!5049 = !DILocation(line: 436, column: 14, scope: !5030)
!5050 = !DILocation(line: 437, column: 9, scope: !5030)
!5051 = !DILocation(line: 437, column: 14, scope: !5030)
!5052 = !DILocation(line: 438, column: 9, scope: !5030)
!5053 = !DILocation(line: 440, column: 14, scope: !5030)
!5054 = !DILocation(line: 440, column: 19, scope: !5030)
!5055 = !DILocation(line: 441, column: 16, scope: !5030)
!5056 = !DILocation(line: 441, column: 21, scope: !5030)
!5057 = !DILocation(line: 441, column: 13, scope: !5030)
!5058 = !DILocation(line: 442, column: 16, scope: !5030)
!5059 = !DILocation(line: 442, column: 21, scope: !5030)
!5060 = !DILocation(line: 442, column: 13, scope: !5030)
!5061 = !DILocation(line: 443, column: 16, scope: !5030)
!5062 = !DILocation(line: 443, column: 21, scope: !5030)
!5063 = !DILocation(line: 443, column: 13, scope: !5030)
!5064 = !DILocation(line: 439, column: 9, scope: !5030)
!5065 = !DILocation(line: 439, column: 26, scope: !5030)
!5066 = !DILocation(line: 445, column: 14, scope: !5030)
!5067 = !DILocation(line: 445, column: 19, scope: !5030)
!5068 = !DILocation(line: 446, column: 16, scope: !5030)
!5069 = !DILocation(line: 446, column: 21, scope: !5030)
!5070 = !DILocation(line: 446, column: 13, scope: !5030)
!5071 = !DILocation(line: 447, column: 16, scope: !5030)
!5072 = !DILocation(line: 447, column: 21, scope: !5030)
!5073 = !DILocation(line: 447, column: 13, scope: !5030)
!5074 = !DILocation(line: 448, column: 16, scope: !5030)
!5075 = !DILocation(line: 448, column: 21, scope: !5030)
!5076 = !DILocation(line: 448, column: 13, scope: !5030)
!5077 = !DILocation(line: 444, column: 21, scope: !5030)
!5078 = !DILocation(line: 444, column: 9, scope: !5030)
!5079 = !DILocation(line: 444, column: 26, scope: !5030)
!5080 = !DILocation(line: 428, column: 35, scope: !5028)
!5081 = !DILocation(line: 428, column: 43, scope: !5028)
!5082 = !DILocation(line: 428, column: 5, scope: !5028)
!5083 = distinct !{!5083, !4996, !5084, !244}
!5084 = !DILocation(line: 449, column: 5, scope: !4997)
!5085 = !DILocation(line: 450, column: 1, scope: !4963)
!5086 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !80, file: !80, line: 452, type: !5087, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !5, !428, !17}
!5089 = !DILocalVariable(name: "skey", arg: 1, scope: !5086, file: !80, line: 452, type: !5)
!5090 = !DILocation(line: 0, scope: !5086)
!5091 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !5086, file: !80, line: 452, type: !428)
!5092 = !DILocalVariable(name: "nrounds", arg: 3, scope: !5086, file: !80, line: 452, type: !17)
!5093 = !DILocation(line: 455, column: 23, scope: !5086)
!5094 = !DILocalVariable(name: "n", scope: !5086, file: !80, line: 453, type: !17)
!5095 = !DILocalVariable(name: "u", scope: !5086, file: !80, line: 453, type: !17)
!5096 = !DILocalVariable(name: "v", scope: !5086, file: !80, line: 453, type: !17)
!5097 = !DILocation(line: 456, column: 10, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5086, file: !80, line: 456, column: 5)
!5099 = !DILocation(line: 456, scope: !5098)
!5100 = !DILocation(line: 456, column: 26, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5098, file: !80, line: 456, column: 5)
!5102 = !DILocation(line: 456, column: 5, scope: !5098)
!5103 = !DILocation(line: 459, column: 29, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5101, file: !80, line: 456, column: 45)
!5105 = !DILocalVariable(name: "x3", scope: !5104, file: !80, line: 457, type: !6)
!5106 = !DILocation(line: 0, scope: !5104)
!5107 = !DILocalVariable(name: "x2", scope: !5104, file: !80, line: 457, type: !6)
!5108 = !DILocalVariable(name: "x1", scope: !5104, file: !80, line: 457, type: !6)
!5109 = !DILocalVariable(name: "x0", scope: !5104, file: !80, line: 457, type: !6)
!5110 = !DILocation(line: 460, column: 12, scope: !5104)
!5111 = !DILocation(line: 464, column: 12, scope: !5104)
!5112 = !DILocation(line: 465, column: 12, scope: !5104)
!5113 = !DILocation(line: 466, column: 12, scope: !5104)
!5114 = !DILocation(line: 467, column: 33, scope: !5104)
!5115 = !DILocation(line: 467, column: 9, scope: !5104)
!5116 = !DILocation(line: 467, column: 21, scope: !5104)
!5117 = !DILocation(line: 468, column: 33, scope: !5104)
!5118 = !DILocation(line: 468, column: 16, scope: !5104)
!5119 = !DILocation(line: 468, column: 9, scope: !5104)
!5120 = !DILocation(line: 468, column: 21, scope: !5104)
!5121 = !DILocation(line: 469, column: 33, scope: !5104)
!5122 = !DILocation(line: 469, column: 16, scope: !5104)
!5123 = !DILocation(line: 469, column: 9, scope: !5104)
!5124 = !DILocation(line: 469, column: 21, scope: !5104)
!5125 = !DILocation(line: 470, column: 33, scope: !5104)
!5126 = !DILocation(line: 470, column: 16, scope: !5104)
!5127 = !DILocation(line: 470, column: 9, scope: !5104)
!5128 = !DILocation(line: 470, column: 21, scope: !5104)
!5129 = !DILocation(line: 456, column: 33, scope: !5101)
!5130 = !DILocation(line: 456, column: 39, scope: !5101)
!5131 = !DILocation(line: 456, column: 5, scope: !5101)
!5132 = distinct !{!5132, !5102, !5133, !244}
!5133 = !DILocation(line: 471, column: 5, scope: !5098)
!5134 = !DILocation(line: 472, column: 1, scope: !5086)
!5135 = distinct !DISubprogram(name: "br_range_dec32le", scope: !80, file: !80, line: 104, type: !5136, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5138, !15, !49}
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!5139 = !DILocalVariable(name: "v", arg: 1, scope: !5135, file: !80, line: 104, type: !5138)
!5140 = !DILocation(line: 0, scope: !5135)
!5141 = !DILocalVariable(name: "num", arg: 2, scope: !5135, file: !80, line: 104, type: !15)
!5142 = !DILocalVariable(name: "src", arg: 3, scope: !5135, file: !80, line: 104, type: !49)
!5143 = !DILocation(line: 105, column: 5, scope: !5135)
!5144 = !DILocation(line: 105, column: 18, scope: !5135)
!5145 = !DILocation(line: 105, column: 15, scope: !5135)
!5146 = !DILocation(line: 106, column: 17, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5135, file: !80, line: 105, column: 23)
!5148 = !DILocation(line: 106, column: 12, scope: !5147)
!5149 = !DILocation(line: 106, column: 15, scope: !5147)
!5150 = !DILocation(line: 107, column: 13, scope: !5147)
!5151 = distinct !{!5151, !5143, !5152, !244}
!5152 = !DILocation(line: 108, column: 5, scope: !5135)
!5153 = !DILocation(line: 109, column: 1, scope: !5135)
!5154 = distinct !DISubprogram(name: "sub_word", scope: !80, file: !80, line: 392, type: !5155, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!19, !19}
!5157 = !DILocalVariable(name: "x", arg: 1, scope: !5154, file: !80, line: 392, type: !19)
!5158 = !DILocation(line: 0, scope: !5154)
!5159 = !DILocalVariable(name: "q", scope: !5154, file: !80, line: 393, type: !5031)
!5160 = !DILocation(line: 393, column: 14, scope: !5154)
!5161 = !DILocation(line: 395, column: 5, scope: !5154)
!5162 = !DILocation(line: 396, column: 12, scope: !5154)
!5163 = !DILocation(line: 396, column: 10, scope: !5154)
!5164 = !DILocation(line: 397, column: 5, scope: !5154)
!5165 = !DILocation(line: 398, column: 5, scope: !5154)
!5166 = !DILocation(line: 399, column: 5, scope: !5154)
!5167 = !DILocation(line: 400, column: 22, scope: !5154)
!5168 = !DILocation(line: 400, column: 12, scope: !5154)
!5169 = !DILocation(line: 400, column: 5, scope: !5154)
!5170 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !80, file: !80, line: 339, type: !5171, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{null, !5, !5, !5173}
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!5175 = !DILocalVariable(name: "q0", arg: 1, scope: !5170, file: !80, line: 339, type: !5)
!5176 = !DILocation(line: 0, scope: !5170)
!5177 = !DILocalVariable(name: "q1", arg: 2, scope: !5170, file: !80, line: 339, type: !5)
!5178 = !DILocalVariable(name: "w", arg: 3, scope: !5170, file: !80, line: 339, type: !5173)
!5179 = !DILocation(line: 342, column: 10, scope: !5170)
!5180 = !DILocalVariable(name: "x0", scope: !5170, file: !80, line: 340, type: !6)
!5181 = !DILocation(line: 343, column: 10, scope: !5170)
!5182 = !DILocalVariable(name: "x1", scope: !5170, file: !80, line: 340, type: !6)
!5183 = !DILocation(line: 344, column: 10, scope: !5170)
!5184 = !DILocalVariable(name: "x2", scope: !5170, file: !80, line: 340, type: !6)
!5185 = !DILocation(line: 345, column: 10, scope: !5170)
!5186 = !DILocalVariable(name: "x3", scope: !5170, file: !80, line: 340, type: !6)
!5187 = !DILocation(line: 346, column: 15, scope: !5170)
!5188 = !DILocation(line: 346, column: 8, scope: !5170)
!5189 = !DILocation(line: 347, column: 15, scope: !5170)
!5190 = !DILocation(line: 347, column: 8, scope: !5170)
!5191 = !DILocation(line: 348, column: 15, scope: !5170)
!5192 = !DILocation(line: 348, column: 8, scope: !5170)
!5193 = !DILocation(line: 349, column: 15, scope: !5170)
!5194 = !DILocation(line: 349, column: 8, scope: !5170)
!5195 = !DILocation(line: 350, column: 8, scope: !5170)
!5196 = !DILocation(line: 351, column: 8, scope: !5170)
!5197 = !DILocation(line: 352, column: 8, scope: !5170)
!5198 = !DILocation(line: 353, column: 8, scope: !5170)
!5199 = !DILocation(line: 354, column: 15, scope: !5170)
!5200 = !DILocation(line: 354, column: 8, scope: !5170)
!5201 = !DILocation(line: 355, column: 15, scope: !5170)
!5202 = !DILocation(line: 355, column: 8, scope: !5170)
!5203 = !DILocation(line: 358, column: 8, scope: !5170)
!5204 = !DILocation(line: 359, column: 8, scope: !5170)
!5205 = !DILocation(line: 362, column: 20, scope: !5170)
!5206 = !DILocation(line: 362, column: 14, scope: !5170)
!5207 = !DILocation(line: 362, column: 9, scope: !5170)
!5208 = !DILocation(line: 363, column: 20, scope: !5170)
!5209 = !DILocation(line: 363, column: 14, scope: !5170)
!5210 = !DILocation(line: 363, column: 9, scope: !5170)
!5211 = !DILocation(line: 364, column: 1, scope: !5170)
!5212 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !80, file: !80, line: 309, type: !26, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5213 = !DILocalVariable(name: "q", arg: 1, scope: !5212, file: !80, line: 309, type: !5)
!5214 = !DILocation(line: 0, scope: !5212)
!5215 = !DILocation(line: 322, column: 5, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 322, column: 5)
!5217 = !DILocalVariable(name: "a", scope: !5216, file: !80, line: 322, type: !6)
!5218 = !DILocation(line: 0, scope: !5216)
!5219 = !DILocalVariable(name: "b", scope: !5216, file: !80, line: 322, type: !6)
!5220 = !DILocation(line: 323, column: 5, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 323, column: 5)
!5222 = !DILocalVariable(name: "a", scope: !5221, file: !80, line: 323, type: !6)
!5223 = !DILocation(line: 0, scope: !5221)
!5224 = !DILocalVariable(name: "b", scope: !5221, file: !80, line: 323, type: !6)
!5225 = !DILocation(line: 324, column: 5, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 324, column: 5)
!5227 = !DILocalVariable(name: "a", scope: !5226, file: !80, line: 324, type: !6)
!5228 = !DILocation(line: 0, scope: !5226)
!5229 = !DILocalVariable(name: "b", scope: !5226, file: !80, line: 324, type: !6)
!5230 = !DILocation(line: 325, column: 5, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 325, column: 5)
!5232 = !DILocalVariable(name: "a", scope: !5231, file: !80, line: 325, type: !6)
!5233 = !DILocation(line: 0, scope: !5231)
!5234 = !DILocalVariable(name: "b", scope: !5231, file: !80, line: 325, type: !6)
!5235 = !DILocation(line: 327, column: 5, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 327, column: 5)
!5237 = !DILocalVariable(name: "a", scope: !5236, file: !80, line: 327, type: !6)
!5238 = !DILocation(line: 0, scope: !5236)
!5239 = !DILocalVariable(name: "b", scope: !5236, file: !80, line: 327, type: !6)
!5240 = !DILocation(line: 328, column: 5, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 328, column: 5)
!5242 = !DILocalVariable(name: "a", scope: !5241, file: !80, line: 328, type: !6)
!5243 = !DILocation(line: 0, scope: !5241)
!5244 = !DILocalVariable(name: "b", scope: !5241, file: !80, line: 328, type: !6)
!5245 = !DILocation(line: 329, column: 5, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 329, column: 5)
!5247 = !DILocalVariable(name: "a", scope: !5246, file: !80, line: 329, type: !6)
!5248 = !DILocation(line: 0, scope: !5246)
!5249 = !DILocalVariable(name: "b", scope: !5246, file: !80, line: 329, type: !6)
!5250 = !DILocation(line: 330, column: 5, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 330, column: 5)
!5252 = !DILocalVariable(name: "a", scope: !5251, file: !80, line: 330, type: !6)
!5253 = !DILocation(line: 0, scope: !5251)
!5254 = !DILocalVariable(name: "b", scope: !5251, file: !80, line: 330, type: !6)
!5255 = !DILocation(line: 332, column: 5, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 332, column: 5)
!5257 = !DILocalVariable(name: "a", scope: !5256, file: !80, line: 332, type: !6)
!5258 = !DILocation(line: 0, scope: !5256)
!5259 = !DILocalVariable(name: "b", scope: !5256, file: !80, line: 332, type: !6)
!5260 = !DILocation(line: 333, column: 5, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 333, column: 5)
!5262 = !DILocalVariable(name: "a", scope: !5261, file: !80, line: 333, type: !6)
!5263 = !DILocation(line: 0, scope: !5261)
!5264 = !DILocalVariable(name: "b", scope: !5261, file: !80, line: 333, type: !6)
!5265 = !DILocation(line: 334, column: 5, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 334, column: 5)
!5267 = !DILocalVariable(name: "a", scope: !5266, file: !80, line: 334, type: !6)
!5268 = !DILocation(line: 0, scope: !5266)
!5269 = !DILocalVariable(name: "b", scope: !5266, file: !80, line: 334, type: !6)
!5270 = !DILocation(line: 335, column: 5, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5212, file: !80, line: 335, column: 5)
!5272 = !DILocalVariable(name: "a", scope: !5271, file: !80, line: 335, type: !6)
!5273 = !DILocation(line: 0, scope: !5271)
!5274 = !DILocalVariable(name: "b", scope: !5271, file: !80, line: 335, type: !6)
!5275 = !DILocation(line: 336, column: 1, scope: !5212)
!5276 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !80, file: !80, line: 135, type: !26, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5277 = !DILocalVariable(name: "q", arg: 1, scope: !5276, file: !80, line: 135, type: !5)
!5278 = !DILocation(line: 0, scope: !5276)
!5279 = !DILocation(line: 161, column: 10, scope: !5276)
!5280 = !DILocalVariable(name: "x0", scope: !5276, file: !80, line: 146, type: !6)
!5281 = !DILocation(line: 162, column: 10, scope: !5276)
!5282 = !DILocalVariable(name: "x1", scope: !5276, file: !80, line: 146, type: !6)
!5283 = !DILocation(line: 163, column: 10, scope: !5276)
!5284 = !DILocalVariable(name: "x2", scope: !5276, file: !80, line: 146, type: !6)
!5285 = !DILocation(line: 164, column: 10, scope: !5276)
!5286 = !DILocalVariable(name: "x3", scope: !5276, file: !80, line: 146, type: !6)
!5287 = !DILocation(line: 165, column: 10, scope: !5276)
!5288 = !DILocalVariable(name: "x4", scope: !5276, file: !80, line: 146, type: !6)
!5289 = !DILocation(line: 166, column: 10, scope: !5276)
!5290 = !DILocalVariable(name: "x5", scope: !5276, file: !80, line: 146, type: !6)
!5291 = !DILocation(line: 167, column: 10, scope: !5276)
!5292 = !DILocalVariable(name: "x6", scope: !5276, file: !80, line: 146, type: !6)
!5293 = !DILocation(line: 168, column: 10, scope: !5276)
!5294 = !DILocalVariable(name: "x7", scope: !5276, file: !80, line: 146, type: !6)
!5295 = !DILocation(line: 173, column: 14, scope: !5276)
!5296 = !DILocalVariable(name: "y14", scope: !5276, file: !80, line: 148, type: !6)
!5297 = !DILocation(line: 174, column: 14, scope: !5276)
!5298 = !DILocalVariable(name: "y13", scope: !5276, file: !80, line: 148, type: !6)
!5299 = !DILocation(line: 175, column: 13, scope: !5276)
!5300 = !DILocalVariable(name: "y9", scope: !5276, file: !80, line: 147, type: !6)
!5301 = !DILocation(line: 176, column: 13, scope: !5276)
!5302 = !DILocalVariable(name: "y8", scope: !5276, file: !80, line: 147, type: !6)
!5303 = !DILocation(line: 177, column: 13, scope: !5276)
!5304 = !DILocalVariable(name: "t0", scope: !5276, file: !80, line: 152, type: !6)
!5305 = !DILocation(line: 178, column: 13, scope: !5276)
!5306 = !DILocalVariable(name: "y1", scope: !5276, file: !80, line: 147, type: !6)
!5307 = !DILocation(line: 179, column: 13, scope: !5276)
!5308 = !DILocalVariable(name: "y4", scope: !5276, file: !80, line: 147, type: !6)
!5309 = !DILocation(line: 180, column: 15, scope: !5276)
!5310 = !DILocalVariable(name: "y12", scope: !5276, file: !80, line: 148, type: !6)
!5311 = !DILocation(line: 181, column: 13, scope: !5276)
!5312 = !DILocalVariable(name: "y2", scope: !5276, file: !80, line: 147, type: !6)
!5313 = !DILocation(line: 182, column: 13, scope: !5276)
!5314 = !DILocalVariable(name: "y5", scope: !5276, file: !80, line: 147, type: !6)
!5315 = !DILocation(line: 183, column: 13, scope: !5276)
!5316 = !DILocalVariable(name: "y3", scope: !5276, file: !80, line: 147, type: !6)
!5317 = !DILocation(line: 184, column: 13, scope: !5276)
!5318 = !DILocalVariable(name: "t1", scope: !5276, file: !80, line: 152, type: !6)
!5319 = !DILocation(line: 185, column: 14, scope: !5276)
!5320 = !DILocalVariable(name: "y15", scope: !5276, file: !80, line: 148, type: !6)
!5321 = !DILocation(line: 186, column: 14, scope: !5276)
!5322 = !DILocalVariable(name: "y20", scope: !5276, file: !80, line: 149, type: !6)
!5323 = !DILocation(line: 187, column: 14, scope: !5276)
!5324 = !DILocalVariable(name: "y6", scope: !5276, file: !80, line: 147, type: !6)
!5325 = !DILocation(line: 188, column: 15, scope: !5276)
!5326 = !DILocalVariable(name: "y10", scope: !5276, file: !80, line: 148, type: !6)
!5327 = !DILocation(line: 189, column: 15, scope: !5276)
!5328 = !DILocalVariable(name: "y11", scope: !5276, file: !80, line: 148, type: !6)
!5329 = !DILocation(line: 190, column: 13, scope: !5276)
!5330 = !DILocalVariable(name: "y7", scope: !5276, file: !80, line: 147, type: !6)
!5331 = !DILocation(line: 191, column: 15, scope: !5276)
!5332 = !DILocalVariable(name: "y17", scope: !5276, file: !80, line: 148, type: !6)
!5333 = !DILocalVariable(name: "y19", scope: !5276, file: !80, line: 148, type: !6)
!5334 = !DILocation(line: 193, column: 14, scope: !5276)
!5335 = !DILocalVariable(name: "y16", scope: !5276, file: !80, line: 148, type: !6)
!5336 = !DILocalVariable(name: "y21", scope: !5276, file: !80, line: 149, type: !6)
!5337 = !DILocalVariable(name: "y18", scope: !5276, file: !80, line: 148, type: !6)
!5338 = !DILocation(line: 200, column: 14, scope: !5276)
!5339 = !DILocalVariable(name: "t2", scope: !5276, file: !80, line: 152, type: !6)
!5340 = !DILocation(line: 201, column: 13, scope: !5276)
!5341 = !DILocalVariable(name: "t3", scope: !5276, file: !80, line: 152, type: !6)
!5342 = !DILocation(line: 202, column: 13, scope: !5276)
!5343 = !DILocalVariable(name: "t4", scope: !5276, file: !80, line: 152, type: !6)
!5344 = !DILocation(line: 203, column: 13, scope: !5276)
!5345 = !DILocalVariable(name: "t5", scope: !5276, file: !80, line: 152, type: !6)
!5346 = !DILocalVariable(name: "t6", scope: !5276, file: !80, line: 152, type: !6)
!5347 = !DILocation(line: 205, column: 14, scope: !5276)
!5348 = !DILocalVariable(name: "t7", scope: !5276, file: !80, line: 152, type: !6)
!5349 = !DILocation(line: 206, column: 13, scope: !5276)
!5350 = !DILocalVariable(name: "t8", scope: !5276, file: !80, line: 152, type: !6)
!5351 = !DILocalVariable(name: "t9", scope: !5276, file: !80, line: 152, type: !6)
!5352 = !DILocation(line: 208, column: 14, scope: !5276)
!5353 = !DILocalVariable(name: "t10", scope: !5276, file: !80, line: 153, type: !6)
!5354 = !DILocalVariable(name: "t11", scope: !5276, file: !80, line: 153, type: !6)
!5355 = !DILocation(line: 210, column: 14, scope: !5276)
!5356 = !DILocalVariable(name: "t12", scope: !5276, file: !80, line: 153, type: !6)
!5357 = !DILocation(line: 211, column: 15, scope: !5276)
!5358 = !DILocalVariable(name: "t13", scope: !5276, file: !80, line: 153, type: !6)
!5359 = !DILocation(line: 212, column: 15, scope: !5276)
!5360 = !DILocalVariable(name: "t14", scope: !5276, file: !80, line: 153, type: !6)
!5361 = !DILocation(line: 213, column: 14, scope: !5276)
!5362 = !DILocalVariable(name: "t15", scope: !5276, file: !80, line: 153, type: !6)
!5363 = !DILocation(line: 214, column: 15, scope: !5276)
!5364 = !DILocalVariable(name: "t16", scope: !5276, file: !80, line: 153, type: !6)
!5365 = !DILocation(line: 215, column: 14, scope: !5276)
!5366 = !DILocalVariable(name: "t17", scope: !5276, file: !80, line: 153, type: !6)
!5367 = !DILocalVariable(name: "t18", scope: !5276, file: !80, line: 153, type: !6)
!5368 = !DILocalVariable(name: "t19", scope: !5276, file: !80, line: 153, type: !6)
!5369 = !DILocalVariable(name: "t20", scope: !5276, file: !80, line: 154, type: !6)
!5370 = !DILocation(line: 219, column: 15, scope: !5276)
!5371 = !DILocalVariable(name: "t21", scope: !5276, file: !80, line: 154, type: !6)
!5372 = !DILocation(line: 220, column: 15, scope: !5276)
!5373 = !DILocalVariable(name: "t22", scope: !5276, file: !80, line: 154, type: !6)
!5374 = !DILocation(line: 221, column: 15, scope: !5276)
!5375 = !DILocalVariable(name: "t23", scope: !5276, file: !80, line: 154, type: !6)
!5376 = !DILocation(line: 222, column: 15, scope: !5276)
!5377 = !DILocalVariable(name: "t24", scope: !5276, file: !80, line: 154, type: !6)
!5378 = !DILocation(line: 224, column: 15, scope: !5276)
!5379 = !DILocalVariable(name: "t25", scope: !5276, file: !80, line: 154, type: !6)
!5380 = !DILocation(line: 225, column: 15, scope: !5276)
!5381 = !DILocalVariable(name: "t26", scope: !5276, file: !80, line: 154, type: !6)
!5382 = !DILocation(line: 226, column: 15, scope: !5276)
!5383 = !DILocalVariable(name: "t27", scope: !5276, file: !80, line: 154, type: !6)
!5384 = !DILocation(line: 227, column: 15, scope: !5276)
!5385 = !DILocalVariable(name: "t28", scope: !5276, file: !80, line: 154, type: !6)
!5386 = !DILocation(line: 228, column: 15, scope: !5276)
!5387 = !DILocalVariable(name: "t29", scope: !5276, file: !80, line: 154, type: !6)
!5388 = !DILocation(line: 229, column: 15, scope: !5276)
!5389 = !DILocalVariable(name: "t30", scope: !5276, file: !80, line: 155, type: !6)
!5390 = !DILocation(line: 230, column: 15, scope: !5276)
!5391 = !DILocalVariable(name: "t31", scope: !5276, file: !80, line: 155, type: !6)
!5392 = !DILocation(line: 231, column: 15, scope: !5276)
!5393 = !DILocalVariable(name: "t32", scope: !5276, file: !80, line: 155, type: !6)
!5394 = !DILocation(line: 232, column: 15, scope: !5276)
!5395 = !DILocalVariable(name: "t33", scope: !5276, file: !80, line: 155, type: !6)
!5396 = !DILocation(line: 233, column: 15, scope: !5276)
!5397 = !DILocalVariable(name: "t34", scope: !5276, file: !80, line: 155, type: !6)
!5398 = !DILocation(line: 234, column: 15, scope: !5276)
!5399 = !DILocalVariable(name: "t35", scope: !5276, file: !80, line: 155, type: !6)
!5400 = !DILocation(line: 235, column: 15, scope: !5276)
!5401 = !DILocalVariable(name: "t36", scope: !5276, file: !80, line: 155, type: !6)
!5402 = !DILocation(line: 236, column: 15, scope: !5276)
!5403 = !DILocalVariable(name: "t37", scope: !5276, file: !80, line: 155, type: !6)
!5404 = !DILocation(line: 237, column: 15, scope: !5276)
!5405 = !DILocalVariable(name: "t38", scope: !5276, file: !80, line: 155, type: !6)
!5406 = !DILocation(line: 238, column: 15, scope: !5276)
!5407 = !DILocalVariable(name: "t39", scope: !5276, file: !80, line: 155, type: !6)
!5408 = !DILocation(line: 239, column: 15, scope: !5276)
!5409 = !DILocalVariable(name: "t40", scope: !5276, file: !80, line: 156, type: !6)
!5410 = !DILocation(line: 241, column: 15, scope: !5276)
!5411 = !DILocalVariable(name: "t41", scope: !5276, file: !80, line: 156, type: !6)
!5412 = !DILocation(line: 242, column: 15, scope: !5276)
!5413 = !DILocalVariable(name: "t42", scope: !5276, file: !80, line: 156, type: !6)
!5414 = !DILocation(line: 243, column: 15, scope: !5276)
!5415 = !DILocalVariable(name: "t43", scope: !5276, file: !80, line: 156, type: !6)
!5416 = !DILocation(line: 244, column: 15, scope: !5276)
!5417 = !DILocalVariable(name: "t44", scope: !5276, file: !80, line: 156, type: !6)
!5418 = !DILocation(line: 245, column: 15, scope: !5276)
!5419 = !DILocalVariable(name: "t45", scope: !5276, file: !80, line: 156, type: !6)
!5420 = !DILocation(line: 246, column: 14, scope: !5276)
!5421 = !DILocalVariable(name: "z0", scope: !5276, file: !80, line: 150, type: !6)
!5422 = !DILocation(line: 247, column: 14, scope: !5276)
!5423 = !DILocalVariable(name: "z1", scope: !5276, file: !80, line: 150, type: !6)
!5424 = !DILocation(line: 248, column: 14, scope: !5276)
!5425 = !DILocalVariable(name: "z2", scope: !5276, file: !80, line: 150, type: !6)
!5426 = !DILocation(line: 249, column: 14, scope: !5276)
!5427 = !DILocalVariable(name: "z3", scope: !5276, file: !80, line: 150, type: !6)
!5428 = !DILocation(line: 250, column: 14, scope: !5276)
!5429 = !DILocalVariable(name: "z4", scope: !5276, file: !80, line: 150, type: !6)
!5430 = !DILocation(line: 251, column: 14, scope: !5276)
!5431 = !DILocalVariable(name: "z5", scope: !5276, file: !80, line: 150, type: !6)
!5432 = !DILocation(line: 252, column: 14, scope: !5276)
!5433 = !DILocalVariable(name: "z6", scope: !5276, file: !80, line: 150, type: !6)
!5434 = !DILocation(line: 253, column: 14, scope: !5276)
!5435 = !DILocalVariable(name: "z7", scope: !5276, file: !80, line: 150, type: !6)
!5436 = !DILocation(line: 254, column: 14, scope: !5276)
!5437 = !DILocalVariable(name: "z8", scope: !5276, file: !80, line: 150, type: !6)
!5438 = !DILocation(line: 255, column: 14, scope: !5276)
!5439 = !DILocalVariable(name: "z9", scope: !5276, file: !80, line: 150, type: !6)
!5440 = !DILocation(line: 256, column: 15, scope: !5276)
!5441 = !DILocalVariable(name: "z10", scope: !5276, file: !80, line: 151, type: !6)
!5442 = !DILocation(line: 257, column: 15, scope: !5276)
!5443 = !DILocalVariable(name: "z11", scope: !5276, file: !80, line: 151, type: !6)
!5444 = !DILocation(line: 258, column: 15, scope: !5276)
!5445 = !DILocalVariable(name: "z12", scope: !5276, file: !80, line: 151, type: !6)
!5446 = !DILocation(line: 259, column: 15, scope: !5276)
!5447 = !DILocalVariable(name: "z13", scope: !5276, file: !80, line: 151, type: !6)
!5448 = !DILocation(line: 260, column: 15, scope: !5276)
!5449 = !DILocalVariable(name: "z14", scope: !5276, file: !80, line: 151, type: !6)
!5450 = !DILocation(line: 261, column: 15, scope: !5276)
!5451 = !DILocalVariable(name: "z15", scope: !5276, file: !80, line: 151, type: !6)
!5452 = !DILocation(line: 262, column: 15, scope: !5276)
!5453 = !DILocalVariable(name: "z16", scope: !5276, file: !80, line: 151, type: !6)
!5454 = !DILocation(line: 263, column: 15, scope: !5276)
!5455 = !DILocalVariable(name: "z17", scope: !5276, file: !80, line: 151, type: !6)
!5456 = !DILocation(line: 268, column: 15, scope: !5276)
!5457 = !DILocalVariable(name: "t46", scope: !5276, file: !80, line: 156, type: !6)
!5458 = !DILocation(line: 269, column: 15, scope: !5276)
!5459 = !DILocalVariable(name: "t47", scope: !5276, file: !80, line: 156, type: !6)
!5460 = !DILocation(line: 270, column: 14, scope: !5276)
!5461 = !DILocalVariable(name: "t48", scope: !5276, file: !80, line: 156, type: !6)
!5462 = !DILocation(line: 271, column: 14, scope: !5276)
!5463 = !DILocalVariable(name: "t49", scope: !5276, file: !80, line: 156, type: !6)
!5464 = !DILocation(line: 272, column: 14, scope: !5276)
!5465 = !DILocalVariable(name: "t50", scope: !5276, file: !80, line: 157, type: !6)
!5466 = !DILocation(line: 273, column: 14, scope: !5276)
!5467 = !DILocalVariable(name: "t51", scope: !5276, file: !80, line: 157, type: !6)
!5468 = !DILocation(line: 274, column: 14, scope: !5276)
!5469 = !DILocalVariable(name: "t52", scope: !5276, file: !80, line: 157, type: !6)
!5470 = !DILocation(line: 275, column: 14, scope: !5276)
!5471 = !DILocalVariable(name: "t53", scope: !5276, file: !80, line: 157, type: !6)
!5472 = !DILocation(line: 276, column: 14, scope: !5276)
!5473 = !DILocalVariable(name: "t54", scope: !5276, file: !80, line: 157, type: !6)
!5474 = !DILocation(line: 277, column: 15, scope: !5276)
!5475 = !DILocalVariable(name: "t55", scope: !5276, file: !80, line: 157, type: !6)
!5476 = !DILocation(line: 278, column: 15, scope: !5276)
!5477 = !DILocalVariable(name: "t56", scope: !5276, file: !80, line: 157, type: !6)
!5478 = !DILocation(line: 279, column: 15, scope: !5276)
!5479 = !DILocalVariable(name: "t57", scope: !5276, file: !80, line: 157, type: !6)
!5480 = !DILocation(line: 280, column: 14, scope: !5276)
!5481 = !DILocalVariable(name: "t58", scope: !5276, file: !80, line: 157, type: !6)
!5482 = !DILocation(line: 281, column: 14, scope: !5276)
!5483 = !DILocalVariable(name: "t59", scope: !5276, file: !80, line: 157, type: !6)
!5484 = !DILocation(line: 282, column: 15, scope: !5276)
!5485 = !DILocalVariable(name: "t60", scope: !5276, file: !80, line: 158, type: !6)
!5486 = !DILocation(line: 283, column: 15, scope: !5276)
!5487 = !DILocalVariable(name: "t61", scope: !5276, file: !80, line: 158, type: !6)
!5488 = !DILocation(line: 284, column: 15, scope: !5276)
!5489 = !DILocalVariable(name: "t62", scope: !5276, file: !80, line: 158, type: !6)
!5490 = !DILocation(line: 285, column: 15, scope: !5276)
!5491 = !DILocalVariable(name: "t63", scope: !5276, file: !80, line: 158, type: !6)
!5492 = !DILocation(line: 286, column: 14, scope: !5276)
!5493 = !DILocalVariable(name: "t64", scope: !5276, file: !80, line: 158, type: !6)
!5494 = !DILocation(line: 287, column: 15, scope: !5276)
!5495 = !DILocalVariable(name: "t65", scope: !5276, file: !80, line: 158, type: !6)
!5496 = !DILocation(line: 288, column: 14, scope: !5276)
!5497 = !DILocalVariable(name: "t66", scope: !5276, file: !80, line: 158, type: !6)
!5498 = !DILocation(line: 289, column: 14, scope: !5276)
!5499 = !DILocalVariable(name: "s0", scope: !5276, file: !80, line: 159, type: !6)
!5500 = !DILocation(line: 290, column: 14, scope: !5276)
!5501 = !DILocalVariable(name: "s6", scope: !5276, file: !80, line: 159, type: !6)
!5502 = !DILocation(line: 291, column: 14, scope: !5276)
!5503 = !DILocalVariable(name: "s7", scope: !5276, file: !80, line: 159, type: !6)
!5504 = !DILocalVariable(name: "t67", scope: !5276, file: !80, line: 158, type: !6)
!5505 = !DILocation(line: 293, column: 14, scope: !5276)
!5506 = !DILocalVariable(name: "s3", scope: !5276, file: !80, line: 159, type: !6)
!5507 = !DILocation(line: 294, column: 14, scope: !5276)
!5508 = !DILocalVariable(name: "s4", scope: !5276, file: !80, line: 159, type: !6)
!5509 = !DILocation(line: 295, column: 14, scope: !5276)
!5510 = !DILocalVariable(name: "s5", scope: !5276, file: !80, line: 159, type: !6)
!5511 = !DILocation(line: 296, column: 14, scope: !5276)
!5512 = !DILocalVariable(name: "s1", scope: !5276, file: !80, line: 159, type: !6)
!5513 = !DILocation(line: 297, column: 14, scope: !5276)
!5514 = !DILocalVariable(name: "s2", scope: !5276, file: !80, line: 159, type: !6)
!5515 = !DILocation(line: 299, column: 5, scope: !5276)
!5516 = !DILocation(line: 299, column: 10, scope: !5276)
!5517 = !DILocation(line: 300, column: 5, scope: !5276)
!5518 = !DILocation(line: 300, column: 10, scope: !5276)
!5519 = !DILocation(line: 301, column: 5, scope: !5276)
!5520 = !DILocation(line: 301, column: 10, scope: !5276)
!5521 = !DILocation(line: 302, column: 5, scope: !5276)
!5522 = !DILocation(line: 302, column: 10, scope: !5276)
!5523 = !DILocation(line: 303, column: 5, scope: !5276)
!5524 = !DILocation(line: 303, column: 10, scope: !5276)
!5525 = !DILocation(line: 304, column: 5, scope: !5276)
!5526 = !DILocation(line: 304, column: 10, scope: !5276)
!5527 = !DILocation(line: 305, column: 5, scope: !5276)
!5528 = !DILocation(line: 305, column: 10, scope: !5276)
!5529 = !DILocation(line: 306, column: 10, scope: !5276)
!5530 = !DILocation(line: 307, column: 1, scope: !5276)
!5531 = distinct !DISubprogram(name: "br_dec32le", scope: !80, file: !80, line: 96, type: !5532, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!19, !49}
!5534 = !DILocalVariable(name: "src", arg: 1, scope: !5531, file: !80, line: 96, type: !49)
!5535 = !DILocation(line: 0, scope: !5531)
!5536 = !DILocation(line: 97, column: 22, scope: !5531)
!5537 = !DILocation(line: 97, column: 12, scope: !5531)
!5538 = !DILocation(line: 98, column: 25, scope: !5531)
!5539 = !DILocation(line: 98, column: 15, scope: !5531)
!5540 = !DILocation(line: 98, column: 32, scope: !5531)
!5541 = !DILocation(line: 98, column: 12, scope: !5531)
!5542 = !DILocation(line: 99, column: 25, scope: !5531)
!5543 = !DILocation(line: 99, column: 15, scope: !5531)
!5544 = !DILocation(line: 99, column: 32, scope: !5531)
!5545 = !DILocation(line: 99, column: 12, scope: !5531)
!5546 = !DILocation(line: 100, column: 25, scope: !5531)
!5547 = !DILocation(line: 100, column: 15, scope: !5531)
!5548 = !DILocation(line: 100, column: 32, scope: !5531)
!5549 = !DILocation(line: 100, column: 12, scope: !5531)
!5550 = !DILocation(line: 97, column: 5, scope: !5531)
!5551 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !80, file: !80, line: 647, type: !4937, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5552 = !DILocalVariable(name: "r", arg: 1, scope: !5551, file: !80, line: 647, type: !4939)
!5553 = !DILocation(line: 0, scope: !5551)
!5554 = !DILocalVariable(name: "key", arg: 2, scope: !5551, file: !80, line: 647, type: !49)
!5555 = !DILocation(line: 648, column: 5, scope: !5551)
!5556 = !DILocation(line: 649, column: 1, scope: !5551)
!5557 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !80, file: !80, line: 652, type: !5558, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !5560, !49}
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5561, size: 32)
!5561 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !80, line: 51, baseType: !5562)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 49, size: 32, elements: !5563)
!5563 = !{!5564}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5562, file: !80, line: 50, baseType: !5, size: 32)
!5565 = !DILocalVariable(name: "r", arg: 1, scope: !5557, file: !80, line: 652, type: !5560)
!5566 = !DILocation(line: 0, scope: !5557)
!5567 = !DILocalVariable(name: "key", arg: 2, scope: !5557, file: !80, line: 652, type: !49)
!5568 = !DILocalVariable(name: "skey", scope: !5557, file: !80, line: 653, type: !5569)
!5569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !5570)
!5570 = !{!5571}
!5571 = !DISubrange(count: 26)
!5572 = !DILocation(line: 653, column: 14, scope: !5557)
!5573 = !DILocation(line: 654, column: 17, scope: !5557)
!5574 = !DILocation(line: 654, column: 15, scope: !5557)
!5575 = !DILocation(line: 655, column: 19, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5557, file: !80, line: 655, column: 9)
!5577 = !DILocation(line: 656, column: 9, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5576, file: !80, line: 655, column: 28)
!5579 = !DILocation(line: 657, column: 5, scope: !5578)
!5580 = !DILocation(line: 659, column: 5, scope: !5557)
!5581 = !DILocation(line: 660, column: 32, scope: !5557)
!5582 = !DILocation(line: 660, column: 5, scope: !5557)
!5583 = !DILocation(line: 661, column: 1, scope: !5557)
!5584 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !80, file: !80, line: 664, type: !5558, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5585 = !DILocalVariable(name: "r", arg: 1, scope: !5584, file: !80, line: 664, type: !5560)
!5586 = !DILocation(line: 0, scope: !5584)
!5587 = !DILocalVariable(name: "key", arg: 2, scope: !5584, file: !80, line: 664, type: !49)
!5588 = !DILocation(line: 665, column: 5, scope: !5584)
!5589 = !DILocation(line: 666, column: 1, scope: !5584)
!5590 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !80, file: !80, line: 669, type: !5591, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !5593, !49}
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 32)
!5594 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !80, line: 56, baseType: !5595)
!5595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 54, size: 32, elements: !5596)
!5596 = !{!5597}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !5595, file: !80, line: 55, baseType: !5, size: 32)
!5598 = !DILocalVariable(name: "r", arg: 1, scope: !5590, file: !80, line: 669, type: !5593)
!5599 = !DILocation(line: 0, scope: !5590)
!5600 = !DILocalVariable(name: "key", arg: 2, scope: !5590, file: !80, line: 669, type: !49)
!5601 = !DILocalVariable(name: "skey", scope: !5590, file: !80, line: 670, type: !5602)
!5602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1920, elements: !5603)
!5603 = !{!5604}
!5604 = !DISubrange(count: 30)
!5605 = !DILocation(line: 670, column: 14, scope: !5590)
!5606 = !DILocation(line: 671, column: 17, scope: !5590)
!5607 = !DILocation(line: 671, column: 15, scope: !5590)
!5608 = !DILocation(line: 672, column: 19, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5590, file: !80, line: 672, column: 9)
!5610 = !DILocation(line: 673, column: 9, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5609, file: !80, line: 672, column: 28)
!5612 = !DILocation(line: 674, column: 5, scope: !5611)
!5613 = !DILocation(line: 676, column: 5, scope: !5590)
!5614 = !DILocation(line: 677, column: 32, scope: !5590)
!5615 = !DILocation(line: 677, column: 5, scope: !5590)
!5616 = !DILocation(line: 678, column: 1, scope: !5590)
!5617 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !80, file: !80, line: 681, type: !5591, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5618 = !DILocalVariable(name: "r", arg: 1, scope: !5617, file: !80, line: 681, type: !5593)
!5619 = !DILocation(line: 0, scope: !5617)
!5620 = !DILocalVariable(name: "key", arg: 2, scope: !5617, file: !80, line: 681, type: !49)
!5621 = !DILocation(line: 682, column: 5, scope: !5617)
!5622 = !DILocation(line: 683, column: 1, scope: !5617)
!5623 = distinct !DISubprogram(name: "aes128_ecb", scope: !80, file: !80, line: 686, type: !5624, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !18, !49, !15, !5626}
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 32)
!5627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!5628 = !DILocalVariable(name: "out", arg: 1, scope: !5623, file: !80, line: 686, type: !18)
!5629 = !DILocation(line: 0, scope: !5623)
!5630 = !DILocalVariable(name: "in", arg: 2, scope: !5623, file: !80, line: 686, type: !49)
!5631 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5623, file: !80, line: 686, type: !15)
!5632 = !DILocalVariable(name: "ctx", arg: 4, scope: !5623, file: !80, line: 686, type: !5626)
!5633 = !DILocation(line: 687, column: 36, scope: !5623)
!5634 = !DILocation(line: 687, column: 5, scope: !5623)
!5635 = !DILocation(line: 688, column: 1, scope: !5623)
!5636 = distinct !DISubprogram(name: "aes_ecb", scope: !80, file: !80, line: 587, type: !5637, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{null, !18, !49, !15, !428, !17}
!5639 = !DILocalVariable(name: "out", arg: 1, scope: !5636, file: !80, line: 587, type: !18)
!5640 = !DILocation(line: 0, scope: !5636)
!5641 = !DILocalVariable(name: "in", arg: 2, scope: !5636, file: !80, line: 587, type: !49)
!5642 = !DILocalVariable(name: "nblocks", arg: 3, scope: !5636, file: !80, line: 587, type: !15)
!5643 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5636, file: !80, line: 587, type: !428)
!5644 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5636, file: !80, line: 587, type: !17)
!5645 = !DILocalVariable(name: "blocks", scope: !5636, file: !80, line: 588, type: !5646)
!5646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !117)
!5647 = !DILocation(line: 588, column: 14, scope: !5636)
!5648 = !DILocalVariable(name: "t", scope: !5636, file: !80, line: 589, type: !5649)
!5649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !5650)
!5650 = !{!5651}
!5651 = !DISubrange(count: 64)
!5652 = !DILocation(line: 589, column: 19, scope: !5636)
!5653 = !DILocation(line: 591, column: 5, scope: !5636)
!5654 = !DILocation(line: 591, column: 20, scope: !5636)
!5655 = !DILocation(line: 592, column: 9, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5636, file: !80, line: 591, column: 26)
!5657 = !DILocation(line: 593, column: 9, scope: !5656)
!5658 = !DILocation(line: 594, column: 17, scope: !5656)
!5659 = !DILocation(line: 595, column: 12, scope: !5656)
!5660 = !DILocation(line: 596, column: 13, scope: !5656)
!5661 = distinct !{!5661, !5653, !5662, !244}
!5662 = !DILocation(line: 597, column: 5, scope: !5636)
!5663 = !DILocation(line: 599, column: 9, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5636, file: !80, line: 599, column: 9)
!5665 = !DILocation(line: 600, column: 42, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5664, file: !80, line: 599, column: 18)
!5667 = !DILocation(line: 600, column: 9, scope: !5666)
!5668 = !DILocation(line: 601, column: 9, scope: !5666)
!5669 = !DILocation(line: 602, column: 32, scope: !5666)
!5670 = !DILocation(line: 602, column: 9, scope: !5666)
!5671 = !DILocation(line: 603, column: 5, scope: !5666)
!5672 = !DILocation(line: 604, column: 1, scope: !5636)
!5673 = distinct !DISubprogram(name: "aes_ecb4x", scope: !80, file: !80, line: 545, type: !5674, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{null, !18, !5173, !428, !17}
!5676 = !DILocalVariable(name: "out", arg: 1, scope: !5673, file: !80, line: 545, type: !18)
!5677 = !DILocation(line: 0, scope: !5673)
!5678 = !DILocalVariable(name: "ivw", arg: 2, scope: !5673, file: !80, line: 545, type: !5173)
!5679 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !5673, file: !80, line: 545, type: !428)
!5680 = !DILocalVariable(name: "nrounds", arg: 4, scope: !5673, file: !80, line: 545, type: !17)
!5681 = !DILocalVariable(name: "w", scope: !5673, file: !80, line: 546, type: !5646)
!5682 = !DILocation(line: 546, column: 14, scope: !5673)
!5683 = !DILocalVariable(name: "q", scope: !5673, file: !80, line: 547, type: !5031)
!5684 = !DILocation(line: 547, column: 14, scope: !5673)
!5685 = !DILocation(line: 550, column: 5, scope: !5673)
!5686 = !DILocalVariable(name: "i", scope: !5673, file: !80, line: 548, type: !17)
!5687 = !DILocation(line: 551, column: 10, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5673, file: !80, line: 551, column: 5)
!5689 = !DILocation(line: 551, scope: !5688)
!5690 = !DILocation(line: 551, column: 19, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5688, file: !80, line: 551, column: 5)
!5692 = !DILocation(line: 551, column: 5, scope: !5688)
!5693 = !DILocation(line: 552, column: 36, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5691, file: !80, line: 551, column: 29)
!5695 = !DILocation(line: 552, column: 47, scope: !5694)
!5696 = !DILocation(line: 552, column: 43, scope: !5694)
!5697 = !DILocation(line: 552, column: 55, scope: !5694)
!5698 = !DILocation(line: 552, column: 9, scope: !5694)
!5699 = !DILocation(line: 551, column: 25, scope: !5691)
!5700 = !DILocation(line: 551, column: 5, scope: !5691)
!5701 = distinct !{!5701, !5692, !5702, !244}
!5702 = !DILocation(line: 553, column: 5, scope: !5688)
!5703 = !DILocation(line: 554, column: 5, scope: !5673)
!5704 = !DILocation(line: 557, column: 5, scope: !5673)
!5705 = !DILocation(line: 558, column: 10, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5673, file: !80, line: 558, column: 5)
!5707 = !DILocation(line: 558, scope: !5706)
!5708 = !DILocation(line: 558, column: 19, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5706, file: !80, line: 558, column: 5)
!5710 = !DILocation(line: 558, column: 5, scope: !5706)
!5711 = !DILocation(line: 559, column: 9, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5709, file: !80, line: 558, column: 35)
!5713 = !DILocation(line: 560, column: 9, scope: !5712)
!5714 = !DILocation(line: 561, column: 9, scope: !5712)
!5715 = !DILocation(line: 562, column: 33, scope: !5712)
!5716 = !DILocation(line: 562, column: 9, scope: !5712)
!5717 = !DILocation(line: 558, column: 31, scope: !5709)
!5718 = !DILocation(line: 558, column: 5, scope: !5709)
!5719 = distinct !{!5719, !5710, !5720, !244}
!5720 = !DILocation(line: 563, column: 5, scope: !5706)
!5721 = !DILocation(line: 564, column: 5, scope: !5673)
!5722 = !DILocation(line: 565, column: 5, scope: !5673)
!5723 = !DILocation(line: 566, column: 29, scope: !5673)
!5724 = !DILocation(line: 566, column: 5, scope: !5673)
!5725 = !DILocation(line: 568, column: 5, scope: !5673)
!5726 = !DILocation(line: 569, column: 10, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5673, file: !80, line: 569, column: 5)
!5728 = !DILocation(line: 569, scope: !5727)
!5729 = !DILocation(line: 569, column: 19, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5727, file: !80, line: 569, column: 5)
!5731 = !DILocation(line: 569, column: 5, scope: !5727)
!5732 = !DILocation(line: 570, column: 38, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !80, line: 569, column: 30)
!5734 = !DILocation(line: 570, column: 50, scope: !5733)
!5735 = !DILocation(line: 570, column: 60, scope: !5733)
!5736 = !DILocation(line: 570, column: 56, scope: !5733)
!5737 = !DILocation(line: 570, column: 9, scope: !5733)
!5738 = !DILocation(line: 569, column: 26, scope: !5730)
!5739 = !DILocation(line: 569, column: 5, scope: !5730)
!5740 = distinct !{!5740, !5731, !5741, !244}
!5741 = !DILocation(line: 571, column: 5, scope: !5727)
!5742 = !DILocation(line: 572, column: 5, scope: !5673)
!5743 = !DILocation(line: 573, column: 1, scope: !5673)
!5744 = distinct !DISubprogram(name: "add_round_key", scope: !80, file: !80, line: 475, type: !5745, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !5, !428}
!5747 = !DILocalVariable(name: "q", arg: 1, scope: !5744, file: !80, line: 475, type: !5)
!5748 = !DILocation(line: 0, scope: !5744)
!5749 = !DILocalVariable(name: "sk", arg: 2, scope: !5744, file: !80, line: 475, type: !428)
!5750 = !DILocation(line: 476, column: 13, scope: !5744)
!5751 = !DILocation(line: 476, column: 10, scope: !5744)
!5752 = !DILocation(line: 477, column: 13, scope: !5744)
!5753 = !DILocation(line: 477, column: 5, scope: !5744)
!5754 = !DILocation(line: 477, column: 10, scope: !5744)
!5755 = !DILocation(line: 478, column: 13, scope: !5744)
!5756 = !DILocation(line: 478, column: 5, scope: !5744)
!5757 = !DILocation(line: 478, column: 10, scope: !5744)
!5758 = !DILocation(line: 479, column: 13, scope: !5744)
!5759 = !DILocation(line: 479, column: 5, scope: !5744)
!5760 = !DILocation(line: 479, column: 10, scope: !5744)
!5761 = !DILocation(line: 480, column: 13, scope: !5744)
!5762 = !DILocation(line: 480, column: 5, scope: !5744)
!5763 = !DILocation(line: 480, column: 10, scope: !5744)
!5764 = !DILocation(line: 481, column: 13, scope: !5744)
!5765 = !DILocation(line: 481, column: 5, scope: !5744)
!5766 = !DILocation(line: 481, column: 10, scope: !5744)
!5767 = !DILocation(line: 482, column: 13, scope: !5744)
!5768 = !DILocation(line: 482, column: 5, scope: !5744)
!5769 = !DILocation(line: 482, column: 10, scope: !5744)
!5770 = !DILocation(line: 483, column: 13, scope: !5744)
!5771 = !DILocation(line: 483, column: 5, scope: !5744)
!5772 = !DILocation(line: 483, column: 10, scope: !5744)
!5773 = !DILocation(line: 484, column: 1, scope: !5744)
!5774 = distinct !DISubprogram(name: "shift_rows", scope: !80, file: !80, line: 486, type: !26, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5775 = !DILocalVariable(name: "q", arg: 1, scope: !5774, file: !80, line: 486, type: !5)
!5776 = !DILocation(line: 0, scope: !5774)
!5777 = !DILocalVariable(name: "i", scope: !5774, file: !80, line: 487, type: !45)
!5778 = !DILocation(line: 489, column: 10, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5774, file: !80, line: 489, column: 5)
!5780 = !DILocation(line: 489, scope: !5779)
!5781 = !DILocation(line: 489, column: 19, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5779, file: !80, line: 489, column: 5)
!5783 = !DILocation(line: 489, column: 5, scope: !5779)
!5784 = !DILocation(line: 492, column: 13, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5782, file: !80, line: 489, column: 30)
!5786 = !DILocalVariable(name: "x", scope: !5785, file: !80, line: 490, type: !6)
!5787 = !DILocation(line: 0, scope: !5785)
!5788 = !DILocation(line: 493, column: 19, scope: !5785)
!5789 = !DILocation(line: 494, column: 54, scope: !5785)
!5790 = !DILocation(line: 494, column: 16, scope: !5785)
!5791 = !DILocation(line: 495, column: 54, scope: !5785)
!5792 = !DILocation(line: 495, column: 16, scope: !5785)
!5793 = !DILocation(line: 496, column: 54, scope: !5785)
!5794 = !DILocation(line: 496, column: 16, scope: !5785)
!5795 = !DILocation(line: 497, column: 54, scope: !5785)
!5796 = !DILocation(line: 497, column: 16, scope: !5785)
!5797 = !DILocation(line: 498, column: 54, scope: !5785)
!5798 = !DILocation(line: 498, column: 16, scope: !5785)
!5799 = !DILocation(line: 499, column: 54, scope: !5785)
!5800 = !DILocation(line: 499, column: 16, scope: !5785)
!5801 = !DILocation(line: 493, column: 9, scope: !5785)
!5802 = !DILocation(line: 493, column: 14, scope: !5785)
!5803 = !DILocation(line: 489, column: 26, scope: !5782)
!5804 = !DILocation(line: 489, column: 5, scope: !5782)
!5805 = distinct !{!5805, !5783, !5806, !244}
!5806 = !DILocation(line: 500, column: 5, scope: !5779)
!5807 = !DILocation(line: 501, column: 1, scope: !5774)
!5808 = distinct !DISubprogram(name: "mix_columns", scope: !80, file: !80, line: 507, type: !26, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5809 = !DILocalVariable(name: "q", arg: 1, scope: !5808, file: !80, line: 507, type: !5)
!5810 = !DILocation(line: 0, scope: !5808)
!5811 = !DILocation(line: 511, column: 10, scope: !5808)
!5812 = !DILocalVariable(name: "q0", scope: !5808, file: !80, line: 508, type: !6)
!5813 = !DILocation(line: 512, column: 10, scope: !5808)
!5814 = !DILocalVariable(name: "q1", scope: !5808, file: !80, line: 508, type: !6)
!5815 = !DILocation(line: 513, column: 10, scope: !5808)
!5816 = !DILocalVariable(name: "q2", scope: !5808, file: !80, line: 508, type: !6)
!5817 = !DILocation(line: 514, column: 10, scope: !5808)
!5818 = !DILocalVariable(name: "q3", scope: !5808, file: !80, line: 508, type: !6)
!5819 = !DILocation(line: 515, column: 10, scope: !5808)
!5820 = !DILocalVariable(name: "q4", scope: !5808, file: !80, line: 508, type: !6)
!5821 = !DILocation(line: 516, column: 10, scope: !5808)
!5822 = !DILocalVariable(name: "q5", scope: !5808, file: !80, line: 508, type: !6)
!5823 = !DILocation(line: 517, column: 10, scope: !5808)
!5824 = !DILocalVariable(name: "q6", scope: !5808, file: !80, line: 508, type: !6)
!5825 = !DILocation(line: 518, column: 10, scope: !5808)
!5826 = !DILocalVariable(name: "q7", scope: !5808, file: !80, line: 508, type: !6)
!5827 = !DILocation(line: 519, column: 21, scope: !5808)
!5828 = !DILocalVariable(name: "r0", scope: !5808, file: !80, line: 509, type: !6)
!5829 = !DILocation(line: 520, column: 21, scope: !5808)
!5830 = !DILocalVariable(name: "r1", scope: !5808, file: !80, line: 509, type: !6)
!5831 = !DILocation(line: 521, column: 21, scope: !5808)
!5832 = !DILocalVariable(name: "r2", scope: !5808, file: !80, line: 509, type: !6)
!5833 = !DILocation(line: 522, column: 21, scope: !5808)
!5834 = !DILocalVariable(name: "r3", scope: !5808, file: !80, line: 509, type: !6)
!5835 = !DILocation(line: 523, column: 21, scope: !5808)
!5836 = !DILocalVariable(name: "r4", scope: !5808, file: !80, line: 509, type: !6)
!5837 = !DILocation(line: 524, column: 21, scope: !5808)
!5838 = !DILocalVariable(name: "r5", scope: !5808, file: !80, line: 509, type: !6)
!5839 = !DILocation(line: 525, column: 21, scope: !5808)
!5840 = !DILocalVariable(name: "r6", scope: !5808, file: !80, line: 509, type: !6)
!5841 = !DILocation(line: 526, column: 21, scope: !5808)
!5842 = !DILocalVariable(name: "r7", scope: !5808, file: !80, line: 509, type: !6)
!5843 = !DILocation(line: 528, column: 37, scope: !5808)
!5844 = !DILocation(line: 528, column: 27, scope: !5808)
!5845 = !DILocation(line: 528, column: 25, scope: !5808)
!5846 = !DILocation(line: 528, column: 10, scope: !5808)
!5847 = !DILocation(line: 529, column: 47, scope: !5808)
!5848 = !DILocation(line: 529, column: 37, scope: !5808)
!5849 = !DILocation(line: 529, column: 35, scope: !5808)
!5850 = !DILocation(line: 529, column: 5, scope: !5808)
!5851 = !DILocation(line: 529, column: 10, scope: !5808)
!5852 = !DILocation(line: 530, column: 37, scope: !5808)
!5853 = !DILocation(line: 530, column: 27, scope: !5808)
!5854 = !DILocation(line: 530, column: 25, scope: !5808)
!5855 = !DILocation(line: 530, column: 5, scope: !5808)
!5856 = !DILocation(line: 530, column: 10, scope: !5808)
!5857 = !DILocation(line: 531, column: 47, scope: !5808)
!5858 = !DILocation(line: 531, column: 37, scope: !5808)
!5859 = !DILocation(line: 531, column: 35, scope: !5808)
!5860 = !DILocation(line: 531, column: 5, scope: !5808)
!5861 = !DILocation(line: 531, column: 10, scope: !5808)
!5862 = !DILocation(line: 532, column: 47, scope: !5808)
!5863 = !DILocation(line: 532, column: 37, scope: !5808)
!5864 = !DILocation(line: 532, column: 35, scope: !5808)
!5865 = !DILocation(line: 532, column: 5, scope: !5808)
!5866 = !DILocation(line: 532, column: 10, scope: !5808)
!5867 = !DILocation(line: 533, column: 37, scope: !5808)
!5868 = !DILocation(line: 533, column: 27, scope: !5808)
!5869 = !DILocation(line: 533, column: 25, scope: !5808)
!5870 = !DILocation(line: 533, column: 5, scope: !5808)
!5871 = !DILocation(line: 533, column: 10, scope: !5808)
!5872 = !DILocation(line: 534, column: 37, scope: !5808)
!5873 = !DILocation(line: 534, column: 27, scope: !5808)
!5874 = !DILocation(line: 534, column: 25, scope: !5808)
!5875 = !DILocation(line: 534, column: 5, scope: !5808)
!5876 = !DILocation(line: 534, column: 10, scope: !5808)
!5877 = !DILocation(line: 535, column: 37, scope: !5808)
!5878 = !DILocation(line: 535, column: 27, scope: !5808)
!5879 = !DILocation(line: 535, column: 25, scope: !5808)
!5880 = !DILocation(line: 535, column: 5, scope: !5808)
!5881 = !DILocation(line: 535, column: 10, scope: !5808)
!5882 = !DILocation(line: 536, column: 1, scope: !5808)
!5883 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !80, file: !80, line: 367, type: !5884, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{null, !5138, !6, !6}
!5886 = !DILocalVariable(name: "w", arg: 1, scope: !5883, file: !80, line: 367, type: !5138)
!5887 = !DILocation(line: 0, scope: !5883)
!5888 = !DILocalVariable(name: "q0", arg: 2, scope: !5883, file: !80, line: 367, type: !6)
!5889 = !DILocalVariable(name: "q1", arg: 3, scope: !5883, file: !80, line: 367, type: !6)
!5890 = !DILocation(line: 370, column: 13, scope: !5883)
!5891 = !DILocalVariable(name: "x0", scope: !5883, file: !80, line: 368, type: !6)
!5892 = !DILocation(line: 371, column: 13, scope: !5883)
!5893 = !DILocalVariable(name: "x1", scope: !5883, file: !80, line: 368, type: !6)
!5894 = !DILocation(line: 372, column: 14, scope: !5883)
!5895 = !DILocation(line: 372, column: 20, scope: !5883)
!5896 = !DILocalVariable(name: "x2", scope: !5883, file: !80, line: 368, type: !6)
!5897 = !DILocation(line: 373, column: 14, scope: !5883)
!5898 = !DILocation(line: 373, column: 20, scope: !5883)
!5899 = !DILocalVariable(name: "x3", scope: !5883, file: !80, line: 368, type: !6)
!5900 = !DILocation(line: 374, column: 15, scope: !5883)
!5901 = !DILocation(line: 374, column: 8, scope: !5883)
!5902 = !DILocation(line: 375, column: 15, scope: !5883)
!5903 = !DILocation(line: 375, column: 8, scope: !5883)
!5904 = !DILocation(line: 376, column: 8, scope: !5883)
!5905 = !DILocation(line: 377, column: 8, scope: !5883)
!5906 = !DILocation(line: 378, column: 8, scope: !5883)
!5907 = !DILocation(line: 379, column: 8, scope: !5883)
!5908 = !DILocation(line: 382, column: 41, scope: !5883)
!5909 = !DILocation(line: 382, column: 25, scope: !5883)
!5910 = !DILocation(line: 382, column: 10, scope: !5883)
!5911 = !DILocation(line: 383, column: 41, scope: !5883)
!5912 = !DILocation(line: 383, column: 25, scope: !5883)
!5913 = !DILocation(line: 383, column: 5, scope: !5883)
!5914 = !DILocation(line: 383, column: 10, scope: !5883)
!5915 = !DILocation(line: 384, column: 41, scope: !5883)
!5916 = !DILocation(line: 384, column: 25, scope: !5883)
!5917 = !DILocation(line: 384, column: 5, scope: !5883)
!5918 = !DILocation(line: 384, column: 10, scope: !5883)
!5919 = !DILocation(line: 385, column: 41, scope: !5883)
!5920 = !DILocation(line: 385, column: 25, scope: !5883)
!5921 = !DILocation(line: 385, column: 5, scope: !5883)
!5922 = !DILocation(line: 385, column: 10, scope: !5883)
!5923 = !DILocation(line: 386, column: 1, scope: !5883)
!5924 = distinct !DISubprogram(name: "br_range_enc32le", scope: !80, file: !80, line: 127, type: !5925, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{null, !18, !5173, !15}
!5927 = !DILocalVariable(name: "dst", arg: 1, scope: !5924, file: !80, line: 127, type: !18)
!5928 = !DILocation(line: 0, scope: !5924)
!5929 = !DILocalVariable(name: "v", arg: 2, scope: !5924, file: !80, line: 127, type: !5173)
!5930 = !DILocalVariable(name: "num", arg: 3, scope: !5924, file: !80, line: 127, type: !15)
!5931 = !DILocation(line: 128, column: 5, scope: !5924)
!5932 = !DILocation(line: 128, column: 18, scope: !5924)
!5933 = !DILocation(line: 128, column: 15, scope: !5924)
!5934 = !DILocation(line: 129, column: 28, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5924, file: !80, line: 128, column: 23)
!5936 = !DILocation(line: 129, column: 25, scope: !5935)
!5937 = !DILocation(line: 129, column: 9, scope: !5935)
!5938 = !DILocation(line: 130, column: 13, scope: !5935)
!5939 = distinct !{!5939, !5931, !5940, !244}
!5940 = !DILocation(line: 131, column: 5, scope: !5924)
!5941 = !DILocation(line: 132, column: 1, scope: !5924)
!5942 = distinct !DISubprogram(name: "br_enc32le", scope: !80, file: !80, line: 119, type: !5943, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{null, !18, !19}
!5945 = !DILocalVariable(name: "dst", arg: 1, scope: !5942, file: !80, line: 119, type: !18)
!5946 = !DILocation(line: 0, scope: !5942)
!5947 = !DILocalVariable(name: "x", arg: 2, scope: !5942, file: !80, line: 119, type: !19)
!5948 = !DILocation(line: 120, column: 14, scope: !5942)
!5949 = !DILocation(line: 120, column: 12, scope: !5942)
!5950 = !DILocation(line: 121, column: 32, scope: !5942)
!5951 = !DILocation(line: 121, column: 14, scope: !5942)
!5952 = !DILocation(line: 121, column: 5, scope: !5942)
!5953 = !DILocation(line: 121, column: 12, scope: !5942)
!5954 = !DILocation(line: 122, column: 32, scope: !5942)
!5955 = !DILocation(line: 122, column: 14, scope: !5942)
!5956 = !DILocation(line: 122, column: 5, scope: !5942)
!5957 = !DILocation(line: 122, column: 12, scope: !5942)
!5958 = !DILocation(line: 123, column: 32, scope: !5942)
!5959 = !DILocation(line: 123, column: 14, scope: !5942)
!5960 = !DILocation(line: 123, column: 5, scope: !5942)
!5961 = !DILocation(line: 123, column: 12, scope: !5942)
!5962 = !DILocation(line: 124, column: 1, scope: !5942)
!5963 = distinct !DISubprogram(name: "rotr32", scope: !80, file: !80, line: 503, type: !5964, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5964 = !DISubroutineType(types: !5965)
!5965 = !{!6, !6}
!5966 = !DILocalVariable(name: "x", arg: 1, scope: !5963, file: !80, line: 503, type: !6)
!5967 = !DILocation(line: 0, scope: !5963)
!5968 = !DILocation(line: 504, column: 22, scope: !5963)
!5969 = !DILocation(line: 504, column: 5, scope: !5963)
!5970 = distinct !DISubprogram(name: "aes128_ctr", scope: !80, file: !80, line: 690, type: !5971, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{null, !18, !15, !49, !5626}
!5973 = !DILocalVariable(name: "out", arg: 1, scope: !5970, file: !80, line: 690, type: !18)
!5974 = !DILocation(line: 0, scope: !5970)
!5975 = !DILocalVariable(name: "outlen", arg: 2, scope: !5970, file: !80, line: 690, type: !15)
!5976 = !DILocalVariable(name: "iv", arg: 3, scope: !5970, file: !80, line: 690, type: !49)
!5977 = !DILocalVariable(name: "ctx", arg: 4, scope: !5970, file: !80, line: 690, type: !5626)
!5978 = !DILocation(line: 691, column: 35, scope: !5970)
!5979 = !DILocation(line: 691, column: 5, scope: !5970)
!5980 = !DILocation(line: 692, column: 1, scope: !5970)
!5981 = distinct !DISubprogram(name: "aes_ctr", scope: !80, file: !80, line: 607, type: !5982, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !18, !15, !49, !428, !17}
!5984 = !DILocalVariable(name: "out", arg: 1, scope: !5981, file: !80, line: 607, type: !18)
!5985 = !DILocation(line: 0, scope: !5981)
!5986 = !DILocalVariable(name: "outlen", arg: 2, scope: !5981, file: !80, line: 607, type: !15)
!5987 = !DILocalVariable(name: "iv", arg: 3, scope: !5981, file: !80, line: 607, type: !49)
!5988 = !DILocalVariable(name: "rkeys", arg: 4, scope: !5981, file: !80, line: 607, type: !428)
!5989 = !DILocalVariable(name: "nrounds", arg: 5, scope: !5981, file: !80, line: 607, type: !17)
!5990 = !DILocalVariable(name: "ivw", scope: !5981, file: !80, line: 608, type: !5646)
!5991 = !DILocation(line: 608, column: 14, scope: !5981)
!5992 = !DILocalVariable(name: "cc", scope: !5981, file: !80, line: 610, type: !19)
!5993 = !DILocation(line: 612, column: 5, scope: !5981)
!5994 = !DILocation(line: 613, column: 16, scope: !5981)
!5995 = !DILocation(line: 613, column: 5, scope: !5981)
!5996 = !DILocation(line: 614, column: 16, scope: !5981)
!5997 = !DILocation(line: 614, column: 5, scope: !5981)
!5998 = !DILocation(line: 615, column: 16, scope: !5981)
!5999 = !DILocation(line: 615, column: 5, scope: !5981)
!6000 = !DILocation(line: 616, column: 15, scope: !5981)
!6001 = !DILocation(line: 616, column: 5, scope: !5981)
!6002 = !DILocation(line: 616, column: 13, scope: !5981)
!6003 = !DILocation(line: 617, column: 15, scope: !5981)
!6004 = !DILocation(line: 617, column: 5, scope: !5981)
!6005 = !DILocation(line: 617, column: 13, scope: !5981)
!6006 = !DILocation(line: 618, column: 15, scope: !5981)
!6007 = !DILocation(line: 618, column: 5, scope: !5981)
!6008 = !DILocation(line: 618, column: 13, scope: !5981)
!6009 = !DILocation(line: 619, column: 15, scope: !5981)
!6010 = !DILocation(line: 619, column: 5, scope: !5981)
!6011 = !DILocation(line: 619, column: 13, scope: !5981)
!6012 = !DILocation(line: 621, column: 5, scope: !5981)
!6013 = !DILocation(line: 621, column: 19, scope: !5981)
!6014 = !DILocation(line: 622, column: 9, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5981, file: !80, line: 621, column: 25)
!6016 = !DILocation(line: 623, column: 13, scope: !6015)
!6017 = !DILocation(line: 624, column: 16, scope: !6015)
!6018 = distinct !{!6018, !6012, !6019, !244}
!6019 = !DILocation(line: 625, column: 5, scope: !5981)
!6020 = !DILocation(line: 626, column: 16, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5981, file: !80, line: 626, column: 9)
!6022 = !DILocalVariable(name: "tmp", scope: !6023, file: !80, line: 627, type: !5649)
!6023 = distinct !DILexicalBlock(scope: !6021, file: !80, line: 626, column: 21)
!6024 = !DILocation(line: 627, column: 23, scope: !6023)
!6025 = !DILocation(line: 628, column: 9, scope: !6023)
!6026 = !DILocalVariable(name: "i", scope: !5981, file: !80, line: 609, type: !15)
!6027 = !DILocation(line: 629, column: 14, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6023, file: !80, line: 629, column: 9)
!6029 = !DILocation(line: 629, scope: !6028)
!6030 = !DILocation(line: 629, column: 23, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6028, file: !80, line: 629, column: 9)
!6032 = !DILocation(line: 629, column: 9, scope: !6028)
!6033 = !DILocation(line: 630, column: 22, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6031, file: !80, line: 629, column: 38)
!6035 = !DILocation(line: 630, column: 13, scope: !6034)
!6036 = !DILocation(line: 630, column: 20, scope: !6034)
!6037 = !DILocation(line: 629, column: 34, scope: !6031)
!6038 = !DILocation(line: 629, column: 9, scope: !6031)
!6039 = distinct !{!6039, !6032, !6040, !244}
!6040 = !DILocation(line: 631, column: 9, scope: !6028)
!6041 = !DILocation(line: 633, column: 1, scope: !5981)
!6042 = distinct !DISubprogram(name: "br_swap32", scope: !80, file: !80, line: 112, type: !5155, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6043 = !DILocalVariable(name: "x", arg: 1, scope: !6042, file: !80, line: 112, type: !19)
!6044 = !DILocation(line: 0, scope: !6042)
!6045 = !DILocation(line: 115, column: 22, scope: !6042)
!6046 = !DILocation(line: 115, column: 5, scope: !6042)
!6047 = distinct !DISubprogram(name: "aes_ctr4x", scope: !80, file: !80, line: 576, type: !6048, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{null, !18, !5138, !428, !17}
!6050 = !DILocalVariable(name: "out", arg: 1, scope: !6047, file: !80, line: 576, type: !18)
!6051 = !DILocation(line: 0, scope: !6047)
!6052 = !DILocalVariable(name: "ivw", arg: 2, scope: !6047, file: !80, line: 576, type: !5138)
!6053 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !6047, file: !80, line: 576, type: !428)
!6054 = !DILocalVariable(name: "nrounds", arg: 4, scope: !6047, file: !80, line: 576, type: !17)
!6055 = !DILocation(line: 577, column: 5, scope: !6047)
!6056 = !DILocation(line: 580, column: 17, scope: !6047)
!6057 = !DILocation(line: 580, column: 5, scope: !6047)
!6058 = !DILocation(line: 581, column: 17, scope: !6047)
!6059 = !DILocation(line: 581, column: 5, scope: !6047)
!6060 = !DILocation(line: 582, column: 17, scope: !6047)
!6061 = !DILocation(line: 582, column: 5, scope: !6047)
!6062 = !DILocation(line: 583, column: 17, scope: !6047)
!6063 = !DILocation(line: 583, column: 5, scope: !6047)
!6064 = !DILocation(line: 584, column: 1, scope: !6047)
!6065 = distinct !DISubprogram(name: "inc4_be", scope: !80, file: !80, line: 539, type: !6066, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !5138}
!6068 = !DILocalVariable(name: "x", arg: 1, scope: !6065, file: !80, line: 539, type: !5138)
!6069 = !DILocation(line: 0, scope: !6065)
!6070 = !DILocation(line: 540, column: 28, scope: !6065)
!6071 = !DILocation(line: 540, column: 18, scope: !6065)
!6072 = !DILocation(line: 540, column: 32, scope: !6065)
!6073 = !DILocalVariable(name: "t", scope: !6065, file: !80, line: 540, type: !19)
!6074 = !DILocation(line: 541, column: 10, scope: !6065)
!6075 = !DILocation(line: 541, column: 8, scope: !6065)
!6076 = !DILocation(line: 542, column: 1, scope: !6065)
!6077 = distinct !DISubprogram(name: "aes192_ecb", scope: !80, file: !80, line: 694, type: !6078, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6078 = !DISubroutineType(types: !6079)
!6079 = !{null, !18, !49, !15, !6080}
!6080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6081, size: 32)
!6081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5561)
!6082 = !DILocalVariable(name: "out", arg: 1, scope: !6077, file: !80, line: 694, type: !18)
!6083 = !DILocation(line: 0, scope: !6077)
!6084 = !DILocalVariable(name: "in", arg: 2, scope: !6077, file: !80, line: 694, type: !49)
!6085 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6077, file: !80, line: 694, type: !15)
!6086 = !DILocalVariable(name: "ctx", arg: 4, scope: !6077, file: !80, line: 694, type: !6080)
!6087 = !DILocation(line: 695, column: 36, scope: !6077)
!6088 = !DILocation(line: 695, column: 5, scope: !6077)
!6089 = !DILocation(line: 696, column: 1, scope: !6077)
!6090 = distinct !DISubprogram(name: "aes192_ctr", scope: !80, file: !80, line: 698, type: !6091, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{null, !18, !15, !49, !6080}
!6093 = !DILocalVariable(name: "out", arg: 1, scope: !6090, file: !80, line: 698, type: !18)
!6094 = !DILocation(line: 0, scope: !6090)
!6095 = !DILocalVariable(name: "outlen", arg: 2, scope: !6090, file: !80, line: 698, type: !15)
!6096 = !DILocalVariable(name: "iv", arg: 3, scope: !6090, file: !80, line: 698, type: !49)
!6097 = !DILocalVariable(name: "ctx", arg: 4, scope: !6090, file: !80, line: 698, type: !6080)
!6098 = !DILocation(line: 699, column: 35, scope: !6090)
!6099 = !DILocation(line: 699, column: 5, scope: !6090)
!6100 = !DILocation(line: 700, column: 1, scope: !6090)
!6101 = distinct !DISubprogram(name: "aes256_ecb", scope: !80, file: !80, line: 702, type: !6102, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{null, !18, !49, !15, !6104}
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6105, size: 32)
!6105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5594)
!6106 = !DILocalVariable(name: "out", arg: 1, scope: !6101, file: !80, line: 702, type: !18)
!6107 = !DILocation(line: 0, scope: !6101)
!6108 = !DILocalVariable(name: "in", arg: 2, scope: !6101, file: !80, line: 702, type: !49)
!6109 = !DILocalVariable(name: "nblocks", arg: 3, scope: !6101, file: !80, line: 702, type: !15)
!6110 = !DILocalVariable(name: "ctx", arg: 4, scope: !6101, file: !80, line: 702, type: !6104)
!6111 = !DILocation(line: 703, column: 36, scope: !6101)
!6112 = !DILocation(line: 703, column: 5, scope: !6101)
!6113 = !DILocation(line: 704, column: 1, scope: !6101)
!6114 = distinct !DISubprogram(name: "aes256_ctr", scope: !80, file: !80, line: 706, type: !6115, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{null, !18, !15, !49, !6104}
!6117 = !DILocalVariable(name: "out", arg: 1, scope: !6114, file: !80, line: 706, type: !18)
!6118 = !DILocation(line: 0, scope: !6114)
!6119 = !DILocalVariable(name: "outlen", arg: 2, scope: !6114, file: !80, line: 706, type: !15)
!6120 = !DILocalVariable(name: "iv", arg: 3, scope: !6114, file: !80, line: 706, type: !49)
!6121 = !DILocalVariable(name: "ctx", arg: 4, scope: !6114, file: !80, line: 706, type: !6104)
!6122 = !DILocation(line: 707, column: 35, scope: !6114)
!6123 = !DILocation(line: 707, column: 5, scope: !6114)
!6124 = !DILocation(line: 708, column: 1, scope: !6114)
!6125 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !80, file: !80, line: 710, type: !6126, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{null, !4939}
!6128 = !DILocalVariable(name: "r", arg: 1, scope: !6125, file: !80, line: 710, type: !4939)
!6129 = !DILocation(line: 0, scope: !6125)
!6130 = !DILocation(line: 711, column: 13, scope: !6125)
!6131 = !DILocation(line: 711, column: 5, scope: !6125)
!6132 = !DILocation(line: 712, column: 1, scope: !6125)
!6133 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !80, file: !80, line: 714, type: !6134, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !5560}
!6136 = !DILocalVariable(name: "r", arg: 1, scope: !6133, file: !80, line: 714, type: !5560)
!6137 = !DILocation(line: 0, scope: !6133)
!6138 = !DILocation(line: 715, column: 13, scope: !6133)
!6139 = !DILocation(line: 715, column: 5, scope: !6133)
!6140 = !DILocation(line: 716, column: 1, scope: !6133)
!6141 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !80, file: !80, line: 718, type: !6142, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{null, !5593}
!6144 = !DILocalVariable(name: "r", arg: 1, scope: !6141, file: !80, line: 718, type: !5593)
!6145 = !DILocation(line: 0, scope: !6141)
!6146 = !DILocation(line: 719, column: 13, scope: !6141)
!6147 = !DILocation(line: 719, column: 5, scope: !6141)
!6148 = !DILocation(line: 720, column: 1, scope: !6141)
!6149 = distinct !DISubprogram(name: "AES_128_CTR", scope: !80, file: !80, line: 722, type: !6150, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!45, !18, !15, !49, !15}
!6152 = !DILocalVariable(name: "output", arg: 1, scope: !6149, file: !80, line: 722, type: !18)
!6153 = !DILocation(line: 0, scope: !6149)
!6154 = !DILocalVariable(name: "outputByteLen", arg: 2, scope: !6149, file: !80, line: 722, type: !15)
!6155 = !DILocalVariable(name: "input", arg: 3, scope: !6149, file: !80, line: 723, type: !49)
!6156 = !DILocalVariable(name: "inputByteLen", arg: 4, scope: !6149, file: !80, line: 723, type: !15)
!6157 = !DILocalVariable(name: "ctx", scope: !6149, file: !80, line: 724, type: !4940)
!6158 = !DILocation(line: 724, column: 15, scope: !6149)
!6159 = !DILocalVariable(name: "iv", scope: !6149, file: !80, line: 725, type: !116)
!6160 = !DILocation(line: 725, column: 19, scope: !6149)
!6161 = !DILocation(line: 727, column: 5, scope: !6149)
!6162 = !DILocation(line: 728, column: 5, scope: !6149)
!6163 = !DILocation(line: 729, column: 5, scope: !6149)
!6164 = !DILocation(line: 731, column: 5, scope: !6149)
!6165 = distinct !DISubprogram(name: "AES_256_ECB", scope: !80, file: !80, line: 734, type: !6166, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !28)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{null, !257, !49, !18}
!6168 = !DILocalVariable(name: "input", arg: 1, scope: !6165, file: !80, line: 734, type: !257)
!6169 = !DILocation(line: 0, scope: !6165)
!6170 = !DILocalVariable(name: "key", arg: 2, scope: !6165, file: !80, line: 734, type: !49)
!6171 = !DILocalVariable(name: "output", arg: 3, scope: !6165, file: !80, line: 734, type: !18)
!6172 = !DILocalVariable(name: "ctx", scope: !6165, file: !80, line: 735, type: !5594)
!6173 = !DILocation(line: 735, column: 15, scope: !6165)
!6174 = !DILocation(line: 737, column: 5, scope: !6165)
!6175 = !DILocation(line: 738, column: 5, scope: !6165)
!6176 = !DILocation(line: 739, column: 5, scope: !6165)
!6177 = !DILocation(line: 740, column: 1, scope: !6165)
!6178 = !DILocalVariable(name: "mem", arg: 1, scope: !86, file: !87, line: 7, type: !69)
!6179 = !DILocation(line: 0, scope: !86)
!6180 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !87, line: 7, type: !15)
!6181 = !DILocation(line: 8, column: 9, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !86, file: !87, line: 8, column: 9)
!6183 = !DILocation(line: 11, column: 9, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6182, file: !87, line: 8, column: 14)
!6185 = !DILocation(line: 12, column: 9, scope: !6184)
!6186 = !DILocation(line: 13, column: 5, scope: !6184)
!6187 = !DILocation(line: 14, column: 1, scope: !86)
!6188 = !DILocalVariable(name: "mem", arg: 1, scope: !94, file: !87, line: 15, type: !69)
!6189 = !DILocation(line: 0, scope: !94)
!6190 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !87, line: 15, type: !15)
!6191 = !DILocation(line: 18, column: 5, scope: !94)
!6192 = !DILocation(line: 19, column: 1, scope: !94)
!6193 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !107, file: !107, line: 101, type: !6194, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{null, !18, !18, !18}
!6196 = !DILocalVariable(name: "provided_data", arg: 1, scope: !6193, file: !107, line: 101, type: !18)
!6197 = !DILocation(line: 0, scope: !6193)
!6198 = !DILocalVariable(name: "Key", arg: 2, scope: !6193, file: !107, line: 102, type: !18)
!6199 = !DILocalVariable(name: "V", arg: 3, scope: !6193, file: !107, line: 103, type: !18)
!6200 = !DILocalVariable(name: "temp", scope: !6193, file: !107, line: 104, type: !6201)
!6201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !6202)
!6202 = !{!6203}
!6203 = !DISubrange(count: 48)
!6204 = !DILocation(line: 104, column: 21, scope: !6193)
!6205 = !DILocalVariable(name: "i", scope: !6206, file: !107, line: 106, type: !45)
!6206 = distinct !DILexicalBlock(scope: !6193, file: !107, line: 106, column: 5)
!6207 = !DILocation(line: 0, scope: !6206)
!6208 = !DILocation(line: 106, column: 10, scope: !6206)
!6209 = !DILocation(line: 106, scope: !6206)
!6210 = !DILocation(line: 106, column: 23, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6206, file: !107, line: 106, column: 5)
!6212 = !DILocation(line: 106, column: 5, scope: !6206)
!6213 = !DILocation(line: 108, column: 9, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !107, line: 108, column: 9)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !107, line: 106, column: 33)
!6216 = !DILocation(line: 108, scope: !6214)
!6217 = !DILocalVariable(name: "j", scope: !6214, file: !107, line: 108, type: !45)
!6218 = !DILocation(line: 0, scope: !6214)
!6219 = !DILocation(line: 108, column: 28, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6214, file: !107, line: 108, column: 9)
!6221 = !DILocation(line: 109, column: 18, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6223, file: !107, line: 109, column: 18)
!6223 = distinct !DILexicalBlock(scope: !6220, file: !107, line: 108, column: 39)
!6224 = !DILocation(line: 109, column: 23, scope: !6222)
!6225 = !DILocation(line: 110, column: 17, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6222, file: !107, line: 109, column: 33)
!6227 = !DILocation(line: 110, column: 22, scope: !6226)
!6228 = !DILocation(line: 108, column: 35, scope: !6220)
!6229 = !DILocation(line: 108, column: 9, scope: !6220)
!6230 = distinct !{!6230, !6213, !6231, !244}
!6231 = !DILocation(line: 115, column: 9, scope: !6214)
!6232 = !DILocation(line: 112, column: 17, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6222, file: !107, line: 111, column: 20)
!6234 = !DILocation(line: 112, column: 21, scope: !6233)
!6235 = !DILocation(line: 113, column: 17, scope: !6233)
!6236 = !DILocation(line: 117, column: 38, scope: !6215)
!6237 = !DILocation(line: 117, column: 33, scope: !6215)
!6238 = !DILocation(line: 117, column: 9, scope: !6215)
!6239 = !DILocation(line: 106, column: 29, scope: !6211)
!6240 = !DILocation(line: 106, column: 5, scope: !6211)
!6241 = distinct !{!6241, !6212, !6242, !244}
!6242 = !DILocation(line: 118, column: 5, scope: !6206)
!6243 = !DILocation(line: 119, column: 24, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6193, file: !107, line: 119, column: 10)
!6245 = !DILocation(line: 120, column: 9, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6244, file: !107, line: 120, column: 9)
!6247 = !DILocation(line: 120, scope: !6246)
!6248 = !DILocalVariable(name: "i", scope: !6246, file: !107, line: 120, type: !45)
!6249 = !DILocation(line: 0, scope: !6246)
!6250 = !DILocation(line: 120, column: 27, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6246, file: !107, line: 120, column: 9)
!6252 = !DILocation(line: 121, column: 24, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6251, file: !107, line: 120, column: 38)
!6254 = !DILocation(line: 121, column: 13, scope: !6253)
!6255 = !DILocation(line: 121, column: 21, scope: !6253)
!6256 = !DILocation(line: 120, column: 34, scope: !6251)
!6257 = !DILocation(line: 120, column: 9, scope: !6251)
!6258 = distinct !{!6258, !6245, !6259, !244}
!6259 = !DILocation(line: 122, column: 9, scope: !6246)
!6260 = !DILocation(line: 123, column: 5, scope: !6193)
!6261 = !DILocation(line: 124, column: 20, scope: !6193)
!6262 = !DILocation(line: 124, column: 5, scope: !6193)
!6263 = !DILocation(line: 125, column: 1, scope: !6193)
!6264 = distinct !DISubprogram(name: "AES256_ECB", scope: !107, file: !107, line: 24, type: !6194, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6265 = !DILocalVariable(name: "key", arg: 1, scope: !6264, file: !107, line: 24, type: !18)
!6266 = !DILocation(line: 0, scope: !6264)
!6267 = !DILocalVariable(name: "ctr", arg: 2, scope: !6264, file: !107, line: 24, type: !18)
!6268 = !DILocalVariable(name: "buffer", arg: 3, scope: !6264, file: !107, line: 24, type: !18)
!6269 = !DILocation(line: 25, column: 5, scope: !6264)
!6270 = !DILocation(line: 26, column: 1, scope: !6264)
!6271 = distinct !DISubprogram(name: "randombytes", scope: !107, file: !107, line: 127, type: !6272, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!45, !18, !15}
!6274 = !DILocalVariable(name: "random_array", arg: 1, scope: !6271, file: !107, line: 127, type: !18)
!6275 = !DILocation(line: 0, scope: !6271)
!6276 = !DILocalVariable(name: "nbytes", arg: 2, scope: !6271, file: !107, line: 127, type: !15)
!6277 = !DILocation(line: 128, column: 15, scope: !6271)
!6278 = !DILocalVariable(name: "ret", scope: !6271, file: !107, line: 128, type: !45)
!6279 = !DILocation(line: 132, column: 5, scope: !6271)
!6280 = distinct !DISubprogram(name: "randombytes_nist", scope: !107, file: !107, line: 69, type: !6272, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6281 = !DILocalVariable(name: "x", arg: 1, scope: !6280, file: !107, line: 69, type: !18)
!6282 = !DILocation(line: 0, scope: !6280)
!6283 = !DILocalVariable(name: "xlen", arg: 2, scope: !6280, file: !107, line: 69, type: !15)
!6284 = !DILocalVariable(name: "block", scope: !6280, file: !107, line: 70, type: !116)
!6285 = !DILocation(line: 70, column: 21, scope: !6280)
!6286 = !DILocalVariable(name: "i", scope: !6280, file: !107, line: 71, type: !15)
!6287 = !DILocation(line: 73, column: 5, scope: !6280)
!6288 = !DILocation(line: 73, column: 18, scope: !6280)
!6289 = !DILocation(line: 75, column: 9, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6291, file: !107, line: 75, column: 9)
!6291 = distinct !DILexicalBlock(scope: !6280, file: !107, line: 73, column: 24)
!6292 = !DILocation(line: 75, scope: !6290)
!6293 = !DILocalVariable(name: "j", scope: !6290, file: !107, line: 75, type: !45)
!6294 = !DILocation(line: 0, scope: !6290)
!6295 = !DILocation(line: 75, column: 28, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6290, file: !107, line: 75, column: 9)
!6297 = !DILocation(line: 76, column: 18, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6299, file: !107, line: 76, column: 18)
!6299 = distinct !DILexicalBlock(scope: !6296, file: !107, line: 75, column: 39)
!6300 = !DILocation(line: 76, column: 32, scope: !6298)
!6301 = !DILocation(line: 77, column: 17, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6298, file: !107, line: 76, column: 42)
!6303 = !DILocation(line: 77, column: 31, scope: !6302)
!6304 = !DILocation(line: 75, column: 35, scope: !6296)
!6305 = !DILocation(line: 75, column: 9, scope: !6296)
!6306 = distinct !{!6306, !6289, !6307, !244}
!6307 = !DILocation(line: 82, column: 9, scope: !6290)
!6308 = !DILocation(line: 79, column: 17, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6298, file: !107, line: 78, column: 20)
!6310 = !DILocation(line: 79, column: 30, scope: !6309)
!6311 = !DILocation(line: 80, column: 17, scope: !6309)
!6312 = !DILocation(line: 83, column: 9, scope: !6291)
!6313 = !DILocation(line: 84, column: 19, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6291, file: !107, line: 84, column: 14)
!6315 = !DILocation(line: 85, column: 22, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6314, file: !107, line: 84, column: 26)
!6317 = !DILocation(line: 85, column: 13, scope: !6316)
!6318 = !DILocation(line: 86, column: 15, scope: !6316)
!6319 = !DILocation(line: 87, column: 18, scope: !6316)
!6320 = !DILocation(line: 88, column: 9, scope: !6316)
!6321 = !DILocation(line: 89, column: 22, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6314, file: !107, line: 88, column: 16)
!6323 = !DILocation(line: 89, column: 13, scope: !6322)
!6324 = !DILocation(line: 90, column: 15, scope: !6322)
!6325 = !DILocation(line: 0, scope: !6314)
!6326 = distinct !{!6326, !6287, !6327, !244}
!6327 = !DILocation(line: 93, column: 5, scope: !6280)
!6328 = !DILocation(line: 94, column: 5, scope: !6280)
!6329 = !DILocation(line: 95, column: 28, scope: !6280)
!6330 = !DILocation(line: 97, column: 5, scope: !6280)
!6331 = distinct !DISubprogram(name: "randombytes_init", scope: !107, file: !107, line: 136, type: !6332, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{null, !18, !18, !45}
!6334 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6331, file: !107, line: 136, type: !18)
!6335 = !DILocation(line: 0, scope: !6331)
!6336 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6331, file: !107, line: 137, type: !18)
!6337 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6331, file: !107, line: 138, type: !45)
!6338 = !DILocation(line: 139, column: 12, scope: !6331)
!6339 = !DILocation(line: 139, column: 5, scope: !6331)
!6340 = distinct !DISubprogram(name: "randombytes_init_nist", scope: !107, file: !107, line: 51, type: !6332, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !28)
!6341 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !6340, file: !107, line: 51, type: !18)
!6342 = !DILocation(line: 0, scope: !6340)
!6343 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !6340, file: !107, line: 52, type: !18)
!6344 = !DILocalVariable(name: "security_strength", arg: 3, scope: !6340, file: !107, line: 53, type: !45)
!6345 = !DILocalVariable(name: "seed_material", scope: !6340, file: !107, line: 54, type: !6201)
!6346 = !DILocation(line: 54, column: 21, scope: !6340)
!6347 = !DILocation(line: 57, column: 5, scope: !6340)
!6348 = !DILocation(line: 58, column: 9, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6340, file: !107, line: 58, column: 9)
!6350 = !DILocation(line: 59, column: 9, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6349, file: !107, line: 59, column: 9)
!6352 = !DILocation(line: 59, scope: !6351)
!6353 = !DILocalVariable(name: "i", scope: !6351, file: !107, line: 59, type: !45)
!6354 = !DILocation(line: 0, scope: !6351)
!6355 = !DILocation(line: 59, column: 27, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6351, file: !107, line: 59, column: 9)
!6357 = !DILocation(line: 60, column: 33, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6356, file: !107, line: 59, column: 38)
!6359 = !DILocation(line: 60, column: 13, scope: !6358)
!6360 = !DILocation(line: 60, column: 30, scope: !6358)
!6361 = !DILocation(line: 59, column: 34, scope: !6356)
!6362 = !DILocation(line: 59, column: 9, scope: !6356)
!6363 = distinct !{!6363, !6350, !6364, !244}
!6364 = !DILocation(line: 61, column: 9, scope: !6351)
!6365 = !DILocation(line: 62, column: 5, scope: !6340)
!6366 = !DILocation(line: 63, column: 5, scope: !6340)
!6367 = !DILocation(line: 64, column: 5, scope: !6340)
!6368 = !DILocation(line: 65, column: 29, scope: !6340)
!6369 = !DILocation(line: 66, column: 1, scope: !6340)
