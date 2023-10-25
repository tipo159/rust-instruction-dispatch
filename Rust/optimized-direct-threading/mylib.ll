; ModuleID = 'mylib.3a40abce488b3155-cgu.0'
source_filename = "mylib.3a40abce488b3155-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_560206a49c61adca6f3f0639a12632eb = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_9ed430b94f4ce1dd83c5bf921baa4d13 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/d5c2e9c342b358556da91d61ed4133f6f50fc0c3/library/core/src/fmt/mod.rs" }>, align 1
@alloc_ddf0753c1acd19679fd5dab8ed866cf6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9ed430b94f4ce1dd83c5bf921baa4d13, [16 x i8] c"K\00\00\00\00\00\00\005\01\00\00\0D\00\00\00" }>, align 8
@alloc_b1f466ce6672c5ee26dbfcd9befbb6be = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9ed430b94f4ce1dd83c5bf921baa4d13, [16 x i8] c"K\00\00\00\00\00\00\00+\01\00\00\0D\00\00\00" }>, align 8
@alloc_124637d68e2372c2f647d1681247e12a = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"Unknown Opcode value: " }>, align 1
@alloc_5535958222240d4ee5fc68b0477de46d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_124637d68e2372c2f647d1681247e12a, [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@alloc_d6d4d5493cfa6cf205956f7cd45982d7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"src/bytecode.rs" }>, align 1
@alloc_7befcbfb233650c798ef64df92095c19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00a\00\00\00\12\00\00\00" }>, align 8
@alloc_aa7c6dd9925bcc4efeee13e9bae5f06b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00(\01\00\006\00\00\00" }>, align 8
@alloc_4cd9ae12a5dcce8e9cfdf03777434d26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00(\01\00\00 \00\00\00" }>, align 8
@alloc_0816fbf724afe2b31654b0856081bb73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00(\01\00\00\09\00\00\00" }>, align 8
@alloc_26d7924d9e10f259d632c4b9dfd1be2f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00*\01\00\00\17\00\00\00" }>, align 8
@alloc_8f93129258d814f9b63875138cc59527 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\04" }>, align 1
@alloc_f11cc0c863712e20efed90870e593d39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00/\01\00\00\05\00\00\00" }>, align 8
@alloc_21ddcf65a97e9730c43cb99274f174b3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\002\01\00\00F\00\00\00" }>, align 8
@alloc_6262991be06ed942a15adead05e52794 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\002\01\00\00\1A\00\00\00" }>, align 8
@alloc_3967f4667166062e2079c9337167f426 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\002\01\00\00\05\00\00\00" }>, align 8
@alloc_960ffe16a60ff02bf3b17b900ce6ddb2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00>\01\00\00\05\00\00\00" }>, align 8
@alloc_f8176b8e49807bc20c6fc2cf9bd3e319 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00M\01\00\00K\00\00\00" }>, align 8
@alloc_0ec01f9f5046984caff90c2f684914ca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00M\01\00\006\00\00\00" }>, align 8
@alloc_d0956ff9e3d4d4467c0b2447eb9fcba5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00N\01\00\00 \00\00\00" }>, align 8
@alloc_3c4529b98c6354c209a1e539df8be89c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00N\01\00\00\0B\00\00\00" }>, align 8
@alloc_a74641d6a90b7a97d176e6646d096ba4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00M\01\00\00\1A\00\00\00" }>, align 8
@alloc_6f44715712d7855a4957dde957b08791 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00M\01\00\00\05\00\00\00" }>, align 8
@alloc_f4c6815e66acd742a483f4ab282e8749 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00X\01\00\00\05\00\00\00" }>, align 8
@alloc_715418097dad405b637f25b70415d508 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00f\01\00\00\1D\00\00\00" }>, align 8
@alloc_192ef2c32bb4fc407fd5536503264220 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00f\01\00\00\08\00\00\00" }>, align 8
@alloc_8c2316cf1469ea1c0b4a6e5e645fecd3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00g\01\00\00!\00\00\00" }>, align 8
@alloc_a1223e3466b6d5a8b2aa67e4d683053d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00g\01\00\00\0C\00\00\00" }>, align 8
@alloc_11cbdc33a34736237b7cf5c46c749010 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00i\01\00\00\1E\00\00\00" }>, align 8
@alloc_ca62b37a08da5e087815e703a20f93ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00p\01\00\00\05\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_dbd1e35c8e87116934dd61000aa892a5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00w\01\00\00)\00\00\00" }>, align 8
@alloc_e80b69edc270cdbb6455273b35b73bbe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00w\01\00\00\14\00\00\00" }>, align 8
@alloc_c225a27b6c94c96c194dc91335c68ae6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00y\01\00\00\05\00\00\00" }>, align 8
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

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_16 = alloca { ptr, i64 }, align 8
  %_14 = alloca { ptr, i64 }, align 8
  %_12 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = add i64 %args.1, 1
  %_7 = icmp ugt i64 %pieces.1, %_9
  %1 = zext i1 %_7 to i8
  store i8 %1, ptr %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, ptr %_3, align 1, !range !1, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  store ptr null, ptr %_14, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %pieces.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %pieces.1, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_14, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8, !align !3, !noundef !2
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_14, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 0
  store ptr %7, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  store i64 %9, ptr %12, align 8
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 0
  store ptr %args.0, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 1
  store i64 %args.1, ptr %15, align 8
  ret void

bb4:                                              ; preds = %bb3
  store ptr null, ptr %_16, align 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_12, i32 0, i32 0
  store ptr @alloc_560206a49c61adca6f3f0639a12632eb, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_12, i32 0, i32 1
  store i64 1, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !align !3, !noundef !2
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_16, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_12, i32 0, i32 2
  %23 = getelementptr inbounds { ptr, i64 }, ptr %22, i32 0, i32 0
  store ptr %19, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %22, i32 0, i32 1
  store i64 %21, ptr %24, align 8
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_12, i32 0, i32 1
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %26, align 8
  %27 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr %_12, ptr align 8 @alloc_ddf0753c1acd19679fd5dab8ed866cf6) #6
  unreachable
}

; core::fmt::Arguments::new_const
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments9new_const17h7f8aedb2989a44e4E(ptr sret(%"core::fmt::Arguments<'_>") %0, ptr align 8 %pieces.0, i64 %pieces.1) unnamed_addr #0 {
start:
  %_7 = alloca { ptr, i64 }, align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %_2 = icmp ugt i64 %pieces.1, 1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  store ptr null, ptr %_7, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %pieces.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %pieces.1, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8, !align !3, !noundef !2
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 0
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  store i64 %6, ptr %9, align 8
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  store i64 0, ptr %12, align 8
  ret void

bb1:                                              ; preds = %start
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17h7f8aedb2989a44e4E(ptr sret(%"core::fmt::Arguments<'_>") %_5, ptr align 8 @alloc_560206a49c61adca6f3f0639a12632eb, i64 1)
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr %_5, ptr align 8 @alloc_b1f466ce6672c5ee26dbfcd9befbb6be) #6
  unreachable
}

; mylib::bytecode::Opcode::from_u32
; Function Attrs: uwtable
define i8 @_ZN5mylib8bytecode6Opcode8from_u3217he89b67d5aabf6c9fE(i32 %0) unnamed_addr #1 {
start:
  %1 = alloca { ptr, ptr }, align 8
  %_7 = alloca [1 x { ptr, ptr }], align 8
  %_3 = alloca %"core::fmt::Arguments<'_>", align 8
  %2 = alloca i8, align 1
  %value = alloca i32, align 4
  store i32 %0, ptr %value, align 4
  %3 = load i32, ptr %value, align 4, !noundef !2
  switch i32 %3, label %bb1 [
    i32 0, label %bb2
    i32 1, label %bb3
    i32 2, label %bb4
    i32 3, label %bb5
    i32 4, label %bb6
  ]

bb1:                                              ; preds = %start
  store ptr %value, ptr %1, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %4, align 8
  %5 = load ptr, ptr %1, align 8, !nonnull !2, !align !4, !noundef !2
  %6 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !nonnull !2, !noundef !2
  %8 = insertvalue { ptr, ptr } poison, ptr %5, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %7, 1
  %_8.0 = extractvalue { ptr, ptr } %9, 0
  %_8.1 = extractvalue { ptr, ptr } %9, 1
  %10 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_7, i64 0, i64 0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %_8.0, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %_8.1, ptr %12, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_3, ptr align 8 @alloc_5535958222240d4ee5fc68b0477de46d, i64 1, ptr align 8 %_7, i64 1)
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr %_3, ptr align 8 @alloc_7befcbfb233650c798ef64df92095c19) #6
  unreachable

bb2:                                              ; preds = %start
  store i8 0, ptr %2, align 1
  br label %bb9

bb3:                                              ; preds = %start
  store i8 1, ptr %2, align 1
  br label %bb9

bb4:                                              ; preds = %start
  store i8 2, ptr %2, align 1
  br label %bb9

bb5:                                              ; preds = %start
  store i8 3, ptr %2, align 1
  br label %bb9

bb6:                                              ; preds = %start
  store i8 4, ptr %2, align 1
  br label %bb9

bb9:                                              ; preds = %bb6, %bb5, %bb4, %bb3, %bb2
  %13 = load i8, ptr %2, align 1, !range !5, !noundef !2
  ret i8 %13
}

; mylib::bytecode::vm_loop
; Function Attrs: uwtable
define void @_ZN5mylib8bytecode7vm_loop17hc87db3bf03c455d0E(ptr align 4 %program.0, i64 %program.1) unnamed_addr #1 {
start:
  %0 = alloca { ptr, ptr }, align 8
  %_125 = alloca [1 x { ptr, ptr }], align 8
  %_121 = alloca %"core::fmt::Arguments<'_>", align 8
  %_34 = alloca i8, align 1
  %_19 = alloca i8, align 1
  %i = alloca i64, align 8
  %dispatch_sequence = alloca [256 x i64], align 8
  %addr4 = alloca i64, align 8
  %addr3 = alloca i64, align 8
  %addr2 = alloca i64, align 8
  %addr1 = alloca i64, align 8
  %addr = alloca i64, align 8
  %jump_table = alloca [5 x i64], align 8
  %pc = alloca i64, align 8
  %memory = alloca [256 x i32], align 4
  %1 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 1024, i1 false)
  store i64 0, ptr %pc, align 8
  %2 = call i64 asm sideeffect alignstack "adrp   ${0}, _load_@PAGE\0Aadd    ${0}, ${0}, _load_@PAGEOFF", "=&r,~{cc},~{memory}"(), !srcloc !6
  store i64 %2, ptr %addr, align 8
  %_5 = load i64, ptr %addr, align 8, !noundef !2
  %3 = call i64 asm sideeffect alignstack "adrp   ${0}, _add_@PAGE\0Aadd    ${0}, ${0}, _add_@PAGEOFF", "=&r,~{cc},~{memory}"(), !srcloc !6
  store i64 %3, ptr %addr1, align 8
  %_7 = load i64, ptr %addr1, align 8, !noundef !2
  %4 = call i64 asm sideeffect alignstack "adrp   ${0}, _jmpne_@PAGE\0Aadd    ${0}, ${0}, _jmpne_@PAGEOFF", "=&r,~{cc},~{memory}"(), !srcloc !6
  store i64 %4, ptr %addr2, align 8
  %_9 = load i64, ptr %addr2, align 8, !noundef !2
  %5 = call i64 asm sideeffect alignstack "adrp   ${0}, _print_@PAGE\0Aadd    ${0}, ${0}, _print_@PAGEOFF", "=&r,~{cc},~{memory}"(), !srcloc !6
  store i64 %5, ptr %addr3, align 8
  %_11 = load i64, ptr %addr3, align 8, !noundef !2
  %6 = call i64 asm sideeffect alignstack "adrp   ${0}, _ret_@PAGE\0Aadd    ${0}, ${0}, _ret_@PAGEOFF", "=&r,~{cc},~{memory}"(), !srcloc !6
  store i64 %6, ptr %addr4, align 8
  %_13 = load i64, ptr %addr4, align 8, !noundef !2
  %7 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 0
  store i64 %_5, ptr %7, align 8
  %8 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 1
  store i64 %_7, ptr %8, align 8
  %9 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 2
  store i64 %_9, ptr %9, align 8
  %10 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 3
  store i64 %_11, ptr %10, align 8
  %11 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 4
  store i64 %_13, ptr %11, align 8
  %12 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 2048, i1 false)
  store i64 0, ptr %i, align 8
  br label %bb6

bb6:                                              ; preds = %bb11, %start
  %_21 = load i64, ptr %i, align 8, !noundef !2
  %_23 = icmp ult i64 %_21, %program.1
  %13 = call i1 @llvm.expect.i1(i1 %_23, i1 true)
  br i1 %13, label %bb7, label %panic

bb7:                                              ; preds = %bb6
  %14 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_21
  %_20 = load i32, ptr %14, align 4, !noundef !2
  %_2.i34 = and i32 %_20, 15
; call mylib::bytecode::Opcode::from_u32
  %15 = call i8 @_ZN5mylib8bytecode6Opcode8from_u3217he89b67d5aabf6c9fE(i32 %_2.i34), !range !5
  store i8 %15, ptr %_19, align 1
  %16 = load i8, ptr %_19, align 1, !range !5, !noundef !2
  %_24 = zext i8 %16 to i64
  %_25 = trunc i64 %_24 to i8
  %_26 = icmp ule i8 %_25, 4
  call void @llvm.assume(i1 %_26)
  %_28 = icmp ult i64 %_24, 5
  %17 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %17, label %bb9, label %panic5

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_21, i64 %program.1, ptr align 8 @alloc_aa7c6dd9925bcc4efeee13e9bae5f06b) #6
  unreachable

bb9:                                              ; preds = %bb7
  %18 = getelementptr inbounds [5 x i64], ptr %jump_table, i64 0, i64 %_24
  %_17 = load i64, ptr %18, align 8, !noundef !2
  %_29 = load i64, ptr %i, align 8, !noundef !2
  %_31 = icmp ult i64 %_29, 256
  %19 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %19, label %bb10, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_24, i64 5, ptr align 8 @alloc_4cd9ae12a5dcce8e9cfdf03777434d26) #6
  unreachable

bb10:                                             ; preds = %bb9
  %20 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_29
  store i64 %_17, ptr %20, align 8
  %21 = load i64, ptr %i, align 8, !noundef !2
  %22 = add i64 %21, 1
  store i64 %22, ptr %i, align 8
  %_37 = load i64, ptr %i, align 8, !noundef !2
  %_36 = sub i64 %_37, 1
  %_39 = icmp ult i64 %_36, %program.1
  %23 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %23, label %bb11, label %panic7

panic6:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_29, i64 256, ptr align 8 @alloc_0816fbf724afe2b31654b0856081bb73) #6
  unreachable

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_36
  %_35 = load i32, ptr %24, align 4, !noundef !2
  %_2.i = and i32 %_35, 15
; call mylib::bytecode::Opcode::from_u32
  %25 = call i8 @_ZN5mylib8bytecode6Opcode8from_u3217he89b67d5aabf6c9fE(i32 %_2.i), !range !5
  store i8 %25, ptr %_34, align 1
; call <mylib::bytecode::Opcode as core::cmp::PartialEq>::eq
  %_32 = call zeroext i1 @"_ZN64_$LT$mylib..bytecode..Opcode$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb50fb2be19643732E"(ptr align 1 %_34, ptr align 1 @alloc_8f93129258d814f9b63875138cc59527)
  br i1 %_32, label %bb14, label %bb6

panic7:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_36, i64 %program.1, ptr align 8 @alloc_26d7924d9e10f259d632c4b9dfd1be2f) #6
  unreachable

bb14:                                             ; preds = %bb11
  %_41 = load i64, ptr %pc, align 8, !noundef !2
  %_43 = icmp ult i64 %_41, 256
  %26 = call i1 @llvm.expect.i1(i1 %_43, i1 true)
  br i1 %26, label %bb15, label %panic8

bb15:                                             ; preds = %bb14
  %27 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_41
  %addr9 = load i64, ptr %27, align 8, !noundef !2
  call void asm sideeffect alignstack "br ${0}", "r,~{cc},~{memory}"(i64 %addr9), !srcloc !7
  call void asm sideeffect alignstack "_load_:", "~{cc},~{memory}"(), !srcloc !8
  %_46 = load i64, ptr %pc, align 8, !noundef !2
  %_48 = icmp ult i64 %_46, %program.1
  %28 = call i1 @llvm.expect.i1(i1 %_48, i1 true)
  br i1 %28, label %bb18, label %panic10

panic8:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_41, i64 256, ptr align 8 @alloc_f11cc0c863712e20efed90870e593d39) #6
  unreachable

bb18:                                             ; preds = %bb15
  %29 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_46
  %_45 = load i32, ptr %29, align 4, !noundef !2
  %_2.i42 = lshr i32 %_45, 4
  %30 = and i32 %_2.i42, 1048575
  %_52 = load i64, ptr %pc, align 8, !noundef !2
  %_54 = icmp ult i64 %_52, %program.1
  %31 = call i1 @llvm.expect.i1(i1 %_54, i1 true)
  br i1 %31, label %bb20, label %panic11

panic10:                                          ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_46, i64 %program.1, ptr align 8 @alloc_21ddcf65a97e9730c43cb99274f174b3) #6
  unreachable

bb20:                                             ; preds = %bb18
  %32 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_52
  %_51 = load i32, ptr %32, align 4, !noundef !2
  %_2.i38 = lshr i32 %_51, 24
  %_49 = zext i32 %_2.i38 to i64
  %_56 = icmp ult i64 %_49, 256
  %33 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %33, label %bb22, label %panic12

panic11:                                          ; preds = %bb18
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_52, i64 %program.1, ptr align 8 @alloc_6262991be06ed942a15adead05e52794) #6
  unreachable

bb22:                                             ; preds = %bb20
  %34 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_49
  store i32 %30, ptr %34, align 4
  %35 = load i64, ptr %pc, align 8, !noundef !2
  %36 = add i64 %35, 1
  store i64 %36, ptr %pc, align 8
  %_58 = load i64, ptr %pc, align 8, !noundef !2
  %_60 = icmp ult i64 %_58, 256
  %37 = call i1 @llvm.expect.i1(i1 %_60, i1 true)
  br i1 %37, label %bb23, label %panic13

panic12:                                          ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_49, i64 256, ptr align 8 @alloc_3967f4667166062e2079c9337167f426) #6
  unreachable

bb23:                                             ; preds = %bb22
  %38 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_58
  %addr14 = load i64, ptr %38, align 8, !noundef !2
  call void asm sideeffect alignstack "br ${0}", "r,~{cc},~{memory}"(i64 %addr14), !srcloc !7
  call void asm sideeffect alignstack "_add_:", "~{cc},~{memory}"(), !srcloc !8
  %_65 = load i64, ptr %pc, align 8, !noundef !2
  %_67 = icmp ult i64 %_65, %program.1
  %39 = call i1 @llvm.expect.i1(i1 %_67, i1 true)
  br i1 %39, label %bb26, label %panic15

panic13:                                          ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_58, i64 256, ptr align 8 @alloc_960ffe16a60ff02bf3b17b900ce6ddb2) #6
  unreachable

bb26:                                             ; preds = %bb23
  %40 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_65
  %_64 = load i32, ptr %40, align 4, !noundef !2
  %_2.i40 = lshr i32 %_64, 16
  %41 = and i32 %_2.i40, 255
  %_62 = zext i32 %41 to i64
  %_69 = icmp ult i64 %_62, 256
  %42 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %42, label %bb28, label %panic16

panic15:                                          ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_65, i64 %program.1, ptr align 8 @alloc_f8176b8e49807bc20c6fc2cf9bd3e319) #6
  unreachable

bb28:                                             ; preds = %bb26
  %43 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_62
  %_61 = load i32, ptr %43, align 4, !noundef !2
  %_74 = load i64, ptr %pc, align 8, !noundef !2
  %_76 = icmp ult i64 %_74, %program.1
  %44 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %44, label %bb29, label %panic17

panic16:                                          ; preds = %bb26
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_62, i64 256, ptr align 8 @alloc_0ec01f9f5046984caff90c2f684914ca) #6
  unreachable

bb29:                                             ; preds = %bb28
  %45 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_74
  %_73 = load i32, ptr %45, align 4, !noundef !2
  %_2.i41 = lshr i32 %_73, 4
  %46 = and i32 %_2.i41, 4095
  %_71 = zext i32 %46 to i64
  %_78 = icmp ult i64 %_71, 256
  %47 = call i1 @llvm.expect.i1(i1 %_78, i1 true)
  br i1 %47, label %bb31, label %panic18

panic17:                                          ; preds = %bb28
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_74, i64 %program.1, ptr align 8 @alloc_d0956ff9e3d4d4467c0b2447eb9fcba5) #6
  unreachable

bb31:                                             ; preds = %bb29
  %48 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_71
  %_70 = load i32, ptr %48, align 4, !noundef !2
  %_82 = load i64, ptr %pc, align 8, !noundef !2
  %_84 = icmp ult i64 %_82, %program.1
  %49 = call i1 @llvm.expect.i1(i1 %_84, i1 true)
  br i1 %49, label %bb32, label %panic19

panic18:                                          ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_71, i64 256, ptr align 8 @alloc_3c4529b98c6354c209a1e539df8be89c) #6
  unreachable

bb32:                                             ; preds = %bb31
  %50 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_82
  %_81 = load i32, ptr %50, align 4, !noundef !2
  %_2.i37 = lshr i32 %_81, 24
  %_79 = zext i32 %_2.i37 to i64
  %_86 = icmp ult i64 %_79, 256
  %51 = call i1 @llvm.expect.i1(i1 %_86, i1 true)
  br i1 %51, label %bb34, label %panic20

panic19:                                          ; preds = %bb31
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_82, i64 %program.1, ptr align 8 @alloc_a74641d6a90b7a97d176e6646d096ba4) #6
  unreachable

bb34:                                             ; preds = %bb32
  %52 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_79
  %53 = add i32 %_61, %_70
  store i32 %53, ptr %52, align 4
  %54 = load i64, ptr %pc, align 8, !noundef !2
  %55 = add i64 %54, 1
  store i64 %55, ptr %pc, align 8
  %_88 = load i64, ptr %pc, align 8, !noundef !2
  %_90 = icmp ult i64 %_88, 256
  %56 = call i1 @llvm.expect.i1(i1 %_90, i1 true)
  br i1 %56, label %bb35, label %panic21

panic20:                                          ; preds = %bb32
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_79, i64 256, ptr align 8 @alloc_6f44715712d7855a4957dde957b08791) #6
  unreachable

bb35:                                             ; preds = %bb34
  %57 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_88
  %addr22 = load i64, ptr %57, align 8, !noundef !2
  call void asm sideeffect alignstack "br ${0}", "r,~{cc},~{memory}"(i64 %addr22), !srcloc !7
  call void asm sideeffect alignstack "_jmpne_:", "~{cc},~{memory}"(), !srcloc !8
  %_96 = load i64, ptr %pc, align 8, !noundef !2
  %_98 = icmp ult i64 %_96, %program.1
  %58 = call i1 @llvm.expect.i1(i1 %_98, i1 true)
  br i1 %58, label %bb38, label %panic23

panic21:                                          ; preds = %bb34
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_88, i64 256, ptr align 8 @alloc_f4c6815e66acd742a483f4ab282e8749) #6
  unreachable

bb38:                                             ; preds = %bb35
  %59 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_96
  %_95 = load i32, ptr %59, align 4, !noundef !2
  %_2.i36 = lshr i32 %_95, 24
  %_93 = zext i32 %_2.i36 to i64
  %_100 = icmp ult i64 %_93, 256
  %60 = call i1 @llvm.expect.i1(i1 %_100, i1 true)
  br i1 %60, label %bb40, label %panic24

panic23:                                          ; preds = %bb35
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_96, i64 %program.1, ptr align 8 @alloc_715418097dad405b637f25b70415d508) #6
  unreachable

bb40:                                             ; preds = %bb38
  %61 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_93
  %_92 = load i32, ptr %61, align 4, !noundef !2
  %_105 = load i64, ptr %pc, align 8, !noundef !2
  %_107 = icmp ult i64 %_105, %program.1
  %62 = call i1 @llvm.expect.i1(i1 %_107, i1 true)
  br i1 %62, label %bb41, label %panic25

panic24:                                          ; preds = %bb38
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_93, i64 256, ptr align 8 @alloc_192ef2c32bb4fc407fd5536503264220) #6
  unreachable

bb41:                                             ; preds = %bb40
  %63 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_105
  %_104 = load i32, ptr %63, align 4, !noundef !2
  %_2.i39 = lshr i32 %_104, 16
  %64 = and i32 %_2.i39, 255
  %_102 = zext i32 %64 to i64
  %_109 = icmp ult i64 %_102, 256
  %65 = call i1 @llvm.expect.i1(i1 %_109, i1 true)
  br i1 %65, label %bb43, label %panic26

panic25:                                          ; preds = %bb40
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_105, i64 %program.1, ptr align 8 @alloc_8c2316cf1469ea1c0b4a6e5e645fecd3) #6
  unreachable

bb43:                                             ; preds = %bb41
  %66 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_102
  %_101 = load i32, ptr %66, align 4, !noundef !2
  %_91 = icmp ne i32 %_92, %_101
  br i1 %_91, label %bb44, label %bb47

panic26:                                          ; preds = %bb41
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_102, i64 256, ptr align 8 @alloc_a1223e3466b6d5a8b2aa67e4d683053d) #6
  unreachable

bb47:                                             ; preds = %bb45, %bb43
  %67 = load i64, ptr %pc, align 8, !noundef !2
  %68 = add i64 %67, 1
  store i64 %68, ptr %pc, align 8
  %_117 = load i64, ptr %pc, align 8, !noundef !2
  %_119 = icmp ult i64 %_117, 256
  %69 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %69, label %bb48, label %panic28

bb44:                                             ; preds = %bb43
  %_113 = load i64, ptr %pc, align 8, !noundef !2
  %_115 = icmp ult i64 %_113, %program.1
  %70 = call i1 @llvm.expect.i1(i1 %_115, i1 true)
  br i1 %70, label %bb45, label %panic27

bb45:                                             ; preds = %bb44
  %71 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_113
  %_112 = load i32, ptr %71, align 4, !noundef !2
  %_2.i43 = lshr i32 %_112, 4
  %72 = and i32 %_2.i43, 4095
  %_110 = zext i32 %72 to i64
  %73 = sub i64 %_110, 1
  store i64 %73, ptr %pc, align 8
  br label %bb47

panic27:                                          ; preds = %bb44
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_113, i64 %program.1, ptr align 8 @alloc_11cbdc33a34736237b7cf5c46c749010) #6
  unreachable

bb48:                                             ; preds = %bb47
  %74 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_117
  %addr29 = load i64, ptr %74, align 8, !noundef !2
  call void asm sideeffect alignstack "br ${0}", "r,~{cc},~{memory}"(i64 %addr29), !srcloc !7
  call void asm sideeffect alignstack "_print_:", "~{cc},~{memory}"(), !srcloc !8
  %_131 = load i64, ptr %pc, align 8, !noundef !2
  %_133 = icmp ult i64 %_131, %program.1
  %75 = call i1 @llvm.expect.i1(i1 %_133, i1 true)
  br i1 %75, label %bb51, label %panic30

panic28:                                          ; preds = %bb47
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_117, i64 256, ptr align 8 @alloc_ca62b37a08da5e087815e703a20f93ff) #6
  unreachable

bb51:                                             ; preds = %bb48
  %76 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %_131
  %_130 = load i32, ptr %76, align 4, !noundef !2
  %_2.i35 = lshr i32 %_130, 24
  %_128 = zext i32 %_2.i35 to i64
  %_135 = icmp ult i64 %_128, 256
  %77 = call i1 @llvm.expect.i1(i1 %_135, i1 true)
  br i1 %77, label %bb53, label %panic31

panic30:                                          ; preds = %bb48
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_131, i64 %program.1, ptr align 8 @alloc_dbd1e35c8e87116934dd61000aa892a5) #6
  unreachable

bb53:                                             ; preds = %bb51
  %_127 = getelementptr inbounds [256 x i32], ptr %memory, i64 0, i64 %_128
  store ptr %_127, ptr %0, align 8
  %78 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %78, align 8
  %79 = load ptr, ptr %0, align 8, !nonnull !2, !align !4, !noundef !2
  %80 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8, !nonnull !2, !noundef !2
  %82 = insertvalue { ptr, ptr } poison, ptr %79, 0
  %83 = insertvalue { ptr, ptr } %82, ptr %81, 1
  %_126.0 = extractvalue { ptr, ptr } %83, 0
  %_126.1 = extractvalue { ptr, ptr } %83, 1
  %84 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_125, i64 0, i64 0
  %85 = getelementptr inbounds { ptr, ptr }, ptr %84, i32 0, i32 0
  store ptr %_126.0, ptr %85, align 8
  %86 = getelementptr inbounds { ptr, ptr }, ptr %84, i32 0, i32 1
  store ptr %_126.1, ptr %86, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_121, ptr align 8 @alloc_4ed11f17954caf7854f80f02ae34907e, i64 2, ptr align 8 %_125, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_121)
  %87 = load i64, ptr %pc, align 8, !noundef !2
  %88 = add i64 %87, 1
  store i64 %88, ptr %pc, align 8
  %_137 = load i64, ptr %pc, align 8, !noundef !2
  %_139 = icmp ult i64 %_137, 256
  %89 = call i1 @llvm.expect.i1(i1 %_139, i1 true)
  br i1 %89, label %bb57, label %panic32

panic31:                                          ; preds = %bb51
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_128, i64 256, ptr align 8 @alloc_e80b69edc270cdbb6455273b35b73bbe) #6
  unreachable

bb57:                                             ; preds = %bb53
  %90 = getelementptr inbounds [256 x i64], ptr %dispatch_sequence, i64 0, i64 %_137
  %addr33 = load i64, ptr %90, align 8, !noundef !2
  call void asm sideeffect alignstack "br ${0}", "r,~{cc},~{memory}"(i64 %addr33), !srcloc !7
  call void asm sideeffect alignstack "_ret_:", "~{cc},~{memory}"(), !srcloc !8
  ret void

panic32:                                          ; preds = %bb53
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 %_137, i64 256, ptr align 8 @alloc_c225a27b6c94c96c194dc91335c68ae6) #6
  unreachable
}

; mylib::bytecode::print_bytecode
; Function Attrs: uwtable
define void @_ZN5mylib8bytecode14print_bytecode17hecafb45d6863fc74E(i32 %bytecode) unnamed_addr #1 {
start:
  %0 = alloca { ptr, ptr }, align 8
  %1 = alloca { ptr, ptr }, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = alloca { ptr, ptr }, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = alloca { ptr, ptr }, align 8
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
  %_2 = alloca i8, align 1
  %_2.i = and i32 %bytecode, 15
; call mylib::bytecode::Opcode::from_u32
  %9 = call i8 @_ZN5mylib8bytecode6Opcode8from_u3217he89b67d5aabf6c9fE(i32 %_2.i), !range !5
  store i8 %9, ptr %_2, align 1
  %10 = load i8, ptr %_2, align 1, !range !5, !noundef !2
  %_3 = zext i8 %10 to i64
  switch i64 %_3, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb10
    i64 2, label %bb18
    i64 3, label %bb26
    i64 4, label %bb2
  ]

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  %_2.i4 = lshr i32 %bytecode, 24
  store i32 %_2.i4, ptr %_12, align 4
  store ptr %_12, ptr %0, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %11, align 8
  %12 = load ptr, ptr %0, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !nonnull !2, !noundef !2
  %15 = insertvalue { ptr, ptr } poison, ptr %12, 0
  %16 = insertvalue { ptr, ptr } %15, ptr %14, 1
  %_10.0 = extractvalue { ptr, ptr } %16, 0
  %_10.1 = extractvalue { ptr, ptr } %16, 1
  %_2.i8 = lshr i32 %bytecode, 4
  %17 = and i32 %_2.i8, 1048575
  store i32 %17, ptr %_15, align 4
  store ptr %_15, ptr %1, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %18, align 8
  %19 = load ptr, ptr %1, align 8, !nonnull !2, !align !4, !noundef !2
  %20 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !nonnull !2, !noundef !2
  %22 = insertvalue { ptr, ptr } poison, ptr %19, 0
  %23 = insertvalue { ptr, ptr } %22, ptr %21, 1
  %_13.0 = extractvalue { ptr, ptr } %23, 0
  %_13.1 = extractvalue { ptr, ptr } %23, 1
  %24 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_9, i64 0, i64 0
  %25 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 0
  store ptr %_10.0, ptr %25, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %24, i32 0, i32 1
  store ptr %_10.1, ptr %26, align 8
  %27 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_9, i64 0, i64 1
  %28 = getelementptr inbounds { ptr, ptr }, ptr %27, i32 0, i32 0
  store ptr %_13.0, ptr %28, align 8
  %29 = getelementptr inbounds { ptr, ptr }, ptr %27, i32 0, i32 1
  store ptr %_13.1, ptr %29, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_5, ptr align 8 @alloc_08277363910ed55a4d1f982b11bc3fab, i64 3, ptr align 8 %_9, i64 2)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_5)
  br label %bb31

bb10:                                             ; preds = %start
  %_2.i3 = lshr i32 %bytecode, 24
  store i32 %_2.i3, ptr %_24, align 4
  store ptr %_24, ptr %2, align 8
  %30 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %30, align 8
  %31 = load ptr, ptr %2, align 8, !nonnull !2, !align !4, !noundef !2
  %32 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !nonnull !2, !noundef !2
  %34 = insertvalue { ptr, ptr } poison, ptr %31, 0
  %35 = insertvalue { ptr, ptr } %34, ptr %33, 1
  %_22.0 = extractvalue { ptr, ptr } %35, 0
  %_22.1 = extractvalue { ptr, ptr } %35, 1
  %_2.i6 = lshr i32 %bytecode, 16
  %36 = and i32 %_2.i6, 255
  store i32 %36, ptr %_27, align 4
  store ptr %_27, ptr %3, align 8
  %37 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %37, align 8
  %38 = load ptr, ptr %3, align 8, !nonnull !2, !align !4, !noundef !2
  %39 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !nonnull !2, !noundef !2
  %41 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %42 = insertvalue { ptr, ptr } %41, ptr %40, 1
  %_25.0 = extractvalue { ptr, ptr } %42, 0
  %_25.1 = extractvalue { ptr, ptr } %42, 1
  %_2.i7 = lshr i32 %bytecode, 4
  %43 = and i32 %_2.i7, 4095
  store i32 %43, ptr %_30, align 4
  store ptr %_30, ptr %4, align 8
  %44 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %44, align 8
  %45 = load ptr, ptr %4, align 8, !nonnull !2, !align !4, !noundef !2
  %46 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8, !nonnull !2, !noundef !2
  %48 = insertvalue { ptr, ptr } poison, ptr %45, 0
  %49 = insertvalue { ptr, ptr } %48, ptr %47, 1
  %_28.0 = extractvalue { ptr, ptr } %49, 0
  %_28.1 = extractvalue { ptr, ptr } %49, 1
  %50 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 0
  %51 = getelementptr inbounds { ptr, ptr }, ptr %50, i32 0, i32 0
  store ptr %_22.0, ptr %51, align 8
  %52 = getelementptr inbounds { ptr, ptr }, ptr %50, i32 0, i32 1
  store ptr %_22.1, ptr %52, align 8
  %53 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 1
  %54 = getelementptr inbounds { ptr, ptr }, ptr %53, i32 0, i32 0
  store ptr %_25.0, ptr %54, align 8
  %55 = getelementptr inbounds { ptr, ptr }, ptr %53, i32 0, i32 1
  store ptr %_25.1, ptr %55, align 8
  %56 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_21, i64 0, i64 2
  %57 = getelementptr inbounds { ptr, ptr }, ptr %56, i32 0, i32 0
  store ptr %_28.0, ptr %57, align 8
  %58 = getelementptr inbounds { ptr, ptr }, ptr %56, i32 0, i32 1
  store ptr %_28.1, ptr %58, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_17, ptr align 8 @alloc_08b8b59d4592f5e4cb44d4c269b75b85, i64 4, ptr align 8 %_21, i64 3)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_17)
  br label %bb31

bb18:                                             ; preds = %start
  %_2.i2 = lshr i32 %bytecode, 24
  store i32 %_2.i2, ptr %_39, align 4
  store ptr %_39, ptr %5, align 8
  %59 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %59, align 8
  %60 = load ptr, ptr %5, align 8, !nonnull !2, !align !4, !noundef !2
  %61 = getelementptr inbounds { ptr, ptr }, ptr %5, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !nonnull !2, !noundef !2
  %63 = insertvalue { ptr, ptr } poison, ptr %60, 0
  %64 = insertvalue { ptr, ptr } %63, ptr %62, 1
  %_37.0 = extractvalue { ptr, ptr } %64, 0
  %_37.1 = extractvalue { ptr, ptr } %64, 1
  %_2.i5 = lshr i32 %bytecode, 16
  %65 = and i32 %_2.i5, 255
  store i32 %65, ptr %_42, align 4
  store ptr %_42, ptr %6, align 8
  %66 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %66, align 8
  %67 = load ptr, ptr %6, align 8, !nonnull !2, !align !4, !noundef !2
  %68 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !nonnull !2, !noundef !2
  %70 = insertvalue { ptr, ptr } poison, ptr %67, 0
  %71 = insertvalue { ptr, ptr } %70, ptr %69, 1
  %_40.0 = extractvalue { ptr, ptr } %71, 0
  %_40.1 = extractvalue { ptr, ptr } %71, 1
  %_2.i9 = lshr i32 %bytecode, 4
  %72 = and i32 %_2.i9, 4095
  store i32 %72, ptr %_45, align 4
  store ptr %_45, ptr %7, align 8
  %73 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %73, align 8
  %74 = load ptr, ptr %7, align 8, !nonnull !2, !align !4, !noundef !2
  %75 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !nonnull !2, !noundef !2
  %77 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %78 = insertvalue { ptr, ptr } %77, ptr %76, 1
  %_43.0 = extractvalue { ptr, ptr } %78, 0
  %_43.1 = extractvalue { ptr, ptr } %78, 1
  %79 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 0
  %80 = getelementptr inbounds { ptr, ptr }, ptr %79, i32 0, i32 0
  store ptr %_37.0, ptr %80, align 8
  %81 = getelementptr inbounds { ptr, ptr }, ptr %79, i32 0, i32 1
  store ptr %_37.1, ptr %81, align 8
  %82 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 1
  %83 = getelementptr inbounds { ptr, ptr }, ptr %82, i32 0, i32 0
  store ptr %_40.0, ptr %83, align 8
  %84 = getelementptr inbounds { ptr, ptr }, ptr %82, i32 0, i32 1
  store ptr %_40.1, ptr %84, align 8
  %85 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_36, i64 0, i64 2
  %86 = getelementptr inbounds { ptr, ptr }, ptr %85, i32 0, i32 0
  store ptr %_43.0, ptr %86, align 8
  %87 = getelementptr inbounds { ptr, ptr }, ptr %85, i32 0, i32 1
  store ptr %_43.1, ptr %87, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_32, ptr align 8 @alloc_6c1278270be7c1937f69e7d5ccd82dc1, i64 4, ptr align 8 %_36, i64 3)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_32)
  br label %bb31

bb26:                                             ; preds = %start
  %_2.i1 = lshr i32 %bytecode, 24
  store i32 %_2.i1, ptr %_54, align 4
  store ptr %_54, ptr %8, align 8
  %88 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %88, align 8
  %89 = load ptr, ptr %8, align 8, !nonnull !2, !align !4, !noundef !2
  %90 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8, !nonnull !2, !noundef !2
  %92 = insertvalue { ptr, ptr } poison, ptr %89, 0
  %93 = insertvalue { ptr, ptr } %92, ptr %91, 1
  %_52.0 = extractvalue { ptr, ptr } %93, 0
  %_52.1 = extractvalue { ptr, ptr } %93, 1
  %94 = getelementptr inbounds [1 x { ptr, ptr }], ptr %_51, i64 0, i64 0
  %95 = getelementptr inbounds { ptr, ptr }, ptr %94, i32 0, i32 0
  store ptr %_52.0, ptr %95, align 8
  %96 = getelementptr inbounds { ptr, ptr }, ptr %94, i32 0, i32 1
  store ptr %_52.1, ptr %96, align 8
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117ha19b720b6eecd556E(ptr sret(%"core::fmt::Arguments<'_>") %_47, ptr align 8 @alloc_beb631b24497aa79602fe07f865a7d18, i64 2, ptr align 8 %_51, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_47)
  br label %bb31

bb2:                                              ; preds = %start
; call core::fmt::Arguments::new_const
  call void @_ZN4core3fmt9Arguments9new_const17h7f8aedb2989a44e4E(ptr sret(%"core::fmt::Arguments<'_>") %_56, ptr align 8 @alloc_1ae31664852bdd543ee7abebae08d5f9, i64 1)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr %_56)
  br label %bb31

bb31:                                             ; preds = %bb2, %bb26, %bb18, %bb10, %bb4
  ret void
}

; <mylib::bytecode::Opcode as core::fmt::Debug>::fmt
; Function Attrs: uwtable
define zeroext i1 @"_ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd257c2d06cc1137E"(ptr align 1 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %_3 = alloca { ptr, i64 }, align 8
  %0 = load i8, ptr %self, align 1, !range !5, !noundef !2
  %_4 = zext i8 %0 to i64
  switch i64 %_4, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb4
    i64 2, label %bb5
    i64 3, label %bb6
    i64 4, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_1300d27cd771a45707c3d648e0c9f0bc, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 4, ptr %2, align 8
  br label %bb7

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_341782a764bce741258269b0ec0d4112, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 3, ptr %4, align 8
  br label %bb7

bb5:                                              ; preds = %start
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_26cea3fd2f0cfa8fed80dedf4bd6982c, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 5, ptr %6, align 8
  br label %bb7

bb6:                                              ; preds = %start
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_4edb254b3e7fdd3d2045bf39e1ff32e5, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 5, ptr %8, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_09b811a1da80bf08aea854b228048cc6, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 3, ptr %10, align 8
  br label %bb7

bb7:                                              ; preds = %bb1, %bb6, %bb5, %bb4, %bb3
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !nonnull !2, !align !4, !noundef !2
  %13 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  %14 = load i64, ptr %13, align 8, !noundef !2
; call core::fmt::Formatter::write_str
  %15 = call zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr align 8 %f, ptr align 1 %12, i64 %14)
  ret i1 %15
}

; <mylib::bytecode::Opcode as core::cmp::PartialEq>::eq
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN64_$LT$mylib..bytecode..Opcode$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb50fb2be19643732E"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #0 {
start:
  %0 = load i8, ptr %self, align 1, !range !5, !noundef !2
  %__self_tag = zext i8 %0 to i64
  %1 = load i8, ptr %other, align 1, !range !5, !noundef !2
  %__arg1_tag = zext i8 %1 to i64
  %2 = icmp eq i64 %__self_tag, %__arg1_tag
  ret i1 %2
}

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE"(ptr align 4, ptr align 8) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #4

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #5

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr) unnamed_addr #1

; core::fmt::Formatter::write_str
; Function Attrs: uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr align 8, ptr align 1, i64) unnamed_addr #1

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i8 0, i8 2}
!2 = !{}
!3 = !{i64 8}
!4 = !{i64 1}
!5 = !{i8 0, i8 5}
!6 = !{i32 397, i32 457}
!7 = !{i32 851}
!8 = !{i32 159}
