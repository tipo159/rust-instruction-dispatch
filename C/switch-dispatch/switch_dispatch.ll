; ModuleID = 'switch_dispatch.c'
source_filename = "switch_dispatch.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@__const.main.program = private unnamed_addr constant [7 x i32] [i32 0, i32 16777232, i32 50331632, i32 17, i32 131122, i32 3, i32 4], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Time elapsed: %10ld ns\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Average of %d results: %10ld ns\0A\00", align 1

; Function Attrs: nounwind ssp uwtable(sync)
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca [256 x i32], align 4
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.timespec, ptr %2, i64 0, i32 1
  br label %9

6:                                                ; preds = %66
  %7 = sdiv i64 %77, 100
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 100, i64 noundef %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #5
  ret i32 0

9:                                                ; preds = %0, %66
  %10 = phi i32 [ 0, %0 ], [ %79, %66 ]
  %11 = phi i64 [ 0, %0 ], [ %77, %66 ]
  %12 = icmp eq i32 %10, 10
  %13 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #5
  br label %14

14:                                               ; preds = %9, %62
  %15 = phi i32 [ 0, %9 ], [ %64, %62 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [7 x i32], ptr @__const.main.program, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = and i32 %18, 15
  switch i32 %19, label %62 [
    i32 0, label %20
    i32 1, label %26
    i32 2, label %41
    i32 3, label %56
  ]

20:                                               ; preds = %14
  %21 = lshr i32 %18, 4
  %22 = and i32 %21, 1048575
  %23 = lshr i32 %18, 24
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %24
  store i32 %22, ptr %25, align 4, !tbaa !5
  br label %62

26:                                               ; preds = %14
  %27 = lshr i32 %18, 16
  %28 = and i32 %27, 255
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = lshr i32 %18, 4
  %33 = and i32 %32, 4095
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %31
  %38 = lshr i32 %18, 24
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %39
  store i32 %37, ptr %40, align 4, !tbaa !5
  br label %62

41:                                               ; preds = %14
  %42 = lshr i32 %18, 24
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = lshr i32 %18, 16
  %47 = and i32 %46, 255
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %41
  %53 = lshr i32 %18, 4
  %54 = and i32 %53, 4095
  %55 = add nsw i32 %54, -1
  br label %62

56:                                               ; preds = %14
  %57 = lshr i32 %18, 24
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %60)
  br label %62

62:                                               ; preds = %41, %52, %14, %56, %26, %20
  %63 = phi i32 [ %15, %14 ], [ %15, %56 ], [ %55, %52 ], [ %15, %41 ], [ %15, %26 ], [ %15, %20 ]
  %64 = add nsw i32 %63, 1
  %65 = icmp ult i32 %64, 7
  br i1 %65, label %14, label %66, !llvm.loop !9

66:                                               ; preds = %62
  %67 = select i1 %12, i64 0, i64 %11
  %68 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %3) #5
  %69 = load i64, ptr %3, align 8, !tbaa !11
  %70 = load i64, ptr %2, align 8, !tbaa !11
  %71 = sub nsw i64 %69, %70
  %72 = mul nsw i64 %71, 1000000000
  %73 = load i64, ptr %4, align 8, !tbaa !14
  %74 = add nsw i64 %72, %73
  %75 = load i64, ptr %5, align 8, !tbaa !14
  %76 = sub i64 %74, %75
  %77 = add nsw i64 %76, %67
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %76)
  %79 = add nuw nsw i32 %10, 1
  %80 = icmp eq i32 %79, 110
  br i1 %80, label %6, label %9, !llvm.loop !15
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

attributes #0 = { nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 17.0.3"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 0}
!12 = !{!"timespec", !13, i64 0, !13, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !13, i64 8}
!15 = distinct !{!15, !10}
