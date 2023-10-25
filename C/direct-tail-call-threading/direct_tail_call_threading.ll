; ModuleID = 'direct_tail_call_threading.c'
source_filename = "direct_tail_call_threading.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.internal_instruction = type { ptr, i8, i8, %union.anon }
%union.anon = type { ptr }
%struct.timespec = type { i64, i64 }

@__const.main.program = private unnamed_addr constant [7 x i32] [i32 0, i32 16777232, i32 50331632, i32 17, i32 131122, i32 3, i32 4], align 4
@.str = private unnamed_addr constant [24 x i8] c"Time elapsed: %10ld ns\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Average of %d results: %10ld ns\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable(sync)
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca [7 x %struct.internal_instruction], align 8
  %2 = alloca [256 x i32], align 4
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  br label %5

5:                                                ; preds = %47, %0
  %6 = phi i64 [ %48, %47 ], [ 0, %0 ]
  %7 = getelementptr inbounds i32, ptr @__const.main.program, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !8, !alias.scope !5
  %9 = and i32 %8, 15
  switch i32 %9, label %47 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %29
    i32 3, label %42
    i32 4, label %49
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6
  store ptr @load, ptr %11, align 8, !tbaa !12, !noalias !5
  %12 = lshr i32 %8, 24
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 1
  store i8 %13, ptr %14, align 8, !tbaa !15, !noalias !5
  %15 = lshr i32 %8, 4
  %16 = and i32 %15, 1048575
  %17 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 3
  store i32 %16, ptr %17, align 8, !tbaa !16, !noalias !5
  br label %47

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6
  store ptr @add, ptr %19, align 8, !tbaa !12, !noalias !5
  %20 = lshr i32 %8, 24
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 1
  store i8 %21, ptr %22, align 8, !tbaa !15, !noalias !5
  %23 = lshr i32 %8, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 2
  store i8 %24, ptr %25, align 1, !tbaa !17, !noalias !5
  %26 = lshr i32 %8, 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 3
  store i8 %27, ptr %28, align 8, !tbaa !16, !noalias !5
  br label %47

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6
  store ptr @jmpne, ptr %30, align 8, !tbaa !12, !noalias !5
  %31 = lshr i32 %8, 24
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 1
  store i8 %32, ptr %33, align 8, !tbaa !15, !noalias !5
  %34 = lshr i32 %8, 16
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 2
  store i8 %35, ptr %36, align 1, !tbaa !17, !noalias !5
  %37 = lshr i32 %8, 4
  %38 = and i32 %37, 4095
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %39
  %41 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !16, !noalias !5
  br label %47

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6
  store ptr @print, ptr %43, align 8, !tbaa !12, !noalias !5
  %44 = lshr i32 %8, 24
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6, i32 1
  store i8 %45, ptr %46, align 8, !tbaa !15, !noalias !5
  br label %47

47:                                               ; preds = %42, %29, %18, %10, %5
  %48 = add nuw i64 %6, 1
  br label %5

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.internal_instruction, ptr %1, i64 %6
  store ptr @ret, ptr %50, align 8, !tbaa !12, !noalias !5
  %51 = getelementptr inbounds %struct.timespec, ptr %4, i64 0, i32 1
  %52 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %56

53:                                               ; preds = %56
  %54 = sdiv i64 %72, 100
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 100, i64 noundef %54)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %1) #7
  ret i32 0

56:                                               ; preds = %49, %56
  %57 = phi i32 [ 0, %49 ], [ %74, %56 ]
  %58 = phi i64 [ 0, %49 ], [ %72, %56 ]
  %59 = icmp eq i32 %57, 10
  %60 = select i1 %59, i64 0, i64 %58
  %61 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %3) #7
  %62 = load ptr, ptr %1, align 8, !tbaa !12
  call void %62(ptr noundef nonnull %1, ptr noundef nonnull %2) #7
  %63 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %4) #7
  %64 = load i64, ptr %4, align 8, !tbaa !18
  %65 = load i64, ptr %3, align 8, !tbaa !18
  %66 = sub nsw i64 %64, %65
  %67 = mul nsw i64 %66, 1000000000
  %68 = load i64, ptr %51, align 8, !tbaa !21
  %69 = add nsw i64 %67, %68
  %70 = load i64, ptr %52, align 8, !tbaa !21
  %71 = sub i64 %69, %70
  %72 = add nsw i64 %71, %60
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %71)
  %74 = add nuw nsw i32 %57, 1
  %75 = icmp eq i32 %74, 110
  br i1 %75, label %53, label %56, !llvm.loop !22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable(sync)
define internal void @load(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !15
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %4, ptr %8, align 4, !tbaa !8
  %9 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  musttail call void %10(ptr noundef nonnull %9, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable(sync)
define internal void @add(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !17
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %8 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !16
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %13 = add nsw i32 %12, %7
  %14 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !15
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  store i32 %13, ptr %17, align 4, !tbaa !8
  %18 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  musttail call void %19(ptr noundef nonnull %18, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable(sync)
define internal void @jmpne(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !15
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %8 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  musttail call void %21(ptr noundef nonnull %20, ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable(sync)
define internal void @print(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !15
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7)
  %9 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  musttail call void %10(ptr noundef nonnull %9, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync)
define internal void @ret(ptr noalias nocapture %0, ptr noalias nocapture %1) #5 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 17.0.3"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"convert: argument 0"}
!7 = distinct !{!7, !"convert"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"internal_instruction", !14, i64 0, !10, i64 8, !10, i64 9, !10, i64 16}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!13, !10, i64 8}
!16 = !{!10, !10, i64 0}
!17 = !{!13, !10, i64 9}
!18 = !{!19, !20, i64 0}
!19 = !{!"timespec", !20, i64 0, !20, i64 8}
!20 = !{!"long", !10, i64 0}
!21 = !{!19, !20, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
