; ModuleID = 'bytecode.c'
source_filename = "bytecode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [27 x i8] c"%ld: load memory[%d] = %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [51 x i8] c"%ld: add memory[%d](%d) = memory[%d] + memory[%d]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [73 x i8] c"%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [27 x i8] c"%ld: print memory[%d](%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [10 x i8] c"%ld: ret\0A\00", align 1, !dbg !24

; Function Attrs: nofree nounwind ssp uwtable(sync)
define void @vm_loop(ptr noundef %0) #0 !dbg !38 {
  %2 = alloca [5 x ptr], align 16
  %3 = alloca [256 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !46, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata ptr %2, metadata !47, metadata !DIExpression()), !dbg !64
  store <2 x ptr> <ptr blockaddress(@vm_loop, %7), ptr blockaddress(@vm_loop, %24)>, ptr %2, align 16, !dbg !64
  %4 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 2, !dbg !64
  store <2 x ptr> <ptr blockaddress(@vm_loop, %52), ptr blockaddress(@vm_loop, %85)>, ptr %4, align 16, !dbg !64
  %5 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 4, !dbg !64
  store ptr blockaddress(@vm_loop, %100), ptr %5, align 16, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %3, metadata !52, metadata !DIExpression()), !dbg !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %3, i8 0, i64 1024, i1 false), !dbg !65
  call void @llvm.dbg.value(metadata ptr %0, metadata !57, metadata !DIExpression()), !dbg !63
  %6 = ptrtoint ptr %0 to i64
  br label %105, !dbg !66

7:                                                ; preds = %105
  call void @llvm.dbg.label(metadata !58), !dbg !67
  %8 = ptrtoint ptr %106 to i64, !dbg !68
  %9 = sub i64 %8, %6, !dbg !68
  %10 = ashr exact i64 %9, 2, !dbg !68
  %11 = lshr i32 %107, 24, !dbg !69
  %12 = lshr i32 %107, 4, !dbg !70
  %13 = and i32 %12, 1048575, !dbg !70
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %10, i32 noundef %11, i32 noundef %13), !dbg !71
  %15 = load i32, ptr %106, align 4, !dbg !72, !tbaa !73
  %16 = lshr i32 %15, 4, !dbg !72
  %17 = and i32 %16, 1048575, !dbg !72
  %18 = lshr i32 %15, 24, !dbg !77
  %19 = zext i32 %18 to i64, !dbg !78
  %20 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %19, !dbg !78
  store i32 %17, ptr %20, align 4, !dbg !79, !tbaa !73
  call void @llvm.dbg.value(metadata ptr %106, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !63
  br label %21, !dbg !80

21:                                               ; preds = %7, %24, %52, %85
  %22 = phi ptr [ %106, %7 ], [ %106, %24 ], [ %84, %52 ], [ %106, %85 ]
  %23 = getelementptr inbounds i32, ptr %22, i64 1, !dbg !63
  br label %105, !dbg !63

24:                                               ; preds = %105
  call void @llvm.dbg.label(metadata !59), !dbg !81
  %25 = ptrtoint ptr %106 to i64, !dbg !82
  %26 = sub i64 %25, %6, !dbg !82
  %27 = ashr exact i64 %26, 2, !dbg !82
  %28 = lshr i32 %107, 24, !dbg !83
  %29 = zext i32 %28 to i64, !dbg !84
  %30 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %29, !dbg !84
  %31 = load i32, ptr %30, align 4, !dbg !84, !tbaa !73
  %32 = lshr i32 %107, 16, !dbg !85
  %33 = and i32 %32, 255, !dbg !85
  %34 = lshr i32 %107, 4, !dbg !86
  %35 = and i32 %34, 4095, !dbg !86
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %27, i32 noundef %28, i32 noundef %31, i32 noundef %33, i32 noundef %35), !dbg !87
  %37 = load i32, ptr %106, align 4, !dbg !88, !tbaa !73
  %38 = lshr i32 %37, 16, !dbg !88
  %39 = and i32 %38, 255, !dbg !88
  %40 = zext i32 %39 to i64, !dbg !89
  %41 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %40, !dbg !89
  %42 = load i32, ptr %41, align 4, !dbg !89, !tbaa !73
  %43 = lshr i32 %37, 4, !dbg !90
  %44 = and i32 %43, 4095, !dbg !90
  %45 = zext i32 %44 to i64, !dbg !91
  %46 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %45, !dbg !91
  %47 = load i32, ptr %46, align 4, !dbg !91, !tbaa !73
  %48 = add nsw i32 %47, %42, !dbg !92
  %49 = lshr i32 %37, 24, !dbg !93
  %50 = zext i32 %49 to i64, !dbg !94
  %51 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %50, !dbg !94
  store i32 %48, ptr %51, align 4, !dbg !95, !tbaa !73
  call void @llvm.dbg.value(metadata ptr %106, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !63
  br label %21, !dbg !96

52:                                               ; preds = %105
  call void @llvm.dbg.label(metadata !60), !dbg !97
  %53 = ptrtoint ptr %106 to i64, !dbg !98
  %54 = sub i64 %53, %6, !dbg !98
  %55 = ashr exact i64 %54, 2, !dbg !98
  %56 = lshr i32 %107, 24, !dbg !99
  %57 = zext i32 %56 to i64, !dbg !100
  %58 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %57, !dbg !100
  %59 = load i32, ptr %58, align 4, !dbg !100, !tbaa !73
  %60 = lshr i32 %107, 16, !dbg !101
  %61 = and i32 %60, 255, !dbg !101
  %62 = zext i32 %61 to i64, !dbg !102
  %63 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %62, !dbg !102
  %64 = load i32, ptr %63, align 4, !dbg !102, !tbaa !73
  %65 = lshr i32 %107, 4, !dbg !103
  %66 = and i32 %65, 4095, !dbg !103
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %55, i32 noundef %56, i32 noundef %59, i32 noundef %61, i32 noundef %64, i32 noundef %66), !dbg !104
  %68 = load i32, ptr %106, align 4, !dbg !105, !tbaa !73
  %69 = lshr i32 %68, 24, !dbg !105
  %70 = zext i32 %69 to i64, !dbg !107
  %71 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %70, !dbg !107
  %72 = load i32, ptr %71, align 4, !dbg !107, !tbaa !73
  %73 = lshr i32 %68, 16, !dbg !108
  %74 = and i32 %73, 255, !dbg !108
  %75 = zext i32 %74 to i64, !dbg !109
  %76 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %75, !dbg !109
  %77 = load i32, ptr %76, align 4, !dbg !109, !tbaa !73
  %78 = icmp eq i32 %72, %77, !dbg !110
  %79 = lshr i32 %68, 4, !dbg !111
  %80 = and i32 %79, 4095, !dbg !111
  %81 = add nsw i32 %80, -1, !dbg !111
  %82 = zext i32 %81 to i64, !dbg !111
  %83 = getelementptr inbounds i32, ptr %0, i64 %82, !dbg !111
  %84 = select i1 %78, ptr %106, ptr %83, !dbg !111
  call void @llvm.dbg.value(metadata ptr %84, metadata !57, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata ptr %84, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !63
  br label %21, !dbg !112

85:                                               ; preds = %105
  call void @llvm.dbg.label(metadata !61), !dbg !113
  %86 = ptrtoint ptr %106 to i64, !dbg !114
  %87 = sub i64 %86, %6, !dbg !114
  %88 = ashr exact i64 %87, 2, !dbg !114
  %89 = lshr i32 %107, 24, !dbg !115
  %90 = zext i32 %89 to i64, !dbg !116
  %91 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %90, !dbg !116
  %92 = load i32, ptr %91, align 4, !dbg !116, !tbaa !73
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %88, i32 noundef %89, i32 noundef %92), !dbg !117
  %94 = load i32, ptr %106, align 4, !dbg !118, !tbaa !73
  %95 = lshr i32 %94, 24, !dbg !118
  %96 = zext i32 %95 to i64, !dbg !119
  %97 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %96, !dbg !119
  %98 = load i32, ptr %97, align 4, !dbg !119, !tbaa !73
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %98), !dbg !120
  call void @llvm.dbg.value(metadata ptr %106, metadata !57, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !63
  br label %21, !dbg !121

100:                                              ; preds = %105
  call void @llvm.dbg.label(metadata !62), !dbg !122
  %101 = ptrtoint ptr %106 to i64, !dbg !123
  %102 = sub i64 %101, %6, !dbg !123
  %103 = ashr exact i64 %102, 2, !dbg !123
  %104 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %103), !dbg !124
  ret void, !dbg !125

105:                                              ; preds = %21, %1
  %106 = phi ptr [ %0, %1 ], [ %23, %21 ], !dbg !63
  %107 = load i32, ptr %106, align 4, !dbg !63, !tbaa !73
  %108 = and i32 %107, 15, !dbg !63
  %109 = zext i32 %108 to i64, !dbg !63
  %110 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %109, !dbg !63
  %111 = load ptr, ptr %110, align 8, !dbg !63, !tbaa !126
  call void @llvm.dbg.value(metadata ptr %106, metadata !57, metadata !DIExpression()), !dbg !63
  indirectbr ptr %111, [label %7, label %24, label %52, label %85, label %100]
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !128 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree nounwind ssp uwtable(sync) "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "frame-pointer"="non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" "unsafe-fp-math"="true" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bytecode.c", directory: "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading", checksumkind: CSK_MD5, checksum: "47d8168430e131eeef41d65004b895ff", source: "#include <stdio.h>\0A\0A#include \22bytecode.h\22\0A\0A#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++programPointer))]\0A\0Avoid vm_loop(bytecode_t *program)\0A{\0A    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,\0A                              &&do_ret};\0A    int memory[256] = {0};\0A    bytecode_t *programPointer = program;\0A\0A    goto *dispatch_table[GET_OPCODE(*programPointer)];\0Ado_load:\0A#ifdef DEBUG\0A    printf(\22%ld: load memory[%d] = %d\\n\22, programPointer - &program[0], GET_OPERAND_A(*programPointer), GET_OPERAND_IMM(*programPointer));\0A#endif\0A    memory[GET_OPERAND_A(*programPointer)] = GET_OPERAND_IMM(*programPointer);\0A    DISPATCH();\0Ado_add:\0A#ifdef DEBUG\0A    printf(\22%ld: add memory[%d](%d) = memory[%d] + memory[%d]\\n\22, programPointer - &program[0], GET_OPERAND_A(*programPointer),\0A           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), GET_OPERAND_C(*programPointer));\0A#endif\0A    memory[GET_OPERAND_A(*programPointer)] = memory[GET_OPERAND_B(*programPointer)] + memory[GET_OPERAND_C(*programPointer)];\0A    DISPATCH();\0Ado_jmpne:\0A#ifdef DEBUG\0A    printf(\22%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\\n\22, programPointer - &program[0], GET_OPERAND_A(*programPointer),\0A           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), memory[GET_OPERAND_B(*programPointer)], GET_OPERAND_JMP(*programPointer));\0A#endif\0A    if (memory[GET_OPERAND_A(*programPointer)] != memory[GET_OPERAND_B(*programPointer)])\0A    {\0A        programPointer = &program[GET_OPERAND_JMP(*programPointer) - 1];\0A    }\0A    DISPATCH();\0Ado_print:\0A#ifdef DEBUG\0A    printf(\22%ld: print memory[%d](%d)\\n\22, programPointer - &program[0], GET_OPERAND_A(*programPointer), memory[GET_OPERAND_A(*programPointer)]);\0A#endif\0A    printf(\22%d\\n\22, memory[GET_OPERAND_A(*programPointer)]);\0A    DISPATCH();\0Ado_ret:\0A#ifdef DEBUG\0A    printf(\22%ld: ret\\n\22, programPointer - &program[0]);\0A#endif\0A    ;\0A}\0A")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 51)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 73)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 10)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Homebrew clang version 17.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !30, splitDebugInlining: false, nameTableKind: Apple, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk", sdk: "MacOSX14.sdk")
!30 = !{!0, !7, !12, !17, !19, !24}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 1}
!37 = !{!"Homebrew clang version 17.0.6"}
!38 = distinct !DISubprogram(name: "vm_loop", scope: !2, file: !2, line: 7, type: !39, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !45)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytecode_t", file: !43, line: 12, baseType: !44)
!43 = !DIFile(filename: "./bytecode.h", directory: "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading", checksumkind: CSK_MD5, checksum: "c8e1e974e2eb424d295059f7e81af4ac", source: "#pragma once\0A\0Atypedef enum\0A{\0A    OP_LOAD,\0A    OP_ADD,\0A    OP_JMPNE,\0A    OP_PRINT,\0A    OP_RET\0A} opcode_t;\0A\0Atypedef unsigned int bytecode_t;\0A\0A// Bytecde: packed 32 bit\0A// --------------------------\0A//    A:B:C:OP = 8: 8:12: 4\0A//    A:Imm:OP =    8:20: 4\0A//  A:B:Jmp:OP = 8: 8:12: 4\0A\0A#define MAKE_OPCODE(op) ((op) & 0xf)\0A\0A#define MAKE_OPCODE_A_B_C(op, a, b, c) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((c) & 0xfff) << 4))\0A\0A#define MAKE_OPCODE_IMM(op, a, imm) (((op) & 0xf) + (((a) & 0xff) << 24) + (((imm & 0xfffff) << 4)))\0A\0A#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((jmp) & 0xfff) << 4))\0A\0A#define GET_OPCODE(instruction) ((instruction) & 0xf)\0A\0A#define GET_OPERAND_A(instruction) (((instruction) >> 24) & 0xff)\0A\0A#define GET_OPERAND_B(instruction) (((instruction) >> 16) & 0xff)\0A\0A#define GET_OPERAND_C(instruction) (((instruction) >> 4) & 0xfff)\0A\0A#define GET_OPERAND_IMM(instruction) (((instruction) >> 4) & 0xfffff)\0A\0A#define GET_OPERAND_JMP(instruction) (((instruction) >> 4) & 0xfff)\0A\0Aextern void vm_loop(bytecode_t *pp);")
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !52, !57, !58, !59, !60, !61, !62}
!46 = !DILocalVariable(name: "program", arg: 1, scope: !38, file: !2, line: 7, type: !41)
!47 = !DILocalVariable(name: "dispatch_table", scope: !38, file: !2, line: 9, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 320, elements: !50)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DILocalVariable(name: "memory", scope: !38, file: !2, line: 11, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8192, elements: !55)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !{!56}
!56 = !DISubrange(count: 256)
!57 = !DILocalVariable(name: "programPointer", scope: !38, file: !2, line: 12, type: !41)
!58 = !DILabel(scope: !38, name: "do_load", file: !2, line: 15)
!59 = !DILabel(scope: !38, name: "do_add", file: !2, line: 21)
!60 = !DILabel(scope: !38, name: "do_jmpne", file: !2, line: 28)
!61 = !DILabel(scope: !38, name: "do_print", file: !2, line: 38)
!62 = !DILabel(scope: !38, name: "do_ret", file: !2, line: 44)
!63 = !DILocation(line: 0, scope: !38)
!64 = !DILocation(line: 9, column: 11, scope: !38)
!65 = !DILocation(line: 11, column: 9, scope: !38)
!66 = !DILocation(line: 14, column: 5, scope: !38)
!67 = !DILocation(line: 15, column: 1, scope: !38)
!68 = !DILocation(line: 17, column: 58, scope: !38)
!69 = !DILocation(line: 17, column: 73, scope: !38)
!70 = !DILocation(line: 17, column: 105, scope: !38)
!71 = !DILocation(line: 17, column: 5, scope: !38)
!72 = !DILocation(line: 19, column: 46, scope: !38)
!73 = !{!74, !74, i64 0}
!74 = !{!"int", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !DILocation(line: 19, column: 12, scope: !38)
!78 = !DILocation(line: 19, column: 5, scope: !38)
!79 = !DILocation(line: 19, column: 44, scope: !38)
!80 = !DILocation(line: 20, column: 5, scope: !38)
!81 = !DILocation(line: 21, column: 1, scope: !38)
!82 = !DILocation(line: 23, column: 82, scope: !38)
!83 = !DILocation(line: 23, column: 97, scope: !38)
!84 = !DILocation(line: 24, column: 12, scope: !38)
!85 = !DILocation(line: 24, column: 52, scope: !38)
!86 = !DILocation(line: 24, column: 84, scope: !38)
!87 = !DILocation(line: 23, column: 5, scope: !38)
!88 = !DILocation(line: 26, column: 53, scope: !38)
!89 = !DILocation(line: 26, column: 46, scope: !38)
!90 = !DILocation(line: 26, column: 94, scope: !38)
!91 = !DILocation(line: 26, column: 87, scope: !38)
!92 = !DILocation(line: 26, column: 85, scope: !38)
!93 = !DILocation(line: 26, column: 12, scope: !38)
!94 = !DILocation(line: 26, column: 5, scope: !38)
!95 = !DILocation(line: 26, column: 44, scope: !38)
!96 = !DILocation(line: 27, column: 5, scope: !38)
!97 = !DILocation(line: 28, column: 1, scope: !38)
!98 = !DILocation(line: 30, column: 104, scope: !38)
!99 = !DILocation(line: 30, column: 119, scope: !38)
!100 = !DILocation(line: 31, column: 12, scope: !38)
!101 = !DILocation(line: 31, column: 52, scope: !38)
!102 = !DILocation(line: 31, column: 84, scope: !38)
!103 = !DILocation(line: 31, column: 124, scope: !38)
!104 = !DILocation(line: 30, column: 5, scope: !38)
!105 = !DILocation(line: 33, column: 16, scope: !106)
!106 = distinct !DILexicalBlock(scope: !38, file: !2, line: 33, column: 9)
!107 = !DILocation(line: 33, column: 9, scope: !106)
!108 = !DILocation(line: 33, column: 58, scope: !106)
!109 = !DILocation(line: 33, column: 51, scope: !106)
!110 = !DILocation(line: 33, column: 48, scope: !106)
!111 = !DILocation(line: 33, column: 9, scope: !38)
!112 = !DILocation(line: 37, column: 5, scope: !38)
!113 = !DILocation(line: 38, column: 1, scope: !38)
!114 = !DILocation(line: 40, column: 58, scope: !38)
!115 = !DILocation(line: 40, column: 73, scope: !38)
!116 = !DILocation(line: 40, column: 105, scope: !38)
!117 = !DILocation(line: 40, column: 5, scope: !38)
!118 = !DILocation(line: 42, column: 27, scope: !38)
!119 = !DILocation(line: 42, column: 20, scope: !38)
!120 = !DILocation(line: 42, column: 5, scope: !38)
!121 = !DILocation(line: 43, column: 5, scope: !38)
!122 = !DILocation(line: 44, column: 1, scope: !38)
!123 = !DILocation(line: 46, column: 41, scope: !38)
!124 = !DILocation(line: 46, column: 5, scope: !38)
!125 = !DILocation(line: 49, column: 1, scope: !38)
!126 = !{!127, !127, i64 0}
!127 = !{!"any pointer", !75, i64 0}
!128 = !DISubprogram(name: "printf", scope: !129, file: !129, line: 167, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "463ca938d40f3912493d758c8faacee2", source: "/*\0A * Copyright (c) 2000, 2005, 2007, 2009, 2010 Apple Inc. All rights reserved.\0A *\0A * @APPLE_LICENSE_HEADER_START@\0A *\0A * This file contains Original Code and/or Modifications of Original Code\0A * as defined in and that are subject to the Apple Public Source License\0A * Version 2.0 (the 'License'). You may not use this file except in\0A * compliance with the License. Please obtain a copy of the License at\0A * http://www.opensource.apple.com/apsl/ and read it before using this\0A * file.\0A *\0A * The Original Code and all software distributed under the License are\0A * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER\0A * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,\0A * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,\0A * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.\0A * Please see the License for the specific language governing rights and\0A * limitations under the License.\0A *\0A * @APPLE_LICENSE_HEADER_END@\0A */\0A/*-\0A * Copyright (c) 1990, 1993\0A *\09The Regents of the University of California.  All rights reserved.\0A *\0A * This code is derived from software contributed to Berkeley by\0A * Chris Torek.\0A *\0A * Redistribution and use in source and binary forms, with or without\0A * modification, are permitted provided that the following conditions\0A * are met:\0A * 1. Redistributions of source code must retain the above copyright\0A *    notice, this list of conditions and the following disclaimer.\0A * 2. Redistributions in binary form must reproduce the above copyright\0A *    notice, this list of conditions and the following disclaimer in the\0A *    documentation and/or other materials provided with the distribution.\0A * 3. All advertising materials mentioning features or use of this software\0A *    must display the following acknowledgement:\0A *\09This product includes software developed by the University of\0A *\09California, Berkeley and its contributors.\0A * 4. Neither the name of the University nor the names of its contributors\0A *    may be used to endorse or promote products derived from this software\0A *    without specific prior written permission.\0A *\0A * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND\0A * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\0A * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE\0A * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE\0A * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\0A * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS\0A * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\0A * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT\0A * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY\0A * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF\0A * SUCH DAMAGE.\0A *\0A *\09@(#)stdio.h\098.5 (Berkeley) 4/29/95\0A */\0A\0A#ifndef\09_STDIO_H_\0A#define\09_STDIO_H_\0A\0A#include <_stdio.h>\0A\0A#include <sys/_types/_seek_set.h>\0A\0A__BEGIN_DECLS\0Aextern FILE *__stdinp;\0Aextern FILE *__stdoutp;\0Aextern FILE *__stderrp;\0A__END_DECLS\0A\0A#define\09__SLBF\090x0001\09\09/* line buffered */\0A#define\09__SNBF\090x0002\09\09/* unbuffered */\0A#define\09__SRD\090x0004\09\09/* OK to read */\0A#define\09__SWR\090x0008\09\09/* OK to write */\0A\09/* RD and WR are never simultaneously asserted */\0A#define\09__SRW\090x0010\09\09/* open for reading & writing */\0A#define\09__SEOF\090x0020\09\09/* found EOF */\0A#define\09__SERR\090x0040\09\09/* found error */\0A#define\09__SMBF\090x0080\09\09/* _buf is from malloc */\0A#define\09__SAPP\090x0100\09\09/* fdopen()ed in append mode */\0A#define\09__SSTR\090x0200\09\09/* this is an sprintf/snprintf string */\0A#define\09__SOPT\090x0400\09\09/* do fseek() optimisation */\0A#define\09__SNPT\090x0800\09\09/* do not do fseek() optimisation */\0A#define\09__SOFF\090x1000\09\09/* set iff _offset is in fact correct */\0A#define\09__SMOD\090x2000\09\09/* true => fgetln modified _p text */\0A#define __SALC  0x4000\09\09/* allocate string space dynamically */\0A#define __SIGN  0x8000\09\09/* ignore this file in _fwalk */\0A\0A/*\0A * The following three definitions are for ANSI C, which took them\0A * from System V, which brilliantly took internal interface macros and\0A * made them official arguments to setvbuf(), without renaming them.\0A * Hence, these ugly _IOxxx names are *supposed* to appear in user code.\0A *\0A * Although numbered as their counterparts above, the implementation\0A * does not rely on this.\0A */\0A#define\09_IOFBF\090\09\09/* setvbuf should set fully buffered */\0A#define\09_IOLBF\091\09\09/* setvbuf should set line buffered */\0A#define\09_IONBF\092\09\09/* setvbuf should set unbuffered */\0A\0A#define\09BUFSIZ\091024\09\09/* size of buffer used by setbuf */\0A#define\09EOF\09(-1)\0A\0A\09\09\09\09/* must be == _POSIX_STREAM_MAX <limits.h> */\0A#define\09FOPEN_MAX\0920\09/* must be <= OPEN_MAX <sys/syslimits.h> */\0A#define\09FILENAME_MAX\091024\09/* must be <= PATH_MAX <sys/syslimits.h> */\0A\0A/* System V/ANSI C; this is the wrong way to do this, do *not* use these. */\0A#ifndef _ANSI_SOURCE\0A#define\09P_tmpdir\09\22/var/tmp/\22\0A#endif\0A#define\09L_tmpnam\091024\09/* XXX must be == PATH_MAX */\0A#define\09TMP_MAX\09\09308915776\0A\0A#define\09stdin\09__stdinp\0A#define\09stdout\09__stdoutp\0A#define\09stderr\09__stderrp\0A\0A#ifdef _DARWIN_UNLIMITED_STREAMS\0A#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_3_2\0A#error \22_DARWIN_UNLIMITED_STREAMS specified, but -miphoneos-version-min version does not support it.\22\0A#elif defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_6\0A#error \22_DARWIN_UNLIMITED_STREAMS specified, but -mmacosx-version-min version does not support it.\22\0A#endif\0A#endif\0A\0A/* ANSI-C */\0A\0A__BEGIN_DECLS\0Avoid\09 clearerr(FILE *);\0Aint\09 fclose(FILE *);\0Aint\09 feof(FILE *);\0Aint\09 ferror(FILE *);\0Aint\09 fflush(FILE *);\0Aint\09 fgetc(FILE *);\0Aint\09 fgetpos(FILE * __restrict, fpos_t *);\0Achar\09*fgets(char * __restrict, int, FILE *);\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fopen));\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fopen));\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0Aint\09 fprintf(FILE * __restrict, const char * __restrict, ...) __printflike(2, 3);\0Aint\09 fputc(int, FILE *);\0Aint\09 fputs(const char * __restrict, FILE * __restrict) __DARWIN_ALIAS(fputs);\0Asize_t\09 fread(void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream);\0AFILE\09*freopen(const char * __restrict, const char * __restrict,\0A                 FILE * __restrict) __DARWIN_ALIAS(freopen);\0Aint\09 fscanf(FILE * __restrict, const char * __restrict, ...) __scanflike(2, 3);\0Aint\09 fseek(FILE *, long, int);\0Aint\09 fsetpos(FILE *, const fpos_t *);\0Along\09 ftell(FILE *);\0Asize_t\09 fwrite(const void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream) __DARWIN_ALIAS(fwrite);\0Aint\09 getc(FILE *);\0Aint\09 getchar(void);\0A\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.\22)\0A#endif\0Achar\09*gets(char *);\0A\0Avoid\09 perror(const char *) __cold;\0Aint\09 printf(const char * __restrict, ...) __printflike(1, 2);\0Aint\09 putc(int, FILE *);\0Aint\09 putchar(int);\0Aint\09 puts(const char *);\0Aint\09 remove(const char *);\0Aint\09 rename (const char *__old, const char *__new);\0Avoid\09 rewind(FILE *);\0Aint\09 scanf(const char * __restrict, ...) __scanflike(1, 2);\0Avoid\09 setbuf(FILE * __restrict, char * __restrict);\0Aint\09 setvbuf(FILE * __restrict, char * __restrict, int, size_t);\0A\0A__swift_unavailable(\22Use snprintf instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.\22)\0A#endif\0Aint\09 sprintf(char * __restrict, const char * __restrict, ...) __printflike(2, 3);\0A\0Aint\09 sscanf(const char * __restrict, const char * __restrict, ...) __scanflike(2, 3);\0AFILE\09*tmpfile(void);\0A\0A__swift_unavailable(\22Use mkstemp(3) instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.\22)\0A#endif\0Achar\09*tmpnam(char *);\0A\0Aint\09 ungetc(int, FILE *);\0Aint\09 vfprintf(FILE * __restrict, const char * __restrict, va_list) __printflike(2, 0);\0Aint\09 vprintf(const char * __restrict, va_list) __printflike(1, 0);\0A\0A__swift_unavailable(\22Use vsnprintf instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use vsnprintf(3) instead.\22)\0A#endif\0Aint\09 vsprintf(char * __restrict, const char * __restrict, va_list) __printflike(2, 0);\0A__END_DECLS\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-1988\0A */\0A\0A#if __DARWIN_C_LEVEL >= 198808L\0A#define\09L_ctermid\091024\09/* size for ctermid(); PATH_MAX */\0A\0A#include <_ctermid.h>\0A\0A__BEGIN_DECLS\0A\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fdopen));\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fdopen));\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0Aint\09 fileno(FILE *);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 198808L */\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.2-1992 C Language Binding Option\0A */\0A\0A#if __DARWIN_C_LEVEL >= 199209L\0A__BEGIN_DECLS\0Aint\09 pclose(FILE *) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\0AFILE\09*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(popen)) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\0AFILE\09*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(popen)) __swift_unavailable(\22Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\22);\0A#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 199209L */\0A\0A/* Additional functionality provided by:\0A * POSIX.1c-1995,\0A * POSIX.1i-1995,\0A * and the omnibus ISO/IEC 9945-1: 1996\0A */\0A\0A#if __DARWIN_C_LEVEL >= 199506L\0A\0A/* Functions internal to the implementation. */\0A__BEGIN_DECLS\0Aint\09__srget(FILE *);\0Aint\09__svfscanf(FILE *, const char *, va_list) __scanflike(2, 0);\0Aint\09__swbuf(int, FILE *);\0A__END_DECLS\0A\0A/*\0A * The __sfoo macros are here so that we can\0A * define function versions in the C library.\0A */\0A#define\09__sgetc(p) (--(p)->_r < 0 ? __srget(p) : (int)(*(p)->_p++))\0A#if defined(__GNUC__) && defined(__STDC__)\0A__header_always_inline int __sputc(int _c, FILE *_p) {\0A\09if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\\n'))\0A\09\09return (*_p->_p++ = _c);\0A\09else\0A\09\09return (__swbuf(_c, _p));\0A}\0A#else\0A/*\0A * This has been tuned to generate reasonable code on the vax using pcc.\0A */\0A#define\09__sputc(c, p) \\\0A\09(--(p)->_w < 0 ? \\\0A\09\09(p)->_w >= (p)->_lbfsize ? \\\0A\09\09\09(*(p)->_p = (c)), *(p)->_p != '\\n' ? \\\0A\09\09\09\09(int)*(p)->_p++ : \\\0A\09\09\09\09__swbuf('\\n', p) : \\\0A\09\09\09__swbuf((int)(c), p) : \\\0A\09\09(*(p)->_p = (c), (int)*(p)->_p++))\0A#endif\0A\0A#define\09__sfeof(p)\09(((p)->_flags & __SEOF) != 0)\0A#define\09__sferror(p)\09(((p)->_flags & __SERR) != 0)\0A#define\09__sclearerr(p)\09((void)((p)->_flags &= ~(__SERR|__SEOF)))\0A#define\09__sfileno(p)\09((p)->_file)\0A\0A__BEGIN_DECLS\0Avoid\09 flockfile(FILE *);\0Aint\09 ftrylockfile(FILE *);\0Avoid\09 funlockfile(FILE *);\0Aint\09 getc_unlocked(FILE *);\0Aint\09 getchar_unlocked(void);\0Aint\09 putc_unlocked(int, FILE *);\0Aint\09 putchar_unlocked(int);\0A\0A/* Removed in Issue 6 */\0A#if !defined(_POSIX_C_SOURCE) || _POSIX_C_SOURCE < 200112L\0Aint\09 getw(FILE *);\0Aint\09 putw(int, FILE *);\0A#endif\0A\0A__swift_unavailable(\22Use mkstemp(3) instead.\22)\0A#if !defined(_POSIX_C_SOURCE)\0A__deprecated_msg(\22This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.\22)\0A#endif\0Achar\09*tempnam(const char *__dir, const char *__prefix) __DARWIN_ALIAS(tempnam);\0A__END_DECLS\0A\0A#ifndef lint\0A#define\09getc_unlocked(fp)\09__sgetc(fp)\0A#define putc_unlocked(x, fp)\09__sputc(x, fp)\0A#endif /* lint */\0A\0A#define\09getchar_unlocked()\09getc_unlocked(stdin)\0A#define\09putchar_unlocked(x)\09putc_unlocked(x, stdout)\0A#endif /* __DARWIN_C_LEVEL >= 199506L */\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-2001\0A * ISO C99\0A */\0A\0A#if __DARWIN_C_LEVEL >= 200112L\0A#include <sys/_types/_off_t.h>\0A\0A__BEGIN_DECLS\0Aint\09 fseeko(FILE * __stream, off_t __offset, int __whence);\0Aoff_t\09 ftello(FILE * __stream);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200112L */\0A\0A#if __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus)\0A__BEGIN_DECLS\0Aint\09 snprintf(char * __restrict __str, size_t __size, const char * __restrict __format, ...) __printflike(3, 4);\0Aint\09 vfscanf(FILE * __restrict __stream, const char * __restrict __format, va_list) __scanflike(2, 0);\0Aint\09 vscanf(const char * __restrict __format, va_list) __scanflike(1, 0);\0Aint\09 vsnprintf(char * __restrict __str, size_t __size, const char * __restrict __format, va_list) __printflike(3, 0);\0Aint\09 vsscanf(const char * __restrict __str, const char * __restrict __format, va_list) __scanflike(2, 0);\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus) */\0A\0A\0A\0A/* Additional functionality provided by:\0A * POSIX.1-2008\0A */\0A\0A#if __DARWIN_C_LEVEL >= 200809L\0A#include <sys/_types/_ssize_t.h>\0A\0A__BEGIN_DECLS\0Aint\09dprintf(int, const char * __restrict, ...) __printflike(2, 3) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Aint\09vdprintf(int, const char * __restrict, va_list) __printflike(2, 0) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Assize_t getdelim(char ** __restrict __linep, size_t * __restrict __linecapp, int __delimiter, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0Assize_t getline(char ** __restrict __linep, size_t * __restrict __linecapp, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\0AFILE *fmemopen(void * __restrict __buf, size_t __size, const char * __restrict __mode) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\0AFILE *open_memstream(char **__bufp, size_t *__sizep) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\0A__END_DECLS\0A#endif /* __DARWIN_C_LEVEL >= 200809L */\0A\0A\0A\0A/* Darwin extensions */\0A\0A#if __DARWIN_C_LEVEL >= __DARWIN_C_FULL\0A__BEGIN_DECLS\0Aextern __const int sys_nerr;\09\09/* perror(3) external variables */\0Aextern __const char *__const sys_errlist[];\0A\0Aint\09 asprintf(char ** __restrict, const char * __restrict, ...) __printflike(2, 3);\0Achar\09*ctermid_r(char *);\0Achar\09*fgetln(FILE *, size_t *);\0A__const char *fmtcheck(const char *, const char *) __attribute__((format_arg(2)));\0Aint\09 fpurge(FILE *);\0Avoid\09 setbuffer(FILE *, char *, int);\0Aint\09 setlinebuf(FILE *);\0Aint\09 vasprintf(char ** __restrict, const char * __restrict, va_list) __printflike(2, 0);\0A\0A\0A/*\0A * Stdio function-access interface.\0A */\0AFILE\09*funopen(const void *,\0A                 int (* _Nullable)(void *, char *, int),\0A                 int (* _Nullable)(void *, const char *, int),\0A                 fpos_t (* _Nullable)(void *, fpos_t, int),\0A                 int (* _Nullable)(void *));\0A__END_DECLS\0A#define\09fropen(cookie, fn) funopen(cookie, fn, 0, 0, 0)\0A#define\09fwopen(cookie, fn) funopen(cookie, 0, fn, 0, 0)\0A\0A#define\09feof_unlocked(p)\09__sfeof(p)\0A#define\09ferror_unlocked(p)\09__sferror(p)\0A#define\09clearerr_unlocked(p)\09__sclearerr(p)\0A#define\09fileno_unlocked(p)\09__sfileno(p)\0A\0A#endif /* __DARWIN_C_LEVEL >= __DARWIN_C_FULL */\0A\0A\0A#ifdef _USE_EXTENDED_LOCALES_\0A#include <xlocale/_stdio.h>\0A#endif /* _USE_EXTENDED_LOCALES_ */\0A\0A#if defined (__GNUC__) && _FORTIFY_SOURCE > 0 && !defined (__cplusplus)\0A/* Security checking functions.  */\0A#include <secure/_stdio.h>\0A#endif\0A\0A#endif /* _STDIO_H_ */\0A")
!130 = !DISubroutineType(types: !131)
!131 = !{!54, !132, null}
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
