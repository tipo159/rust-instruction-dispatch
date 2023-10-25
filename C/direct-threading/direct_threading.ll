; ModuleID = 'direct_threading.c'
source_filename = "direct_threading.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@__const.main.program = private unnamed_addr constant [7 x i32] [i32 0, i32 16777232, i32 50331632, i32 17, i32 131122, i32 3, i32 4], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Time elapsed: %10ld ns\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Average of %d results: %10ld ns\0A\00", align 1

; Function Attrs: nounwind ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca [5 x ptr], align 16
  %2 = alloca [256 x i32], align 4
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  store <2 x ptr> <ptr blockaddress(@main, %15), ptr blockaddress(@main, %24)>, ptr %1, align 16
  %5 = getelementptr inbounds [5 x ptr], ptr %1, i64 0, i64 2
  store <2 x ptr> <ptr blockaddress(@main, %39), ptr blockaddress(@main, %56)>, ptr %5, align 16
  %6 = getelementptr inbounds [5 x ptr], ptr %1, i64 0, i64 4
  store ptr blockaddress(@main, %62), ptr %6, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %7 = getelementptr inbounds %struct.timespec, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.timespec, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %0, %62
  %10 = phi i32 [ 0, %0 ], [ %75, %62 ]
  %11 = phi i64 [ 0, %0 ], [ %73, %62 ]
  %12 = phi ptr [ @__const.main.program, %0 ], [ %81, %62 ]
  %13 = icmp eq i32 %10, 10
  %14 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %3) #4
  br label %80

15:                                               ; preds = %80
  %16 = lshr i32 %82, 4
  %17 = and i32 %16, 1048575
  %18 = lshr i32 %82, 24
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %19
  store i32 %17, ptr %20, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %15, %24, %39, %56
  %22 = phi ptr [ %81, %15 ], [ %81, %24 ], [ %55, %39 ], [ %81, %56 ]
  %23 = getelementptr inbounds i32, ptr %22, i64 1
  br label %80

24:                                               ; preds = %80
  %25 = lshr i32 %82, 16
  %26 = and i32 %25, 255
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = lshr i32 %82, 4
  %31 = and i32 %30, 4095
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = add nsw i32 %34, %29
  %36 = lshr i32 %82, 24
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %37
  store i32 %35, ptr %38, align 4, !tbaa !5
  br label %21

39:                                               ; preds = %80
  %40 = lshr i32 %82, 24
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = lshr i32 %82, 16
  %45 = and i32 %44, 255
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = icmp eq i32 %43, %48
  %50 = lshr i32 %82, 4
  %51 = and i32 %50, 4095
  %52 = add nsw i32 %51, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i32], ptr @__const.main.program, i64 0, i64 %53
  %55 = select i1 %49, ptr %81, ptr %54
  br label %21

56:                                               ; preds = %80
  %57 = lshr i32 %82, 24
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %60)
  br label %21

62:                                               ; preds = %80
  %63 = select i1 %13, i64 0, i64 %11
  %64 = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %4) #4
  %65 = load i64, ptr %4, align 8, !tbaa !9
  %66 = load i64, ptr %3, align 8, !tbaa !9
  %67 = sub nsw i64 %65, %66
  %68 = mul nsw i64 %67, 1000000000
  %69 = load i64, ptr %7, align 8, !tbaa !12
  %70 = add nsw i64 %68, %69
  %71 = load i64, ptr %8, align 8, !tbaa !12
  %72 = sub i64 %70, %71
  %73 = add nsw i64 %72, %63
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %72)
  %75 = add nuw nsw i32 %10, 1
  %76 = icmp eq i32 %75, 110
  br i1 %76, label %77, label %9, !llvm.loop !13

77:                                               ; preds = %62
  %78 = sdiv i64 %73, 100
  %79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 100, i64 noundef %78)
  ret i32 0

80:                                               ; preds = %21, %9
  %81 = phi ptr [ %23, %21 ], [ %12, %9 ]
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = and i32 %82, 15
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [5 x ptr], ptr %1, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  indirectbr ptr %86, [label %15, label %24, label %39, label %56, label %62]
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"timespec", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
