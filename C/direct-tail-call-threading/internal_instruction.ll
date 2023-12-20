; ModuleID = 'internal_instruction.c'
source_filename = "internal_instruction.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.internal_instruction = type { ptr, i8, i8, %union.anon }
%union.anon = type { ptr }

@.str = private unnamed_addr constant [26 x i8] c"%x: load memory[%d] = %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [50 x i8] c"%x: add memory[%d](%d) = memory[%d] + memory[%d]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [26 x i8] c"%x: print memory[%d](%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [9 x i8] c"%x: ret\0A\00", align 1, !dbg !24

; Function Attrs: nounwind ssp uwtable(sync)
define void @load(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 !dbg !38 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata ptr %1, metadata !66, metadata !DIExpression()), !dbg !67
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1, !dbg !68
  %4 = load i8, ptr %3, align 8, !dbg !68, !tbaa !69
  %5 = zext i8 %4 to i32, !dbg !74
  %6 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3, !dbg !75
  %7 = load i32, ptr %6, align 8, !dbg !75, !tbaa !76
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %5, i32 noundef %7), !dbg !77
  %9 = load i32, ptr %6, align 8, !dbg !78, !tbaa !76
  %10 = load i8, ptr %3, align 8, !dbg !79, !tbaa !69
  %11 = zext i8 %10 to i64, !dbg !80
  %12 = getelementptr inbounds i32, ptr %1, i64 %11, !dbg !80
  store i32 %9, ptr %12, align 4, !dbg !81, !tbaa !82
  %13 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1, !dbg !84
  call void @llvm.dbg.value(metadata ptr %13, metadata !65, metadata !DIExpression()), !dbg !67
  %14 = load ptr, ptr %13, align 8, !dbg !85, !tbaa !87
  musttail call void %14(ptr noundef nonnull %13, ptr noundef %1) #7, !dbg !85
  ret void, !dbg !85
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !88 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable(sync)
define void @add(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 !dbg !95 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %1, metadata !98, metadata !DIExpression()), !dbg !99
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1, !dbg !100
  %4 = load i8, ptr %3, align 8, !dbg !100, !tbaa !69
  %5 = zext i8 %4 to i32, !dbg !101
  %6 = zext i8 %4 to i64, !dbg !102
  %7 = getelementptr inbounds i32, ptr %1, i64 %6, !dbg !102
  %8 = load i32, ptr %7, align 4, !dbg !102, !tbaa !82
  %9 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 2, !dbg !103
  %10 = load i8, ptr %9, align 1, !dbg !103, !tbaa !104
  %11 = zext i8 %10 to i32, !dbg !105
  %12 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3, !dbg !106
  %13 = load i8, ptr %12, align 8, !dbg !106, !tbaa !76
  %14 = zext i8 %13 to i32, !dbg !107
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14), !dbg !108
  %16 = load i8, ptr %9, align 1, !dbg !109, !tbaa !104
  %17 = zext i8 %16 to i64, !dbg !110
  %18 = getelementptr inbounds i32, ptr %1, i64 %17, !dbg !110
  %19 = load i32, ptr %18, align 4, !dbg !110, !tbaa !82
  %20 = load i8, ptr %12, align 8, !dbg !111, !tbaa !76
  %21 = zext i8 %20 to i64, !dbg !112
  %22 = getelementptr inbounds i32, ptr %1, i64 %21, !dbg !112
  %23 = load i32, ptr %22, align 4, !dbg !112, !tbaa !82
  %24 = add nsw i32 %23, %19, !dbg !113
  %25 = load i8, ptr %3, align 8, !dbg !114, !tbaa !69
  %26 = zext i8 %25 to i64, !dbg !115
  %27 = getelementptr inbounds i32, ptr %1, i64 %26, !dbg !115
  store i32 %24, ptr %27, align 4, !dbg !116, !tbaa !82
  %28 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1, !dbg !117
  call void @llvm.dbg.value(metadata ptr %28, metadata !97, metadata !DIExpression()), !dbg !99
  %29 = load ptr, ptr %28, align 8, !dbg !118, !tbaa !87
  musttail call void %29(ptr noundef nonnull %28, ptr noundef %1) #7, !dbg !118
  ret void, !dbg !118
}

; Function Attrs: nounwind ssp uwtable(sync)
define void @jmpne(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 !dbg !120 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata ptr %1, metadata !123, metadata !DIExpression()), !dbg !124
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1, !dbg !125
  %4 = load i8, ptr %3, align 8, !dbg !125, !tbaa !69
  %5 = zext i8 %4 to i32, !dbg !126
  %6 = zext i8 %4 to i64, !dbg !127
  %7 = getelementptr inbounds i32, ptr %1, i64 %6, !dbg !127
  %8 = load i32, ptr %7, align 4, !dbg !127, !tbaa !82
  %9 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 2, !dbg !128
  %10 = load i8, ptr %9, align 1, !dbg !128, !tbaa !104
  %11 = zext i8 %10 to i32, !dbg !129
  %12 = zext i8 %10 to i64, !dbg !130
  %13 = getelementptr inbounds i32, ptr %1, i64 %12, !dbg !130
  %14 = load i32, ptr %13, align 4, !dbg !130, !tbaa !82
  %15 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 3, !dbg !131
  %16 = load ptr, ptr %15, align 8, !dbg !131, !tbaa !76
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14, ptr noundef %16), !dbg !132
  %18 = load i8, ptr %3, align 8, !dbg !133, !tbaa !69
  %19 = zext i8 %18 to i64, !dbg !135
  %20 = getelementptr inbounds i32, ptr %1, i64 %19, !dbg !135
  %21 = load i32, ptr %20, align 4, !dbg !135, !tbaa !82
  %22 = load i8, ptr %9, align 1, !dbg !136, !tbaa !104
  %23 = zext i8 %22 to i64, !dbg !137
  %24 = getelementptr inbounds i32, ptr %1, i64 %23, !dbg !137
  %25 = load i32, ptr %24, align 4, !dbg !137, !tbaa !82
  %26 = icmp eq i32 %21, %25, !dbg !138
  br i1 %26, label %29, label %27, !dbg !139

27:                                               ; preds = %2
  %28 = load ptr, ptr %15, align 8, !dbg !140, !tbaa !76
  call void @llvm.dbg.value(metadata ptr %28, metadata !122, metadata !DIExpression()), !dbg !124
  br label %31, !dbg !142

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1, !dbg !143
  call void @llvm.dbg.value(metadata ptr %30, metadata !122, metadata !DIExpression()), !dbg !124
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ], !dbg !145
  call void @llvm.dbg.value(metadata ptr %32, metadata !122, metadata !DIExpression()), !dbg !124
  %33 = load ptr, ptr %32, align 8, !dbg !146, !tbaa !87
  musttail call void %33(ptr noundef nonnull %32, ptr noundef nonnull %1) #7, !dbg !146
  ret void, !dbg !146
}

; Function Attrs: nounwind ssp uwtable(sync)
define void @print(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 !dbg !148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata ptr %1, metadata !151, metadata !DIExpression()), !dbg !152
  %3 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 0, i32 1, !dbg !153
  %4 = load i8, ptr %3, align 8, !dbg !153, !tbaa !69
  %5 = zext i8 %4 to i32, !dbg !154
  %6 = zext i8 %4 to i64, !dbg !155
  %7 = getelementptr inbounds i32, ptr %1, i64 %6, !dbg !155
  %8 = load i32, ptr %7, align 4, !dbg !155, !tbaa !82
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, i32 noundef %5, i32 noundef %8), !dbg !156
  %10 = load i8, ptr %3, align 8, !dbg !157, !tbaa !69
  %11 = zext i8 %10 to i64, !dbg !158
  %12 = getelementptr inbounds i32, ptr %1, i64 %11, !dbg !158
  %13 = load i32, ptr %12, align 4, !dbg !158, !tbaa !82
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %13), !dbg !159
  %15 = getelementptr inbounds %struct.internal_instruction, ptr %0, i64 1, !dbg !160
  call void @llvm.dbg.value(metadata ptr %15, metadata !150, metadata !DIExpression()), !dbg !152
  %16 = load ptr, ptr %15, align 8, !dbg !161, !tbaa !87
  musttail call void %16(ptr noundef nonnull %15, ptr noundef %1) #7, !dbg !161
  ret void, !dbg !161
}

; Function Attrs: nofree nounwind ssp uwtable(sync)
define void @ret(ptr noalias noundef %0, ptr noalias nocapture noundef readnone %1) local_unnamed_addr #3 !dbg !163 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !167
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %0), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nounwind ssp uwtable(sync)
define void @vm_loop(ptr noundef %0) local_unnamed_addr #0 !dbg !170 {
  %2 = alloca [256 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !174, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #7, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !dbg !181
  %3 = load ptr, ptr %0, align 8, !dbg !182, !tbaa !87
  call void %3(ptr noundef nonnull %0, ptr noundef nonnull %2) #7, !dbg !183
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #7, !dbg !184
  ret void, !dbg !184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "internal_instruction.c", directory: "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading", checksumkind: CSK_MD5, checksum: "b7507d1ec52da7462015488ae670cffa", source: "#include <stdio.h>\0A\0A#include \22bytecode.h\22\0A#include \22internal_instruction.h\22\0A\0A#define NEXT_INSTRUCTION                                                   \\\0A    do                                                                     \\\0A    {                                                                      \\\0A        __attribute__((musttail)) return instruction->handler(instruction, \\\0A                                                              memory);     \\\0A    } while (0)\0A\0A#pragma clang diagnostic push\0A#pragma clang diagnostic ignored \22-Wformat\22\0A\0Avoid load(internal_instruction_t *restrict instruction,\0A                 int *restrict memory)\0A{\0A#ifdef DEBUG\0A    printf(\22%x: load memory[%d] = %d\\n\22, instruction, instruction->a, instruction->imm);\0A#endif\0A    memory[instruction->a] = instruction->imm;\0A    instruction++;\0A    NEXT_INSTRUCTION;\0A}\0A\0Avoid add(internal_instruction_t *restrict instruction,\0A                int *restrict memory)\0A{\0A#ifdef DEBUG\0A    printf(\22%x: add memory[%d](%d) = memory[%d] + memory[%d]\\n\22, instruction, instruction->a,\0A           memory[instruction->a], instruction->b, instruction->c);\0A#endif\0A    memory[instruction->a] = memory[instruction->b] + memory[instruction->c];\0A    instruction++;\0A    NEXT_INSTRUCTION;\0A}\0A\0Avoid jmpne(internal_instruction_t *restrict instruction,\0A                  int *restrict memory)\0A{\0A#ifdef DEBUG\0A    printf(\22%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\\n\22, instruction, instruction->a,\0A           memory[instruction->a], instruction->b, memory[instruction->b], instruction->jmp);\0A#endif\0A    if (memory[instruction->a] != memory[instruction->b])\0A    {\0A        instruction = instruction->jmp;\0A    }\0A    else\0A    {\0A        instruction++;\0A    }\0A    NEXT_INSTRUCTION;\0A}\0A\0Avoid print(internal_instruction_t *restrict instruction,\0A                  int *restrict memory)\0A{\0A#ifdef DEBUG\0A    printf(\22%x: print memory[%d](%d)\\n\22, instruction, instruction->a, memory[instruction->a]);\0A#endif\0A    printf(\22%d\\n\22, memory[instruction->a]);\0A    instruction++;\0A    NEXT_INSTRUCTION;\0A}\0A\0Avoid ret(internal_instruction_t *restrict instruction,\0A                int *restrict memory)\0A{\0A#ifdef DEBUG\0A    printf(\22%x: ret\\n\22, instruction);\0A#endif\0A}\0A\0A#pragma clang diagnostic pop\0A\0Avoid vm_loop(internal_instruction_t *internal_program)\0A{\0A    int memory[256] = {0};\0A\0A    internal_program[0].handler(internal_program, memory);\0A}\0A")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 26)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 50)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 17.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !30, splitDebugInlining: false, nameTableKind: Apple, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk", sdk: "MacOSX14.sdk")
!30 = !{!0, !7, !12, !17, !19, !24}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 1}
!37 = !{!"Homebrew clang version 17.0.6"}
!38 = distinct !DISubprogram(name: "load", scope: !2, file: !2, line: 16, type: !39, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !63}
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal_instruction_t", file: !44, line: 16, baseType: !45)
!44 = !DIFile(filename: "./internal_instruction.h", directory: "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading", checksumkind: CSK_MD5, checksum: "c2dfda2d882de019285914906a4665d7", source: "#pragma once\0A\0A#pragma clang diagnostic push\0A#pragma clang diagnostic ignored \22-Wvisibility\22\0Atypedef struct internal_instruction\0A{\0A    void (*handler)(struct internal_instruction *instruction, int *memory);\0A    unsigned char a;\0A    unsigned char b;\0A    union\0A    {\0A        unsigned char c;\0A        struct internal_instruction *jmp;\0A        int imm;\0A    };\0A} internal_instruction_t;\0A#pragma clang diagnostic pop\0A\0Aextern void load(internal_instruction_t *restrict instruction,\0A                 int *restrict memory);\0A\0Aextern void add(internal_instruction_t *restrict instruction,\0A                int *restrict memory);\0A\0Aextern void jmpne(internal_instruction_t *restrict instruction,\0A                  int *restrict memory);\0A\0Aextern void print(internal_instruction_t *restrict instruction,\0A                  int *restrict memory);\0A\0Aextern void ret(internal_instruction_t *restrict instruction,\0A                int *restrict memory);\0A\0Aextern void vm_loop(internal_instruction_t *internal_program);\0A")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_instruction", file: !44, line: 5, size: 192, elements: !46)
!46 = !{!47, !54, !56, !57}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !45, file: !44, line: 7, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 8, baseType: !55, size: 8, offset: 64)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !45, file: !44, line: 9, baseType: !55, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !44, line: 10, baseType: !58, size: 64, offset: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !44, line: 10, size: 64, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !58, file: !44, line: 12, baseType: !55, size: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "jmp", scope: !58, file: !44, line: 13, baseType: !51, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "imm", scope: !58, file: !44, line: 14, baseType: !53, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "instruction", arg: 1, scope: !38, file: !2, line: 16, type: !41)
!66 = !DILocalVariable(name: "memory", arg: 2, scope: !38, file: !2, line: 17, type: !63)
!67 = !DILocation(line: 0, scope: !38)
!68 = !DILocation(line: 20, column: 68, scope: !38)
!69 = !{!70, !72, i64 8}
!70 = !{!"internal_instruction", !71, i64 0, !72, i64 8, !72, i64 9, !72, i64 16}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 20, column: 55, scope: !38)
!75 = !DILocation(line: 20, column: 84, scope: !38)
!76 = !{!72, !72, i64 0}
!77 = !DILocation(line: 20, column: 5, scope: !38)
!78 = !DILocation(line: 22, column: 43, scope: !38)
!79 = !DILocation(line: 22, column: 25, scope: !38)
!80 = !DILocation(line: 22, column: 5, scope: !38)
!81 = !DILocation(line: 22, column: 28, scope: !38)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !72, i64 0}
!84 = !DILocation(line: 23, column: 16, scope: !38)
!85 = !DILocation(line: 24, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !38, file: !2, line: 24, column: 5)
!87 = !{!70, !71, i64 0}
!88 = !DISubprogram(name: "printf", scope: !89, file: !89, line: 167, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "463ca938d40f3912493d758c8faacee2", source: "/*\0A * Copyright (c) 2000, 2005, 2007, 2009, 2010 Apple Inc. All rights reserved.\0A *\0A * @APPLE_LICENSE_HEADER_START@\0A *\0A * This file contains Original Code and/or Modifications of Original Code\0A * as defined in and that are subject to the Apple Public Source License\0A * Version 2.0 (the 'License'). You may not use this file except in\0A * compliance with the License. Please obtain a copy of the License at\0A * http://www.opensource.apple.com/apsl/ and read it before using this\0A * file.\0A *\0A * The Original Code and all software distributed under the License are\0A * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER\0A * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,\0A * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,\0A * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.\0A * Please see the License for the specific language governing rights and\0A * limitations under the License.\0A *\0A * @APPLE_LICENSE_HEADER_END@\0A */\0A/*-\0A * Copyright (c) 1990, 1993\0A *\09The Regents of the University of California.  All rights reserved.\0A *\0A * This code is derived from software contributed to Berkeley by\0A * Chris Torek.\0A *\0A * Redistribution and use in source and binary forms, with or without\0A * modification, are permitted provided that the following conditions\0A * are met:\0A * 1. Redistributions of source code must retain the above copyright\0A *    notice, this list of conditions and the following disclaimer.\0A * 2. Redistributions in binary form must reproduce the above copyright\0A *    notice, this list of conditions and the following disclaimer in the\0A *    documentation and/or other materials provided with the distribution.\0A * 3. All advertising materials mentioning features or use of this software\0A *    must display the following acknowledgement:\0A *\09This product includes software developed by the University of\0A *\09California, Berkeley and its contributors.\0A * 4. Neither the name of the University nor the names of its contributors\0A *    may be used to endorse or promote products derived from this software\0A *    without specific prior written permission.\0A *\0A * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND\0A * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\0A * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE\0A * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE\0A * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\0A * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS\0A * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\0A * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT\0A * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY\0A * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF\0A * SUCH DAMAGE.\0A *\0A *\09@(#)stdio.h\098.5 (Berkeley) 4/29/95\0A */\0A\0A#ifndef\09_STDIO_H_\0A#define\09_STDIO_H_\0A\0A#include <_stdio.h>\0A\0A#include <sys/_types/_seek_set.h>\0A\0A__BEGIN_DECLS\0Aextern FILE *__stdinp;\0Aextern FILE *__stdoutp;\0Aextern FILE *__stderrp;\0A__END_DECLS\0A\0A#define\09__SLBF\090x0001\09\09/* line buffered */\0A#define\09__SNBF\090x0002\09\09/* unbuffered */\0A#define\09__SRD\090x0004\09\09/* OK to read */\0A#define\09__SWR\090x0008\09\09/* OK to write */\0A\09/* RD and WR are never simultaneously asserted */\0A#define\09__SRW\090x0010\09\09/* open for reading & writing */\0A#define\09__SEOF\090x0020\09\09/* found EOF */\0A#define\09__SERR\090x0040\09\09/* found error */\0A#define\09__SMBF\090x0080\09\09/* _buf is from malloc */\0A#define\09__SAPP\090x0100\09\09/* fdopen()ed in append mode */\0A#define\09__SSTR\090x0200\09\09/* this is an sprintf/snprintf string */\0A#define\09__SOPT\090x0400\09\09/* do fseek() optimisation */\0A#define\09__SNPT\090x0800\09\09/* do not do fseek() optimisation */\0A#define\09__SOFF\090x1000\09\09/* set iff _offset is in fact correct */\0A#define\09__SMOD\090x2000\09\09/* true => fgetln modified _p text */\0A#define __SALC  0x4000\09\09/* allocate string space dynamically */\0A#define __SIGN  0x8000\09\09/* ignore this file in _fwalk */\0A\0A/*\0A * The following three definitions are for ANSI C, which took them\0A * from System V, which brilliantly took internal interface macros and\0A * made them official arguments to setvbuf(), without renaming them.\0A * Hence, these ugly _IOxxx names are *supposed* to appear in user code.\0A *\0A * Although numbered as their counterparts above, the implementation\0A * does not rely on this.\0A */\0A#define\09_IOFBF\090\09\09/* setvbuf should set fully buffered */\0A#define\09_IOLBF\091\09\09/* setvbuf should set line buffered */\0A#define\09_IONBF\092\09\09/* setvbuf should set unbuffered */\0A\0A#define\09BUFSIZ\091024\09\09/* size of buffer used by setbuf */\0A#define\09EOF\09(-1)\0A\0A\09\09\09\09/* must be == _POSIX_STREAM_MAX <limits.h> */\0A#define\09FOPEN_MAX\0920\09/* must be <= OPEN_MAX <sys/syslimits.h> */\0A#define\09FILENAME_MAX\091024\09/* must be <= PATH_MAX <sys/syslimits.h> */\0A\0A/* System V/ANSI C; this is the wrong way to do this, do *not* use these. */\0A#ifndef _ANSI_SOURCE\0A#define\09P_tmpdir\09\22/var/tmp/\22\0A#endif\0A#define\09L_tmpnam\091024\09/* XXX must be == PATH_MAX */\0A#define\09TMP_MAX\09\09308915776\0A\0A#define\09stdin\09__stdinp\0A#define\09stdout\09__stdoutp\0A#define\09stderr\09__stderrp\0A\0A#ifdef _DARWIN_UNLIMITED_STREAMS\0A#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_3_2\0A#error \22_DARWIN_UNLIMITED_STREAMS specified, but -miphoneos-version-min version does not support it.\22\0A#elif defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_6\0A#error \22_DARWIN_UNLIMITED_STREAMS specified, but -mmacosx-version-min version does not support it.\22\0A#endif\0A#endif\0A\0A/* ANSI-C */\0A\0A__BEGIN_DECLS\0Avoid\09 clearerr(FILE *);\0Aint\09 fclose(FILE *);\0Aint\09 feof(FILE *);\0Aint\09 ferror(FILE *);\0Aint\09 fflush(FILE *);\0Aint\09 fgetc(FILE *);\0Aint\09 fgetpos(FILE * __restrict, fpos_t *);\0Achar\09*fgets(char * __restrict, int, FILE *);\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fopen));\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fopen));\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0Aint\09 fprintf(FILE * __restrict, const char * __restrict, ...) __printflike(2, 3);\0Aint\09 fputc(int, FILE *);\0Aint\09 fputs(const char * __restrict, FILE * __restrict) __DARWIN_ALIAS(fputs);\0Asize_t\09 fread(void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream);\0AFILE\09*freopen(const char * __restrict, const char * __restrict,\0A                 FILE * __restrict) __DARWIN_ALIAS(freopen);\0Aint\09 fscanf(FILE * __restrict, const char * __restrict, ...) __scanflike(2, 3);\0Aint\09 fseek(FILE *, long, int);\0Aint\09 fsetpos(FILE *, const fpos_t *);\0Along\09 ftell(FILE *);\0Asize_t\09 fwrite(const void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream) __DARWIN_ALIAS(fwrite);\0Aint\09 getc(FILE *);\0Aint\09 getchar(void);\0A\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.\22)\0A#endif\0Achar\09*gets(char *);\0A\0Avoid\09 perror(const char *) __cold;\0Aint\09 printf(const char * __restrict, ...) __printflike(1, 2);\0Aint\09 putc(int, FILE *);\0Aint\09 putchar(int);\0Aint\09 puts(const char *);\0Aint\09 remove(const char *);\0Aint\09 rename (const char *__old, const char *__new);\0Avoid\09 rewind(FILE *);\0Aint\09 scanf(const char * __restrict, ...) __scanflike(1, 2);\0Avoid\09 setbuf(FILE * __restrict, char * __restrict);\0Aint\09 setvbuf(FILE * __restrict, char * __restrict, int, size_t);\0A\0A__swift_unavailable(\22Use snprintf instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.\22)\0A#endif\0Aint\09 sprintf(char * __restrict, const char * __restrict, ...) __printflike(2, 3);\0A\0Aint\09 sscanf(const char * __restrict, const char * __restrict, ...) __scanflike(2, 3);\0AFILE\09*tmpfile(void);\0A\0A__swift_unavailable(\22Use mkstemp(3) instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.\22)\0A#endif\0Achar\09*tmpnam(char *);\0A\0Aint\09 ungetc(int, FILE *);\0Aint\09 vfprintf(FILE * __restrict, const char * __restrict, va_list) __printflike(2, 0);\0Aint\09 vprintf(const char * __restrict, va_list) __printflike(1, 0);\0A\0A__swift_unavailable(\22Use vsnprintf instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use vsnprintf(3) instead.\22)\0A#endif\0Aint\09 vsprintf(char * __restrict, const char * __restrict, va_list) __printflike(2, 0);\0A__END_DECLS\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-1988\0A */\0A\0A#if __DARWIN_C_LEVEL >= 198808L\0A#define\09L_ctermid\091024\09/* size for ctermid(); PATH_MAX */\0A\0A#include <_ctermid.h>\0A\0A__BEGIN_DECLS\0A\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fdopen));\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fdopen));\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0Aint\09 fileno(FILE *);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 198808L */\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.2-1992 C Language Binding Option\0A */\0A\0A#if __DARWIN_C_LEVEL >= 199209L\0A__BEGIN_DECLS\0Aint\09 pclose(FILE *) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(popen)) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(popen)) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 199209L */\0A\0A/* Additional functionality provided by:\0A * POSIX.1c-1995,\0A * POSIX.1i-1995,\0A * and the omnibus ISO/IEC 9945-1: 1996\0A */\0A\0A#if __DARWIN_C_LEVEL >= 199506L\0A\0A/* Functions internal to the implementation. */\0A__BEGIN_DECLS\0Aint\09__srget(FILE *);\0Aint\09__svfscanf(FILE *, const char *, va_list) __scanflike(2, 0);\0Aint\09__swbuf(int, FILE *);\0A__END_DECLS\0A\0A/*\0A * The __sfoo macros are here so that we can\0A * define function versions in the C library.\0A */\0A#define\09__sgetc(p) (--(p)->_r < 0 ? __srget(p) : (int)(*(p)->_p++))\0A#if defined(__GNUC__) && defined(__STDC__)\0A__header_always_inline int __sputc(int _c, FILE *_p) {\0A\09if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\\n'))\0A\09\09return (*_p->_p++ = _c);\0A\09else\0A\09\09return (__swbuf(_c, _p));\0A}\0A#else\0A/*\0A * This has been tuned to generate reasonable code on the vax using pcc.\0A */\0A#define\09__sputc(c, p) \\\0A\09(--(p)->_w < 0 ? \\\0A\09\09(p)->_w >= (p)->_lbfsize ? \\\0A\09\09\09(*(p)->_p = (c)), *(p)->_p != '\\n' ? \\\0A\09\09\09\09(int)*(p)->_p++ : \\\0A\09\09\09\09__swbuf('\\n', p) : \\\0A\09\09\09__swbuf((int)(c), p) : \\\0A\09\09(*(p)->_p = (c), (int)*(p)->_p++))\0A#endif\0A\0A#define\09__sfeof(p)\09(((p)->_flags & __SEOF) != 0)\0A#define\09__sferror(p)\09(((p)->_flags & __SERR) != 0)\0A#define\09__sclearerr(p)\09((void)((p)->_flags &= ~(__SERR|__SEOF)))\0A#define\09__sfileno(p)\09((p)->_file)\0A\0A__BEGIN_DECLS\0Avoid\09 flockfile(FILE *);\0Aint\09 ftrylockfile(FILE *);\0Avoid\09 funlockfile(FILE *);\0Aint\09 getc_unlocked(FILE *);\0Aint\09 getchar_unlocked(void);\0Aint\09 putc_unlocked(int, FILE *);\0Aint\09 putchar_unlocked(int);\0A\0A/* Removed in Issue 6 */\0A#if !defined(_POSIX_C_SOURCE) || _POSIX_C_SOURCE < 200112L\0Aint\09 getw(FILE *);\0Aint\09 putw(int, FILE *);\0A#endif\0A\0A__swift_unavailable(\22Use mkstemp(3) instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.\22)\0A#endif\0Achar\09*tempnam(const char *__dir, const char *__prefix) __DARWIN_ALIAS(tempnam);\0A__END_DECLS\0A\0A#ifndef lint\0A#define\09getc_unlocked(fp)\09__sgetc(fp)\0A#define putc_unlocked(x, fp)\09__sputc(x, fp)\0A#endif /* lint */\0A\0A#define\09getchar_unlocked()\09getc_unlocked(stdin)\0A#define\09putchar_unlocked(x)\09putc_unlocked(x, stdout)\0A#endif /* __DARWIN_C_LEVEL >= 199506L */\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-2001\0A * ISO C99\0A */\0A\0A#if __DARWIN_C_LEVEL >= 200112L\0A#include <sys/_types/_off_t.h>\0A\0A__BEGIN_DECLS\0Aint\09 fseeko(FILE * __stream, off_t __offset, int __whence);\0Aoff_t\09 ftello(FILE * __stream);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200112L */\0A\0A#if __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus)\0A__BEGIN_DECLS\0Aint\09 snprintf(char * __restrict __str, size_t __size, const char * __restrict __format, ...) __printflike(3, 4);\0Aint\09 vfscanf(FILE * __restrict __stream, const char * __restrict __format, va_list) __scanflike(2, 0);\0Aint\09 vscanf(const char * __restrict __format, va_list) __scanflike(1, 0);\0Aint\09 vsnprintf(char * __restrict __str, size_t __size, const char * __restrict __format, va_list) __printflike(3, 0);\0Aint\09 vsscanf(const char * __restrict __str, const char * __restrict __format, va_list) __scanflike(2, 0);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus) */\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-2008\0A */\0A\0A#if __DARWIN_C_LEVEL >= 200809L\0A#include <sys/_types/_ssize_t.h>\0A\0A__BEGIN_DECLS\0Aint\09dprintf(int, const char * __restrict, ...) __printflike(2, 3) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Aint\09vdprintf(int, const char * __restrict, va_list) __printflike(2, 0) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Assize_t getdelim(char ** __restrict __linep, size_t * __restrict __linecapp, int __delimiter, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Assize_t getline(char ** __restrict __linep, size_t * __restrict __linecapp, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0AFILE *fmemopen(void * __restrict __buf, size_t __size, const char * __restrict __mode) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\0AFILE *open_memstream(char **__bufp, size_t *__sizep) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200809L */\0A\0A\0A\0A/* Darwin extensions */\0A\0A#if __DARWIN_C_LEVEL >= __DARWIN_C_FULL\0A__BEGIN_DECLS\0Aextern __const int sys_nerr;\09\09/* perror(3) external variables */\0Aextern __const char *__const sys_errlist[];\0A\0Aint\09 asprintf(char ** __restrict, const char * __restrict, ...) __printflike(2, 3);\0Achar\09*ctermid_r(char *);\0Achar\09*fgetln(FILE *, size_t *);\0A__const char *fmtcheck(const char *, const char *) __attribute__((format_arg(2)));\0Aint\09 fpurge(FILE *);\0Avoid\09 setbuffer(FILE *, char *, int);\0Aint\09 setlinebuf(FILE *);\0Aint\09 vasprintf(char ** __restrict, const char * __restrict, va_list) __printflike(2, 0);\0A\0A\0A/*\0A * Stdio function-access interface.\0A */\0AFILE\09*funopen(const void *,\0A                 int (* _Nullable)(void *, char *, int),\0A                 int (* _Nullable)(void *, const char *, int),\0A                 fpos_t (* _Nullable)(void *, fpos_t, int),\0A                 int (* _Nullable)(void *));\0A__END_DECLS\0A#define\09fropen(cookie, fn) funopen(cookie, fn, 0, 0, 0)\0A#define\09fwopen(cookie, fn) funopen(cookie, 0, fn, 0, 0)\0A\0A#define\09feof_unlocked(p)\09__sfeof(p)\0A#define\09ferror_unlocked(p)\09__sferror(p)\0A#define\09clearerr_unlocked(p)\09__sclearerr(p)\0A#define\09fileno_unlocked(p)\09__sfileno(p)\0A\0A#endif /* __DARWIN_C_LEVEL >= __DARWIN_C_FULL */\0A\0A\0A#ifdef _USE_EXTENDED_LOCALES_\0A#include <xlocale/_stdio.h>\0A#endif /* _USE_EXTENDED_LOCALES_ */\0A\0A#if defined (__GNUC__) && _FORTIFY_SOURCE > 0 && !defined (__cplusplus)\0A/* Security checking functions.  */\0A#include <secure/_stdio.h>\0A#endif\0A\0A#endif /* _STDIO_H_ */\0A")
!90 = !DISubroutineType(types: !91)
!91 = !{!53, !92, null}
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!95 = distinct !DISubprogram(name: "add", scope: !2, file: !2, line: 27, type: !39, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !96)
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "instruction", arg: 1, scope: !95, file: !2, line: 27, type: !41)
!98 = !DILocalVariable(name: "memory", arg: 2, scope: !95, file: !2, line: 28, type: !63)
!99 = !DILocation(line: 0, scope: !95)
!100 = !DILocation(line: 31, column: 92, scope: !95)
!101 = !DILocation(line: 31, column: 79, scope: !95)
!102 = !DILocation(line: 32, column: 12, scope: !95)
!103 = !DILocation(line: 32, column: 49, scope: !95)
!104 = !{!70, !72, i64 9}
!105 = !DILocation(line: 32, column: 36, scope: !95)
!106 = !DILocation(line: 32, column: 65, scope: !95)
!107 = !DILocation(line: 32, column: 52, scope: !95)
!108 = !DILocation(line: 31, column: 5, scope: !95)
!109 = !DILocation(line: 34, column: 50, scope: !95)
!110 = !DILocation(line: 34, column: 30, scope: !95)
!111 = !DILocation(line: 34, column: 75, scope: !95)
!112 = !DILocation(line: 34, column: 55, scope: !95)
!113 = !DILocation(line: 34, column: 53, scope: !95)
!114 = !DILocation(line: 34, column: 25, scope: !95)
!115 = !DILocation(line: 34, column: 5, scope: !95)
!116 = !DILocation(line: 34, column: 28, scope: !95)
!117 = !DILocation(line: 35, column: 16, scope: !95)
!118 = !DILocation(line: 36, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !95, file: !2, line: 36, column: 5)
!120 = distinct !DISubprogram(name: "jmpne", scope: !2, file: !2, line: 39, type: !39, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !121)
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "instruction", arg: 1, scope: !120, file: !2, line: 39, type: !41)
!123 = !DILocalVariable(name: "memory", arg: 2, scope: !120, file: !2, line: 40, type: !63)
!124 = !DILocation(line: 0, scope: !120)
!125 = !DILocation(line: 43, column: 102, scope: !120)
!126 = !DILocation(line: 43, column: 89, scope: !120)
!127 = !DILocation(line: 44, column: 12, scope: !120)
!128 = !DILocation(line: 44, column: 49, scope: !120)
!129 = !DILocation(line: 44, column: 36, scope: !120)
!130 = !DILocation(line: 44, column: 52, scope: !120)
!131 = !DILocation(line: 44, column: 89, scope: !120)
!132 = !DILocation(line: 43, column: 5, scope: !120)
!133 = !DILocation(line: 46, column: 29, scope: !134)
!134 = distinct !DILexicalBlock(scope: !120, file: !2, line: 46, column: 9)
!135 = !DILocation(line: 46, column: 9, scope: !134)
!136 = !DILocation(line: 46, column: 55, scope: !134)
!137 = !DILocation(line: 46, column: 35, scope: !134)
!138 = !DILocation(line: 46, column: 32, scope: !134)
!139 = !DILocation(line: 46, column: 9, scope: !120)
!140 = !DILocation(line: 48, column: 36, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !2, line: 47, column: 5)
!142 = !DILocation(line: 49, column: 5, scope: !141)
!143 = !DILocation(line: 52, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !134, file: !2, line: 51, column: 5)
!145 = !DILocation(line: 0, scope: !134)
!146 = !DILocation(line: 54, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !120, file: !2, line: 54, column: 5)
!148 = distinct !DISubprogram(name: "print", scope: !2, file: !2, line: 57, type: !39, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !149)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "instruction", arg: 1, scope: !148, file: !2, line: 57, type: !41)
!151 = !DILocalVariable(name: "memory", arg: 2, scope: !148, file: !2, line: 58, type: !63)
!152 = !DILocation(line: 0, scope: !148)
!153 = !DILocation(line: 61, column: 68, scope: !148)
!154 = !DILocation(line: 61, column: 55, scope: !148)
!155 = !DILocation(line: 61, column: 71, scope: !148)
!156 = !DILocation(line: 61, column: 5, scope: !148)
!157 = !DILocation(line: 63, column: 40, scope: !148)
!158 = !DILocation(line: 63, column: 20, scope: !148)
!159 = !DILocation(line: 63, column: 5, scope: !148)
!160 = !DILocation(line: 64, column: 16, scope: !148)
!161 = !DILocation(line: 65, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !2, line: 65, column: 5)
!163 = distinct !DISubprogram(name: "ret", scope: !2, file: !2, line: 68, type: !39, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "instruction", arg: 1, scope: !163, file: !2, line: 68, type: !41)
!166 = !DILocalVariable(name: "memory", arg: 2, scope: !163, file: !2, line: 69, type: !63)
!167 = !DILocation(line: 0, scope: !163)
!168 = !DILocation(line: 72, column: 5, scope: !163)
!169 = !DILocation(line: 74, column: 1, scope: !163)
!170 = distinct !DISubprogram(name: "vm_loop", scope: !2, file: !2, line: 78, type: !171, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !42}
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "internal_program", arg: 1, scope: !170, file: !2, line: 78, type: !42)
!175 = !DILocalVariable(name: "memory", scope: !170, file: !2, line: 80, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 256)
!179 = !DILocation(line: 0, scope: !170)
!180 = !DILocation(line: 80, column: 5, scope: !170)
!181 = !DILocation(line: 80, column: 9, scope: !170)
!182 = !DILocation(line: 82, column: 25, scope: !170)
!183 = !DILocation(line: 82, column: 5, scope: !170)
!184 = !DILocation(line: 83, column: 1, scope: !170)
