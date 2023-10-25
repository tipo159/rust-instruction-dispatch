; ModuleID = 'direct_call_threading.c'
source_filename = "direct_call_threading.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.internal_instruction_t = type { ptr, i8, i8, %union.anon }
%union.anon = type { i32 }
%struct.timespec = type { i64, i64 }

@__const.main.program = private unnamed_addr constant [7 x i32] [i32 0, i32 16777232, i32 50331632, i32 17, i32 131122, i32 3, i32 4], align 4
@.str = private unnamed_addr constant [24 x i8] c"Time elapsed: %10ld ns\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Average of %d results: %10ld ns\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable(sync)
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca [7 x %struct.internal_instruction_t], align 8
  %2 = alloca i32, align 4
  %3 = alloca [256 x i32], align 4
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  br label %6

6:                                                ; preds = %46, %0
  %7 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %8 = getelementptr inbounds i32, ptr @__const.main.program, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !8, !alias.scope !5
  %10 = and i32 %9, 15
  switch i32 %10, label %46 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %30
    i32 3, label %41
    i32 4, label %48
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7
  store ptr @load, ptr %12, align 8, !tbaa !12, !noalias !5
  %13 = lshr i32 %9, 24
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 1
  store i8 %14, ptr %15, align 8, !tbaa !15, !noalias !5
  %16 = lshr i32 %9, 4
  %17 = and i32 %16, 1048575
  %18 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 3
  store i32 %17, ptr %18, align 4, !tbaa !16, !noalias !5
  br label %46

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7
  store ptr @add, ptr %20, align 8, !tbaa !12, !noalias !5
  %21 = lshr i32 %9, 24
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 1
  store i8 %22, ptr %23, align 8, !tbaa !15, !noalias !5
  %24 = lshr i32 %9, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 2
  store i8 %25, ptr %26, align 1, !tbaa !17, !noalias !5
  %27 = lshr i32 %9, 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 3
  store i8 %28, ptr %29, align 4, !tbaa !16, !noalias !5
  br label %46

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7
  store ptr @jmpne, ptr %31, align 8, !tbaa !12, !noalias !5
  %32 = lshr i32 %9, 24
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 1
  store i8 %33, ptr %34, align 8, !tbaa !15, !noalias !5
  %35 = lshr i32 %9, 16
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 2
  store i8 %36, ptr %37, align 1, !tbaa !17, !noalias !5
  %38 = lshr i32 %9, 4
  %39 = and i32 %38, 4095
  %40 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 3
  store i32 %39, ptr %40, align 4, !tbaa !16, !noalias !5
  br label %46

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7
  store ptr @print, ptr %42, align 8, !tbaa !12, !noalias !5
  %43 = lshr i32 %9, 24
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7, i32 1
  store i8 %44, ptr %45, align 8, !tbaa !15, !noalias !5
  br label %46

46:                                               ; preds = %41, %30, %19, %11, %6
  %47 = add nuw i64 %7, 1
  br label %6

48:                                               ; preds = %6
  %49 = getelementptr inbounds %struct.internal_instruction_t, ptr %1, i64 %7
  store ptr @ret, ptr %49, align 8, !tbaa !12, !noalias !5
  %50 = getelementptr inbounds %struct.timespec, ptr %5, i64 0, i32 1
  %51 = getelementptr inbounds %struct.timespec, ptr %4, i64 0, i32 1
  br label %55

52:                                               ; preds = %67
  %53 = sdiv i64 %78, 100
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 100, i64 noundef %53)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %1) #8
  ret i32 0

55:                                               ; preds = %48, %67
  %56 = phi i32 [ 0, %48 ], [ %80, %67 ]
  %57 = phi i64 [ 0, %48 ], [ %78, %67 ]
  %58 = icmp eq i32 %56, 10
  %59 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %4) #8
  store i32 0, ptr %2, align 4, !tbaa !8
  br label %60

60:                                               ; preds = %55, %60
  %61 = phi i32 [ 0, %55 ], [ %65, %60 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [7 x %struct.internal_instruction_t], ptr %1, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !12
  call void %64(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %65 = load i32, ptr %2, align 4, !tbaa !8
  %66 = icmp ult i32 %65, 7
  br i1 %66, label %60, label %67, !llvm.loop !18

67:                                               ; preds = %60
  %68 = select i1 %58, i64 0, i64 %57
  %69 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #8
  %70 = load i64, ptr %5, align 8, !tbaa !20
  %71 = load i64, ptr %4, align 8, !tbaa !20
  %72 = sub nsw i64 %70, %71
  %73 = mul nsw i64 %72, 1000000000
  %74 = load i64, ptr %50, align 8, !tbaa !23
  %75 = add nsw i64 %73, %74
  %76 = load i64, ptr %51, align 8, !tbaa !23
  %77 = sub i64 %75, %76
  %78 = add nsw i64 %77, %68
  %79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %77)
  %80 = add nuw nsw i32 %56, 1
  %81 = icmp eq i32 %80, 110
  br i1 %81, label %52, label %55, !llvm.loop !24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable(sync)
define internal void @load(ptr noalias nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noalias nocapture noundef writeonly %2) #5 {
  %4 = load i32, ptr %1, align 4, !tbaa !8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !15
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %2, i64 %10
  store i32 %7, ptr %11, align 4, !tbaa !8
  %12 = add nsw i32 %4, 1
  store i32 %12, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable(sync)
define internal void @add(ptr noalias nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noalias nocapture noundef %2) #5 {
  %4 = load i32, ptr %1, align 4, !tbaa !8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 2
  %7 = load i8, ptr %6, align 1, !tbaa !17
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !16
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i32, ptr %2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %16 = add nsw i32 %15, %10
  %17 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !15
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i32, ptr %2, i64 %19
  store i32 %16, ptr %20, align 4, !tbaa !8
  %21 = add nsw i32 %4, 1
  store i32 %21, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable(sync)
define internal void @jmpne(ptr noalias nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noalias nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %1, align 4, !tbaa !8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !15
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 2
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i32, ptr %2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !16
  br label %22

20:                                               ; preds = %3
  %21 = add nsw i32 %4, 1
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %19, %17 ]
  store i32 %23, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind ssp uwtable(sync)
define internal void @print(ptr noalias nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noalias nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %1, align 4, !tbaa !8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.internal_instruction_t, ptr %0, i64 %5, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !15
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10)
  %12 = load i32, ptr %1, align 4, !tbaa !8
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable(sync)
define internal void @ret(ptr noalias nocapture readnone %0, ptr nocapture noundef %1, ptr noalias nocapture readnone %2) #5 {
  %4 = load i32, ptr %1, align 4, !tbaa !8
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #6 = { nofree nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

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
!13 = !{!"", !14, i64 0, !10, i64 8, !10, i64 9, !10, i64 12}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!13, !10, i64 8}
!16 = !{!10, !10, i64 0}
!17 = !{!13, !10, i64 9}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !22, i64 0}
!21 = !{!"timespec", !22, i64 0, !22, i64 8}
!22 = !{!"long", !10, i64 0}
!23 = !{!21, !22, i64 8}
!24 = distinct !{!24, !19}
