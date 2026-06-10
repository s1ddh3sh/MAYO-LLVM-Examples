; ModuleID = '../mayo_ll/mayo1.ll'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

; Function Attrs: inlinehint nounwind
define dso_local fastcc void @mat_add(ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 {
entry:
  br label %iter_0_start

for.end13:                                        ; preds = %iter_77_end
  ret void

iter_0_start:                                     ; preds = %entry
  br label %for.body3.iter0

for.body3.iter0:                                  ; preds = %iter_0_start
  %add.ptr.iter0 = getelementptr inbounds nuw i8, ptr %a, i32 0
  %0 = load i8, ptr %add.ptr.iter0, align 1
  %add.ptr9.iter0 = getelementptr inbounds nuw i8, ptr %c, i32 0
  store i8 %0, ptr %add.ptr9.iter0, align 1
  br label %iter_0_end

iter_0_end:                                       ; preds = %for.body3.iter0
  br label %iter_1_start

iter_1_start:                                     ; preds = %iter_0_end
  br label %for.body3.iter1

for.body3.iter1:                                  ; preds = %iter_1_start
  %add.ptr.iter1 = getelementptr inbounds nuw i8, ptr %a, i32 1
  %1 = load i8, ptr %add.ptr.iter1, align 1
  %add.ptr6.iter1 = getelementptr inbounds nuw i8, ptr %b, i32 1
  %2 = load i8, ptr %add.ptr6.iter1, align 1
  %xor1.i = xor i8 %1, %2
  %add.ptr9.iter1 = getelementptr inbounds nuw i8, ptr %c, i32 1
  store i8 %xor1.i, ptr %add.ptr9.iter1, align 1
  br label %iter_1_end

iter_1_end:                                       ; preds = %for.body3.iter1
  br label %iter_2_start

iter_2_start:                                     ; preds = %iter_1_end
  br label %for.body3.iter2

for.body3.iter2:                                  ; preds = %iter_2_start
  %add.ptr.iter2 = getelementptr inbounds nuw i8, ptr %a, i32 2
  %3 = load i8, ptr %add.ptr.iter2, align 1
  %add.ptr6.iter2 = getelementptr inbounds nuw i8, ptr %b, i32 2
  %4 = load i8, ptr %add.ptr6.iter2, align 1
  %xor1.i75 = xor i8 %3, %4
  %add.ptr9.iter2 = getelementptr inbounds nuw i8, ptr %c, i32 2
  store i8 %xor1.i75, ptr %add.ptr9.iter2, align 1
  br label %iter_2_end

iter_2_end:                                       ; preds = %for.body3.iter2
  br label %iter_3_start

iter_3_start:                                     ; preds = %iter_2_end
  br label %for.body3.iter3

for.body3.iter3:                                  ; preds = %iter_3_start
  %add.ptr.iter3 = getelementptr inbounds nuw i8, ptr %a, i32 3
  %5 = load i8, ptr %add.ptr.iter3, align 1
  %add.ptr6.iter3 = getelementptr inbounds nuw i8, ptr %b, i32 3
  %6 = load i8, ptr %add.ptr6.iter3, align 1
  %xor1.i2 = xor i8 %5, %6
  %add.ptr9.iter3 = getelementptr inbounds nuw i8, ptr %c, i32 3
  store i8 %xor1.i2, ptr %add.ptr9.iter3, align 1
  br label %iter_3_end

iter_3_end:                                       ; preds = %for.body3.iter3
  br label %iter_4_start

iter_4_start:                                     ; preds = %iter_3_end
  br label %for.body3.iter4

for.body3.iter4:                                  ; preds = %iter_4_start
  %add.ptr.iter4 = getelementptr inbounds nuw i8, ptr %a, i32 4
  %7 = load i8, ptr %add.ptr.iter4, align 1
  %add.ptr6.iter4 = getelementptr inbounds nuw i8, ptr %b, i32 4
  %8 = load i8, ptr %add.ptr6.iter4, align 1
  %xor1.i76 = xor i8 %7, %8
  %add.ptr9.iter4 = getelementptr inbounds nuw i8, ptr %c, i32 4
  store i8 %xor1.i76, ptr %add.ptr9.iter4, align 1
  br label %iter_4_end

iter_4_end:                                       ; preds = %for.body3.iter4
  br label %iter_5_start

iter_5_start:                                     ; preds = %iter_4_end
  br label %for.body3.iter5

for.body3.iter5:                                  ; preds = %iter_5_start
  %add.ptr.iter5 = getelementptr inbounds nuw i8, ptr %a, i32 5
  %9 = load i8, ptr %add.ptr.iter5, align 1
  %add.ptr6.iter5 = getelementptr inbounds nuw i8, ptr %b, i32 5
  %10 = load i8, ptr %add.ptr6.iter5, align 1
  %xor1.i77 = xor i8 %9, %10
  %add.ptr9.iter5 = getelementptr inbounds nuw i8, ptr %c, i32 5
  store i8 %xor1.i77, ptr %add.ptr9.iter5, align 1
  br label %iter_5_end

iter_5_end:                                       ; preds = %for.body3.iter5
  br label %iter_6_start

iter_6_start:                                     ; preds = %iter_5_end
  br label %for.body3.iter6

for.body3.iter6:                                  ; preds = %iter_6_start
  %add.ptr.iter6 = getelementptr inbounds nuw i8, ptr %a, i32 6
  %11 = load i8, ptr %add.ptr.iter6, align 1
  %add.ptr6.iter6 = getelementptr inbounds nuw i8, ptr %b, i32 6
  %12 = load i8, ptr %add.ptr6.iter6, align 1
  %xor1.i68 = xor i8 %11, %12
  %add.ptr9.iter6 = getelementptr inbounds nuw i8, ptr %c, i32 6
  store i8 %xor1.i68, ptr %add.ptr9.iter6, align 1
  br label %iter_6_end

iter_6_end:                                       ; preds = %for.body3.iter6
  br label %iter_7_start

iter_7_start:                                     ; preds = %iter_6_end
  br label %for.body3.iter7

for.body3.iter7:                                  ; preds = %iter_7_start
  %add.ptr.iter7 = getelementptr inbounds nuw i8, ptr %a, i32 7
  %13 = load i8, ptr %add.ptr.iter7, align 1
  %add.ptr6.iter7 = getelementptr inbounds nuw i8, ptr %b, i32 7
  %14 = load i8, ptr %add.ptr6.iter7, align 1
  %xor1.i3 = xor i8 %13, %14
  %add.ptr9.iter7 = getelementptr inbounds nuw i8, ptr %c, i32 7
  store i8 %xor1.i3, ptr %add.ptr9.iter7, align 1
  br label %iter_7_end

iter_7_end:                                       ; preds = %for.body3.iter7
  br label %iter_8_start

iter_8_start:                                     ; preds = %iter_7_end
  br label %for.body3.iter8

for.body3.iter8:                                  ; preds = %iter_8_start
  %add.ptr.iter8 = getelementptr inbounds nuw i8, ptr %a, i32 8
  %15 = load i8, ptr %add.ptr.iter8, align 1
  %add.ptr6.iter8 = getelementptr inbounds nuw i8, ptr %b, i32 8
  %16 = load i8, ptr %add.ptr6.iter8, align 1
  %xor1.i74 = xor i8 %15, %16
  %add.ptr9.iter8 = getelementptr inbounds nuw i8, ptr %c, i32 8
  store i8 %xor1.i74, ptr %add.ptr9.iter8, align 1
  br label %iter_8_end

iter_8_end:                                       ; preds = %for.body3.iter8
  br label %iter_9_start

iter_9_start:                                     ; preds = %iter_8_end
  br label %for.body3.iter9

for.body3.iter9:                                  ; preds = %iter_9_start
  %add.ptr.iter9 = getelementptr inbounds nuw i8, ptr %a, i32 9
  %17 = load i8, ptr %add.ptr.iter9, align 1
  %add.ptr6.iter9 = getelementptr inbounds nuw i8, ptr %b, i32 9
  %18 = load i8, ptr %add.ptr6.iter9, align 1
  %xor1.i73 = xor i8 %17, %18
  %add.ptr9.iter9 = getelementptr inbounds nuw i8, ptr %c, i32 9
  store i8 %xor1.i73, ptr %add.ptr9.iter9, align 1
  br label %iter_9_end

iter_9_end:                                       ; preds = %for.body3.iter9
  br label %iter_10_start

iter_10_start:                                    ; preds = %iter_9_end
  br label %for.body3.iter10

for.body3.iter10:                                 ; preds = %iter_10_start
  %add.ptr.iter10 = getelementptr inbounds nuw i8, ptr %a, i32 10
  %19 = load i8, ptr %add.ptr.iter10, align 1
  %add.ptr6.iter10 = getelementptr inbounds nuw i8, ptr %b, i32 10
  %20 = load i8, ptr %add.ptr6.iter10, align 1
  %xor1.i72 = xor i8 %19, %20
  %add.ptr9.iter10 = getelementptr inbounds nuw i8, ptr %c, i32 10
  store i8 %xor1.i72, ptr %add.ptr9.iter10, align 1
  br label %iter_10_end

iter_10_end:                                      ; preds = %for.body3.iter10
  br label %iter_11_start

iter_11_start:                                    ; preds = %iter_10_end
  br label %for.body3.iter11

for.body3.iter11:                                 ; preds = %iter_11_start
  %add.ptr.iter11 = getelementptr inbounds nuw i8, ptr %a, i32 11
  %21 = load i8, ptr %add.ptr.iter11, align 1
  %add.ptr6.iter11 = getelementptr inbounds nuw i8, ptr %b, i32 11
  %22 = load i8, ptr %add.ptr6.iter11, align 1
  %xor1.i71 = xor i8 %21, %22
  %add.ptr9.iter11 = getelementptr inbounds nuw i8, ptr %c, i32 11
  store i8 %xor1.i71, ptr %add.ptr9.iter11, align 1
  br label %iter_11_end

iter_11_end:                                      ; preds = %for.body3.iter11
  br label %iter_12_start

iter_12_start:                                    ; preds = %iter_11_end
  br label %for.body3.iter12

for.body3.iter12:                                 ; preds = %iter_12_start
  %add.ptr.iter12 = getelementptr inbounds nuw i8, ptr %a, i32 12
  %23 = load i8, ptr %add.ptr.iter12, align 1
  %add.ptr6.iter12 = getelementptr inbounds nuw i8, ptr %b, i32 12
  %24 = load i8, ptr %add.ptr6.iter12, align 1
  %xor1.i69 = xor i8 %23, %24
  %add.ptr9.iter12 = getelementptr inbounds nuw i8, ptr %c, i32 12
  store i8 %xor1.i69, ptr %add.ptr9.iter12, align 1
  br label %iter_12_end

iter_12_end:                                      ; preds = %for.body3.iter12
  br label %iter_13_start

iter_13_start:                                    ; preds = %iter_12_end
  br label %for.body3.iter13

for.body3.iter13:                                 ; preds = %iter_13_start
  %add.ptr.iter13 = getelementptr inbounds nuw i8, ptr %a, i32 13
  %25 = load i8, ptr %add.ptr.iter13, align 1
  %add.ptr6.iter13 = getelementptr inbounds nuw i8, ptr %b, i32 13
  %26 = load i8, ptr %add.ptr6.iter13, align 1
  %xor1.i70 = xor i8 %25, %26
  %add.ptr9.iter13 = getelementptr inbounds nuw i8, ptr %c, i32 13
  store i8 %xor1.i70, ptr %add.ptr9.iter13, align 1
  br label %iter_13_end

iter_13_end:                                      ; preds = %for.body3.iter13
  br label %iter_14_start

iter_14_start:                                    ; preds = %iter_13_end
  br label %for.body3.iter14

for.body3.iter14:                                 ; preds = %iter_14_start
  %add.ptr.iter14 = getelementptr inbounds nuw i8, ptr %a, i32 14
  %27 = load i8, ptr %add.ptr.iter14, align 1
  %add.ptr6.iter14 = getelementptr inbounds nuw i8, ptr %b, i32 14
  %28 = load i8, ptr %add.ptr6.iter14, align 1
  %xor1.i53 = xor i8 %27, %28
  %add.ptr9.iter14 = getelementptr inbounds nuw i8, ptr %c, i32 14
  store i8 %xor1.i53, ptr %add.ptr9.iter14, align 1
  br label %iter_14_end

iter_14_end:                                      ; preds = %for.body3.iter14
  br label %iter_15_start

iter_15_start:                                    ; preds = %iter_14_end
  br label %for.body3.iter15

for.body3.iter15:                                 ; preds = %iter_15_start
  %add.ptr.iter15 = getelementptr inbounds nuw i8, ptr %a, i32 15
  %29 = load i8, ptr %add.ptr.iter15, align 1
  %add.ptr6.iter15 = getelementptr inbounds nuw i8, ptr %b, i32 15
  %30 = load i8, ptr %add.ptr6.iter15, align 1
  %xor1.i4 = xor i8 %29, %30
  %add.ptr9.iter15 = getelementptr inbounds nuw i8, ptr %c, i32 15
  store i8 %xor1.i4, ptr %add.ptr9.iter15, align 1
  br label %iter_15_end

iter_15_end:                                      ; preds = %for.body3.iter15
  br label %iter_16_start

iter_16_start:                                    ; preds = %iter_15_end
  br label %for.body3.iter16

for.body3.iter16:                                 ; preds = %iter_16_start
  %add.ptr.iter16 = getelementptr inbounds nuw i8, ptr %a, i32 16
  %31 = load i8, ptr %add.ptr.iter16, align 1
  %add.ptr6.iter16 = getelementptr inbounds nuw i8, ptr %b, i32 16
  %32 = load i8, ptr %add.ptr6.iter16, align 1
  %xor1.i67 = xor i8 %31, %32
  %add.ptr9.iter16 = getelementptr inbounds nuw i8, ptr %c, i32 16
  store i8 %xor1.i67, ptr %add.ptr9.iter16, align 1
  br label %iter_16_end

iter_16_end:                                      ; preds = %for.body3.iter16
  br label %iter_17_start

iter_17_start:                                    ; preds = %iter_16_end
  br label %for.body3.iter17

for.body3.iter17:                                 ; preds = %iter_17_start
  %add.ptr.iter17 = getelementptr inbounds nuw i8, ptr %a, i32 17
  %33 = load i8, ptr %add.ptr.iter17, align 1
  %add.ptr6.iter17 = getelementptr inbounds nuw i8, ptr %b, i32 17
  %34 = load i8, ptr %add.ptr6.iter17, align 1
  %xor1.i66 = xor i8 %33, %34
  %add.ptr9.iter17 = getelementptr inbounds nuw i8, ptr %c, i32 17
  store i8 %xor1.i66, ptr %add.ptr9.iter17, align 1
  br label %iter_17_end

iter_17_end:                                      ; preds = %for.body3.iter17
  br label %iter_18_start

iter_18_start:                                    ; preds = %iter_17_end
  br label %for.body3.iter18

for.body3.iter18:                                 ; preds = %iter_18_start
  %add.ptr.iter18 = getelementptr inbounds nuw i8, ptr %a, i32 18
  %35 = load i8, ptr %add.ptr.iter18, align 1
  %add.ptr6.iter18 = getelementptr inbounds nuw i8, ptr %b, i32 18
  %36 = load i8, ptr %add.ptr6.iter18, align 1
  %xor1.i65 = xor i8 %35, %36
  %add.ptr9.iter18 = getelementptr inbounds nuw i8, ptr %c, i32 18
  store i8 %xor1.i65, ptr %add.ptr9.iter18, align 1
  br label %iter_18_end

iter_18_end:                                      ; preds = %for.body3.iter18
  br label %iter_19_start

iter_19_start:                                    ; preds = %iter_18_end
  br label %for.body3.iter19

for.body3.iter19:                                 ; preds = %iter_19_start
  %add.ptr.iter19 = getelementptr inbounds nuw i8, ptr %a, i32 19
  %37 = load i8, ptr %add.ptr.iter19, align 1
  %add.ptr6.iter19 = getelementptr inbounds nuw i8, ptr %b, i32 19
  %38 = load i8, ptr %add.ptr6.iter19, align 1
  %xor1.i64 = xor i8 %37, %38
  %add.ptr9.iter19 = getelementptr inbounds nuw i8, ptr %c, i32 19
  store i8 %xor1.i64, ptr %add.ptr9.iter19, align 1
  br label %iter_19_end

iter_19_end:                                      ; preds = %for.body3.iter19
  br label %iter_20_start

iter_20_start:                                    ; preds = %iter_19_end
  br label %for.body3.iter20

for.body3.iter20:                                 ; preds = %iter_20_start
  %add.ptr.iter20 = getelementptr inbounds nuw i8, ptr %a, i32 20
  %39 = load i8, ptr %add.ptr.iter20, align 1
  %add.ptr6.iter20 = getelementptr inbounds nuw i8, ptr %b, i32 20
  %40 = load i8, ptr %add.ptr6.iter20, align 1
  %xor1.i63 = xor i8 %39, %40
  %add.ptr9.iter20 = getelementptr inbounds nuw i8, ptr %c, i32 20
  store i8 %xor1.i63, ptr %add.ptr9.iter20, align 1
  br label %iter_20_end

iter_20_end:                                      ; preds = %for.body3.iter20
  br label %iter_21_start

iter_21_start:                                    ; preds = %iter_20_end
  br label %for.body3.iter21

for.body3.iter21:                                 ; preds = %iter_21_start
  %add.ptr.iter21 = getelementptr inbounds nuw i8, ptr %a, i32 21
  %41 = load i8, ptr %add.ptr.iter21, align 1
  %add.ptr6.iter21 = getelementptr inbounds nuw i8, ptr %b, i32 21
  %42 = load i8, ptr %add.ptr6.iter21, align 1
  %xor1.i62 = xor i8 %41, %42
  %add.ptr9.iter21 = getelementptr inbounds nuw i8, ptr %c, i32 21
  store i8 %xor1.i62, ptr %add.ptr9.iter21, align 1
  br label %iter_21_end

iter_21_end:                                      ; preds = %for.body3.iter21
  br label %iter_22_start

iter_22_start:                                    ; preds = %iter_21_end
  br label %for.body3.iter22

for.body3.iter22:                                 ; preds = %iter_22_start
  %add.ptr.iter22 = getelementptr inbounds nuw i8, ptr %a, i32 22
  %43 = load i8, ptr %add.ptr.iter22, align 1
  %add.ptr6.iter22 = getelementptr inbounds nuw i8, ptr %b, i32 22
  %44 = load i8, ptr %add.ptr6.iter22, align 1
  %xor1.i61 = xor i8 %43, %44
  %add.ptr9.iter22 = getelementptr inbounds nuw i8, ptr %c, i32 22
  store i8 %xor1.i61, ptr %add.ptr9.iter22, align 1
  br label %iter_22_end

iter_22_end:                                      ; preds = %for.body3.iter22
  br label %iter_23_start

iter_23_start:                                    ; preds = %iter_22_end
  br label %for.body3.iter23

for.body3.iter23:                                 ; preds = %iter_23_start
  %add.ptr.iter23 = getelementptr inbounds nuw i8, ptr %a, i32 23
  %45 = load i8, ptr %add.ptr.iter23, align 1
  %add.ptr6.iter23 = getelementptr inbounds nuw i8, ptr %b, i32 23
  %46 = load i8, ptr %add.ptr6.iter23, align 1
  %xor1.i60 = xor i8 %45, %46
  %add.ptr9.iter23 = getelementptr inbounds nuw i8, ptr %c, i32 23
  store i8 %xor1.i60, ptr %add.ptr9.iter23, align 1
  br label %iter_23_end

iter_23_end:                                      ; preds = %for.body3.iter23
  br label %iter_24_start

iter_24_start:                                    ; preds = %iter_23_end
  br label %for.body3.iter24

for.body3.iter24:                                 ; preds = %iter_24_start
  %add.ptr.iter24 = getelementptr inbounds nuw i8, ptr %a, i32 24
  %47 = load i8, ptr %add.ptr.iter24, align 1
  %add.ptr6.iter24 = getelementptr inbounds nuw i8, ptr %b, i32 24
  %48 = load i8, ptr %add.ptr6.iter24, align 1
  %xor1.i59 = xor i8 %47, %48
  %add.ptr9.iter24 = getelementptr inbounds nuw i8, ptr %c, i32 24
  store i8 %xor1.i59, ptr %add.ptr9.iter24, align 1
  br label %iter_24_end

iter_24_end:                                      ; preds = %for.body3.iter24
  br label %iter_25_start

iter_25_start:                                    ; preds = %iter_24_end
  br label %for.body3.iter25

for.body3.iter25:                                 ; preds = %iter_25_start
  %add.ptr.iter25 = getelementptr inbounds nuw i8, ptr %a, i32 25
  %49 = load i8, ptr %add.ptr.iter25, align 1
  %add.ptr6.iter25 = getelementptr inbounds nuw i8, ptr %b, i32 25
  %50 = load i8, ptr %add.ptr6.iter25, align 1
  %xor1.i58 = xor i8 %49, %50
  %add.ptr9.iter25 = getelementptr inbounds nuw i8, ptr %c, i32 25
  store i8 %xor1.i58, ptr %add.ptr9.iter25, align 1
  br label %iter_25_end

iter_25_end:                                      ; preds = %for.body3.iter25
  br label %iter_26_start

iter_26_start:                                    ; preds = %iter_25_end
  br label %for.body3.iter26

for.body3.iter26:                                 ; preds = %iter_26_start
  %add.ptr.iter26 = getelementptr inbounds nuw i8, ptr %a, i32 26
  %51 = load i8, ptr %add.ptr.iter26, align 1
  %add.ptr6.iter26 = getelementptr inbounds nuw i8, ptr %b, i32 26
  %52 = load i8, ptr %add.ptr6.iter26, align 1
  %xor1.i57 = xor i8 %51, %52
  %add.ptr9.iter26 = getelementptr inbounds nuw i8, ptr %c, i32 26
  store i8 %xor1.i57, ptr %add.ptr9.iter26, align 1
  br label %iter_26_end

iter_26_end:                                      ; preds = %for.body3.iter26
  br label %iter_27_start

iter_27_start:                                    ; preds = %iter_26_end
  br label %for.body3.iter27

for.body3.iter27:                                 ; preds = %iter_27_start
  %add.ptr.iter27 = getelementptr inbounds nuw i8, ptr %a, i32 27
  %53 = load i8, ptr %add.ptr.iter27, align 1
  %add.ptr6.iter27 = getelementptr inbounds nuw i8, ptr %b, i32 27
  %54 = load i8, ptr %add.ptr6.iter27, align 1
  %xor1.i56 = xor i8 %53, %54
  %add.ptr9.iter27 = getelementptr inbounds nuw i8, ptr %c, i32 27
  store i8 %xor1.i56, ptr %add.ptr9.iter27, align 1
  br label %iter_27_end

iter_27_end:                                      ; preds = %for.body3.iter27
  br label %iter_28_start

iter_28_start:                                    ; preds = %iter_27_end
  br label %for.body3.iter28

for.body3.iter28:                                 ; preds = %iter_28_start
  %add.ptr.iter28 = getelementptr inbounds nuw i8, ptr %a, i32 28
  %55 = load i8, ptr %add.ptr.iter28, align 1
  %add.ptr6.iter28 = getelementptr inbounds nuw i8, ptr %b, i32 28
  %56 = load i8, ptr %add.ptr6.iter28, align 1
  %xor1.i54 = xor i8 %55, %56
  %add.ptr9.iter28 = getelementptr inbounds nuw i8, ptr %c, i32 28
  store i8 %xor1.i54, ptr %add.ptr9.iter28, align 1
  br label %iter_28_end

iter_28_end:                                      ; preds = %for.body3.iter28
  br label %iter_29_start

iter_29_start:                                    ; preds = %iter_28_end
  br label %for.body3.iter29

for.body3.iter29:                                 ; preds = %iter_29_start
  %add.ptr.iter29 = getelementptr inbounds nuw i8, ptr %a, i32 29
  %57 = load i8, ptr %add.ptr.iter29, align 1
  %add.ptr6.iter29 = getelementptr inbounds nuw i8, ptr %b, i32 29
  %58 = load i8, ptr %add.ptr6.iter29, align 1
  %xor1.i55 = xor i8 %57, %58
  %add.ptr9.iter29 = getelementptr inbounds nuw i8, ptr %c, i32 29
  store i8 %xor1.i55, ptr %add.ptr9.iter29, align 1
  br label %iter_29_end

iter_29_end:                                      ; preds = %for.body3.iter29
  br label %iter_30_start

iter_30_start:                                    ; preds = %iter_29_end
  br label %for.body3.iter30

for.body3.iter30:                                 ; preds = %iter_30_start
  %add.ptr.iter30 = getelementptr inbounds nuw i8, ptr %a, i32 30
  %59 = load i8, ptr %add.ptr.iter30, align 1
  %add.ptr6.iter30 = getelementptr inbounds nuw i8, ptr %b, i32 30
  %60 = load i8, ptr %add.ptr6.iter30, align 1
  %xor1.i22 = xor i8 %59, %60
  %add.ptr9.iter30 = getelementptr inbounds nuw i8, ptr %c, i32 30
  store i8 %xor1.i22, ptr %add.ptr9.iter30, align 1
  br label %iter_30_end

iter_30_end:                                      ; preds = %for.body3.iter30
  br label %iter_31_start

iter_31_start:                                    ; preds = %iter_30_end
  br label %for.body3.iter31

for.body3.iter31:                                 ; preds = %iter_31_start
  %add.ptr.iter31 = getelementptr inbounds nuw i8, ptr %a, i32 31
  %61 = load i8, ptr %add.ptr.iter31, align 1
  %add.ptr6.iter31 = getelementptr inbounds nuw i8, ptr %b, i32 31
  %62 = load i8, ptr %add.ptr6.iter31, align 1
  %xor1.i5 = xor i8 %61, %62
  %add.ptr9.iter31 = getelementptr inbounds nuw i8, ptr %c, i32 31
  store i8 %xor1.i5, ptr %add.ptr9.iter31, align 1
  br label %iter_31_end

iter_31_end:                                      ; preds = %for.body3.iter31
  br label %iter_32_start

iter_32_start:                                    ; preds = %iter_31_end
  br label %for.body3.iter32

for.body3.iter32:                                 ; preds = %iter_32_start
  %add.ptr.iter32 = getelementptr inbounds nuw i8, ptr %a, i32 32
  %63 = load i8, ptr %add.ptr.iter32, align 1
  %add.ptr6.iter32 = getelementptr inbounds nuw i8, ptr %b, i32 32
  %64 = load i8, ptr %add.ptr6.iter32, align 1
  %xor1.i52 = xor i8 %63, %64
  %add.ptr9.iter32 = getelementptr inbounds nuw i8, ptr %c, i32 32
  store i8 %xor1.i52, ptr %add.ptr9.iter32, align 1
  br label %iter_32_end

iter_32_end:                                      ; preds = %for.body3.iter32
  br label %iter_33_start

iter_33_start:                                    ; preds = %iter_32_end
  br label %for.body3.iter33

for.body3.iter33:                                 ; preds = %iter_33_start
  %add.ptr.iter33 = getelementptr inbounds nuw i8, ptr %a, i32 33
  %65 = load i8, ptr %add.ptr.iter33, align 1
  %add.ptr6.iter33 = getelementptr inbounds nuw i8, ptr %b, i32 33
  %66 = load i8, ptr %add.ptr6.iter33, align 1
  %xor1.i51 = xor i8 %65, %66
  %add.ptr9.iter33 = getelementptr inbounds nuw i8, ptr %c, i32 33
  store i8 %xor1.i51, ptr %add.ptr9.iter33, align 1
  br label %iter_33_end

iter_33_end:                                      ; preds = %for.body3.iter33
  br label %iter_34_start

iter_34_start:                                    ; preds = %iter_33_end
  br label %for.body3.iter34

for.body3.iter34:                                 ; preds = %iter_34_start
  %add.ptr.iter34 = getelementptr inbounds nuw i8, ptr %a, i32 34
  %67 = load i8, ptr %add.ptr.iter34, align 1
  %add.ptr6.iter34 = getelementptr inbounds nuw i8, ptr %b, i32 34
  %68 = load i8, ptr %add.ptr6.iter34, align 1
  %xor1.i50 = xor i8 %67, %68
  %add.ptr9.iter34 = getelementptr inbounds nuw i8, ptr %c, i32 34
  store i8 %xor1.i50, ptr %add.ptr9.iter34, align 1
  br label %iter_34_end

iter_34_end:                                      ; preds = %for.body3.iter34
  br label %iter_35_start

iter_35_start:                                    ; preds = %iter_34_end
  br label %for.body3.iter35

for.body3.iter35:                                 ; preds = %iter_35_start
  %add.ptr.iter35 = getelementptr inbounds nuw i8, ptr %a, i32 35
  %69 = load i8, ptr %add.ptr.iter35, align 1
  %add.ptr6.iter35 = getelementptr inbounds nuw i8, ptr %b, i32 35
  %70 = load i8, ptr %add.ptr6.iter35, align 1
  %xor1.i49 = xor i8 %69, %70
  %add.ptr9.iter35 = getelementptr inbounds nuw i8, ptr %c, i32 35
  store i8 %xor1.i49, ptr %add.ptr9.iter35, align 1
  br label %iter_35_end

iter_35_end:                                      ; preds = %for.body3.iter35
  br label %iter_36_start

iter_36_start:                                    ; preds = %iter_35_end
  br label %for.body3.iter36

for.body3.iter36:                                 ; preds = %iter_36_start
  %add.ptr.iter36 = getelementptr inbounds nuw i8, ptr %a, i32 36
  %71 = load i8, ptr %add.ptr.iter36, align 1
  %add.ptr6.iter36 = getelementptr inbounds nuw i8, ptr %b, i32 36
  %72 = load i8, ptr %add.ptr6.iter36, align 1
  %xor1.i48 = xor i8 %71, %72
  %add.ptr9.iter36 = getelementptr inbounds nuw i8, ptr %c, i32 36
  store i8 %xor1.i48, ptr %add.ptr9.iter36, align 1
  br label %iter_36_end

iter_36_end:                                      ; preds = %for.body3.iter36
  br label %iter_37_start

iter_37_start:                                    ; preds = %iter_36_end
  br label %for.body3.iter37

for.body3.iter37:                                 ; preds = %iter_37_start
  %add.ptr.iter37 = getelementptr inbounds nuw i8, ptr %a, i32 37
  %73 = load i8, ptr %add.ptr.iter37, align 1
  %add.ptr6.iter37 = getelementptr inbounds nuw i8, ptr %b, i32 37
  %74 = load i8, ptr %add.ptr6.iter37, align 1
  %xor1.i47 = xor i8 %73, %74
  %add.ptr9.iter37 = getelementptr inbounds nuw i8, ptr %c, i32 37
  store i8 %xor1.i47, ptr %add.ptr9.iter37, align 1
  br label %iter_37_end

iter_37_end:                                      ; preds = %for.body3.iter37
  br label %iter_38_start

iter_38_start:                                    ; preds = %iter_37_end
  br label %for.body3.iter38

for.body3.iter38:                                 ; preds = %iter_38_start
  %add.ptr.iter38 = getelementptr inbounds nuw i8, ptr %a, i32 38
  %75 = load i8, ptr %add.ptr.iter38, align 1
  %add.ptr6.iter38 = getelementptr inbounds nuw i8, ptr %b, i32 38
  %76 = load i8, ptr %add.ptr6.iter38, align 1
  %xor1.i46 = xor i8 %75, %76
  %add.ptr9.iter38 = getelementptr inbounds nuw i8, ptr %c, i32 38
  store i8 %xor1.i46, ptr %add.ptr9.iter38, align 1
  br label %iter_38_end

iter_38_end:                                      ; preds = %for.body3.iter38
  br label %iter_39_start

iter_39_start:                                    ; preds = %iter_38_end
  br label %for.body3.iter39

for.body3.iter39:                                 ; preds = %iter_39_start
  %add.ptr.iter39 = getelementptr inbounds nuw i8, ptr %a, i32 39
  %77 = load i8, ptr %add.ptr.iter39, align 1
  %add.ptr6.iter39 = getelementptr inbounds nuw i8, ptr %b, i32 39
  %78 = load i8, ptr %add.ptr6.iter39, align 1
  %xor1.i45 = xor i8 %77, %78
  %add.ptr9.iter39 = getelementptr inbounds nuw i8, ptr %c, i32 39
  store i8 %xor1.i45, ptr %add.ptr9.iter39, align 1
  br label %iter_39_end

iter_39_end:                                      ; preds = %for.body3.iter39
  br label %iter_40_start

iter_40_start:                                    ; preds = %iter_39_end
  br label %for.body3.iter40

for.body3.iter40:                                 ; preds = %iter_40_start
  %add.ptr.iter40 = getelementptr inbounds nuw i8, ptr %a, i32 40
  %79 = load i8, ptr %add.ptr.iter40, align 1
  %add.ptr6.iter40 = getelementptr inbounds nuw i8, ptr %b, i32 40
  %80 = load i8, ptr %add.ptr6.iter40, align 1
  %xor1.i44 = xor i8 %79, %80
  %add.ptr9.iter40 = getelementptr inbounds nuw i8, ptr %c, i32 40
  store i8 %xor1.i44, ptr %add.ptr9.iter40, align 1
  br label %iter_40_end

iter_40_end:                                      ; preds = %for.body3.iter40
  br label %iter_41_start

iter_41_start:                                    ; preds = %iter_40_end
  br label %for.body3.iter41

for.body3.iter41:                                 ; preds = %iter_41_start
  %add.ptr.iter41 = getelementptr inbounds nuw i8, ptr %a, i32 41
  %81 = load i8, ptr %add.ptr.iter41, align 1
  %add.ptr6.iter41 = getelementptr inbounds nuw i8, ptr %b, i32 41
  %82 = load i8, ptr %add.ptr6.iter41, align 1
  %xor1.i43 = xor i8 %81, %82
  %add.ptr9.iter41 = getelementptr inbounds nuw i8, ptr %c, i32 41
  store i8 %xor1.i43, ptr %add.ptr9.iter41, align 1
  br label %iter_41_end

iter_41_end:                                      ; preds = %for.body3.iter41
  br label %iter_42_start

iter_42_start:                                    ; preds = %iter_41_end
  br label %for.body3.iter42

for.body3.iter42:                                 ; preds = %iter_42_start
  %add.ptr.iter42 = getelementptr inbounds nuw i8, ptr %a, i32 42
  %83 = load i8, ptr %add.ptr.iter42, align 1
  %add.ptr6.iter42 = getelementptr inbounds nuw i8, ptr %b, i32 42
  %84 = load i8, ptr %add.ptr6.iter42, align 1
  %xor1.i42 = xor i8 %83, %84
  %add.ptr9.iter42 = getelementptr inbounds nuw i8, ptr %c, i32 42
  store i8 %xor1.i42, ptr %add.ptr9.iter42, align 1
  br label %iter_42_end

iter_42_end:                                      ; preds = %for.body3.iter42
  br label %iter_43_start

iter_43_start:                                    ; preds = %iter_42_end
  br label %for.body3.iter43

for.body3.iter43:                                 ; preds = %iter_43_start
  %add.ptr.iter43 = getelementptr inbounds nuw i8, ptr %a, i32 43
  %85 = load i8, ptr %add.ptr.iter43, align 1
  %add.ptr6.iter43 = getelementptr inbounds nuw i8, ptr %b, i32 43
  %86 = load i8, ptr %add.ptr6.iter43, align 1
  %xor1.i41 = xor i8 %85, %86
  %add.ptr9.iter43 = getelementptr inbounds nuw i8, ptr %c, i32 43
  store i8 %xor1.i41, ptr %add.ptr9.iter43, align 1
  br label %iter_43_end

iter_43_end:                                      ; preds = %for.body3.iter43
  br label %iter_44_start

iter_44_start:                                    ; preds = %iter_43_end
  br label %for.body3.iter44

for.body3.iter44:                                 ; preds = %iter_44_start
  %add.ptr.iter44 = getelementptr inbounds nuw i8, ptr %a, i32 44
  %87 = load i8, ptr %add.ptr.iter44, align 1
  %add.ptr6.iter44 = getelementptr inbounds nuw i8, ptr %b, i32 44
  %88 = load i8, ptr %add.ptr6.iter44, align 1
  %xor1.i40 = xor i8 %87, %88
  %add.ptr9.iter44 = getelementptr inbounds nuw i8, ptr %c, i32 44
  store i8 %xor1.i40, ptr %add.ptr9.iter44, align 1
  br label %iter_44_end

iter_44_end:                                      ; preds = %for.body3.iter44
  br label %iter_45_start

iter_45_start:                                    ; preds = %iter_44_end
  br label %for.body3.iter45

for.body3.iter45:                                 ; preds = %iter_45_start
  %add.ptr.iter45 = getelementptr inbounds nuw i8, ptr %a, i32 45
  %89 = load i8, ptr %add.ptr.iter45, align 1
  %add.ptr6.iter45 = getelementptr inbounds nuw i8, ptr %b, i32 45
  %90 = load i8, ptr %add.ptr6.iter45, align 1
  %xor1.i39 = xor i8 %89, %90
  %add.ptr9.iter45 = getelementptr inbounds nuw i8, ptr %c, i32 45
  store i8 %xor1.i39, ptr %add.ptr9.iter45, align 1
  br label %iter_45_end

iter_45_end:                                      ; preds = %for.body3.iter45
  br label %iter_46_start

iter_46_start:                                    ; preds = %iter_45_end
  br label %for.body3.iter46

for.body3.iter46:                                 ; preds = %iter_46_start
  %add.ptr.iter46 = getelementptr inbounds nuw i8, ptr %a, i32 46
  %91 = load i8, ptr %add.ptr.iter46, align 1
  %add.ptr6.iter46 = getelementptr inbounds nuw i8, ptr %b, i32 46
  %92 = load i8, ptr %add.ptr6.iter46, align 1
  %xor1.i38 = xor i8 %91, %92
  %add.ptr9.iter46 = getelementptr inbounds nuw i8, ptr %c, i32 46
  store i8 %xor1.i38, ptr %add.ptr9.iter46, align 1
  br label %iter_46_end

iter_46_end:                                      ; preds = %for.body3.iter46
  br label %iter_47_start

iter_47_start:                                    ; preds = %iter_46_end
  br label %for.body3.iter47

for.body3.iter47:                                 ; preds = %iter_47_start
  %add.ptr.iter47 = getelementptr inbounds nuw i8, ptr %a, i32 47
  %93 = load i8, ptr %add.ptr.iter47, align 1
  %add.ptr6.iter47 = getelementptr inbounds nuw i8, ptr %b, i32 47
  %94 = load i8, ptr %add.ptr6.iter47, align 1
  %xor1.i37 = xor i8 %93, %94
  %add.ptr9.iter47 = getelementptr inbounds nuw i8, ptr %c, i32 47
  store i8 %xor1.i37, ptr %add.ptr9.iter47, align 1
  br label %iter_47_end

iter_47_end:                                      ; preds = %for.body3.iter47
  br label %iter_48_start

iter_48_start:                                    ; preds = %iter_47_end
  br label %for.body3.iter48

for.body3.iter48:                                 ; preds = %iter_48_start
  %add.ptr.iter48 = getelementptr inbounds nuw i8, ptr %a, i32 48
  %95 = load i8, ptr %add.ptr.iter48, align 1
  %add.ptr6.iter48 = getelementptr inbounds nuw i8, ptr %b, i32 48
  %96 = load i8, ptr %add.ptr6.iter48, align 1
  %xor1.i36 = xor i8 %95, %96
  %add.ptr9.iter48 = getelementptr inbounds nuw i8, ptr %c, i32 48
  store i8 %xor1.i36, ptr %add.ptr9.iter48, align 1
  br label %iter_48_end

iter_48_end:                                      ; preds = %for.body3.iter48
  br label %iter_49_start

iter_49_start:                                    ; preds = %iter_48_end
  br label %for.body3.iter49

for.body3.iter49:                                 ; preds = %iter_49_start
  %add.ptr.iter49 = getelementptr inbounds nuw i8, ptr %a, i32 49
  %97 = load i8, ptr %add.ptr.iter49, align 1
  %add.ptr6.iter49 = getelementptr inbounds nuw i8, ptr %b, i32 49
  %98 = load i8, ptr %add.ptr6.iter49, align 1
  %xor1.i35 = xor i8 %97, %98
  %add.ptr9.iter49 = getelementptr inbounds nuw i8, ptr %c, i32 49
  store i8 %xor1.i35, ptr %add.ptr9.iter49, align 1
  br label %iter_49_end

iter_49_end:                                      ; preds = %for.body3.iter49
  br label %iter_50_start

iter_50_start:                                    ; preds = %iter_49_end
  br label %for.body3.iter50

for.body3.iter50:                                 ; preds = %iter_50_start
  %add.ptr.iter50 = getelementptr inbounds nuw i8, ptr %a, i32 50
  %99 = load i8, ptr %add.ptr.iter50, align 1
  %add.ptr6.iter50 = getelementptr inbounds nuw i8, ptr %b, i32 50
  %100 = load i8, ptr %add.ptr6.iter50, align 1
  %xor1.i34 = xor i8 %99, %100
  %add.ptr9.iter50 = getelementptr inbounds nuw i8, ptr %c, i32 50
  store i8 %xor1.i34, ptr %add.ptr9.iter50, align 1
  br label %iter_50_end

iter_50_end:                                      ; preds = %for.body3.iter50
  br label %iter_51_start

iter_51_start:                                    ; preds = %iter_50_end
  br label %for.body3.iter51

for.body3.iter51:                                 ; preds = %iter_51_start
  %add.ptr.iter51 = getelementptr inbounds nuw i8, ptr %a, i32 51
  %101 = load i8, ptr %add.ptr.iter51, align 1
  %add.ptr6.iter51 = getelementptr inbounds nuw i8, ptr %b, i32 51
  %102 = load i8, ptr %add.ptr6.iter51, align 1
  %xor1.i33 = xor i8 %101, %102
  %add.ptr9.iter51 = getelementptr inbounds nuw i8, ptr %c, i32 51
  store i8 %xor1.i33, ptr %add.ptr9.iter51, align 1
  br label %iter_51_end

iter_51_end:                                      ; preds = %for.body3.iter51
  br label %iter_52_start

iter_52_start:                                    ; preds = %iter_51_end
  br label %for.body3.iter52

for.body3.iter52:                                 ; preds = %iter_52_start
  %add.ptr.iter52 = getelementptr inbounds nuw i8, ptr %a, i32 52
  %103 = load i8, ptr %add.ptr.iter52, align 1
  %add.ptr6.iter52 = getelementptr inbounds nuw i8, ptr %b, i32 52
  %104 = load i8, ptr %add.ptr6.iter52, align 1
  %xor1.i32 = xor i8 %103, %104
  %add.ptr9.iter52 = getelementptr inbounds nuw i8, ptr %c, i32 52
  store i8 %xor1.i32, ptr %add.ptr9.iter52, align 1
  br label %iter_52_end

iter_52_end:                                      ; preds = %for.body3.iter52
  br label %iter_53_start

iter_53_start:                                    ; preds = %iter_52_end
  br label %for.body3.iter53

for.body3.iter53:                                 ; preds = %iter_53_start
  %add.ptr.iter53 = getelementptr inbounds nuw i8, ptr %a, i32 53
  %105 = load i8, ptr %add.ptr.iter53, align 1
  %add.ptr6.iter53 = getelementptr inbounds nuw i8, ptr %b, i32 53
  %106 = load i8, ptr %add.ptr6.iter53, align 1
  %xor1.i31 = xor i8 %105, %106
  %add.ptr9.iter53 = getelementptr inbounds nuw i8, ptr %c, i32 53
  store i8 %xor1.i31, ptr %add.ptr9.iter53, align 1
  br label %iter_53_end

iter_53_end:                                      ; preds = %for.body3.iter53
  br label %iter_54_start

iter_54_start:                                    ; preds = %iter_53_end
  br label %for.body3.iter54

for.body3.iter54:                                 ; preds = %iter_54_start
  %add.ptr.iter54 = getelementptr inbounds nuw i8, ptr %a, i32 54
  %107 = load i8, ptr %add.ptr.iter54, align 1
  %add.ptr6.iter54 = getelementptr inbounds nuw i8, ptr %b, i32 54
  %108 = load i8, ptr %add.ptr6.iter54, align 1
  %xor1.i30 = xor i8 %107, %108
  %add.ptr9.iter54 = getelementptr inbounds nuw i8, ptr %c, i32 54
  store i8 %xor1.i30, ptr %add.ptr9.iter54, align 1
  br label %iter_54_end

iter_54_end:                                      ; preds = %for.body3.iter54
  br label %iter_55_start

iter_55_start:                                    ; preds = %iter_54_end
  br label %for.body3.iter55

for.body3.iter55:                                 ; preds = %iter_55_start
  %add.ptr.iter55 = getelementptr inbounds nuw i8, ptr %a, i32 55
  %109 = load i8, ptr %add.ptr.iter55, align 1
  %add.ptr6.iter55 = getelementptr inbounds nuw i8, ptr %b, i32 55
  %110 = load i8, ptr %add.ptr6.iter55, align 1
  %xor1.i29 = xor i8 %109, %110
  %add.ptr9.iter55 = getelementptr inbounds nuw i8, ptr %c, i32 55
  store i8 %xor1.i29, ptr %add.ptr9.iter55, align 1
  br label %iter_55_end

iter_55_end:                                      ; preds = %for.body3.iter55
  br label %iter_56_start

iter_56_start:                                    ; preds = %iter_55_end
  br label %for.body3.iter56

for.body3.iter56:                                 ; preds = %iter_56_start
  %add.ptr.iter56 = getelementptr inbounds nuw i8, ptr %a, i32 56
  %111 = load i8, ptr %add.ptr.iter56, align 1
  %add.ptr6.iter56 = getelementptr inbounds nuw i8, ptr %b, i32 56
  %112 = load i8, ptr %add.ptr6.iter56, align 1
  %xor1.i28 = xor i8 %111, %112
  %add.ptr9.iter56 = getelementptr inbounds nuw i8, ptr %c, i32 56
  store i8 %xor1.i28, ptr %add.ptr9.iter56, align 1
  br label %iter_56_end

iter_56_end:                                      ; preds = %for.body3.iter56
  br label %iter_57_start

iter_57_start:                                    ; preds = %iter_56_end
  br label %for.body3.iter57

for.body3.iter57:                                 ; preds = %iter_57_start
  %add.ptr.iter57 = getelementptr inbounds nuw i8, ptr %a, i32 57
  %113 = load i8, ptr %add.ptr.iter57, align 1
  %add.ptr6.iter57 = getelementptr inbounds nuw i8, ptr %b, i32 57
  %114 = load i8, ptr %add.ptr6.iter57, align 1
  %xor1.i27 = xor i8 %113, %114
  %add.ptr9.iter57 = getelementptr inbounds nuw i8, ptr %c, i32 57
  store i8 %xor1.i27, ptr %add.ptr9.iter57, align 1
  br label %iter_57_end

iter_57_end:                                      ; preds = %for.body3.iter57
  br label %iter_58_start

iter_58_start:                                    ; preds = %iter_57_end
  br label %for.body3.iter58

for.body3.iter58:                                 ; preds = %iter_58_start
  %add.ptr.iter58 = getelementptr inbounds nuw i8, ptr %a, i32 58
  %115 = load i8, ptr %add.ptr.iter58, align 1
  %add.ptr6.iter58 = getelementptr inbounds nuw i8, ptr %b, i32 58
  %116 = load i8, ptr %add.ptr6.iter58, align 1
  %xor1.i26 = xor i8 %115, %116
  %add.ptr9.iter58 = getelementptr inbounds nuw i8, ptr %c, i32 58
  store i8 %xor1.i26, ptr %add.ptr9.iter58, align 1
  br label %iter_58_end

iter_58_end:                                      ; preds = %for.body3.iter58
  br label %iter_59_start

iter_59_start:                                    ; preds = %iter_58_end
  br label %for.body3.iter59

for.body3.iter59:                                 ; preds = %iter_59_start
  %add.ptr.iter59 = getelementptr inbounds nuw i8, ptr %a, i32 59
  %117 = load i8, ptr %add.ptr.iter59, align 1
  %add.ptr6.iter59 = getelementptr inbounds nuw i8, ptr %b, i32 59
  %118 = load i8, ptr %add.ptr6.iter59, align 1
  %xor1.i25 = xor i8 %117, %118
  %add.ptr9.iter59 = getelementptr inbounds nuw i8, ptr %c, i32 59
  store i8 %xor1.i25, ptr %add.ptr9.iter59, align 1
  br label %iter_59_end

iter_59_end:                                      ; preds = %for.body3.iter59
  br label %iter_60_start

iter_60_start:                                    ; preds = %iter_59_end
  br label %for.body3.iter60

for.body3.iter60:                                 ; preds = %iter_60_start
  %add.ptr.iter60 = getelementptr inbounds nuw i8, ptr %a, i32 60
  %119 = load i8, ptr %add.ptr.iter60, align 1
  %add.ptr6.iter60 = getelementptr inbounds nuw i8, ptr %b, i32 60
  %120 = load i8, ptr %add.ptr6.iter60, align 1
  %xor1.i23 = xor i8 %119, %120
  %add.ptr9.iter60 = getelementptr inbounds nuw i8, ptr %c, i32 60
  store i8 %xor1.i23, ptr %add.ptr9.iter60, align 1
  br label %iter_60_end

iter_60_end:                                      ; preds = %for.body3.iter60
  br label %iter_61_start

iter_61_start:                                    ; preds = %iter_60_end
  br label %for.body3.iter61

for.body3.iter61:                                 ; preds = %iter_61_start
  %add.ptr.iter61 = getelementptr inbounds nuw i8, ptr %a, i32 61
  %121 = load i8, ptr %add.ptr.iter61, align 1
  %add.ptr6.iter61 = getelementptr inbounds nuw i8, ptr %b, i32 61
  %122 = load i8, ptr %add.ptr6.iter61, align 1
  %xor1.i24 = xor i8 %121, %122
  %add.ptr9.iter61 = getelementptr inbounds nuw i8, ptr %c, i32 61
  store i8 %xor1.i24, ptr %add.ptr9.iter61, align 1
  br label %iter_61_end

iter_61_end:                                      ; preds = %for.body3.iter61
  br label %iter_62_start

iter_62_start:                                    ; preds = %iter_61_end
  br label %for.body3.iter62

for.body3.iter62:                                 ; preds = %iter_62_start
  %add.ptr.iter62 = getelementptr inbounds nuw i8, ptr %a, i32 62
  %123 = load i8, ptr %add.ptr.iter62, align 1
  %add.ptr6.iter62 = getelementptr inbounds nuw i8, ptr %b, i32 62
  %124 = load i8, ptr %add.ptr6.iter62, align 1
  %xor1.i7 = xor i8 %123, %124
  %add.ptr9.iter62 = getelementptr inbounds nuw i8, ptr %c, i32 62
  store i8 %xor1.i7, ptr %add.ptr9.iter62, align 1
  br label %iter_62_end

iter_62_end:                                      ; preds = %for.body3.iter62
  br label %iter_63_start

iter_63_start:                                    ; preds = %iter_62_end
  br label %for.body3.iter63

for.body3.iter63:                                 ; preds = %iter_63_start
  %add.ptr.iter63 = getelementptr inbounds nuw i8, ptr %a, i32 63
  %125 = load i8, ptr %add.ptr.iter63, align 1
  %add.ptr6.iter63 = getelementptr inbounds nuw i8, ptr %b, i32 63
  %126 = load i8, ptr %add.ptr6.iter63, align 1
  %xor1.i6 = xor i8 %125, %126
  %add.ptr9.iter63 = getelementptr inbounds nuw i8, ptr %c, i32 63
  store i8 %xor1.i6, ptr %add.ptr9.iter63, align 1
  br label %iter_63_end

iter_63_end:                                      ; preds = %for.body3.iter63
  br label %iter_64_start

iter_64_start:                                    ; preds = %iter_63_end
  br label %for.body3.iter64

for.body3.iter64:                                 ; preds = %iter_64_start
  %add.ptr.iter64 = getelementptr inbounds nuw i8, ptr %a, i32 64
  %127 = load i8, ptr %add.ptr.iter64, align 1
  %add.ptr6.iter64 = getelementptr inbounds nuw i8, ptr %b, i32 64
  %128 = load i8, ptr %add.ptr6.iter64, align 1
  %xor1.i21 = xor i8 %127, %128
  %add.ptr9.iter64 = getelementptr inbounds nuw i8, ptr %c, i32 64
  store i8 %xor1.i21, ptr %add.ptr9.iter64, align 1
  br label %iter_64_end

iter_64_end:                                      ; preds = %for.body3.iter64
  br label %iter_65_start

iter_65_start:                                    ; preds = %iter_64_end
  br label %for.body3.iter65

for.body3.iter65:                                 ; preds = %iter_65_start
  %add.ptr.iter65 = getelementptr inbounds nuw i8, ptr %a, i32 65
  %129 = load i8, ptr %add.ptr.iter65, align 1
  %add.ptr6.iter65 = getelementptr inbounds nuw i8, ptr %b, i32 65
  %130 = load i8, ptr %add.ptr6.iter65, align 1
  %xor1.i20 = xor i8 %129, %130
  %add.ptr9.iter65 = getelementptr inbounds nuw i8, ptr %c, i32 65
  store i8 %xor1.i20, ptr %add.ptr9.iter65, align 1
  br label %iter_65_end

iter_65_end:                                      ; preds = %for.body3.iter65
  br label %iter_66_start

iter_66_start:                                    ; preds = %iter_65_end
  br label %for.body3.iter66

for.body3.iter66:                                 ; preds = %iter_66_start
  %add.ptr.iter66 = getelementptr inbounds nuw i8, ptr %a, i32 66
  %131 = load i8, ptr %add.ptr.iter66, align 1
  %add.ptr6.iter66 = getelementptr inbounds nuw i8, ptr %b, i32 66
  %132 = load i8, ptr %add.ptr6.iter66, align 1
  %xor1.i19 = xor i8 %131, %132
  %add.ptr9.iter66 = getelementptr inbounds nuw i8, ptr %c, i32 66
  store i8 %xor1.i19, ptr %add.ptr9.iter66, align 1
  br label %iter_66_end

iter_66_end:                                      ; preds = %for.body3.iter66
  br label %iter_67_start

iter_67_start:                                    ; preds = %iter_66_end
  br label %for.body3.iter67

for.body3.iter67:                                 ; preds = %iter_67_start
  %add.ptr.iter67 = getelementptr inbounds nuw i8, ptr %a, i32 67
  %133 = load i8, ptr %add.ptr.iter67, align 1
  %add.ptr6.iter67 = getelementptr inbounds nuw i8, ptr %b, i32 67
  %134 = load i8, ptr %add.ptr6.iter67, align 1
  %xor1.i18 = xor i8 %133, %134
  %add.ptr9.iter67 = getelementptr inbounds nuw i8, ptr %c, i32 67
  store i8 %xor1.i18, ptr %add.ptr9.iter67, align 1
  br label %iter_67_end

iter_67_end:                                      ; preds = %for.body3.iter67
  br label %iter_68_start

iter_68_start:                                    ; preds = %iter_67_end
  br label %for.body3.iter68

for.body3.iter68:                                 ; preds = %iter_68_start
  %add.ptr.iter68 = getelementptr inbounds nuw i8, ptr %a, i32 68
  %135 = load i8, ptr %add.ptr.iter68, align 1
  %add.ptr6.iter68 = getelementptr inbounds nuw i8, ptr %b, i32 68
  %136 = load i8, ptr %add.ptr6.iter68, align 1
  %xor1.i17 = xor i8 %135, %136
  %add.ptr9.iter68 = getelementptr inbounds nuw i8, ptr %c, i32 68
  store i8 %xor1.i17, ptr %add.ptr9.iter68, align 1
  br label %iter_68_end

iter_68_end:                                      ; preds = %for.body3.iter68
  br label %iter_69_start

iter_69_start:                                    ; preds = %iter_68_end
  br label %for.body3.iter69

for.body3.iter69:                                 ; preds = %iter_69_start
  %add.ptr.iter69 = getelementptr inbounds nuw i8, ptr %a, i32 69
  %137 = load i8, ptr %add.ptr.iter69, align 1
  %add.ptr6.iter69 = getelementptr inbounds nuw i8, ptr %b, i32 69
  %138 = load i8, ptr %add.ptr6.iter69, align 1
  %xor1.i16 = xor i8 %137, %138
  %add.ptr9.iter69 = getelementptr inbounds nuw i8, ptr %c, i32 69
  store i8 %xor1.i16, ptr %add.ptr9.iter69, align 1
  br label %iter_69_end

iter_69_end:                                      ; preds = %for.body3.iter69
  br label %iter_70_start

iter_70_start:                                    ; preds = %iter_69_end
  br label %for.body3.iter70

for.body3.iter70:                                 ; preds = %iter_70_start
  %add.ptr.iter70 = getelementptr inbounds nuw i8, ptr %a, i32 70
  %139 = load i8, ptr %add.ptr.iter70, align 1
  %add.ptr6.iter70 = getelementptr inbounds nuw i8, ptr %b, i32 70
  %140 = load i8, ptr %add.ptr6.iter70, align 1
  %xor1.i15 = xor i8 %139, %140
  %add.ptr9.iter70 = getelementptr inbounds nuw i8, ptr %c, i32 70
  store i8 %xor1.i15, ptr %add.ptr9.iter70, align 1
  br label %iter_70_end

iter_70_end:                                      ; preds = %for.body3.iter70
  br label %iter_71_start

iter_71_start:                                    ; preds = %iter_70_end
  br label %for.body3.iter71

for.body3.iter71:                                 ; preds = %iter_71_start
  %add.ptr.iter71 = getelementptr inbounds nuw i8, ptr %a, i32 71
  %141 = load i8, ptr %add.ptr.iter71, align 1
  %add.ptr6.iter71 = getelementptr inbounds nuw i8, ptr %b, i32 71
  %142 = load i8, ptr %add.ptr6.iter71, align 1
  %xor1.i14 = xor i8 %141, %142
  %add.ptr9.iter71 = getelementptr inbounds nuw i8, ptr %c, i32 71
  store i8 %xor1.i14, ptr %add.ptr9.iter71, align 1
  br label %iter_71_end

iter_71_end:                                      ; preds = %for.body3.iter71
  br label %iter_72_start

iter_72_start:                                    ; preds = %iter_71_end
  br label %for.body3.iter72

for.body3.iter72:                                 ; preds = %iter_72_start
  %add.ptr.iter72 = getelementptr inbounds nuw i8, ptr %a, i32 72
  %143 = load i8, ptr %add.ptr.iter72, align 1
  %add.ptr6.iter72 = getelementptr inbounds nuw i8, ptr %b, i32 72
  %144 = load i8, ptr %add.ptr6.iter72, align 1
  %xor1.i13 = xor i8 %143, %144
  %add.ptr9.iter72 = getelementptr inbounds nuw i8, ptr %c, i32 72
  store i8 %xor1.i13, ptr %add.ptr9.iter72, align 1
  br label %iter_72_end

iter_72_end:                                      ; preds = %for.body3.iter72
  br label %iter_73_start

iter_73_start:                                    ; preds = %iter_72_end
  br label %for.body3.iter73

for.body3.iter73:                                 ; preds = %iter_73_start
  %add.ptr.iter73 = getelementptr inbounds nuw i8, ptr %a, i32 73
  %145 = load i8, ptr %add.ptr.iter73, align 1
  %add.ptr6.iter73 = getelementptr inbounds nuw i8, ptr %b, i32 73
  %146 = load i8, ptr %add.ptr6.iter73, align 1
  %xor1.i12 = xor i8 %145, %146
  %add.ptr9.iter73 = getelementptr inbounds nuw i8, ptr %c, i32 73
  store i8 %xor1.i12, ptr %add.ptr9.iter73, align 1
  br label %iter_73_end

iter_73_end:                                      ; preds = %for.body3.iter73
  br label %iter_74_start

iter_74_start:                                    ; preds = %iter_73_end
  br label %for.body3.iter74

for.body3.iter74:                                 ; preds = %iter_74_start
  %add.ptr.iter74 = getelementptr inbounds nuw i8, ptr %a, i32 74
  %147 = load i8, ptr %add.ptr.iter74, align 1
  %add.ptr6.iter74 = getelementptr inbounds nuw i8, ptr %b, i32 74
  %148 = load i8, ptr %add.ptr6.iter74, align 1
  %xor1.i11 = xor i8 %147, %148
  %add.ptr9.iter74 = getelementptr inbounds nuw i8, ptr %c, i32 74
  store i8 %xor1.i11, ptr %add.ptr9.iter74, align 1
  br label %iter_74_end

iter_74_end:                                      ; preds = %for.body3.iter74
  br label %iter_75_start

iter_75_start:                                    ; preds = %iter_74_end
  br label %for.body3.iter75

for.body3.iter75:                                 ; preds = %iter_75_start
  %add.ptr.iter75 = getelementptr inbounds nuw i8, ptr %a, i32 75
  %149 = load i8, ptr %add.ptr.iter75, align 1
  %add.ptr6.iter75 = getelementptr inbounds nuw i8, ptr %b, i32 75
  %150 = load i8, ptr %add.ptr6.iter75, align 1
  %xor1.i10 = xor i8 %149, %150
  %add.ptr9.iter75 = getelementptr inbounds nuw i8, ptr %c, i32 75
  store i8 %xor1.i10, ptr %add.ptr9.iter75, align 1
  br label %iter_75_end

iter_75_end:                                      ; preds = %for.body3.iter75
  br label %iter_76_start

iter_76_start:                                    ; preds = %iter_75_end
  br label %for.body3.iter76

for.body3.iter76:                                 ; preds = %iter_76_start
  %add.ptr.iter76 = getelementptr inbounds nuw i8, ptr %a, i32 76
  %151 = load i8, ptr %add.ptr.iter76, align 1
  %add.ptr6.iter76 = getelementptr inbounds nuw i8, ptr %b, i32 76
  %152 = load i8, ptr %add.ptr6.iter76, align 1
  %xor1.i9 = xor i8 %151, %152
  %add.ptr9.iter76 = getelementptr inbounds nuw i8, ptr %c, i32 76
  store i8 %xor1.i9, ptr %add.ptr9.iter76, align 1
  br label %iter_76_end

iter_76_end:                                      ; preds = %for.body3.iter76
  br label %iter_77_start

iter_77_start:                                    ; preds = %iter_76_end
  br label %for.body3.iter77

for.body3.iter77:                                 ; preds = %iter_77_start
  %add.ptr.iter77 = getelementptr inbounds nuw i8, ptr %a, i32 77
  %153 = load i8, ptr %add.ptr.iter77, align 1
  %add.ptr6.iter77 = getelementptr inbounds nuw i8, ptr %b, i32 77
  %154 = load i8, ptr %add.ptr6.iter77, align 1
  %xor1.i8 = xor i8 %153, %154
  %add.ptr9.iter77 = getelementptr inbounds nuw i8, ptr %c, i32 77
  store i8 %xor1.i8, ptr %add.ptr9.iter77, align 1
  br label %iter_77_end

iter_77_end:                                      ; preds = %for.body3.iter77
  br label %for.end13
}

; Function Attrs: inlinehint
define i32 @main() local_unnamed_addr #1 {
entry:
  %Vdec = alloca [780 x i8], align 16
  call void @mayo_memset(ptr %Vdec, i8 0, i32 780)
  %Ox = alloca [78 x i8], align 16
  call void @mayo_memset(ptr %Ox, i8 0, i32 78)
  %s = alloca [860 x i8], align 16
  call void @mayo_memset(ptr %s, i8 0, i32 860)
  call fastcc void @mat_add(ptr %Vdec, ptr %Ox, ptr %s, i32 78, i32 1)
  ret i32 0
}

; Function Attrs: nounwind
define dso_local void @mayo_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %exitcond = icmp ne i32 %i.0, %len
  br i1 %exitcond, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0
  store i8 %val, ptr %arrayidx, align 1
  %inc = add i32 %i.0, 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
define dso_local void @mayo_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %exitcond = icmp ne i32 %i.0, %len
  br i1 %exitcond, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0
  %0 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0
  store i8 %0, ptr %arrayidx1, align 1
  %inc = add i32 %i.0, 1
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { inlinehint nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { inlinehint }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 1, !"Code Model", i32 1}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
