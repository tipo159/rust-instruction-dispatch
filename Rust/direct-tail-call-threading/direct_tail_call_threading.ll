; ModuleID = 'direct_tail_call_threading.883b675e7ba766ca-cgu.0'
source_filename = "direct_tail_call_threading.883b675e7ba766ca-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::rt::Placeholder" = type { { i64, i64 }, { i64, i64 }, i64, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::vec::Vec<mylib::internal_instruction::InternalInstruction>" = type { { ptr, i64 }, i64 }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hedbee9a88b3da107E", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h60edd35cd0c5164eE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h77a0d768a5d51dcaE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h77a0d768a5d51dcaE" }>, align 8
@__rust_no_alloc_shim_is_unstable = external global i8
@_ZN26direct_tail_call_threading17NUM_OF_ITERATIONS17hf456270db62f6890E = internal constant <{ [8 x i8] }> <{ [8 x i8] c"d\00\00\00\00\00\00\00" }>, align 8
@alloc_ff97cce970de69d7956394104d0ff318 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"Average of " }>, align 1
@alloc_e25defe98e15d5151173f9be8724c607 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c" results: " }>, align 1
@alloc_2e991981b80afb2bc308459606104f01 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c" ns\0A" }>, align 1
@alloc_38db56cde4dd0d6183f77286bf91fdae = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_ff97cce970de69d7956394104d0ff318, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_e25defe98e15d5151173f9be8724c607, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @alloc_2e991981b80afb2bc308459606104f01, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@alloc_d3a7e64183b7f2601bf8825eb3137432 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Time elapsed: " }>, align 1
@alloc_a963bef17bebf75ef19d6dec0a2a34d9 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_d3a7e64183b7f2601bf8825eb3137432, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @alloc_2e991981b80afb2bc308459606104f01, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline uwtable
define internal fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h63358d47424468b3E(ptr nocapture noundef nonnull readonly %f) unnamed_addr #0 {
start:
  tail call void %f()
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !3
  ret void
}

; std::rt::lang_start
; Function Attrs: uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17h22240e7ee2a9365cE(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #1 {
start:
  %_8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_8)
  store ptr %main, ptr %_8, align 8
; call std::rt::lang_start_internal
  %0 = call noundef i64 @_ZN3std2rt19lang_start_internal17h5f00c09289a72e67E(ptr noundef nonnull align 1 %_8, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_8)
  ret i64 %0
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint uwtable
define internal noundef i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h77a0d768a5d51dcaE"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h63358d47424468b3E(ptr noundef nonnull %_4)
  ret i32 0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint uwtable
define internal noundef i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h60edd35cd0c5164eE"(ptr nocapture noundef readonly %_1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h63358d47424468b3E(ptr noundef nonnull %0), !noalias !5
  ret i32 0
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hedbee9a88b3da107E"(ptr noalias nocapture readnone align 8 %_1) unnamed_addr #3 {
start:
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<mylib::internal_instruction::InternalInstruction>>
; Function Attrs: nounwind uwtable
define internal fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17hb3a1aff749eae7b9E"(ptr %_1.0.val, i64 %_1.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb4:
  %0 = icmp eq i64 %_1.8.val, 0
  br i1 %0, label %"_ZN4core3ptr99drop_in_place$LT$alloc..raw_vec..RawVec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17h9a74f356eb1da7e5E.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %1 = icmp ne ptr %_1.0.val, null
  tail call void @llvm.assume(i1 %1)
  %size.i.i.i = mul nuw i64 %_1.8.val, 24
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.0.val, i64 noundef %size.i.i.i, i64 noundef 8) #11
  br label %"_ZN4core3ptr99drop_in_place$LT$alloc..raw_vec..RawVec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17h9a74f356eb1da7e5E.exit"

"_ZN4core3ptr99drop_in_place$LT$alloc..raw_vec..RawVec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17h9a74f356eb1da7e5E.exit": ; preds = %bb4, %bb2.i.i
  ret void
}

; direct_tail_call_threading::main
; Function Attrs: uwtable
define internal void @_ZN26direct_tail_call_threading4main17h4f40354104ead600E() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_65 = alloca [2 x %"core::fmt::rt::Placeholder"], align 8
  %_58 = alloca [2 x { ptr, ptr }], align 8
  %_54 = alloca %"core::fmt::Arguments<'_>", align 8
  %_49 = alloca [1 x %"core::fmt::rt::Placeholder"], align 8
  %_43 = alloca i128, align 16
  %_40 = alloca [1 x { ptr, ptr }], align 8
  %_36 = alloca %"core::fmt::Arguments<'_>", align 8
  %average = alloca i64, align 8
  %now = alloca { i64, i32 }, align 8
  %internal_program = alloca %"alloc::vec::Vec<mylib::internal_instruction::InternalInstruction>", align 8
  %program = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %program)
; call mylib::bytecode::make_opcode
  %_2 = tail call noundef i32 @_ZN5mylib8bytecode11make_opcode17h2f7244974f83716aE(i8 noundef 4)
  store <4 x i32> <i32 0, i32 16777232, i32 50331632, i32 17>, ptr %program, align 16
  %0 = getelementptr inbounds [7 x i32], ptr %program, i64 0, i64 4
  store <2 x i32> <i32 131122, i32 3>, ptr %0, align 16
  %1 = getelementptr inbounds [7 x i32], ptr %program, i64 0, i64 6
  store i32 %_2, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %internal_program)
  %2 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  %3 = tail call noundef align 8 dereferenceable_or_null(168) ptr @__rust_alloc(i64 noundef 168, i64 noundef 8) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb12.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd03aa8fdc6ed4a46E.exit"

bb12.i:                                           ; preds = %start
; call alloc::alloc::handle_alloc_error
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h389e70497ee0e1d7E(i64 noundef 8, i64 noundef 168) #12
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd03aa8fdc6ed4a46E.exit": ; preds = %start
  store ptr %3, ptr %internal_program, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %internal_program, i64 0, i32 1
  %6 = getelementptr inbounds %"alloc::vec::Vec<mylib::internal_instruction::InternalInstruction>", ptr %internal_program, i64 0, i32 1
  store <2 x i64> <i64 7, i64 0>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %average)
  store i64 0, ptr %average, align 8
; invoke mylib::convert::convert
  invoke void @_ZN5mylib7convert7convert17h4765e155b3d55af0E(ptr noalias noundef nonnull readonly align 4 %program, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %internal_program)
          to label %bb4.preheader unwind label %cleanup.loopexit.split-lp

bb4.preheader:                                    ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd03aa8fdc6ed4a46E.exit"
  %7 = getelementptr inbounds { i64, i32 }, ptr %now, i64 0, i32 1
  %8 = getelementptr inbounds { ptr, ptr }, ptr %_40, i64 0, i32 1
  %_50.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %_49, i64 16
  %_50.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %_49, i64 32
  %_50.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %_49, i64 40
  %_50.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %_49, i64 48
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_36, i64 0, i32 1
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_36, i64 0, i32 2
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_36, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_36, i64 0, i32 1
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_36, i64 0, i32 1, i32 1
  br label %bb5

cleanup.loopexit:                                 ; preds = %bb8, %bb9, %bb10, %bb11, %bb12
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hd03aa8fdc6ed4a46E.exit", %bb6
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  %internal_program.val = load ptr, ptr %internal_program, align 8
  %internal_program.val8 = load i64, ptr %5, align 8
; call core::ptr::drop_in_place<alloc::vec::Vec<mylib::internal_instruction::InternalInstruction>>
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17hb3a1aff749eae7b9E"(ptr %internal_program.val, i64 %internal_program.val8) #13
  resume { ptr, i32 } %lpad.phi

bb6:                                              ; preds = %bb13
  %14 = sdiv i64 %30, 100
  store i64 %14, ptr %average, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_54)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_58)
  store ptr @_ZN26direct_tail_call_threading17NUM_OF_ITERATIONS17hf456270db62f6890E, ptr %_58, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %_58, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hab6ce112df3982deE", ptr %15, align 8
  %16 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_58, i64 0, i64 1
  store ptr %average, ptr %16, align 8
  %17 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_58, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hab6ce112df3982deE", ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %_65)
  store i64 2, ptr %_65, align 8
  %_66.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %_65, i64 16
  store i64 2, ptr %_66.sroa.5.0..sroa_idx, align 8
  %_66.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %_65, i64 32
  store i64 0, ptr %_66.sroa.7.0..sroa_idx, align 8
  %_66.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %_65, i64 40
  store <2 x i32> <i32 32, i32 0>, ptr %_66.sroa.8.0..sroa_idx, align 8
  %_66.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %_65, i64 48
  store i8 3, ptr %_66.sroa.10.0..sroa_idx, align 8
  %18 = getelementptr inbounds [2 x %"core::fmt::rt::Placeholder"], ptr %_65, i64 0, i64 1
  store i64 2, ptr %18, align 8
  %_69.sroa.5.0..sroa_idx = getelementptr inbounds [2 x %"core::fmt::rt::Placeholder"], ptr %_65, i64 0, i64 1, i32 1
  store <2 x i64> <i64 0, i64 10>, ptr %_69.sroa.5.0..sroa_idx, align 8
  %_69.sroa.7.0..sroa_idx = getelementptr inbounds [2 x %"core::fmt::rt::Placeholder"], ptr %_65, i64 0, i64 1, i32 2
  store i64 1, ptr %_69.sroa.7.0..sroa_idx, align 8
  %_69.sroa.8.0..sroa_idx = getelementptr inbounds [2 x %"core::fmt::rt::Placeholder"], ptr %_65, i64 0, i64 1, i32 3
  store <2 x i32> <i32 32, i32 0>, ptr %_69.sroa.8.0..sroa_idx, align 8
  %_69.sroa.10.0..sroa_idx = getelementptr inbounds [2 x %"core::fmt::rt::Placeholder"], ptr %_65, i64 0, i64 1, i32 5
  store i8 3, ptr %_69.sroa.10.0..sroa_idx, align 8
  store ptr @alloc_38db56cde4dd0d6183f77286bf91fdae, ptr %_54, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_54, i64 0, i32 1
  store i64 3, ptr %19, align 8
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_54, i64 0, i32 2
  store ptr %_65, ptr %20, align 8
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_54, i64 0, i32 2, i32 1
  store i64 2, ptr %21, align 8
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_54, i64 0, i32 1
  store ptr %_58, ptr %22, align 8
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_54, i64 0, i32 1, i32 1
  store i64 2, ptr %23, align 8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h427042eafe0edf22E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_54)
          to label %bb14 unwind label %cleanup.loopexit.split-lp

bb5:                                              ; preds = %bb4.preheader, %bb13
  %24 = phi i64 [ 0, %bb4.preheader ], [ %30, %bb13 ]
  %iter1.sroa.0.014 = phi i64 [ 0, %bb4.preheader ], [ %_0.i, %bb13 ]
  %_0.i = add nuw nsw i64 %iter1.sroa.0.014, 1
  %25 = icmp eq i64 %iter1.sroa.0.014, 10
  br i1 %25, label %bb7, label %bb8

bb14:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_54)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %_65)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_58)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %average)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now)
  %internal_program.val10 = load i64, ptr %5, align 8
  %26 = icmp eq i64 %internal_program.val10, 0
  br i1 %26, label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17hb3a1aff749eae7b9E.exit", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb14
  %internal_program.val9 = load ptr, ptr %internal_program, align 8, !nonnull !4, !noundef !4
  %size.i.i.i.i = mul nuw i64 %internal_program.val10, 24
  call void @__rust_dealloc(ptr noundef nonnull %internal_program.val9, i64 noundef %size.i.i.i.i, i64 noundef 8) #11
  br label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17hb3a1aff749eae7b9E.exit"

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$mylib..internal_instruction..InternalInstruction$GT$$GT$17hb3a1aff749eae7b9E.exit": ; preds = %bb14, %bb2.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %internal_program)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %program)
  ret void

bb7:                                              ; preds = %bb5
  store i64 0, ptr %average, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb5
  %27 = phi i64 [ 0, %bb7 ], [ %24, %bb5 ]
; invoke std::time::Instant::now
  %28 = invoke { i64, i32 } @_ZN3std4time7Instant3now17he2ae06a93987d203E()
          to label %bb9 unwind label %cleanup.loopexit

bb9:                                              ; preds = %bb8
  %_26.0 = extractvalue { i64, i32 } %28, 0
  %_26.1 = extractvalue { i64, i32 } %28, 1
  store i64 %_26.0, ptr %now, align 8
  store i32 %_26.1, ptr %7, align 8
  %self6 = load ptr, ptr %internal_program, align 8, !nonnull !4, !noundef !4
  %len = load i64, ptr %6, align 8, !noundef !4
; invoke mylib::internal_instruction::vm_loop
  invoke void @_ZN5mylib20internal_instruction7vm_loop17h2a171cae248ecd5dE(ptr noalias noundef nonnull readonly align 8 %self6, i64 noundef %len)
          to label %bb10 unwind label %cleanup.loopexit

bb10:                                             ; preds = %bb9
; invoke std::time::Instant::elapsed
  %29 = invoke { i64, i32 } @_ZN3std4time7Instant7elapsed17ha7b68d610cd9fab7E(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %now)
          to label %bb11 unwind label %cleanup.loopexit

bb11:                                             ; preds = %bb10
  %_33.0 = extractvalue { i64, i32 } %29, 0
  %_33.1 = extractvalue { i64, i32 } %29, 1
  %_101 = mul i64 %_33.0, 1000000000
  %_104 = zext i32 %_33.1 to i64
  %_31 = add i64 %_101, %_104
  %30 = add i64 %_31, %27
  store i64 %30, ptr %average, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_43)
; invoke std::time::Instant::elapsed
  %31 = invoke { i64, i32 } @_ZN3std4time7Instant7elapsed17ha7b68d610cd9fab7E(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %now)
          to label %bb12 unwind label %cleanup.loopexit

bb12:                                             ; preds = %bb11
  %_45.0 = extractvalue { i64, i32 } %31, 0
  %_45.1 = extractvalue { i64, i32 } %31, 1
  %_107 = zext i64 %_45.0 to i128
  %_106 = mul nuw nsw i128 %_107, 1000000000
  %_109 = zext i32 %_45.1 to i128
  %32 = add nuw nsw i128 %_106, %_109
  store i128 %32, ptr %_43, align 16
  store ptr %_43, ptr %_40, align 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$u128$GT$3fmt17h1e84b72d48a6565bE", ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_49)
  store i64 2, ptr %_49, align 8
  store <2 x i64> <i64 0, i64 10>, ptr %_50.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %_50.sroa.7.0..sroa_idx, align 8
  store <2 x i32> <i32 32, i32 0>, ptr %_50.sroa.8.0..sroa_idx, align 8
  store i8 3, ptr %_50.sroa.10.0..sroa_idx, align 8
  store ptr @alloc_a963bef17bebf75ef19d6dec0a2a34d9, ptr %_36, align 8
  store i64 2, ptr %9, align 8
  store ptr %_49, ptr %10, align 8
  store i64 1, ptr %11, align 8
  store ptr %_40, ptr %12, align 8
  store i64 1, ptr %13, align 8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h427042eafe0edf22E(ptr noalias nocapture noundef nonnull align 8 dereferenceable(48) %_36)
          to label %bb13 unwind label %cleanup.loopexit

bb13:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_36)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_49)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  %exitcond.not = icmp eq i64 %_0.i, 110
  br i1 %exitcond.not, label %bb6, label %bb5
}

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare noundef i64 @_ZN3std2rt19lang_start_internal17h5f00c09289a72e67E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #6

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h389e70497ee0e1d7E(i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #8

; mylib::bytecode::make_opcode
; Function Attrs: uwtable
declare noundef i32 @_ZN5mylib8bytecode11make_opcode17h2f7244974f83716aE(i8 noundef) unnamed_addr #1

; mylib::convert::convert
; Function Attrs: uwtable
declare void @_ZN5mylib7convert7convert17h4765e155b3d55af0E(ptr noalias noundef nonnull readonly align 4, i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::fmt::num::imp::<impl core::fmt::Display for i64>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hab6ce112df3982deE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h427042eafe0edf22E(ptr noalias nocapture noundef align 8 dereferenceable(48)) unnamed_addr #1

; std::time::Instant::now
; Function Attrs: uwtable
declare { i64, i32 } @_ZN3std4time7Instant3now17he2ae06a93987d203E() unnamed_addr #1

; mylib::internal_instruction::vm_loop
; Function Attrs: uwtable
declare void @_ZN5mylib20internal_instruction7vm_loop17h2a171cae248ecd5dE(ptr noalias noundef nonnull readonly align 8, i64 noundef) unnamed_addr #1

; std::time::Instant::elapsed
; Function Attrs: uwtable
declare { i64, i32 } @_ZN3std4time7Instant7elapsed17ha7b68d610cd9fab7E(ptr noalias noundef readonly align 8 dereferenceable(16)) unnamed_addr #1

; core::fmt::num::<impl core::fmt::Display for u128>::fmt
; Function Attrs: uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$u128$GT$3fmt17h1e84b72d48a6565bE"(ptr noalias noundef readonly align 16 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #9 {
top:
  %_8.i = alloca ptr, align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_8.i)
  store ptr @_ZN26direct_tail_call_threading4main17h4f40354104ead600E, ptr %_8.i, align 8
; call std::rt::lang_start_internal
  %3 = call noundef i64 @_ZN3std2rt19lang_start_internal17h5f00c09289a72e67E(ptr noundef nonnull align 1 %_8.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_8.i)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

attributes #0 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #4 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #7 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #8 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #9 = { "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.74.1 (a28077b28 2023-12-04)"}
!3 = !{i32 3191034}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h77a0d768a5d51dcaE: %_1"}
!7 = distinct !{!7, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h77a0d768a5d51dcaE"}
