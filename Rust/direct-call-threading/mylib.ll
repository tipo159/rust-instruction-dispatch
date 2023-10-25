; ModuleID = 'mylib.d314d6521e188eb8-cgu.0'
source_filename = "mylib.d314d6521e188eb8-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i64], i64, [1 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { ptr, i64 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::vec::Vec<internal_instruction::InternalInstruction>" = type { { ptr, i64 }, i64 }
%"internal_instruction::InternalInstruction" = type { ptr, %"internal_instruction::ExtraParam", i8, i8, [2 x i8] }
%"internal_instruction::ExtraParam" = type { [1 x i32] }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_124637d68e2372c2f647d1681247e12a = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"Unknown Opcode value: " }>, align 1
@alloc_5535958222240d4ee5fc68b0477de46d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_124637d68e2372c2f647d1681247e12a, [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@alloc_d6d4d5493cfa6cf205956f7cd45982d7 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"src/bytecode.rs" }>, align 1
@alloc_9f44f6333d2b8c350f2777f50677cac3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_d6d4d5493cfa6cf205956f7cd45982d7, [16 x i8] c"\0F\00\00\00\00\00\00\00 \00\00\00\12\00\00\00" }>, align 8
@alloc_1528b3082d08550f5746c6359de0090e = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"LOAD: memory[" }>, align 1
@alloc_428053e6434889c8e3f16313e3d2a9ba = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"] = " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
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
@alloc_6edd9057b9200fde88eca827c481958c = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"src/convert.rs" }>, align 1
@alloc_337eea13a1a741f874c03b237c31fa48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6edd9057b9200fde88eca827c481958c, [16 x i8] c"\0E\00\00\00\00\00\00\00\1F\00\00\00\1A\00\00\00" }>, align 8
@alloc_193ead133515aeda405d00689b81fe17 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"src/internal_instruction.rs" }>, align 1
@alloc_c0b5bc6201a48c66ecd14ddff4c622e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_193ead133515aeda405d00689b81fe17, [16 x i8] c"\1B\00\00\00\00\00\00\00@\00\00\00\09\00\00\00" }>, align 8
@alloc_ee637f01f55f697069f348e3686a5d91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_193ead133515aeda405d00689b81fe17, [16 x i8] c"\1B\00\00\00\00\00\00\00m\00\00\00\1A\00\00\00" }>, align 8
@alloc_298b12a266257c13d69250660627e98c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_193ead133515aeda405d00689b81fe17, [16 x i8] c"\1B\00\00\00\00\00\00\00\96\00\00\00\18\00\00\00" }>, align 8
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_7aa34fde16b7741f5e70643e5b5d71de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_193ead133515aeda405d00689b81fe17, [16 x i8] c"\1B\00\00\00\00\00\00\00\B9\00\00\00\19\00\00\00" }>, align 8
@alloc_b4237f5b3cdb7b33f9115e42901ebae2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_193ead133515aeda405d00689b81fe17, [16 x i8] c"\1B\00\00\00\00\00\00\00\E5\00\00\00\0A\00\00\00" }>, align 8
@alloc_bc878f8b04cdf49e498cb4d3eb56aa55 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"ret\0A" }>, align 1
@alloc_d7dd5a0234be40163dcb28209ea04e3f = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_bc878f8b04cdf49e498cb4d3eb56aa55, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@alloc_92c92d5928b022a7d97a130259f9c9f5 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"print: print memory[" }>, align 1
@alloc_1b5377d11feadf4cdca4e886ee20fd3b = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_92c92d5928b022a7d97a130259f9c9f5, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @alloc_2367c1aa00ce1fc7a807fbde9bd9192c, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc_11fe0c4fb18caa21726fd9e036f48ee1 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"jmpne: if memory[" }>, align 1
@alloc_fc617b337f533051b088996c836126e2 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_11fe0c4fb18caa21726fd9e036f48ee1, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @alloc_0ec296139988350060c83fe7a94bf00c, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @alloc_e6c517e4453ae95685412b6ccf76fcf4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_90e423afa8f2ef14974861fb1ac1830b = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"add: memory[" }>, align 1
@alloc_21f0f950912157203f692f29d1b2e6ad = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_90e423afa8f2ef14974861fb1ac1830b, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @alloc_19182f7716cfa7b356cedb4cbeefa355, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_b7f6d234a01b9951c1058b6787aee5dd, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_2367c1aa00ce1fc7a807fbde9bd9192c, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc_7d978a1b1e6bc99557ef75d1198c3407 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"load: memory[" }>, align 1
@alloc_78e462410a1b2614a042eae5bb187808 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_7d978a1b1e6bc99557ef75d1198c3407, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @alloc_428053e6434889c8e3f16313e3d2a9ba, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_1300d27cd771a45707c3d648e0c9f0bc = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"LOAD" }>, align 1
@alloc_341782a764bce741258269b0ec0d4112 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"ADD" }>, align 1
@alloc_26cea3fd2f0cfa8fed80dedf4bd6982c = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"JMPNE" }>, align 1
@alloc_4edb254b3e7fdd3d2045bf39e1ff32e5 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"PRINT" }>, align 1
@alloc_09b811a1da80bf08aea854b228048cc6 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"RET" }>, align 1
@"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE" = private unnamed_addr constant [5 x i64] [i64 4, i64 3, i64 5, i64 5, i64 3], align 8
@"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE.12" = private unnamed_addr constant [5 x ptr] [ptr @alloc_1300d27cd771a45707c3d648e0c9f0bc, ptr @alloc_341782a764bce741258269b0ec0d4112, ptr @alloc_26cea3fd2f0cfa8fed80dedf4bd6982c, ptr @alloc_4edb254b3e7fdd3d2045bf39e1ff32e5, ptr @alloc_09b811a1da80bf08aea854b228048cc6], align 8

; <&T as core::fmt::Display>::fmt
; Function Attrs: uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d72e10ad6cc3f5dE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !1, !align !2, !noundef !1
; call core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
  %0 = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %_3, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; alloc::raw_vec::finish_grow
; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h8714bd8f5a32921eE(ptr noalias nocapture noundef writeonly dereferenceable(24) %0, i64 noundef %new_layout.0, i64 %new_layout.1, ptr noalias nocapture noundef readonly dereferenceable(24) %current_memory) unnamed_addr #1 {
start:
  %1 = icmp eq i64 %new_layout.0, 0
  br i1 %1, label %bb5, label %bb3

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %current_memory, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !range !3, !noundef !1
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb9, label %bb10

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %0, i64 0, i32 1, i32 1
  br label %bb16

bb10:                                             ; preds = %bb3
  %ptr = load ptr, ptr %current_memory, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { ptr, { i64, i64 } }, ptr %current_memory, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !noundef !1
  %_24 = icmp eq i64 %3, %new_layout.0
  tail call void @llvm.assume(i1 %_24)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %bb1.i.i, label %bb4.i.i

bb1.i.i:                                          ; preds = %bb10
  %9 = icmp eq i64 %new_layout.1, 0
  br i1 %9, label %bb2.i.i.i, label %bb4.i.i.i

bb2.i.i.i:                                        ; preds = %bb1.i.i
  %ptr.i.i.i = inttoptr i64 %new_layout.0 to ptr
  br label %bb13

bb4.i.i.i:                                        ; preds = %bb1.i.i
  %10 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %11 = tail call noundef ptr @__rust_alloc(i64 noundef %new_layout.1, i64 noundef %new_layout.0) #15
  br label %bb13

bb4.i.i:                                          ; preds = %bb10
  %_21.i.i = icmp ule i64 %7, %new_layout.1
  tail call void @llvm.assume(i1 %_21.i.i)
  %raw_ptr.i.i = tail call noundef ptr @__rust_realloc(ptr noundef nonnull %ptr, i64 noundef %7, i64 noundef %new_layout.0, i64 noundef %new_layout.1) #15
  br label %bb13

bb9:                                              ; preds = %bb3
  %12 = icmp eq i64 %new_layout.1, 0
  br i1 %12, label %bb2.i.i, label %bb4.i.i24

bb2.i.i:                                          ; preds = %bb9
  %ptr.i.i = inttoptr i64 %new_layout.0 to ptr
  br label %bb13

bb4.i.i24:                                        ; preds = %bb9
  %13 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %14 = tail call noundef ptr @__rust_alloc(i64 noundef %new_layout.1, i64 noundef %new_layout.0) #15
  br label %bb13

bb13:                                             ; preds = %bb4.i.i24, %bb2.i.i, %bb4.i.i, %bb4.i.i.i, %bb2.i.i.i
  %.sroa.0.0.i.i.pn = phi ptr [ %raw_ptr.i.i, %bb4.i.i ], [ %ptr.i.i.i, %bb2.i.i.i ], [ %11, %bb4.i.i.i ], [ %ptr.i.i, %bb2.i.i ], [ %14, %bb4.i.i24 ]
  %15 = icmp eq ptr %.sroa.0.0.i.i.pn, null
  br i1 %15, label %bb1.i27, label %bb3.i26

bb3.i26:                                          ; preds = %bb13
  %16 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", ptr %0, i64 0, i32 1
  store ptr %.sroa.0.0.i.i.pn, ptr %16, align 8, !alias.scope !4
  %17 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", ptr %0, i64 0, i32 1, i32 1
  br label %bb16

bb1.i27:                                          ; preds = %bb13
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %0, i64 0, i32 1
  store i64 %new_layout.0, ptr %18, align 8, !alias.scope !4
  %19 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %0, i64 0, i32 1, i32 1
  br label %bb16

bb16:                                             ; preds = %bb1.i27, %bb3.i26, %bb5
  %.sink = phi ptr [ %19, %bb1.i27 ], [ %17, %bb3.i26 ], [ %5, %bb5 ]
  %storemerge = phi i64 [ 1, %bb1.i27 ], [ 0, %bb3.i26 ], [ 1, %bb5 ]
  store i64 %new_layout.1, ptr %.sink, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; alloc::raw_vec::RawVec<T,A>::reserve_for_push
; Function Attrs: noinline uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, i64 noundef %len) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_24.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self4.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 1)
  %_38.1.i = extractvalue { i64, i1 } %0, 1
  br i1 %_38.1.i, label %bb5.i1, label %bb5.i

bb5.i:                                            ; preds = %start
  %_38.0.i = extractvalue { i64, i1 } %0, 0
  %1 = getelementptr { ptr, i64 }, ptr %self, i64 0, i32 1
  %_16.i = load i64, ptr %1, align 8, !alias.scope !7
  %v1.i = shl i64 %_16.i, 1
  %.0.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %v1.i, i64 %_38.0.i)
  %.0.sroa.speculated.i23.i = tail call i64 @llvm.umax.i64(i64 %.0.sroa.speculated.i.i, i64 4)
  %_5.i.i = icmp ugt i64 %.0.sroa.speculated.i23.i, 576460752303423487
  %array_size.i.i = shl i64 %.0.sroa.speculated.i23.i, 4
  %.sroa.0.0.i.i = select i1 %_5.i.i, i64 0, i64 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self4.i), !noalias !7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_24.i), !noalias !7
  %_3.i.i = icmp eq i64 %_16.i, 0
  br i1 %_3.i.i, label %bb4.i.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i
  %self.val.i = load ptr, ptr %self, align 8, !alias.scope !7, !nonnull !1
  %size.i.i = shl nuw i64 %_16.i, 4
  store ptr %self.val.i, ptr %_24.i, align 8, !alias.scope !10, !noalias !7
  %_10.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_24.i, i64 8
  store i64 8, ptr %_10.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10, !noalias !7
  %_10.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_24.i, i64 16
  store i64 %size.i.i, ptr %_10.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10, !noalias !7
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE.exit.i"

bb4.i.i:                                          ; preds = %bb5.i
  %2 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_24.i, i64 0, i32 1
  store i64 0, ptr %2, align 8, !alias.scope !10, !noalias !7
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE.exit.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE.exit.i": ; preds = %bb4.i.i, %bb5.i.i
; call alloc::raw_vec::finish_grow
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h8714bd8f5a32921eE(ptr noalias nocapture noundef nonnull dereferenceable(24) %self4.i, i64 noundef %.sroa.0.0.i.i, i64 %array_size.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(24) %_24.i), !noalias !7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_24.i), !noalias !7
  %_55.i = load i64, ptr %self4.i, align 8, !range !13, !noalias !7, !noundef !1
  %trunc.not.i = icmp eq i64 %_55.i, 0
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %self4.i, i64 0, i32 1
  %e.08.i = load i64, ptr %3, align 8, !noalias !7
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", ptr %self4.i, i64 0, i32 1, i32 1
  %e.19.i = load i64, ptr %4, align 8, !noalias !7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self4.i), !noalias !7
  br i1 %trunc.not.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit.thread", label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit.thread": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE.exit.i"
  %5 = inttoptr i64 %e.08.i to ptr
  store ptr %5, ptr %self, align 8, !alias.scope !14
  store i64 %.0.sroa.speculated.i23.i, ptr %1, align 8, !alias.scope !14
  br label %_ZN5alloc7raw_vec14handle_reserve17h8c372c183fa8c6b2E.exit

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE.exit.i"
  switch i64 %e.08.i, label %bb6.i [
    i64 -9223372036854775807, label %_ZN5alloc7raw_vec14handle_reserve17h8c372c183fa8c6b2E.exit
    i64 0, label %bb5.i1
  ]

bb5.i1:                                           ; preds = %start, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit"
; call alloc::raw_vec::capacity_overflow
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h465f58d66bf1461cE() #16
  unreachable

bb6.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit"
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17he63473ab5d0e3fe6E(i64 noundef %e.08.i, i64 noundef %e.19.i) #16
  unreachable

_ZN5alloc7raw_vec14handle_reserve17h8c372c183fa8c6b2E.exit: ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit.thread", %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E.exit"
  ret void
}

; mylib::bytecode::Opcode::from_u32
; Function Attrs: uwtable
define noundef i8 @_ZN5mylib8bytecode6Opcode8from_u3217h84c1eb4d740f1f14E(i32 noundef %0) unnamed_addr #0 {
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
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3, align 8, !alias.scope !17, !noalias !20
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3, i64 0, i32 1
  store i64 1, ptr %3, align 8, !alias.scope !17, !noalias !20
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 2
  store ptr null, ptr %4, align 8, !alias.scope !17, !noalias !20
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 1
  store ptr %_7, ptr %5, align 8, !alias.scope !17, !noalias !20
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3, i64 0, i32 1, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !17, !noalias !20
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #16
  unreachable

switch.lookup:                                    ; preds = %start
  %switch.idx.cast = trunc i32 %0 to i8
  ret i8 %switch.idx.cast
}

; mylib::bytecode::print_bytecode
; Function Attrs: uwtable
define void @_ZN5mylib8bytecode14print_bytecode17h2f04ed32ebb8ba3eE(i32 noundef %bytecode) unnamed_addr #0 {
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
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3.i, align 8, !alias.scope !23, !noalias !26
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 1, ptr %1, align 8, !alias.scope !23, !noalias !26
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr null, ptr %2, align 8, !alias.scope !23, !noalias !26
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr %_7.i, ptr %3, align 8, !alias.scope !23, !noalias !26
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !23, !noalias !26
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #16
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
  store ptr @alloc_08277363910ed55a4d1f982b11bc3fab, ptr %_5, align 8, !alias.scope !29, !noalias !32
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_5, i64 0, i32 1
  store i64 3, ptr %9, align 8, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2
  store ptr null, ptr %10, align 8, !alias.scope !29, !noalias !32
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1
  store ptr %_9, ptr %11, align 8, !alias.scope !29, !noalias !32
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1, i32 1
  store i64 2, ptr %12, align 8, !alias.scope !29, !noalias !32
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
  store ptr @alloc_08b8b59d4592f5e4cb44d4c269b75b85, ptr %_17, align 8, !alias.scope !35, !noalias !38
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_17, i64 0, i32 1
  store i64 4, ptr %20, align 8, !alias.scope !35, !noalias !38
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 2
  store ptr null, ptr %21, align 8, !alias.scope !35, !noalias !38
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1
  store ptr %_21, ptr %22, align 8, !alias.scope !35, !noalias !38
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17, i64 0, i32 1, i32 1
  store i64 3, ptr %23, align 8, !alias.scope !35, !noalias !38
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
  store ptr @alloc_6c1278270be7c1937f69e7d5ccd82dc1, ptr %_32, align 8, !alias.scope !41, !noalias !44
  %31 = getelementptr inbounds { ptr, i64 }, ptr %_32, i64 0, i32 1
  store i64 4, ptr %31, align 8, !alias.scope !41, !noalias !44
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 2
  store ptr null, ptr %32, align 8, !alias.scope !41, !noalias !44
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 1
  store ptr %_36, ptr %33, align 8, !alias.scope !41, !noalias !44
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_32, i64 0, i32 1, i32 1
  store i64 3, ptr %34, align 8, !alias.scope !41, !noalias !44
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
  store ptr @alloc_beb631b24497aa79602fe07f865a7d18, ptr %_47, align 8, !alias.scope !47, !noalias !50
  %36 = getelementptr inbounds { ptr, i64 }, ptr %_47, i64 0, i32 1
  store i64 2, ptr %36, align 8, !alias.scope !47, !noalias !50
  %37 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 2
  store ptr null, ptr %37, align 8, !alias.scope !47, !noalias !50
  %38 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 1
  store ptr %_51, ptr %38, align 8, !alias.scope !47, !noalias !50
  %39 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_47, i64 0, i32 1, i32 1
  store i64 1, ptr %39, align 8, !alias.scope !47, !noalias !50
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

; mylib::convert::convert
; Function Attrs: uwtable
define void @_ZN5mylib7convert7convert17hfab8bb1467217276E(ptr noalias nocapture noundef nonnull readonly align 4 %program.0, i64 noundef %program.1, ptr noalias nocapture noundef align 8 dereferenceable(24) %internal_program) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i = alloca i32, align 4
  %_881.not = icmp eq i64 %program.1, 0
  br i1 %_881.not, label %panic, label %bb2.lr.ph, !prof !53

bb2.lr.ph:                                        ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<internal_instruction::InternalInstruction>", ptr %internal_program, i64 0, i32 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %internal_program, i64 0, i32 1
  br label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb23
  %i.082 = phi i64 [ 0, %bb2.lr.ph ], [ %19, %bb23 ]
  %2 = getelementptr inbounds [0 x i32], ptr %program.0, i64 0, i64 %i.082
  %bytecode = load i32, ptr %2, align 4, !noundef !1
  %_83 = and i32 %bytecode, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i)
  store i32 %_83, ptr %value.i, align 4
  switch i32 %_83, label %bb1.i [
    i32 0, label %bb5
    i32 1, label %bb9
    i32 2, label %bb14
    i32 3, label %bb19
    i32 4, label %bb3
  ]

bb1.i:                                            ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %value.i, ptr %_7.i, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %3, align 8
  store ptr @alloc_5535958222240d4ee5fc68b0477de46d, ptr %_3.i, align 8, !alias.scope !54, !noalias !57
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !54, !noalias !57
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr null, ptr %5, align 8, !alias.scope !54, !noalias !57
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr %_7.i, ptr %6, align 8, !alias.scope !54, !noalias !57
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 1, ptr %7, align 8, !alias.scope !54, !noalias !57
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9f44f6333d2b8c350f2777f50677cac3) #16
  unreachable

panic:                                            ; preds = %bb23, %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %program.1, i64 noundef %program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_337eea13a1a741f874c03b237c31fa48) #16
  unreachable

bb5:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_85 = lshr i32 %bytecode, 4
  %_20 = and i32 %_85, 1048575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %_4.i = load i64, ptr %0, align 8, !alias.scope !60, !noalias !63, !noundef !1
  %8 = load i64, ptr %1, align 8, !alias.scope !60, !noalias !63, !noundef !1
  %_3.i29 = icmp eq i64 %_4.i, %8
  br i1 %_3.i29, label %bb1.i31, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit"

bb1.i31:                                          ; preds = %bb5
; call alloc::raw_vec::RawVec<T,A>::reserve_for_push
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %internal_program, i64 noundef %_4.i), !noalias !63
  %count.pre.i = load i64, ptr %0, align 8, !alias.scope !60, !noalias !63
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit": ; preds = %bb5, %bb1.i31
  %count.i = phi i64 [ %count.pre.i, %bb1.i31 ], [ %_4.i, %bb5 ]
  %self1.i = load ptr, ptr %internal_program, align 8, !alias.scope !60, !noalias !63, !nonnull !1, !noundef !1
  %end.i = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %self1.i, i64 %count.i
  store ptr @_ZN5mylib20internal_instruction4load17h51982ade91e5ea13E, ptr %end.i, align 8, !noalias !60
  %_11.sroa.4.0.end.i.sroa_idx = getelementptr inbounds i8, ptr %end.i, i64 8
  store i32 %_20, ptr %_11.sroa.4.0.end.i.sroa_idx, align 8, !noalias !60
  br label %bb23

bb9:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_88 = lshr i32 %bytecode, 16
  %_34 = trunc i32 %_88 to i8
  %9 = trunc i32 %bytecode to i16
  %10 = lshr i16 %9, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %_4.i32 = load i64, ptr %0, align 8, !alias.scope !65, !noalias !68, !noundef !1
  %11 = load i64, ptr %1, align 8, !alias.scope !65, !noalias !68, !noundef !1
  %_3.i33 = icmp eq i64 %_4.i32, %11
  br i1 %_3.i33, label %bb1.i39, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40"

bb1.i39:                                          ; preds = %bb9
; call alloc::raw_vec::RawVec<T,A>::reserve_for_push
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %internal_program, i64 noundef %_4.i32), !noalias !68
  %count.pre.i38 = load i64, ptr %0, align 8, !alias.scope !65, !noalias !68
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40": ; preds = %bb9, %bb1.i39
  %count.i34 = phi i64 [ %count.pre.i38, %bb1.i39 ], [ %_4.i32, %bb9 ]
  %self1.i35 = load ptr, ptr %internal_program, align 8, !alias.scope !65, !noalias !68, !nonnull !1, !noundef !1
  %end.i36 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %self1.i35, i64 %count.i34
  store ptr @_ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E, ptr %end.i36, align 8, !noalias !65
  %_26.sroa.4.0.end.i36.sroa_idx = getelementptr inbounds i8, ptr %end.i36, i64 8
  store i16 %10, ptr %_26.sroa.4.0.end.i36.sroa_idx, align 8, !noalias !65
  br label %bb23

bb14:                                             ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  %_91 = lshr i32 %bytecode, 16
  %_56 = trunc i32 %_91 to i8
  %12 = trunc i32 %bytecode to i16
  %13 = lshr i16 %12, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %_4.i41 = load i64, ptr %0, align 8, !alias.scope !70, !noalias !73, !noundef !1
  %14 = load i64, ptr %1, align 8, !alias.scope !70, !noalias !73, !noundef !1
  %_3.i42 = icmp eq i64 %_4.i41, %14
  br i1 %_3.i42, label %bb1.i48, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49"

bb1.i48:                                          ; preds = %bb14
; call alloc::raw_vec::RawVec<T,A>::reserve_for_push
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %internal_program, i64 noundef %_4.i41), !noalias !73
  %count.pre.i47 = load i64, ptr %0, align 8, !alias.scope !70, !noalias !73
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49": ; preds = %bb14, %bb1.i48
  %count.i43 = phi i64 [ %count.pre.i47, %bb1.i48 ], [ %_4.i41, %bb14 ]
  %self1.i44 = load ptr, ptr %internal_program, align 8, !alias.scope !70, !noalias !73, !nonnull !1, !noundef !1
  %end.i45 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %self1.i44, i64 %count.i43
  store ptr @_ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E, ptr %end.i45, align 8, !noalias !70
  %_48.sroa.4.0.end.i45.sroa_idx = getelementptr inbounds i8, ptr %end.i45, i64 8
  store i16 %13, ptr %_48.sroa.4.0.end.i45.sroa_idx, align 8, !noalias !70
  br label %bb23

bb19:                                             ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %_4.i50 = load i64, ptr %0, align 8, !alias.scope !75, !noalias !78, !noundef !1
  %15 = load i64, ptr %1, align 8, !alias.scope !75, !noalias !78, !noundef !1
  %_3.i51 = icmp eq i64 %_4.i50, %15
  br i1 %_3.i51, label %bb1.i57, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58"

bb1.i57:                                          ; preds = %bb19
; call alloc::raw_vec::RawVec<T,A>::reserve_for_push
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %internal_program, i64 noundef %_4.i50), !noalias !78
  %count.pre.i56 = load i64, ptr %0, align 8, !alias.scope !75, !noalias !78
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58": ; preds = %bb19, %bb1.i57
  %count.i52 = phi i64 [ %count.pre.i56, %bb1.i57 ], [ %_4.i50, %bb19 ]
  %self1.i53 = load ptr, ptr %internal_program, align 8, !alias.scope !75, !noalias !78, !nonnull !1, !noundef !1
  %end.i54 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %self1.i53, i64 %count.i52
  store ptr @_ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E, ptr %end.i54, align 8, !noalias !75
  %_70.sroa.4.0.end.i54.sroa_idx = getelementptr inbounds i8, ptr %end.i54, i64 8
  store i16 0, ptr %_70.sroa.4.0.end.i54.sroa_idx, align 8, !noalias !75
  br label %bb23

bb3:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %_4.i59 = load i64, ptr %0, align 8, !alias.scope !80, !noalias !83, !noundef !1
  %16 = load i64, ptr %1, align 8, !alias.scope !80, !noalias !83, !noundef !1
  %_3.i60 = icmp eq i64 %_4.i59, %16
  br i1 %_3.i60, label %bb1.i66, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit67"

bb1.i66:                                          ; preds = %bb3
; call alloc::raw_vec::RawVec<T,A>::reserve_for_push
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %internal_program, i64 noundef %_4.i59), !noalias !83
  %count.pre.i65 = load i64, ptr %0, align 8, !alias.scope !80, !noalias !83
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit67"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit67": ; preds = %bb3, %bb1.i66
  %count.i61 = phi i64 [ %count.pre.i65, %bb1.i66 ], [ %_4.i59, %bb3 ]
  %self1.i62 = load ptr, ptr %internal_program, align 8, !alias.scope !80, !noalias !83, !nonnull !1, !noundef !1
  %end.i63 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %self1.i62, i64 %count.i61
  store ptr @_ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E, ptr %end.i63, align 8, !noalias !80
  %_80.sroa.4.0.end.i63.sroa_idx = getelementptr inbounds i8, ptr %end.i63, i64 8
  store i16 0, ptr %_80.sroa.4.0.end.i63.sroa_idx, align 8, !noalias !80
  %_80.sroa.6.0.end.i63.sroa_idx = getelementptr inbounds i8, ptr %end.i63, i64 12
  store i8 0, ptr %_80.sroa.6.0.end.i63.sroa_idx, align 4, !noalias !80
  %_80.sroa.7.0.end.i63.sroa_idx = getelementptr inbounds i8, ptr %end.i63, i64 13
  store i8 0, ptr %_80.sroa.7.0.end.i63.sroa_idx, align 1, !noalias !80
  %17 = add i64 %count.i61, 1
  store i64 %17, ptr %0, align 8, !alias.scope !80, !noalias !83
  ret void

bb23:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit"
  %end.i54.sink83 = phi ptr [ %end.i54, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58" ], [ %end.i45, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49" ], [ %end.i36, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40" ], [ %end.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit" ]
  %.sink = phi i8 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58" ], [ %_56, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49" ], [ %_34, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit" ]
  %count.i52.sink = phi i64 [ %count.i52, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit58" ], [ %count.i43, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit49" ], [ %count.i34, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit40" ], [ %count.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E.exit" ]
  %_72.sink.in = lshr i32 %bytecode, 24
  %_72.sink = trunc i32 %_72.sink.in to i8
  %_70.sroa.6.0.end.i54.sroa_idx = getelementptr inbounds i8, ptr %end.i54.sink83, i64 12
  store i8 %_72.sink, ptr %_70.sroa.6.0.end.i54.sroa_idx, align 4, !noalias !1
  %_70.sroa.7.0.end.i54.sroa_idx = getelementptr inbounds i8, ptr %end.i54.sink83, i64 13
  store i8 %.sink, ptr %_70.sroa.7.0.end.i54.sroa_idx, align 1, !noalias !1
  %18 = add i64 %count.i52.sink, 1
  store i64 %18, ptr %0, align 8, !noalias !1
  %19 = add nuw i64 %i.082, 1
  %exitcond.not = icmp eq i64 %19, %program.1
  br i1 %exitcond.not, label %panic, label %bb2, !prof !53
}

; mylib::internal_instruction::load
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction4load17h51982ade91e5ea13E(ptr noalias nocapture noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, ptr noalias nocapture noundef align 8 dereferenceable(8) %pc, ptr noalias nocapture noundef nonnull writeonly align 4 %memory.0, i64 %memory.1) unnamed_addr #0 {
start:
  %_5 = load i64, ptr %pc, align 8, !noundef !1
  %_7 = icmp ult i64 %_5, %internal_program.1
  br i1 %_7, label %bb2, label %panic, !prof !85

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_5, i64 noundef %internal_program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c0b5bc6201a48c66ecd14ddff4c622e2) #16
  unreachable

bb2:                                              ; preds = %start
  %0 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_5, i32 1
  %_4 = load i32, ptr %0, align 8, !noundef !1
  %1 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_5, i32 2
  %_10 = load i8, ptr %1, align 4, !noundef !1
  %index = zext i8 %_10 to i64
  %_14 = getelementptr inbounds i32, ptr %memory.0, i64 %index
  store i32 %_4, ptr %_14, align 4
  %2 = add nuw i64 %_5, 1
  store i64 %2, ptr %pc, align 8
  ret void
}

; mylib::internal_instruction::add
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E(ptr noalias nocapture noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, ptr noalias nocapture noundef align 8 dereferenceable(8) %pc, ptr noalias nocapture noundef nonnull align 4 %memory.0, i64 %memory.1) unnamed_addr #0 {
start:
  %_9 = load i64, ptr %pc, align 8, !noundef !1
  %_11 = icmp ult i64 %_9, %internal_program.1
  br i1 %_11, label %bb1, label %panic, !prof !85

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_9, i32 3
  %_8 = load i8, ptr %0, align 1, !noundef !1
  %index = zext i8 %_8 to i64
  %_26 = getelementptr inbounds i32, ptr %memory.0, i64 %index
  %_4 = load i32, ptr %_26, align 4, !noundef !1
  %1 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_9, i32 1
  %_16 = load i16, ptr %1, align 8, !noundef !1
  %index2 = zext i16 %_16 to i64
  %_31 = getelementptr inbounds i32, ptr %memory.0, i64 %index2
  %_12 = load i32, ptr %_31, align 4, !noundef !1
  %2 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_9, i32 2
  %_22 = load i8, ptr %2, align 4, !noundef !1
  %index4 = zext i8 %_22 to i64
  %_36 = getelementptr inbounds i32, ptr %memory.0, i64 %index4
  %3 = add i32 %_12, %_4
  store i32 %3, ptr %_36, align 4
  %4 = add nuw i64 %_9, 1
  store i64 %4, ptr %pc, align 8
  ret void

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_9, i64 noundef %internal_program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_ee637f01f55f697069f348e3686a5d91) #16
  unreachable
}

; mylib::internal_instruction::jmpne
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E(ptr noalias nocapture noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, ptr noalias nocapture noundef align 8 dereferenceable(8) %pc, ptr noalias nocapture noundef nonnull readonly align 4 %memory.0, i64 %memory.1) unnamed_addr #0 {
start:
  %_10 = load i64, ptr %pc, align 8, !noundef !1
  %_12 = icmp ult i64 %_10, %internal_program.1
  br i1 %_12, label %bb2, label %panic, !prof !85

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_10, i64 noundef %internal_program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_298b12a266257c13d69250660627e98c) #16
  unreachable

bb2:                                              ; preds = %start
  %0 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_10, i32 2
  %_9 = load i8, ptr %0, align 4, !noundef !1
  %index = zext i8 %_9 to i64
  %_25 = getelementptr inbounds i32, ptr %memory.0, i64 %index
  %1 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_10, i32 3
  %_17 = load i8, ptr %1, align 1, !noundef !1
  %index2 = zext i8 %_17 to i64
  %_30 = getelementptr inbounds i32, ptr %memory.0, i64 %index2
  %_37 = load i32, ptr %_25, align 4, !noundef !1
  %_38 = load i32, ptr %_30, align 4, !noundef !1
  %_4.not = icmp eq i32 %_37, %_38
  br i1 %_4.not, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %2 = add nuw i64 %_10, 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %storemerge = phi i64 [ %2, %bb5 ], [ %4, %bb4 ]
  store i64 %storemerge, ptr %pc, align 8
  ret void

bb4:                                              ; preds = %bb2
  %3 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_10, i32 1
  %_21 = load i16, ptr %3, align 8, !noundef !1
  %4 = zext i16 %_21 to i64
  br label %bb6
}

; mylib::internal_instruction::print
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E(ptr noalias nocapture noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, ptr noalias nocapture noundef align 8 dereferenceable(8) %pc, ptr noalias noundef nonnull align 4 %memory.0, i64 %memory.1) unnamed_addr #0 {
start:
  %_12 = alloca ptr, align 8
  %_9 = alloca [1 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_12)
  %_16 = load i64, ptr %pc, align 8, !noundef !1
  %_18 = icmp ult i64 %_16, %internal_program.1
  br i1 %_18, label %bb1, label %panic, !prof !85

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_16, i32 2
  %_15 = load i8, ptr %0, align 4, !noundef !1
  %index = zext i8 %_15 to i64
  %_20 = getelementptr inbounds i32, ptr %memory.0, i64 %index
  store ptr %_20, ptr %_12, align 8
  store ptr %_12, ptr %_9, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_9, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d72e10ad6cc3f5dE", ptr %1, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %_5, align 8, !alias.scope !86, !noalias !89
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_5, i64 0, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !86, !noalias !89
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2
  store ptr null, ptr %3, align 8, !alias.scope !86, !noalias !89
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1
  store ptr %_9, ptr %4, align 8, !alias.scope !86, !noalias !89
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !86, !noalias !89
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_12)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9)
  %6 = add nuw i64 %_16, 1
  store i64 %6, ptr %pc, align 8
  ret void

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_16, i64 noundef %internal_program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_7aa34fde16b7741f5e70643e5b5d71de) #16
  unreachable
}

; mylib::internal_instruction::ret
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E(ptr noalias nocapture nonnull readonly align 8 %_internal_program.0, i64 %_internal_program.1, ptr noalias nocapture noundef align 8 dereferenceable(8) %pc, ptr noalias nocapture nonnull readnone align 4 %_memory.0, i64 %_memory.1) unnamed_addr #3 {
start:
  %0 = load i64, ptr %pc, align 8, !noundef !1
  %1 = add i64 %0, 1
  store i64 %1, ptr %pc, align 8
  ret void
}

; mylib::internal_instruction::vm_loop
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction7vm_loop17h0935e6b73314a88bE(ptr noalias noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, i64 noundef %size) unnamed_addr #0 {
start:
  %pc = alloca i64, align 8
  %memory = alloca [256 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %memory)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %memory, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pc)
  store i64 0, ptr %pc, align 8
  %_53.not = icmp eq i64 %size, 0
  br i1 %_53.not, label %bb5, label %bb2

bb5:                                              ; preds = %bb3, %start
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pc)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %memory)
  ret void

bb2:                                              ; preds = %start, %bb3
  %_64 = phi i64 [ %_6, %bb3 ], [ 0, %start ]
  %_11 = icmp ult i64 %_64, %internal_program.1
  br i1 %_11, label %bb3, label %panic, !prof !85

bb3:                                              ; preds = %bb2
  %0 = getelementptr inbounds [0 x %"internal_instruction::InternalInstruction"], ptr %internal_program.0, i64 0, i64 %_64
  %_8 = load ptr, ptr %0, align 8, !nonnull !1, !noundef !1
  call void %_8(ptr noalias noundef nonnull readonly align 8 %internal_program.0, i64 noundef %internal_program.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %pc, ptr noalias noundef nonnull align 4 %memory, i64 noundef 256)
  %_6 = load i64, ptr %pc, align 8, !noundef !1
  %_5 = icmp ult i64 %_6, %size
  br i1 %_5, label %bb2, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef %_64, i64 noundef %internal_program.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_b4237f5b3cdb7b33f9115e42901ebae2) #16
  unreachable
}

; mylib::internal_instruction::print_internal_instruction
; Function Attrs: uwtable
define void @_ZN5mylib20internal_instruction26print_internal_instruction17hde52f67874ce7368E(ptr noundef %instruction) unnamed_addr #0 {
start:
  %_70 = alloca %"core::fmt::Arguments<'_>", align 8
  %_61 = alloca [1 x { ptr, ptr }], align 8
  %_57 = alloca %"core::fmt::Arguments<'_>", align 8
  %_44 = alloca [3 x { ptr, ptr }], align 8
  %_40 = alloca %"core::fmt::Arguments<'_>", align 8
  %_27 = alloca [3 x { ptr, ptr }], align 8
  %_23 = alloca %"core::fmt::Arguments<'_>", align 8
  %_12 = alloca [2 x { ptr, ptr }], align 8
  %_8 = alloca %"core::fmt::Arguments<'_>", align 8
  %_4 = load ptr, ptr %instruction, align 8, !nonnull !1, !noundef !1
  %_2 = icmp eq ptr %_4, @_ZN5mylib20internal_instruction4load17h51982ade91e5ea13E
  br i1 %_2, label %bb1, label %bb4

bb4:                                              ; preds = %start
  %_17 = icmp eq ptr %_4, @_ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E
  br i1 %_17, label %bb5, label %bb8

bb1:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_12)
  %x7 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 2
  %x8 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 1
  store ptr %x7, ptr %_12, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_12, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %0, align 8
  %1 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_12, i64 0, i64 1
  store ptr %x8, ptr %1, align 8
  %2 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_12, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE", ptr %2, align 8
  store ptr @alloc_78e462410a1b2614a042eae5bb187808, ptr %_8, align 8, !alias.scope !92, !noalias !95
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i64 0, i32 1
  store i64 3, ptr %3, align 8, !alias.scope !92, !noalias !95
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 2
  store ptr null, ptr %4, align 8, !alias.scope !92, !noalias !95
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 1
  store ptr %_12, ptr %5, align 8, !alias.scope !92, !noalias !95
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8, i64 0, i32 1, i32 1
  store i64 2, ptr %6, align 8, !alias.scope !92, !noalias !95
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_8)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_8)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_12)
  br label %bb23

bb8:                                              ; preds = %bb4
  %_34 = icmp eq ptr %_4, @_ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E
  br i1 %_34, label %bb9, label %bb12

bb5:                                              ; preds = %bb4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_23)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_27)
  %x4 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 2
  %x5 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 3
  %x6 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 1
  store ptr %x4, ptr %_27, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_27, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %7, align 8
  %8 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_27, i64 0, i64 1
  store ptr %x5, ptr %8, align 8
  %9 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_27, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %9, align 8
  %10 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_27, i64 0, i64 2
  store ptr %x6, ptr %10, align 8
  %11 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_27, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE", ptr %11, align 8
  store ptr @alloc_21f0f950912157203f692f29d1b2e6ad, ptr %_23, align 8, !alias.scope !98, !noalias !101
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_23, i64 0, i32 1
  store i64 4, ptr %12, align 8, !alias.scope !98, !noalias !101
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23, i64 0, i32 2
  store ptr null, ptr %13, align 8, !alias.scope !98, !noalias !101
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23, i64 0, i32 1
  store ptr %_27, ptr %14, align 8, !alias.scope !98, !noalias !101
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23, i64 0, i32 1, i32 1
  store i64 3, ptr %15, align 8, !alias.scope !98, !noalias !101
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_23)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_23)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_27)
  br label %bb23

bb12:                                             ; preds = %bb8
  %_51 = icmp eq ptr %_4, @_ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E
  br i1 %_51, label %bb13, label %bb16

bb9:                                              ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_40)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_44)
  %x1 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 2
  %x2 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 3
  %x3 = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 1
  store ptr %x1, ptr %_44, align 8
  %16 = getelementptr inbounds { ptr, ptr }, ptr %_44, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %16, align 8
  %17 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_44, i64 0, i64 1
  store ptr %x2, ptr %17, align 8
  %18 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_44, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %18, align 8
  %19 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_44, i64 0, i64 2
  store ptr %x3, ptr %19, align 8
  %20 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_44, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE", ptr %20, align 8
  store ptr @alloc_fc617b337f533051b088996c836126e2, ptr %_40, align 8, !alias.scope !104, !noalias !107
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_40, i64 0, i32 1
  store i64 4, ptr %21, align 8, !alias.scope !104, !noalias !107
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_40, i64 0, i32 2
  store ptr null, ptr %22, align 8, !alias.scope !104, !noalias !107
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_40, i64 0, i32 1
  store ptr %_44, ptr %23, align 8, !alias.scope !104, !noalias !107
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_40, i64 0, i32 1, i32 1
  store i64 3, ptr %24, align 8, !alias.scope !104, !noalias !107
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_40)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_40)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_44)
  br label %bb23

bb16:                                             ; preds = %bb12
  %_64 = icmp eq ptr %_4, @_ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E
  br i1 %_64, label %bb17, label %bb23

bb13:                                             ; preds = %bb12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_61)
  %x = getelementptr inbounds %"internal_instruction::InternalInstruction", ptr %instruction, i64 0, i32 2
  store ptr %x, ptr %_61, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %_61, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E", ptr %25, align 8
  store ptr @alloc_1b5377d11feadf4cdca4e886ee20fd3b, ptr %_57, align 8, !alias.scope !110, !noalias !113
  %26 = getelementptr inbounds { ptr, i64 }, ptr %_57, i64 0, i32 1
  store i64 2, ptr %26, align 8, !alias.scope !110, !noalias !113
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_57, i64 0, i32 2
  store ptr null, ptr %27, align 8, !alias.scope !110, !noalias !113
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_57, i64 0, i32 1
  store ptr %_61, ptr %28, align 8, !alias.scope !110, !noalias !113
  %29 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_57, i64 0, i32 1, i32 1
  store i64 1, ptr %29, align 8, !alias.scope !110, !noalias !113
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_57)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_57)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_61)
  br label %bb23

bb17:                                             ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_70)
  store ptr @alloc_d7dd5a0234be40163dcb28209ea04e3f, ptr %_70, align 8
  %30 = getelementptr inbounds { ptr, i64 }, ptr %_70, i64 0, i32 1
  store i64 1, ptr %30, align 8
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 2
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 1
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %32, align 8
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_70, i64 0, i32 1, i32 1
  store i64 0, ptr %33, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_70)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_70)
  br label %bb23

bb23:                                             ; preds = %bb5, %bb13, %bb17, %bb16, %bb9, %bb1
  ret void
}

; <mylib::bytecode::Opcode as core::fmt::Debug>::fmt
; Function Attrs: uwtable
define noundef zeroext i1 @"_ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE"(ptr noalias nocapture noundef readonly align 1 dereferenceable(1) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = load i8, ptr %self, align 1, !range !116, !noundef !1
  %_4 = zext i8 %0 to i64
  %switch.gep = getelementptr inbounds [5 x i64], ptr @"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE", i64 0, i64 %_4
  %switch.load = load i64, ptr %switch.gep, align 8
  %switch.gep1 = getelementptr inbounds [5 x ptr], ptr @"switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE.12", i64 0, i64 %_4
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
; call core::fmt::Formatter::write_str
  %1 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr noalias noundef nonnull align 8 dereferenceable(64) %f, ptr noalias noundef nonnull readonly align 1 %switch.load2, i64 noundef %switch.load)
  ret i1 %1
}

; core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17h3bbf9265d206434cE(ptr noalias nocapture noundef readonly dereferenceable(48), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #6

; Function Attrs: nounwind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @__rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h465f58d66bf1461cE() unnamed_addr #9

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17he63473ab5d0e3fe6E(i64 noundef, i64 noundef) unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #11

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17hb79efcbb9b8c1566E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E"(ptr noalias noundef readonly align 1 dereferenceable(1), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for u16>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE"(ptr noalias noundef readonly align 2 dereferenceable(2), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; core::fmt::Formatter::write_str
; Function Attrs: uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17hf28662d815207628E(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #7 = { nounwind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #10 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 4}
!3 = !{i64 0, i64 -9223372036854775807}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h80785f71d11216bcE: argument 0"}
!6 = distinct !{!6, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h80785f71d11216bcE"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E: %self"}
!9 = distinct !{!9, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17ha89d9bae746c4b96E"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE: argument 0"}
!12 = distinct !{!12, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h697379a536151a4aE"}
!13 = !{i64 0, i64 2}
!14 = !{!15, !8}
!15 = distinct !{!15, !16, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h80e8bff8fa173d63E: %self"}
!16 = distinct !{!16, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h80e8bff8fa173d63E"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!19 = distinct !{!19, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!22 = distinct !{!22, !19, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!25 = distinct !{!25, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!26 = !{!27, !28}
!27 = distinct !{!27, !25, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!28 = distinct !{!28, !25, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!31 = distinct !{!31, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!32 = !{!33, !34}
!33 = distinct !{!33, !31, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!34 = distinct !{!34, !31, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!37 = distinct !{!37, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!38 = !{!39, !40}
!39 = distinct !{!39, !37, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!40 = distinct !{!40, !37, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!43 = distinct !{!43, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!44 = !{!45, !46}
!45 = distinct !{!45, !43, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!46 = distinct !{!46, !43, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!49 = distinct !{!49, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!50 = !{!51, !52}
!51 = distinct !{!51, !49, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!52 = distinct !{!52, !49, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!56 = distinct !{!56, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!57 = !{!58, !59}
!58 = distinct !{!58, !56, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!59 = distinct !{!59, !56, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %self"}
!62 = distinct !{!62, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %value"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %self"}
!67 = distinct !{!67, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %value"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %self"}
!72 = distinct !{!72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %value"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %self"}
!77 = distinct !{!77, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %value"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %self"}
!82 = distinct !{!82, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1f0cbef9daf96847E: %value"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!88 = distinct !{!88, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!91 = distinct !{!91, !88, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!94 = distinct !{!94, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!97 = distinct !{!97, !94, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!100 = distinct !{!100, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!103 = distinct !{!103, !100, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!106 = distinct !{!106, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!109 = distinct !{!109, !106, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: argument 0"}
!112 = distinct !{!112, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %pieces.0"}
!115 = distinct !{!115, !112, !"_ZN4core3fmt9Arguments6new_v117had311a6bbc9a47b4E: %args.0"}
!116 = !{i8 0, i8 5}
