; ModuleID = 'mylib.4c8665b746b028e0-cgu.0'
source_filename = "mylib.4c8665b746b028e0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_124637d68e2372c2f647d1681247e12a = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"Unknown Opcode value: " }>, align 1
@alloc_5535958222240d4ee5fc68b0477de46d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_124637d68e2372c2f647d1681247e12a, [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@alloc_d6d4d5493cfa6cf205956f7cd45982d7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"src/bytecode.rs" }>, align 1
@alloc_9f44f6333d2b8c350f2777f50677cac3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00 \00\00\00\12\00\00\00" }>, align 8
@alloc_74181bc1c6282bb14894a9adac488303 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00\E0\00\00\00\15\00\00\00" }>, align 8
@alloc_627591b5ae698ea7c4faf90c6e309091 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00\FD\00\00\00\17\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_1528b3082d08550f5746c6359de0090e = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"LOAD: memory[" }>, align 1
@alloc_428053e6434889c8e3f16313e3d2a9ba = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"] = " }>, align 1
@alloc_08277363910ed55a4d1f982b11bc3fab = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_1528b3082d08550f5746c6359de0090e, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @alloc_428053e6434889c8e3f16313e3d2a9ba, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_55c73f7180bff337b1b4eecacffafcc2 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"ADD: memory[" }>, align 1
@alloc_19182f7716cfa7b356cedb4cbeefa355 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"] = memory[" }>, align 1
@alloc_b7f6d234a01b9951c1058b6787aee5dd = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"] + memory[" }>, align 1
@alloc_2367c1aa00ce1fc7a807fbde9bd9192c = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"]\0A" }>, align 1
@alloc_08b8b59d4592f5e4cb44d4c269b75b85 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_55c73f7180bff337b1b4eecacffafcc2, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @alloc_19182f7716cfa7b356cedb4cbeefa355, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_b7f6d234a01b9951c1058b6787aee5dd, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_2367c1aa00ce1fc7a807fbde9bd9192c, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc_af821f617c7ac9cd3983c2a43461e7fb = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"JMPNE: if memory[" }>, align 1
@alloc_0ec296139988350060c83fe7a94bf00c = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"] != memory[" }>, align 1
@alloc_e6c517e4453ae95685412b6ccf76fcf4 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"] pc = " }>, align 1
@alloc_6c1278270be7c1937f69e7d5ccd82dc1 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_af821f617c7ac9cd3983c2a43461e7fb, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @alloc_0ec296139988350060c83fe7a94bf00c, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @alloc_e6c517e4453ae95685412b6ccf76fcf4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_29350cbfa649254c87bcfd7b9e5a1624 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"PRINT: print memory[" }>, align 1
@alloc_beb631b24497aa79602fe07f865a7d18 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_29350cbfa649254c87bcfd7b9e5a1624, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @alloc_2367c1aa00ce1fc7a807fbde9bd9192c, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc_b23ab836b894be968061dd1d4b861ae2 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"RET\0A" }>, align 1
@alloc_1ae31664852bdd543ee7abebae08d5f9 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_b23ab836b894be968061dd1d4b861ae2, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@alloc_1300d27cd771a45707c3d648e0c9f0bc = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"LOAD" }>, align 1
@alloc_341782a764bce741258269b0ec0d4112 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"ADD" }>, align 1
@alloc_26cea3fd2f0cfa8fed80dedf4bd6982c = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"JMPNE" }>, align 1
@alloc_4edb254b3e7fdd3d2045bf39e1ff32e5 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"PRINT" }>, align 1
@alloc_09b811a1da80bf08aea854b228048cc6 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"RET" }>, align 1
@"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4057e9d15066907E" = private unnamed_addr constant [5 x i64] [i64 4, i64 3, i64 5, i64 5, i64 3], align 8
@"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4057e9d15066907E.1" = private unnamed_addr constant [5 x ptr] [ptr @alloc_1300d27cd771a45707c3d648e0c9f0bc, ptr @alloc_341782a764bce741258269b0ec0d4112, ptr @alloc_26cea3fd2f0cfa8fed80dedf4bd6982c, ptr @alloc_4edb254b3e7fdd3d2045bf39e1ff32e5, ptr @alloc_09b811a1da80bf08aea854b228048cc6], align 8

; mylib::bytecode::Opcode::from_u32
; Function Attrs: uwtable
define noundef i8 @_ZN5mylib8bytecode6Opcode8from_u3217h4a56d704a8e87909E(i32 noundef %0) unnamed_addr #0 {
start:
  %_7 = alloca [1 x { ptr, ptr }], align 8
  %_3 = alloca %"core::fmt::Arguments<'_>", align 8
  %value = alloca i32, align 4
  store i32 %0, ptr %value, align 4
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.lookup, label %bb1

bb1:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  store ptr %value, ptr %_7, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_7, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %2, align 8
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3, align 8, !alias.scope !1, !noalias !4
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3, i64 0, i32 1
  store i64 1, ptr %3, align 8, !alias.scope !1, !noalias !4
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 2
  store ptr null, ptr %4, align 8, !alias.scope !1, !noalias !4
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 1
  store ptr %_7, ptr %5, align 8, !alias.scope !1, !noalias !4
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 1, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !1, !noalias !4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #4
  unreachable

switch.lookup:                                    ; preds = %start
  %switch.idx.cast = trunc i32 %0 to i8
  ret i8 %switch.idx.cast
}

; mylib::bytecode::vm_loop
; Function Attrs: uwtable
define void @_ZN5mylib8bytecode7vm_loop17h5487fec91a602e89E(ptr noalias nocapture noundef nonnull readonly align 4 %program.0, i64 noundef %program.1) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i = alloca i32, align 4
  %_56 = alloca [1 x { ptr, ptr }], align 8
  %_52 = alloca %"core::fmt::Arguments<'_>", align 8
  %memory = alloca [256 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %memory)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %memory, i8 0, i64 1024, i1 false)
  %_734.not = icmp eq i64 %program.1, 0
  br i1 %_734.not, label %panic, label %bb2.lr.ph, !prof !7

bb2.lr.ph:                                        ; preds = %start
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_56, i64 0, i32 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_52, i64 0, i32 1
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 2
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 1
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 1, i32 1
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb20
  %pc.035 = phi i64 [ 0, %bb2.lr.ph ], [ %13, %bb20 ]
  %bytecode = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %pc.035
  %bytecode1 = load i32, ptr %bytecode, align 4, !noundef !8
  %_65 = and i32 %bytecode1, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i)
  store i32 %_65, ptr %value.i, align 4
  switch i32 %_65, label %bb1.i [
    i32 0, label %bb6
    i32 1, label %bb7
    i32 2, label %bb11
    i32 3, label %bb16
    i32 4, label %bb3
  ]

bb1.i:                                            ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %value.i, ptr %_7.i, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %5, align 8
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3.i, align 8, !alias.scope !9, !noalias !12
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !9, !noalias !12
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr null, ptr %7, align 8, !alias.scope !9, !noalias !12
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr %_7.i, ptr %8, align 8, !alias.scope !9, !noalias !12
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !9, !noalias !12
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #4
  unreachable

panic:                                            ; preds = %bb20, %start
  %pc.0.lcssa = phi i64 [ 0, %start ], [ %13, %bb20 ]
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %pc.0.lcssa, i64 noundef %program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_74181bc1c6282bb14894a9adac488303) #4
  unreachable

bb7:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_70 = lshr i32 %bytecode1, 4
  %_26 = and i32 %_70, 4095
  %_29 = icmp ult i32 %_26, 256
  %_25 = zext i32 %_26 to i64
  br i1 %_29, label %bb10, label %panic8, !prof !15

bb11:                                             ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_73 = lshr i32 %bytecode1, 16
  %_44 = and i32 %_73, 255
  %_43 = zext i32 %_44 to i64
  %_72 = lshr i32 %bytecode1, 24
  %_37 = zext i32 %_72 to i64
  %10 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_37
  %_36 = load i32, ptr %10, align 4, !noundef !8
  %11 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_43
  %_42 = load i32, ptr %11, align 4, !noundef !8
  %_35.not = icmp eq i32 %_36, %_42
  br i1 %_35.not, label %bb20, label %bb14

bb16:                                             ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_52)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_56)
  %_75 = lshr i32 %bytecode1, 24
  %_59 = zext i32 %_75 to i64
  %x = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_59
  store ptr %x, ptr %_56, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %_52, align 8, !alias.scope !16, !noalias !19
  store i64 2, ptr %1, align 8, !alias.scope !16, !noalias !19
  store ptr null, ptr %2, align 8, !alias.scope !16, !noalias !19
  store ptr %_56, ptr %3, align 8, !alias.scope !16, !noalias !19
  store i64 1, ptr %4, align 8, !alias.scope !16, !noalias !19
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_52)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_52)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_56)
  br label %bb20

bb3:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %memory)
  ret void

bb6:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_68 = lshr i32 %bytecode1, 24
  %_13 = zext i32 %_68 to i64
  %_66 = lshr i32 %bytecode1, 4
  %_11 = and i32 %_66, 1048575
  %12 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_13
  store i32 %_11, ptr %12, align 4
  br label %bb20

bb20:                                             ; preds = %bb11, %bb14, %bb16, %bb10, %bb6
  %pc.1 = phi i64 [ %pc.035, %bb16 ], [ %18, %bb14 ], [ %pc.035, %bb11 ], [ %pc.035, %bb10 ], [ %pc.035, %bb6 ]
  %13 = add i64 %pc.1, 1
  %_7 = icmp ult i64 %13, %program.1
  br i1 %_7, label %bb2, label %panic, !prof !15

panic8:                                           ; preds = %bb7
  %_25.le = zext i32 %_26 to i64
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_25.le, i64 noundef 256, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_627591b5ae698ea7c4faf90c6e309091) #4
  unreachable

bb10:                                             ; preds = %bb7
  %_69 = lshr i32 %bytecode1, 16
  %_20 = and i32 %_69, 255
  %_19 = zext i32 %_20 to i64
  %14 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_19
  %_18 = load i32, ptr %14, align 4, !noundef !8
  %_71 = lshr i32 %bytecode1, 24
  %_30 = zext i32 %_71 to i64
  %15 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_25
  %_24 = load i32, ptr %15, align 4, !noundef !8
  %16 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_30
  %17 = add i32 %_24, %_18
  store i32 %17, ptr %16, align 4
  br label %bb20

bb14:                                             ; preds = %bb11
  %_74 = lshr i32 %bytecode1, 4
  %_49 = and i32 %_74, 4095
  %_48 = zext i32 %_49 to i64
  %18 = add nsw i64 %_48, -1
  br label %bb20
}

; mylib::bytecode::print_bytecode
; Function Attrs: uwtable
define void @_ZN5mylib8bytecode14print_bytecode17h713b13ef63eeae19E(i32 noundef %bytecode) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i = alloca i32, align 4
  %_56 = alloca %"core::fmt::Arguments<'_>", align 8
  %_54 = alloca i32, align 4
  %_51 = alloca [1 x { ptr, ptr }], align 8
  %_47 = alloca %"core::fmt::Arguments<'_>", align 8
  %_45 = alloca i32, align 4
  %_42 = alloca i32, align 4
  %_39 = alloca i32, align 4
  %_36 = alloca [3 x { ptr, ptr }], align 8
  %_32 = alloca %"core::fmt::Arguments<'_>", align 8
  %_30 = alloca i32, align 4
  %_27 = alloca i32, align 4
  %_24 = alloca i32, align 4
  %_21 = alloca [3 x { ptr, ptr }], align 8
  %_17 = alloca %"core::fmt::Arguments<'_>", align 8
  %_15 = alloca i32, align 4
  %_12 = alloca i32, align 4
  %_9 = alloca [2 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %_63 = and i32 %bytecode, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i)
  store i32 %_63, ptr %value.i, align 4
  switch i32 %_63, label %bb1.i [
    i32 0, label %bb3
    i32 1, label %bb6
    i32 2, label %bb9
    i32 3, label %bb12
    i32 4, label %bb1
  ]

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %value.i, ptr %_7.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %0, align 8
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3.i, align 8, !alias.scope !22, !noalias !25
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 1, ptr %1, align 8, !alias.scope !22, !noalias !25
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr null, ptr %2, align 8, !alias.scope !22, !noalias !25
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr %_7.i, ptr %3, align 8, !alias.scope !22, !noalias !25
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !22, !noalias !25
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #4
  unreachable

bb3:                                              ; preds = %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_12)
  %_67 = lshr i32 %bytecode, 24
  store i32 %_67, ptr %_12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_15)
  %_71 = lshr i32 %bytecode, 4
  %5 = and i32 %_71, 1048575
  store i32 %5, ptr %_15, align 4
  store ptr %_12, ptr %_9, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_9, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %6, align 8
  %7 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_9, i64 0, i64 1
  store ptr %_15, ptr %7, align 8
  %8 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_9, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %8, align 8
  store ptr @alloc_08277363910ed55a4d1f982b11bc3fab, ptr %_5, align 8, !alias.scope !28, !noalias !31
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_5, i64 0, i32 1
  store i64 3, ptr %9, align 8, !alias.scope !28, !noalias !31
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2
  store ptr null, ptr %10, align 8, !alias.scope !28, !noalias !31
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1
  store ptr %_9, ptr %11, align 8, !alias.scope !28, !noalias !31
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1, i32 1
  store i64 2, ptr %12, align 8, !alias.scope !28, !noalias !31
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_12)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_9)
  br label %bb16

bb6:                                              ; preds = %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_17)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_24)
  %_76 = lshr i32 %bytecode, 24
  store i32 %_76, ptr %_24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_27)
  %_80 = lshr i32 %bytecode, 16
  %13 = and i32 %_80, 255
  store i32 %13, ptr %_27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_30)
  %_84 = lshr i32 %bytecode, 4
  %14 = and i32 %_84, 4095
  store i32 %14, ptr %_30, align 4
  store ptr %_24, ptr %_21, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %_21, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %15, align 8
  %16 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 1
  store ptr %_27, ptr %16, align 8
  %17 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %17, align 8
  %18 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 2
  store ptr %_30, ptr %18, align 8
  %19 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %19, align 8
  store ptr @alloc_08b8b59d4592f5e4cb44d4c269b75b85, ptr %_17, align 8, !alias.scope !34, !noalias !37
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_17, i64 0, i32 1
  store i64 4, ptr %20, align 8, !alias.scope !34, !noalias !37
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 2
  store ptr null, ptr %21, align 8, !alias.scope !34, !noalias !37
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1
  store ptr %_21, ptr %22, align 8, !alias.scope !34, !noalias !37
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1, i32 1
  store i64 3, ptr %23, align 8, !alias.scope !34, !noalias !37
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_17)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_24)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_21)
  br label %bb16

bb9:                                              ; preds = %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_39)
  %_88 = lshr i32 %bytecode, 24
  store i32 %_88, ptr %_39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_42)
  %_92 = lshr i32 %bytecode, 16
  %24 = and i32 %_92, 255
  store i32 %24, ptr %_42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_45)
  %_96 = lshr i32 %bytecode, 4
  %25 = and i32 %_96, 4095
  store i32 %25, ptr %_45, align 4
  store ptr %_39, ptr %_36, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %_36, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %26, align 8
  %27 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 1
  store ptr %_42, ptr %27, align 8
  %28 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %28, align 8
  %29 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 2
  store ptr %_45, ptr %29, align 8
  %30 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %30, align 8
  store ptr @alloc_6c1278270be7c1937f69e7d5ccd82dc1, ptr %_32, align 8, !alias.scope !40, !noalias !43
  %31 = getelementptr inbounds { ptr, i64 }, ptr %_32, i64 0, i32 1
  store i64 4, ptr %31, align 8, !alias.scope !40, !noalias !43
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 2
  store ptr null, ptr %32, align 8, !alias.scope !40, !noalias !43
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 1
  store ptr %_36, ptr %33, align 8, !alias.scope !40, !noalias !43
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 1, i32 1
  store i64 3, ptr %34, align 8, !alias.scope !40, !noalias !43
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_32)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_39)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_36)
  br label %bb16

bb12:                                             ; preds = %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_47)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_54)
  %_100 = lshr i32 %bytecode, 24
  store i32 %_100, ptr %_54, align 4
  store ptr %_54, ptr %_51, align 8
  %35 = getelementptr inbounds { ptr, ptr }, ptr %_51, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %35, align 8
  store ptr @alloc_beb631b24497aa79602fe07f865a7d18, ptr %_47, align 8, !alias.scope !46, !noalias !49
  %36 = getelementptr inbounds { ptr, i64 }, ptr %_47, i64 0, i32 1
  store i64 2, ptr %36, align 8, !alias.scope !46, !noalias !49
  %37 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 2
  store ptr null, ptr %37, align 8, !alias.scope !46, !noalias !49
  %38 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 1
  store ptr %_51, ptr %38, align 8, !alias.scope !46, !noalias !49
  %39 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 1, i32 1
  store i64 1, ptr %39, align 8, !alias.scope !46, !noalias !49
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_47)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_47)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_54)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  br label %bb16

bb1:                                              ; preds = %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_56)
  store ptr @alloc_1ae31664852bdd543ee7abebae08d5f9, ptr %_56, align 8
  %40 = getelementptr inbounds { ptr, i64 }, ptr %_56, i64 0, i32 1
  store i64 1, ptr %40, align 8
  %41 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_56, i64 0, i32 2
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_56, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %42, align 8
  %43 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_56, i64 0, i32 1, i32 1
  store i64 0, ptr %43, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_56)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_56)
  br label %bb16

bb16:                                             ; preds = %bb1, %bb12, %bb9, %bb6, %bb3
  ret void
}

; <mylib::bytecode::Opcode as core::fmt::Debug>::fmt
; Function Attrs: uwtable
define noundef zeroext i1 @"_ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4057e9d15066907E"(ptr noalias nocapture noundef readonly align 1 dereferenceable(1) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = load i8, ptr %self, align 1, !range !52, !noundef !8
  %_4 = zext i8 %0 to i64
  %switch.gep = getelementptr inbounds [5 x i64], ptr @"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4057e9d15066907E", i64 0, i64 %_4
  %switch.load = load i64, ptr %switch.gep, align 8
  %switch.gep1 = getelementptr inbounds [5 x ptr], ptr @"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4057e9d15066907E.1", i64 0, i64 %_4
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
; call core::fmt::Formatter::write_str
  %1 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr noalias noundef nonnull align 8 dereferenceable(64) %f, ptr noalias noundef nonnull readonly align 1 %switch.load2, i64 noundef %switch.load)
  ret i1 %1
}

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef readonly dereferenceable(48), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; core::fmt::Formatter::write_str
; Function Attrs: uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!2}
!2 = distinct !{!2, !3, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!3 = distinct !{!3, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!4 = !{!5, !6}
!5 = distinct !{!5, !3, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!6 = distinct !{!6, !3, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!11 = distinct !{!11, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!12 = !{!13, !14}
!13 = distinct !{!13, !11, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!14 = distinct !{!14, !11, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!18 = distinct !{!18, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!21 = distinct !{!21, !18, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!24 = distinct !{!24, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!25 = !{!26, !27}
!26 = distinct !{!26, !24, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!27 = distinct !{!27, !24, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!30 = distinct !{!30, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!31 = !{!32, !33}
!32 = distinct !{!32, !30, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!33 = distinct !{!33, !30, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!36 = distinct !{!36, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!37 = !{!38, !39}
!38 = distinct !{!38, !36, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!39 = distinct !{!39, !36, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!42 = distinct !{!42, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!43 = !{!44, !45}
!44 = distinct !{!44, !42, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!45 = distinct !{!45, !42, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!48 = distinct !{!48, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!49 = !{!50, !51}
!50 = distinct !{!50, !48, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!51 = distinct !{!51, !48, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!52 = !{i8 0, i8 5}
