	.text
	.file	"bytecode.c"
	.file	0 "/mnt/c/Users/kawar/Documents/GitHub/rust-instruction-dispatch/C/direct-threading" "bytecode.c" md5 0x47d8168430e131eeef41d65004b895ff source "#include <stdio.h>\n\n#include \"bytecode.h\"\n\n#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++programPointer))]\n\nvoid vm_loop(bytecode_t *program)\n{\n    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,\n                              &&do_ret};\n    int memory[256] = {0};\n    bytecode_t *programPointer = program;\n\n    goto *dispatch_table[GET_OPCODE(*programPointer)];\ndo_load:\n#ifdef DEBUG\n    printf(\"%ld: load memory[%d] = %d\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer), GET_OPERAND_IMM(*programPointer));\n#endif\n    memory[GET_OPERAND_A(*programPointer)] = GET_OPERAND_IMM(*programPointer);\n    DISPATCH();\ndo_add:\n#ifdef DEBUG\n    printf(\"%ld: add memory[%d](%d) = memory[%d] + memory[%d]\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer),\n           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), GET_OPERAND_C(*programPointer));\n#endif\n    memory[GET_OPERAND_A(*programPointer)] = memory[GET_OPERAND_B(*programPointer)] + memory[GET_OPERAND_C(*programPointer)];\n    DISPATCH();\ndo_jmpne:\n#ifdef DEBUG\n    printf(\"%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer),\n           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), memory[GET_OPERAND_B(*programPointer)], GET_OPERAND_JMP(*programPointer));\n#endif\n    if (memory[GET_OPERAND_A(*programPointer)] != memory[GET_OPERAND_B(*programPointer)])\n    {\n        programPointer = &program[GET_OPERAND_JMP(*programPointer) - 1];\n    }\n    DISPATCH();\ndo_print:\n#ifdef DEBUG\n    printf(\"%ld: print memory[%d](%d)\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer), memory[GET_OPERAND_A(*programPointer)]);\n#endif\n    printf(\"%d\\n\", memory[GET_OPERAND_A(*programPointer)]);\n    DISPATCH();\ndo_ret:\n#ifdef DEBUG\n    printf(\"%ld: ret\\n\", programPointer - &program[0]);\n#endif\n    ;\n}\n"
	.globl	vm_loop                         # -- Begin function vm_loop
	.p2align	4, 0x90
	.type	vm_loop,@function
vm_loop:                                # @vm_loop
.Lfunc_begin0:
	.loc	0 8 0                           # bytecode.c:8:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: vm_loop:program <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$1096, %rsp                     # imm = 0x448
	.cfi_def_cfa_offset 1120
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	.Ltmp0(%rip), %rax
.Ltmp1:
	.loc	0 9 11 prologue_end             # bytecode.c:9:11
	movq	%rax, %xmm0
	leaq	.Ltmp2(%rip), %rax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 16(%rsp)
	leaq	.Ltmp3(%rip), %rax
	movq	%rax, %xmm0
	leaq	.Ltmp4(%rip), %rax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 32(%rsp)
	leaq	.Ltmp5(%rip), %rax
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rdi
.Ltmp6:
	#DEBUG_VALUE: vm_loop:program <- $r14
	.loc	0 11 9                          # bytecode.c:11:9
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp7:
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	.loc	0 0 0 is_stmt 0                 # bytecode.c:0:0
	movl	(%r14), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	movq	%r14, %rbx
	jmpq	*16(%rsp,%rcx,8)
.Ltmp8:
	.p2align	4, 0x90
.Ltmp2:                                 # Block address taken
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: vm_loop:program <- $r14
	#DEBUG_LABEL: vm_loop:do_load
	.loc	0 17 58 is_stmt 1               # bytecode.c:17:58
	movq	%rbx, %rsi
	subq	%r14, %rsi
	sarq	$2, %rsi
	.loc	0 17 73 is_stmt 0               # bytecode.c:17:73
	movl	%eax, %edx
	shrl	$24, %edx
	.loc	0 17 105                        # bytecode.c:17:105
	shrl	$4, %eax
	andl	$1048575, %eax                  # imm = 0xFFFFF
	.loc	0 17 5                          # bytecode.c:17:5
	leaq	.L.str(%rip), %rdi
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp9:
	.loc	0 19 5 is_stmt 1                # bytecode.c:19:5
	movl	(%rbx), %eax
	.loc	0 19 46 is_stmt 0               # bytecode.c:19:46
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$1048575, %ecx                  # imm = 0xFFFFF
	.loc	0 19 5                          # bytecode.c:19:5
	shrq	$22, %rax
	andl	$1020, %eax                     # imm = 0x3FC
	.loc	0 19 44                         # bytecode.c:19:44
	movl	%ecx, 64(%rsp,%rax)
.Ltmp10:
	#DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
	.loc	0 0 0                           # bytecode.c:0:0
	addq	$4, %rbx
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
.Ltmp11:
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	jmpq	*16(%rsp,%rcx,8)
.Ltmp12:
.Ltmp0:                                 # Block address taken
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: vm_loop:program <- $r14
	#DEBUG_LABEL: vm_loop:do_add
	.loc	0 23 82 is_stmt 1               # bytecode.c:23:82
	movq	%rbx, %rsi
	subq	%r14, %rsi
	sarq	$2, %rsi
	.loc	0 23 97 is_stmt 0               # bytecode.c:23:97
	movq	%rax, %rdx
	shrq	$24, %rdx
	.loc	0 24 12 is_stmt 1               # bytecode.c:24:12
	movl	64(%rsp,%rdx,4), %ecx
	.loc	0 24 52 is_stmt 0               # bytecode.c:24:52
	movl	%eax, %edi
	shrl	$16, %edi
	movzbl	%dil, %r8d
	.loc	0 24 84                         # bytecode.c:24:84
	shrl	$4, %eax
	andl	$4095, %eax                     # imm = 0xFFF
	.loc	0 23 5 is_stmt 1                # bytecode.c:23:5
	leaq	.L.str.1(%rip), %rdi
                                        # kill: def $edx killed $edx killed $rdx
	movl	%eax, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp13:
	.loc	0 26 53                         # bytecode.c:26:53
	movl	(%rbx), %eax
	.loc	0 26 46 is_stmt 0               # bytecode.c:26:46
	movq	%rax, %rcx
	shrq	$14, %rcx
	andl	$1020, %ecx                     # imm = 0x3FC
	.loc	0 26 87                         # bytecode.c:26:87
	movq	%rax, %rdx
	shrq	$2, %rdx
	andl	$16380, %edx                    # imm = 0x3FFC
	movl	64(%rsp,%rdx), %edx
	.loc	0 26 85                         # bytecode.c:26:85
	addl	64(%rsp,%rcx), %edx
	.loc	0 26 5                          # bytecode.c:26:5
	shrq	$24, %rax
	.loc	0 26 44                         # bytecode.c:26:44
	movl	%edx, 64(%rsp,%rax,4)
.Ltmp14:
	#DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
	.loc	0 0 0                           # bytecode.c:0:0
	addq	$4, %rbx
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
.Ltmp15:
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	jmpq	*16(%rsp,%rcx,8)
.Ltmp16:
.Ltmp4:                                 # Block address taken
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: vm_loop:program <- $r14
	#DEBUG_LABEL: vm_loop:do_jmpne
	.loc	0 30 104 is_stmt 1              # bytecode.c:30:104
	movq	%rbx, %rsi
	subq	%r14, %rsi
	sarq	$2, %rsi
	.loc	0 30 119 is_stmt 0              # bytecode.c:30:119
	movq	%rax, %rdx
	shrq	$24, %rdx
	.loc	0 31 12 is_stmt 1               # bytecode.c:31:12
	movl	64(%rsp,%rdx,4), %ecx
	.loc	0 31 52 is_stmt 0               # bytecode.c:31:52
	movl	%eax, %edi
	shrl	$16, %edi
	movzbl	%dil, %r8d
	.loc	0 31 84                         # bytecode.c:31:84
	movl	64(%rsp,%r8,4), %r9d
	.loc	0 31 124                        # bytecode.c:31:124
	shrl	$4, %eax
	andl	$4095, %eax                     # imm = 0xFFF
	.loc	0 30 5 is_stmt 1                # bytecode.c:30:5
	movl	%eax, (%rsp)
	leaq	.L.str.2(%rip), %rdi
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $r8d killed $r8d killed $r8
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp17:
	.loc	0 33 16                         # bytecode.c:33:16
	movl	(%rbx), %eax
	.loc	0 33 9 is_stmt 0                # bytecode.c:33:9
	movq	%rax, %rcx
	shrq	$24, %rcx
	movl	64(%rsp,%rcx,4), %ecx
	.loc	0 33 51                         # bytecode.c:33:51
	movq	%rax, %rdx
	shrq	$14, %rdx
	andl	$1020, %edx                     # imm = 0x3FC
.Ltmp18:
	.loc	0 33 9                          # bytecode.c:33:9
	shrl	$4, %eax
	andl	$4095, %eax                     # imm = 0xFFF
	decl	%eax
.Ltmp19:
	.loc	0 33 48                         # bytecode.c:33:48
	cmpl	64(%rsp,%rdx), %ecx
.Ltmp20:
	.loc	0 33 9                          # bytecode.c:33:9
	leaq	(%r14,%rax,4), %rcx
	cmoveq	%rbx, %rcx
.Ltmp21:
	#DEBUG_VALUE: vm_loop:programPointer <- $rcx
	#DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rcx
	.loc	0 0 0                           # bytecode.c:0:0
	addq	$4, %rcx
.Ltmp22:
	movl	(%rcx), %eax
	movl	%eax, %edx
	andl	$15, %edx
.Ltmp23:
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	movq	%rcx, %rbx
	jmpq	*16(%rsp,%rdx,8)
.Ltmp24:
.Ltmp3:                                 # Block address taken
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: vm_loop:program <- $r14
	#DEBUG_LABEL: vm_loop:do_print
	.loc	0 40 58 is_stmt 1               # bytecode.c:40:58
	movq	%rbx, %rsi
	subq	%r14, %rsi
	sarq	$2, %rsi
	.loc	0 40 73 is_stmt 0               # bytecode.c:40:73
	shrq	$24, %rax
	.loc	0 40 105                        # bytecode.c:40:105
	movl	64(%rsp,%rax,4), %ecx
	.loc	0 40 5                          # bytecode.c:40:5
	leaq	.L.str.3(%rip), %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp25:
	.loc	0 42 20 is_stmt 1               # bytecode.c:42:20
	movl	(%rbx), %eax
	shrq	$22, %rax
	andl	$1020, %eax                     # imm = 0x3FC
	movl	64(%rsp,%rax), %esi
	.loc	0 42 5 is_stmt 0                # bytecode.c:42:5
	leaq	.L.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp26:
	#DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
	.loc	0 0 0                           # bytecode.c:0:0
	addq	$4, %rbx
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
.Ltmp27:
	#DEBUG_VALUE: vm_loop:programPointer <- undef
	jmpq	*16(%rsp,%rcx,8)
.Ltmp28:
.Ltmp5:                                 # Block address taken
.LBB0_5:
	#DEBUG_VALUE: vm_loop:program <- $r14
	#DEBUG_LABEL: vm_loop:do_ret
	.loc	0 46 41 is_stmt 1               # bytecode.c:46:41
	subq	%r14, %rbx
	sarq	$2, %rbx
	.loc	0 46 5 is_stmt 0                # bytecode.c:46:5
	leaq	.L.str.5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	addq	$1096, %rsp                     # imm = 0x448
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp29:
	#DEBUG_VALUE: vm_loop:program <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	jmp	printf@PLT                      # TAILCALL
.Ltmp30:
.Lfunc_end0:
	.size	vm_loop, .Lfunc_end0-vm_loop
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ld: load memory[%d] = %d\n"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%ld: add memory[%d](%d) = memory[%d] + memory[%d]\n"
	.size	.L.str.1, 51

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\n"
	.size	.L.str.2, 73

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%ld: print memory[%d](%d)\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%ld: ret\n"
	.size	.L.str.5, 10

	.file	1 "." "bytecode.h" md5 0xc8e1e974e2eb424d295059f7e81af4ac source "#pragma once\n\ntypedef enum\n{\n    OP_LOAD,\n    OP_ADD,\n    OP_JMPNE,\n    OP_PRINT,\n    OP_RET\n} opcode_t;\n\ntypedef unsigned int bytecode_t;\n\n// Bytecde: packed 32 bit\n// --------------------------\n//    A:B:C:OP = 8: 8:12: 4\n//    A:Imm:OP =    8:20: 4\n//  A:B:Jmp:OP = 8: 8:12: 4\n\n#define MAKE_OPCODE(op) ((op) & 0xf)\n\n#define MAKE_OPCODE_A_B_C(op, a, b, c) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((c) & 0xfff) << 4))\n\n#define MAKE_OPCODE_IMM(op, a, imm) (((op) & 0xf) + (((a) & 0xff) << 24) + (((imm & 0xfffff) << 4)))\n\n#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((jmp) & 0xfff) << 4))\n\n#define GET_OPCODE(instruction) ((instruction) & 0xf)\n\n#define GET_OPERAND_A(instruction) (((instruction) >> 24) & 0xff)\n\n#define GET_OPERAND_B(instruction) (((instruction) >> 16) & 0xff)\n\n#define GET_OPERAND_C(instruction) (((instruction) >> 4) & 0xfff)\n\n#define GET_OPERAND_IMM(instruction) (((instruction) >> 4) & 0xfffff)\n\n#define GET_OPERAND_JMP(instruction) (((instruction) >> 4) & 0xfff)\n\nextern void vm_loop(bytecode_t *pp);"
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	4                               # 4
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
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	11                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x119 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x31:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x36:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	27                              # DW_AT_count
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
	.byte	23                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x4f:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	51                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5b:0xa DW_TAG_variable
	.long	101                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x65:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6a:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	73                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xa DW_TAG_variable
	.long	49                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               # Abbrev [2] 0x7b:0xa DW_TAG_variable
	.long	133                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
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
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               # Abbrev [3] 0x9b:0xc DW_TAG_array_type
	.long	61                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa0:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa7:0x4e DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xb2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	275                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xbb:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	245                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc6:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\300"
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd2:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.long	275                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xdb:0x5 DW_TAG_label
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	7                               # DW_AT_low_pc
	.byte	11                              # Abbrev [11] 0xe0:0x5 DW_TAG_label
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_low_pc
	.byte	11                              # Abbrev [11] 0xe5:0x5 DW_TAG_label
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	9                               # DW_AT_low_pc
	.byte	11                              # Abbrev [11] 0xea:0x5 DW_TAG_label
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	10                              # DW_AT_low_pc
	.byte	11                              # Abbrev [11] 0xef:0x5 DW_TAG_label
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	11                              # DW_AT_low_pc
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xf5:0xc DW_TAG_array_type
	.long	257                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfa:0x6 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x101:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x102:0xd DW_TAG_array_type
	.long	271                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x107:0x7 DW_TAG_subrange_type
	.long	65                              # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x10f:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x113:0x5 DW_TAG_pointer_type
	.long	280                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x118:0x8 DW_TAG_typedef
	.long	288                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x120:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	76                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 15.0.7"   # string offset=0
.Linfo_string1:
	.asciz	"bytecode.c"                    # string offset=28
.Linfo_string2:
	.asciz	"/mnt/c/Users/kawar/Documents/GitHub/rust-instruction-dispatch/C/direct-threading" # string offset=39
.Linfo_string3:
	.asciz	"char"                          # string offset=120
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=125
.Linfo_string5:
	.asciz	"vm_loop"                       # string offset=145
.Linfo_string6:
	.asciz	"dispatch_table"                # string offset=153
.Linfo_string7:
	.asciz	"memory"                        # string offset=168
.Linfo_string8:
	.asciz	"int"                           # string offset=175
.Linfo_string9:
	.asciz	"program"                       # string offset=179
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=187
.Linfo_string11:
	.asciz	"bytecode_t"                    # string offset=200
.Linfo_string12:
	.asciz	"programPointer"                # string offset=211
.Linfo_string13:
	.asciz	"do_load"                       # string offset=226
.Linfo_string14:
	.asciz	"do_add"                        # string offset=234
.Linfo_string15:
	.asciz	"do_jmpne"                      # string offset=241
.Linfo_string16:
	.asciz	"do_print"                      # string offset=250
.Linfo_string17:
	.asciz	"do_ret"                        # string offset=259
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
	.quad	.Ltmp12
	.quad	.Ltmp16
	.quad	.Ltmp24
	.quad	.Ltmp28
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 15.0.7"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vm_loop
	.section	.debug_line,"",@progbits
.Lline_table_start0:
