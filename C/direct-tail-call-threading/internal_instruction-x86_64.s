	.text
	.file	"internal_instruction.c"
	.file	0 "/mnt/c/Users/kawar/Documents/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" "internal_instruction.c" md5 0xb7507d1ec52da7462015488ae670cffa source "#include <stdio.h>\n\n#include \"bytecode.h\"\n#include \"internal_instruction.h\"\n\n#define NEXT_INSTRUCTION                                                   \\\n    do                                                                     \\\n    {                                                                      \\\n        __attribute__((musttail)) return instruction->handler(instruction, \\\n                                                              memory);     \\\n    } while (0)\n\n#pragma clang diagnostic push\n#pragma clang diagnostic ignored \"-Wformat\"\n\nvoid load(internal_instruction_t *restrict instruction,\n                 int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: load memory[%d] = %d\\n\", instruction, instruction->a, instruction->imm);\n#endif\n    memory[instruction->a] = instruction->imm;\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid add(internal_instruction_t *restrict instruction,\n                int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: add memory[%d](%d) = memory[%d] + memory[%d]\\n\", instruction, instruction->a,\n           memory[instruction->a], instruction->b, instruction->c);\n#endif\n    memory[instruction->a] = memory[instruction->b] + memory[instruction->c];\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid jmpne(internal_instruction_t *restrict instruction,\n                  int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\\n\", instruction, instruction->a,\n           memory[instruction->a], instruction->b, memory[instruction->b], instruction->jmp);\n#endif\n    if (memory[instruction->a] != memory[instruction->b])\n    {\n        instruction = instruction->jmp;\n    }\n    else\n    {\n        instruction++;\n    }\n    NEXT_INSTRUCTION;\n}\n\nvoid print(internal_instruction_t *restrict instruction,\n                  int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: print memory[%d](%d)\\n\", instruction, instruction->a, memory[instruction->a]);\n#endif\n    printf(\"%d\\n\", memory[instruction->a]);\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid ret(internal_instruction_t *restrict instruction,\n                int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: ret\\n\", instruction);\n#endif\n}\n\n#pragma clang diagnostic pop\n\nvoid vm_loop(internal_instruction_t *internal_program)\n{\n    int memory[256] = {0};\n\n    internal_program[0].handler(internal_program, memory);\n}\n"
	.globl	load                            # -- Begin function load
	.p2align	4, 0x90
	.type	load,@function
load:                                   # @load
.Lfunc_begin0:
	.loc	0 18 0                          # internal_instruction.c:18:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: load:instruction <- $rdi
	#DEBUG_VALUE: load:memory <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 20 68 prologue_end            # internal_instruction.c:20:68
	movzbl	8(%rdi), %edx
	.loc	0 20 84 is_stmt 0               # internal_instruction.c:20:84
	movl	16(%rdi), %ecx
	.loc	0 20 5                          # internal_instruction.c:20:5
	leaq	.L.str(%rip), %rdi
.Ltmp1:
	#DEBUG_VALUE: load:instruction <- $rbx
	movq	%rbx, %rsi
.Ltmp2:
	#DEBUG_VALUE: load:memory <- $r14
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp3:
	.loc	0 22 43 is_stmt 1               # internal_instruction.c:22:43
	movl	16(%rbx), %eax
	.loc	0 22 25 is_stmt 0               # internal_instruction.c:22:25
	movzbl	8(%rbx), %ecx
	.loc	0 22 28                         # internal_instruction.c:22:28
	movl	%eax, (%r14,%rcx,4)
.Ltmp4:
	.loc	0 24 5 is_stmt 1                # internal_instruction.c:24:5
	movq	24(%rbx), %rax
.Ltmp5:
	.loc	0 23 16                         # internal_instruction.c:23:16
	addq	$24, %rbx
.Ltmp6:
	#DEBUG_VALUE: load:instruction <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: load:instruction <- $rbx
	.loc	0 24 5                          # internal_instruction.c:24:5
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp7:
	#DEBUG_VALUE: load:instruction <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp8:
	#DEBUG_VALUE: load:memory <- $rsi
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Ltmp9:
.Lfunc_end0:
	.size	load, .Lfunc_end0-load
	.cfi_endproc
                                        # -- End function
	.globl	add                             # -- Begin function add
	.p2align	4, 0x90
	.type	add,@function
add:                                    # @add
.Lfunc_begin1:
	.loc	0 29 0                          # internal_instruction.c:29:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: add:instruction <- $rdi
	#DEBUG_VALUE: add:memory <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp10:
	.loc	0 31 92 prologue_end            # internal_instruction.c:31:92
	movzbl	8(%rdi), %edx
	.loc	0 32 12                         # internal_instruction.c:32:12
	movl	(%rsi,%rdx,4), %ecx
	.loc	0 32 49 is_stmt 0               # internal_instruction.c:32:49
	movzbl	9(%rdi), %r8d
	.loc	0 32 65                         # internal_instruction.c:32:65
	movzbl	16(%rdi), %r9d
	.loc	0 31 5 is_stmt 1                # internal_instruction.c:31:5
	leaq	.L.str.1(%rip), %rdi
.Ltmp11:
	#DEBUG_VALUE: add:instruction <- $rbx
	movq	%rbx, %rsi
.Ltmp12:
	#DEBUG_VALUE: add:memory <- $r14
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp13:
	.loc	0 34 50                         # internal_instruction.c:34:50
	movzbl	9(%rbx), %eax
	.loc	0 34 75 is_stmt 0               # internal_instruction.c:34:75
	movzbl	16(%rbx), %ecx
	.loc	0 34 55                         # internal_instruction.c:34:55
	movl	(%r14,%rcx,4), %ecx
	.loc	0 34 53                         # internal_instruction.c:34:53
	addl	(%r14,%rax,4), %ecx
	.loc	0 34 25                         # internal_instruction.c:34:25
	movzbl	8(%rbx), %eax
	.loc	0 34 28                         # internal_instruction.c:34:28
	movl	%ecx, (%r14,%rax,4)
.Ltmp14:
	.loc	0 36 5 is_stmt 1                # internal_instruction.c:36:5
	movq	24(%rbx), %rax
.Ltmp15:
	.loc	0 35 16                         # internal_instruction.c:35:16
	addq	$24, %rbx
.Ltmp16:
	#DEBUG_VALUE: add:instruction <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: add:instruction <- $rbx
	.loc	0 36 5                          # internal_instruction.c:36:5
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp17:
	#DEBUG_VALUE: add:instruction <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp18:
	#DEBUG_VALUE: add:memory <- $rsi
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Ltmp19:
.Lfunc_end1:
	.size	add, .Lfunc_end1-add
	.cfi_endproc
                                        # -- End function
	.globl	jmpne                           # -- Begin function jmpne
	.p2align	4, 0x90
	.type	jmpne,@function
jmpne:                                  # @jmpne
.Lfunc_begin2:
	.loc	0 41 0                          # internal_instruction.c:41:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: jmpne:instruction <- $rdi
	#DEBUG_VALUE: jmpne:memory <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp20:
	.loc	0 43 102 prologue_end           # internal_instruction.c:43:102
	movzbl	8(%rdi), %edx
	.loc	0 44 12                         # internal_instruction.c:44:12
	movl	(%rsi,%rdx,4), %ecx
	.loc	0 44 49 is_stmt 0               # internal_instruction.c:44:49
	movzbl	9(%rdi), %r8d
	.loc	0 44 52                         # internal_instruction.c:44:52
	movl	(%rsi,%r8,4), %r9d
	.loc	0 44 89                         # internal_instruction.c:44:89
	movq	16(%rdi), %rax
	.loc	0 43 5 is_stmt 1                # internal_instruction.c:43:5
	movq	%rax, (%rsp)
	leaq	.L.str.2(%rip), %rdi
.Ltmp21:
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	movq	%rbx, %rsi
.Ltmp22:
	#DEBUG_VALUE: jmpne:memory <- $r14
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $r8d killed $r8d killed $r8
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp23:
	.loc	0 46 29                         # internal_instruction.c:46:29
	movzbl	8(%rbx), %eax
	.loc	0 46 9 is_stmt 0                # internal_instruction.c:46:9
	movl	(%r14,%rax,4), %eax
	.loc	0 46 55                         # internal_instruction.c:46:55
	movzbl	9(%rbx), %ecx
	.loc	0 46 32                         # internal_instruction.c:46:32
	cmpl	(%r14,%rcx,4), %eax
.Ltmp24:
	.loc	0 46 9                          # internal_instruction.c:46:9
	jne	.LBB2_1
.Ltmp25:
# %bb.2:
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	#DEBUG_VALUE: jmpne:memory <- $r14
	.loc	0 52 20 is_stmt 1               # internal_instruction.c:52:20
	addq	$24, %rbx
.Ltmp26:
	#DEBUG_VALUE: jmpne:instruction <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	.loc	0 0 20 is_stmt 0                # internal_instruction.c:0:20
	jmp	.LBB2_3
.Ltmp27:
.LBB2_1:
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	#DEBUG_VALUE: jmpne:memory <- $r14
	.loc	0 48 36 is_stmt 1               # internal_instruction.c:48:36
	movq	16(%rbx), %rbx
.Ltmp28:
	#DEBUG_VALUE: jmpne:instruction <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: jmpne:instruction <- $rbx
.LBB2_3:
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	#DEBUG_VALUE: jmpne:memory <- $r14
	#DEBUG_VALUE: jmpne:instruction <- $rbx
	.loc	0 54 5                          # internal_instruction.c:54:5
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp29:
	#DEBUG_VALUE: jmpne:instruction <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp30:
	#DEBUG_VALUE: jmpne:memory <- $rsi
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Ltmp31:
.Lfunc_end2:
	.size	jmpne, .Lfunc_end2-jmpne
	.cfi_endproc
                                        # -- End function
	.globl	print                           # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
.Lfunc_begin3:
	.loc	0 59 0                          # internal_instruction.c:59:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print:instruction <- $rdi
	#DEBUG_VALUE: print:memory <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp32:
	.loc	0 61 68 prologue_end            # internal_instruction.c:61:68
	movzbl	8(%rdi), %edx
	.loc	0 61 71 is_stmt 0               # internal_instruction.c:61:71
	movl	(%rsi,%rdx,4), %ecx
	.loc	0 61 5                          # internal_instruction.c:61:5
	leaq	.L.str.3(%rip), %rdi
.Ltmp33:
	#DEBUG_VALUE: print:instruction <- $rbx
	movq	%rbx, %rsi
.Ltmp34:
	#DEBUG_VALUE: print:memory <- $r14
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp35:
	.loc	0 63 40 is_stmt 1               # internal_instruction.c:63:40
	movzbl	8(%rbx), %eax
	.loc	0 63 20 is_stmt 0               # internal_instruction.c:63:20
	movl	(%r14,%rax,4), %esi
	.loc	0 63 5                          # internal_instruction.c:63:5
	leaq	.L.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp36:
	.loc	0 65 5 is_stmt 1                # internal_instruction.c:65:5
	movq	24(%rbx), %rax
.Ltmp37:
	.loc	0 64 16                         # internal_instruction.c:64:16
	addq	$24, %rbx
.Ltmp38:
	#DEBUG_VALUE: print:instruction <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: print:instruction <- $rbx
	.loc	0 65 5                          # internal_instruction.c:65:5
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp39:
	#DEBUG_VALUE: print:instruction <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp40:
	#DEBUG_VALUE: print:memory <- $rsi
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.Ltmp41:
.Lfunc_end3:
	.size	print, .Lfunc_end3-print
	.cfi_endproc
                                        # -- End function
	.globl	ret                             # -- Begin function ret
	.p2align	4, 0x90
	.type	ret,@function
ret:                                    # @ret
.Lfunc_begin4:
	.loc	0 70 0                          # internal_instruction.c:70:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: ret:instruction <- $rdi
	#DEBUG_VALUE: ret:memory <- $rsi
	movq	%rdi, %rsi
.Ltmp42:
	#DEBUG_VALUE: ret:memory <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 72 5 prologue_end             # internal_instruction.c:72:5
	leaq	.L.str.5(%rip), %rdi
.Ltmp43:
	#DEBUG_VALUE: ret:instruction <- $rsi
	xorl	%eax, %eax
.Ltmp44:
	jmp	printf@PLT                      # TAILCALL
.Ltmp45:
.Lfunc_end4:
	.size	ret, .Lfunc_end4-ret
	.cfi_endproc
                                        # -- End function
	.globl	vm_loop                         # -- Begin function vm_loop
	.p2align	4, 0x90
	.type	vm_loop,@function
vm_loop:                                # @vm_loop
.Lfunc_begin5:
	.loc	0 79 0                          # internal_instruction.c:79:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: vm_loop:internal_program <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 1056
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	%rsp, %r14
.Ltmp46:
	.loc	0 80 9 prologue_end             # internal_instruction.c:80:9
	movl	$1024, %edx                     # imm = 0x400
	movq	%r14, %rdi
.Ltmp47:
	#DEBUG_VALUE: vm_loop:internal_program <- $rbx
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp48:
	.loc	0 82 5                          # internal_instruction.c:82:5
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*(%rbx)
.Ltmp49:
	.loc	0 83 1                          # internal_instruction.c:83:1
	addq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp50:
	#DEBUG_VALUE: vm_loop:internal_program <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp51:
.Lfunc_end5:
	.size	vm_loop, .Lfunc_end5-vm_loop
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%x: load memory[%d] = %d\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%x: add memory[%d](%d) = memory[%d] + memory[%d]\n"
	.size	.L.str.1, 50

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\n"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%x: print memory[%d](%d)\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%x: ret\n"
	.size	.L.str.5, 9

	.file	1 "." "internal_instruction.h" md5 0xc2dfda2d882de019285914906a4665d7 source "#pragma once\n\n#pragma clang diagnostic push\n#pragma clang diagnostic ignored \"-Wvisibility\"\ntypedef struct internal_instruction\n{\n    void (*handler)(struct internal_instruction *instruction, int *memory);\n    unsigned char a;\n    unsigned char b;\n    union\n    {\n        unsigned char c;\n        struct internal_instruction *jmp;\n        int imm;\n    };\n} internal_instruction_t;\n#pragma clang diagnostic pop\n\nextern void load(internal_instruction_t *restrict instruction,\n                 int *restrict memory);\n\nextern void add(internal_instruction_t *restrict instruction,\n                int *restrict memory);\n\nextern void jmpne(internal_instruction_t *restrict instruction,\n                  int *restrict memory);\n\nextern void print(internal_instruction_t *restrict instruction,\n                  int *restrict memory);\n\nextern void ret(internal_instruction_t *restrict instruction,\n                int *restrict memory);\n\nextern void vm_loop(internal_instruction_t *internal_program);\n"
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	11                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	73                              # DW_TAG_call_site_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	126                             # DW_AT_call_value
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x237 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	26                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3d:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x41:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x45:0xa DW_TAG_variable
	.long	79                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	50                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5b:0xa DW_TAG_variable
	.long	101                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x65:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	60                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               # Abbrev [2] 0x7b:0xa DW_TAG_variable
	.long	133                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               # Abbrev [3] 0x85:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x91:0xa DW_TAG_variable
	.long	155                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               # Abbrev [3] 0x9b:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa0:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa7:0x2f DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xb2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbb:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	560                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc4:0x11 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	7                               # DW_AT_call_pc
	.byte	10                              # Abbrev [10] 0xc8:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	10                              # Abbrev [10] 0xce:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd6:0x2f DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xe1:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xea:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	560                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xf3:0x11 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	9                               # DW_AT_call_pc
	.byte	10                              # Abbrev [10] 0xf7:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	10                              # Abbrev [10] 0xfd:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x105:0x2f DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x110:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x119:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	560                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x122:0x11 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	10                              # Abbrev [10] 0x126:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	10                              # Abbrev [10] 0x12c:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x134:0x2f DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x13f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x148:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	560                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x151:0x11 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	13                              # DW_AT_call_pc
	.byte	10                              # Abbrev [10] 0x155:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	10                              # Abbrev [10] 0x15b:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x163:0x1e DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x16e:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x177:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	560                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x181:0x31 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x18c:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x195:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	565                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a0:0x11 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	16                              # DW_AT_call_return_pc
	.byte	10                              # Abbrev [10] 0x1a4:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	126
	.byte	0
	.byte	10                              # Abbrev [10] 0x1aa:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1b2:0x5 DW_TAG_restrict_type
	.long	439                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1b7:0x5 DW_TAG_pointer_type
	.long	444                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1bc:0x8 DW_TAG_typedef
	.long	452                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1c4:0x49 DW_TAG_structure_type
	.byte	20                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x1c9:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	525                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x1d2:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	556                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x1db:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	556                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1e4:0x8 DW_TAG_member
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1ec:0x20 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x1f0:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	556                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x1f9:0x9 DW_TAG_member
	.byte	18                              # DW_AT_name
	.long	542                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x202:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	552                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x20d:0x5 DW_TAG_pointer_type
	.long	530                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x212:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x213:0x5 DW_TAG_formal_parameter
	.long	542                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x218:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x21e:0x5 DW_TAG_pointer_type
	.long	452                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x223:0x5 DW_TAG_pointer_type
	.long	552                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x228:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x22c:0x4 DW_TAG_base_type
	.byte	15                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x230:0x5 DW_TAG_restrict_type
	.long	547                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x235:0xd DW_TAG_array_type
	.long	552                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x23a:0x7 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	100                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 15.0.7"   # string offset=0
.Linfo_string1:
	.asciz	"internal_instruction.c"        # string offset=28
.Linfo_string2:
	.asciz	"/mnt/c/Users/kawar/Documents/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" # string offset=51
.Linfo_string3:
	.asciz	"char"                          # string offset=142
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=147
.Linfo_string5:
	.asciz	"load"                          # string offset=167
.Linfo_string6:
	.asciz	"add"                           # string offset=172
.Linfo_string7:
	.asciz	"jmpne"                         # string offset=176
.Linfo_string8:
	.asciz	"print"                         # string offset=182
.Linfo_string9:
	.asciz	"ret"                           # string offset=188
.Linfo_string10:
	.asciz	"vm_loop"                       # string offset=192
.Linfo_string11:
	.asciz	"instruction"                   # string offset=200
.Linfo_string12:
	.asciz	"handler"                       # string offset=212
.Linfo_string13:
	.asciz	"int"                           # string offset=220
.Linfo_string14:
	.asciz	"a"                             # string offset=224
.Linfo_string15:
	.asciz	"unsigned char"                 # string offset=226
.Linfo_string16:
	.asciz	"b"                             # string offset=240
.Linfo_string17:
	.asciz	"c"                             # string offset=242
.Linfo_string18:
	.asciz	"jmp"                           # string offset=244
.Linfo_string19:
	.asciz	"imm"                           # string offset=248
.Linfo_string20:
	.asciz	"internal_instruction"          # string offset=252
.Linfo_string21:
	.asciz	"internal_instruction_t"        # string offset=273
.Linfo_string22:
	.asciz	"memory"                        # string offset=296
.Linfo_string23:
	.asciz	"internal_program"              # string offset=303
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.Lfunc_begin0
	.quad	.Ltmp8
	.quad	.Lfunc_begin1
	.quad	.Ltmp18
	.quad	.Lfunc_begin2
	.quad	.Ltmp30
	.quad	.Lfunc_begin3
	.quad	.Ltmp40
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Ltmp49
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 15.0.7"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
