; ModuleID = 'bytecode.c'
source_filename = "bytecode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind ssp uwtable(sync)
define void @vm_loop(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %2, %53
  %6 = phi i32 [ %55, %53 ], [ 0, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = and i32 %9, 15
  switch i32 %10, label %53 [
    i32 0, label %11
    i32 1, label %17
    i32 2, label %32
    i32 3, label %47
  ]

11:                                               ; preds = %5
  %12 = lshr i32 %9, 4
  %13 = and i32 %12, 1048575
  %14 = lshr i32 %9, 24
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %15
  store i32 %13, ptr %16, align 4, !tbaa !5
  br label %53

17:                                               ; preds = %5
  %18 = lshr i32 %9, 16
  %19 = and i32 %18, 255
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = lshr i32 %9, 4
  %24 = and i32 %23, 4095
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = add nsw i32 %27, %22
  %29 = lshr i32 %9, 24
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %30
  store i32 %28, ptr %31, align 4, !tbaa !5
  br label %53

32:                                               ; preds = %5
  %33 = lshr i32 %9, 24
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = lshr i32 %9, 16
  %38 = and i32 %37, 255
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %32
  %44 = lshr i32 %9, 4
  %45 = and i32 %44, 4095
  %46 = add nsw i32 %45, -1
  br label %53

47:                                               ; preds = %5
  %48 = lshr i32 %9, 24
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %51)
  br label %53

53:                                               ; preds = %32, %43, %5, %47, %17, %11
  %54 = phi i32 [ %6, %5 ], [ %6, %47 ], [ %46, %43 ], [ %6, %32 ], [ %6, %17 ], [ %6, %11 ]
  %55 = add nsw i32 %54, 1
  %56 = icmp slt i32 %55, %1
  br i1 %56, label %5, label %57, !llvm.loop !9

57:                                               ; preds = %53, %2
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
