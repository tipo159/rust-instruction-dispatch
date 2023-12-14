; ModuleID = 'bytecode.c'
source_filename = "bytecode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind ssp uwtable(sync)
define void @vm_loop(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [5 x ptr], align 16
  %3 = alloca [256 x i32], align 4
  store <2 x ptr> <ptr blockaddress(@vm_loop, %6), ptr blockaddress(@vm_loop, %15)>, ptr %2, align 16
  %4 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 2
  store <2 x ptr> <ptr blockaddress(@vm_loop, %30), ptr blockaddress(@vm_loop, %47)>, ptr %4, align 16
  %5 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 4
  store ptr blockaddress(@vm_loop, %53), ptr %5, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %54

6:                                                ; preds = %54
  %7 = lshr i32 %56, 4
  %8 = and i32 %7, 1048575
  %9 = lshr i32 %56, 24
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %6, %15, %30, %47
  %13 = phi ptr [ %55, %6 ], [ %55, %15 ], [ %46, %30 ], [ %55, %47 ]
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  br label %54

15:                                               ; preds = %54
  %16 = lshr i32 %56, 16
  %17 = and i32 %16, 255
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = lshr i32 %56, 4
  %22 = and i32 %21, 4095
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %20
  %27 = lshr i32 %56, 24
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %28
  store i32 %26, ptr %29, align 4, !tbaa !5
  br label %12

30:                                               ; preds = %54
  %31 = lshr i32 %56, 24
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = lshr i32 %56, 16
  %36 = and i32 %35, 255
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = icmp eq i32 %34, %39
  %41 = lshr i32 %56, 4
  %42 = and i32 %41, 4095
  %43 = add nsw i32 %42, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %0, i64 %44
  %46 = select i1 %40, ptr %55, ptr %45
  br label %12

47:                                               ; preds = %54
  %48 = lshr i32 %56, 24
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %51)
  br label %12

53:                                               ; preds = %54
  ret void

54:                                               ; preds = %12, %1
  %55 = phi ptr [ %14, %12 ], [ %0, %1 ]
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = and i32 %56, 15
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  indirectbr ptr %60, [label %6, label %15, label %30, label %47, label %53]
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
