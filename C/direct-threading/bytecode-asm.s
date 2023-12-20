	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	0 "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading" "bytecode.c" md5 0x47d8168430e131eeef41d65004b895ff source "#include <stdio.h>\n\n#include \"bytecode.h\"\n\n#define DISPATCH() goto *dispatch_table[GET_OPCODE(*(++programPointer))]\n\nvoid vm_loop(bytecode_t *program)\n{\n    void *dispatch_table[] = {&&do_load, &&do_add, &&do_jmpne, &&do_print,\n                              &&do_ret};\n    int memory[256] = {0};\n    bytecode_t *programPointer = program;\n\n    goto *dispatch_table[GET_OPCODE(*programPointer)];\ndo_load:\n#ifdef DEBUG\n    printf(\"%ld: load memory[%d] = %d\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer), GET_OPERAND_IMM(*programPointer));\n#endif\n    memory[GET_OPERAND_A(*programPointer)] = GET_OPERAND_IMM(*programPointer);\n    DISPATCH();\ndo_add:\n#ifdef DEBUG\n    printf(\"%ld: add memory[%d](%d) = memory[%d] + memory[%d]\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer),\n           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), GET_OPERAND_C(*programPointer));\n#endif\n    memory[GET_OPERAND_A(*programPointer)] = memory[GET_OPERAND_B(*programPointer)] + memory[GET_OPERAND_C(*programPointer)];\n    DISPATCH();\ndo_jmpne:\n#ifdef DEBUG\n    printf(\"%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer),\n           memory[GET_OPERAND_A(*programPointer)], GET_OPERAND_B(*programPointer), memory[GET_OPERAND_B(*programPointer)], GET_OPERAND_JMP(*programPointer));\n#endif\n    if (memory[GET_OPERAND_A(*programPointer)] != memory[GET_OPERAND_B(*programPointer)])\n    {\n        programPointer = &program[GET_OPERAND_JMP(*programPointer) - 1];\n    }\n    DISPATCH();\ndo_print:\n#ifdef DEBUG\n    printf(\"%ld: print memory[%d](%d)\\n\", programPointer - &program[0], GET_OPERAND_A(*programPointer), memory[GET_OPERAND_A(*programPointer)]);\n#endif\n    printf(\"%d\\n\", memory[GET_OPERAND_A(*programPointer)]);\n    DISPATCH();\ndo_ret:\n#ifdef DEBUG\n    printf(\"%ld: ret\\n\", programPointer - &program[0]);\n#endif\n    ;\n}\n"
	.section	__DATA,__const
	.p2align	3, 0x0                          ; -- Begin function vm_loop
lCPI0_0:
	.quad	Ltmp0
lCPI0_1:
	.quad	Ltmp1
lCPI0_2:
	.quad	Ltmp2
lCPI0_3:
	.quad	Ltmp3
lCPI0_4:
	.quad	Ltmp4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_vm_loop
	.p2align	2
_vm_loop:                               ; @vm_loop
Lfunc_begin0:
	.loc	0 8 0                           ; bytecode.c:8:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vm_loop:program <- $x0
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1120
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	mov	x19, x0
Ltmp5:
	;DEBUG_VALUE: vm_loop:program <- $x19
Lloh0:
	adrp	x8, lCPI0_0@PAGE
Lloh1:
	ldr	x8, [x8, lCPI0_0@PAGEOFF]
Ltmp6:
	.loc	0 9 11 prologue_end             ; bytecode.c:9:11
	fmov	d0, x8
Lloh2:
	adrp	x8, lCPI0_1@PAGE
Lloh3:
	ldr	x8, [x8, lCPI0_1@PAGEOFF]
	mov.d	v0[1], x8
Lloh4:
	adrp	x8, lCPI0_2@PAGE
Lloh5:
	ldr	x8, [x8, lCPI0_2@PAGEOFF]
	fmov	d1, x8
Lloh6:
	adrp	x8, lCPI0_3@PAGE
Lloh7:
	ldr	x8, [x8, lCPI0_3@PAGEOFF]
	mov.d	v1[1], x8
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	stp	q0, q1, [x29, #-96]
Lloh11:
	adrp	x8, lCPI0_4@PAGE
Lloh12:
	ldr	x8, [x8, lCPI0_4@PAGEOFF]
	stur	x8, [x29, #-64]
	add	x20, sp, #48
	.loc	0 11 9                          ; bytecode.c:11:9
	add	x0, sp, #48
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp7:
	;DEBUG_VALUE: vm_loop:programPointer <- undef
	.loc	0 0 0 is_stmt 0                 ; bytecode.c:0:0
	ldr	w8, [x19]
	and	x9, x8, #0xf
	sub	x21, x29, #96
	ldr	x9, [x21, x9, lsl #3]
Ltmp8:
	;DEBUG_VALUE: vm_loop:programPointer <- $x19
	mov	x22, x19
	br	x9
Ltmp9:
Ltmp0:                                  ; Block address taken
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: vm_loop:program <- $x19
	;DEBUG_LABEL: vm_loop:do_load
	.loc	0 17 58 is_stmt 1               ; bytecode.c:17:58
	sub	x9, x22, x19
	asr	x9, x9, #2
	.loc	0 17 73 is_stmt 0               ; bytecode.c:17:73
	ubfx	x10, x8, #24, #8
	.loc	0 17 105                        ; bytecode.c:17:105
	ubfx	w8, w8, #4, #20
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	.loc	0 17 5                          ; bytecode.c:17:5
	str	x9, [sp]
	stp	x10, x8, [sp, #8]
Lloh13:
	adrp	x0, l_.str@PAGE
Lloh14:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
Ltmp10:
	.loc	0 19 5 is_stmt 1                ; bytecode.c:19:5
	ldr	w8, [x22], #4
	.loc	0 19 46 is_stmt 0               ; bytecode.c:19:46
	ubfx	w9, w8, #4, #20
	.loc	0 19 5                          ; bytecode.c:19:5
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	.loc	0 19 44                         ; bytecode.c:19:44
	str	w9, [x20, x8]
Ltmp11:
	;DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x22
	.loc	0 0 0                           ; bytecode.c:0:0
	ldr	w8, [x22]
	and	x9, x8, #0xf
	ldr	x9, [x21, x9, lsl #3]
Ltmp12:
	;DEBUG_VALUE: vm_loop:programPointer <- $x22
	br	x9
Ltmp13:
Ltmp1:                                  ; Block address taken
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: vm_loop:program <- $x19
	;DEBUG_LABEL: vm_loop:do_add
	.loc	0 23 82 is_stmt 1               ; bytecode.c:23:82
	sub	x9, x22, x19
	asr	x9, x9, #2
	.loc	0 23 97 is_stmt 0               ; bytecode.c:23:97
	lsr	x10, x8, #24
	.loc	0 24 52 is_stmt 1               ; bytecode.c:24:52
	ubfx	w11, w8, #16, #8
	.loc	0 24 84 is_stmt 0               ; bytecode.c:24:84
	ubfx	w8, w8, #4, #12
	.loc	0 23 5 is_stmt 1                ; bytecode.c:23:5
	ldr	w12, [x20, x10, lsl #2]
	stp	x11, x8, [sp, #24]
	stp	x10, x12, [sp, #8]
	str	x9, [sp]
Lloh15:
	adrp	x0, l_.str.1@PAGE
Lloh16:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
Ltmp14:
	.loc	0 26 53                         ; bytecode.c:26:53
	ldr	w8, [x22], #4
	ubfx	x9, x8, #16, #8
	.loc	0 26 46 is_stmt 0               ; bytecode.c:26:46
	ldr	w9, [x20, x9, lsl #2]
	.loc	0 26 94                         ; bytecode.c:26:94
	ubfx	x10, x8, #4, #12
	.loc	0 26 87                         ; bytecode.c:26:87
	ldr	w10, [x20, x10, lsl #2]
	.loc	0 26 85                         ; bytecode.c:26:85
	add	w9, w10, w9
	.loc	0 26 5                          ; bytecode.c:26:5
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	.loc	0 26 44                         ; bytecode.c:26:44
	str	w9, [x20, x8]
Ltmp15:
	;DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x22
	.loc	0 0 0                           ; bytecode.c:0:0
	ldr	w8, [x22]
	and	x9, x8, #0xf
	ldr	x9, [x21, x9, lsl #3]
Ltmp16:
	;DEBUG_VALUE: vm_loop:programPointer <- $x22
	br	x9
Ltmp17:
Ltmp2:                                  ; Block address taken
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: vm_loop:program <- $x19
	;DEBUG_LABEL: vm_loop:do_jmpne
	.loc	0 30 104 is_stmt 1              ; bytecode.c:30:104
	sub	x9, x22, x19
	asr	x9, x9, #2
	.loc	0 30 119 is_stmt 0              ; bytecode.c:30:119
	lsr	x10, x8, #24
	.loc	0 31 52 is_stmt 1               ; bytecode.c:31:52
	ubfx	x11, x8, #16, #8
	.loc	0 31 124 is_stmt 0              ; bytecode.c:31:124
	ubfx	w8, w8, #4, #12
	.loc	0 30 5 is_stmt 1                ; bytecode.c:30:5
	ldr	w12, [x20, x10, lsl #2]
	ldr	w13, [x20, x11, lsl #2]
	stp	x13, x8, [sp, #32]
	stp	x12, x11, [sp, #16]
	stp	x9, x10, [sp]
Lloh17:
	adrp	x0, l_.str.2@PAGE
Lloh18:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp18:
	.loc	0 33 16                         ; bytecode.c:33:16
	ldr	w8, [x22]
	.loc	0 33 9 is_stmt 0                ; bytecode.c:33:9
	lsr	x9, x8, #22
	and	x9, x9, #0x3fc
	ldr	w9, [x20, x9]
	.loc	0 33 58                         ; bytecode.c:33:58
	ubfx	x10, x8, #16, #8
	.loc	0 33 51                         ; bytecode.c:33:51
	ldr	w10, [x20, x10, lsl #2]
Ltmp19:
	.loc	0 33 9                          ; bytecode.c:33:9
	ubfx	w8, w8, #4, #12
	sub	w8, w8, #1
	add	x8, x19, w8, uxtw #2
	cmp	w9, w10
	csel	x8, x22, x8, eq
Ltmp20:
	;DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x8
	.loc	0 0 0                           ; bytecode.c:0:0
	add	x22, x8, #4
	ldr	w8, [x22]
Ltmp21:
	and	x9, x8, #0xf
	ldr	x9, [x21, x9, lsl #3]
Ltmp22:
	;DEBUG_VALUE: vm_loop:programPointer <- $x22
	br	x9
Ltmp23:
Ltmp3:                                  ; Block address taken
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: vm_loop:program <- $x19
	;DEBUG_LABEL: vm_loop:do_print
	.loc	0 40 58 is_stmt 1               ; bytecode.c:40:58
	sub	x9, x22, x19
	asr	x9, x9, #2
	.loc	0 40 73 is_stmt 0               ; bytecode.c:40:73
	ubfx	x8, x8, #24, #8
	.loc	0 40 5                          ; bytecode.c:40:5
	ldr	w10, [x20, w8, uxtw #2]
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	stp	x8, x10, [sp, #8]
	str	x9, [sp]
Lloh19:
	adrp	x0, l_.str.3@PAGE
Lloh20:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
Ltmp24:
	.loc	0 42 20 is_stmt 1               ; bytecode.c:42:20
	ldr	w8, [x22], #4
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	.loc	0 42 5 is_stmt 0                ; bytecode.c:42:5
	ldr	w8, [x20, x8]
	str	x8, [sp]
Lloh21:
	adrp	x0, l_.str.4@PAGE
Lloh22:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
Ltmp25:
	;DEBUG_VALUE: vm_loop:programPointer <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x22
	.loc	0 0 0                           ; bytecode.c:0:0
	ldr	w8, [x22]
	and	x9, x8, #0xf
	ldr	x9, [x21, x9, lsl #3]
Ltmp26:
	;DEBUG_VALUE: vm_loop:programPointer <- $x22
	br	x9
Ltmp27:
Ltmp4:                                  ; Block address taken
LBB0_5:
	;DEBUG_VALUE: vm_loop:program <- $x19
	;DEBUG_LABEL: vm_loop:do_ret
	.loc	0 46 41 is_stmt 1               ; bytecode.c:46:41
	sub	x8, x22, x19
	asr	x8, x8, #2
	.loc	0 46 5 is_stmt 0                ; bytecode.c:46:5
	str	x8, [sp]
Lloh23:
	adrp	x0, l_.str.5@PAGE
Lloh24:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
Ltmp28:
	.loc	0 0 5                           ; bytecode.c:0:5
	ldur	x8, [x29, #-56]
Lloh25:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh26:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh27:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_7
Ltmp29:
; %bb.6:
	;DEBUG_VALUE: vm_loop:program <- $x19
	.loc	0 49 1 epilogue_begin is_stmt 1 ; bytecode.c:49:1
	add	sp, sp, #1120
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp30:
	;DEBUG_VALUE: vm_loop:program <- [DW_OP_LLVM_entry_value 1] $x0
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp31:
LBB0_7:
	;DEBUG_VALUE: vm_loop:program <- $x19
	.loc	0 0 1 is_stmt 0                 ; bytecode.c:0:1
	bl	___stack_chk_fail
Ltmp32:
	.loh AdrpLdr	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpLdr	Lloh0, Lloh1
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
	.loh AdrpAdd	Lloh23, Lloh24
Lfunc_end0:
	.cfi_endproc
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "stdio.h" md5 0x463ca938d40f3912493d758c8faacee2 source "/*\n * Copyright (c) 2000, 2005, 2007, 2009, 2010 Apple Inc. All rights reserved.\n *\n * @APPLE_LICENSE_HEADER_START@\n *\n * This file contains Original Code and/or Modifications of Original Code\n * as defined in and that are subject to the Apple Public Source License\n * Version 2.0 (the 'License'). You may not use this file except in\n * compliance with the License. Please obtain a copy of the License at\n * http://www.opensource.apple.com/apsl/ and read it before using this\n * file.\n *\n * The Original Code and all software distributed under the License are\n * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER\n * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,\n * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,\n * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.\n * Please see the License for the specific language governing rights and\n * limitations under the License.\n *\n * @APPLE_LICENSE_HEADER_END@\n */\n/*-\n * Copyright (c) 1990, 1993\n *\tThe Regents of the University of California.  All rights reserved.\n *\n * This code is derived from software contributed to Berkeley by\n * Chris Torek.\n *\n * Redistribution and use in source and binary forms, with or without\n * modification, are permitted provided that the following conditions\n * are met:\n * 1. Redistributions of source code must retain the above copyright\n *    notice, this list of conditions and the following disclaimer.\n * 2. Redistributions in binary form must reproduce the above copyright\n *    notice, this list of conditions and the following disclaimer in the\n *    documentation and/or other materials provided with the distribution.\n * 3. All advertising materials mentioning features or use of this software\n *    must display the following acknowledgement:\n *\tThis product includes software developed by the University of\n *\tCalifornia, Berkeley and its contributors.\n * 4. Neither the name of the University nor the names of its contributors\n *    may be used to endorse or promote products derived from this software\n *    without specific prior written permission.\n *\n * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND\n * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\n * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE\n * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE\n * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\n * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS\n * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\n * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT\n * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY\n * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF\n * SUCH DAMAGE.\n *\n *\t@(#)stdio.h\t8.5 (Berkeley) 4/29/95\n */\n\n#ifndef\t_STDIO_H_\n#define\t_STDIO_H_\n\n#include <_stdio.h>\n\n#include <sys/_types/_seek_set.h>\n\n__BEGIN_DECLS\nextern FILE *__stdinp;\nextern FILE *__stdoutp;\nextern FILE *__stderrp;\n__END_DECLS\n\n#define\t__SLBF\t0x0001\t\t/* line buffered */\n#define\t__SNBF\t0x0002\t\t/* unbuffered */\n#define\t__SRD\t0x0004\t\t/* OK to read */\n#define\t__SWR\t0x0008\t\t/* OK to write */\n\t/* RD and WR are never simultaneously asserted */\n#define\t__SRW\t0x0010\t\t/* open for reading & writing */\n#define\t__SEOF\t0x0020\t\t/* found EOF */\n#define\t__SERR\t0x0040\t\t/* found error */\n#define\t__SMBF\t0x0080\t\t/* _buf is from malloc */\n#define\t__SAPP\t0x0100\t\t/* fdopen()ed in append mode */\n#define\t__SSTR\t0x0200\t\t/* this is an sprintf/snprintf string */\n#define\t__SOPT\t0x0400\t\t/* do fseek() optimisation */\n#define\t__SNPT\t0x0800\t\t/* do not do fseek() optimisation */\n#define\t__SOFF\t0x1000\t\t/* set iff _offset is in fact correct */\n#define\t__SMOD\t0x2000\t\t/* true => fgetln modified _p text */\n#define __SALC  0x4000\t\t/* allocate string space dynamically */\n#define __SIGN  0x8000\t\t/* ignore this file in _fwalk */\n\n/*\n * The following three definitions are for ANSI C, which took them\n * from System V, which brilliantly took internal interface macros and\n * made them official arguments to setvbuf(), without renaming them.\n * Hence, these ugly _IOxxx names are *supposed* to appear in user code.\n *\n * Although numbered as their counterparts above, the implementation\n * does not rely on this.\n */\n#define\t_IOFBF\t0\t\t/* setvbuf should set fully buffered */\n#define\t_IOLBF\t1\t\t/* setvbuf should set line buffered */\n#define\t_IONBF\t2\t\t/* setvbuf should set unbuffered */\n\n#define\tBUFSIZ\t1024\t\t/* size of buffer used by setbuf */\n#define\tEOF\t(-1)\n\n\t\t\t\t/* must be == _POSIX_STREAM_MAX <limits.h> */\n#define\tFOPEN_MAX\t20\t/* must be <= OPEN_MAX <sys/syslimits.h> */\n#define\tFILENAME_MAX\t1024\t/* must be <= PATH_MAX <sys/syslimits.h> */\n\n/* System V/ANSI C; this is the wrong way to do this, do *not* use these. */\n#ifndef _ANSI_SOURCE\n#define\tP_tmpdir\t\"/var/tmp/\"\n#endif\n#define\tL_tmpnam\t1024\t/* XXX must be == PATH_MAX */\n#define\tTMP_MAX\t\t308915776\n\n#define\tstdin\t__stdinp\n#define\tstdout\t__stdoutp\n#define\tstderr\t__stderrp\n\n#ifdef _DARWIN_UNLIMITED_STREAMS\n#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_3_2\n#error \"_DARWIN_UNLIMITED_STREAMS specified, but -miphoneos-version-min version does not support it.\"\n#elif defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_6\n#error \"_DARWIN_UNLIMITED_STREAMS specified, but -mmacosx-version-min version does not support it.\"\n#endif\n#endif\n\n/* ANSI-C */\n\n__BEGIN_DECLS\nvoid\t clearerr(FILE *);\nint\t fclose(FILE *);\nint\t feof(FILE *);\nint\t ferror(FILE *);\nint\t fflush(FILE *);\nint\t fgetc(FILE *);\nint\t fgetpos(FILE * __restrict, fpos_t *);\nchar\t*fgets(char * __restrict, int, FILE *);\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fopen));\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fopen));\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\nint\t fprintf(FILE * __restrict, const char * __restrict, ...) __printflike(2, 3);\nint\t fputc(int, FILE *);\nint\t fputs(const char * __restrict, FILE * __restrict) __DARWIN_ALIAS(fputs);\nsize_t\t fread(void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream);\nFILE\t*freopen(const char * __restrict, const char * __restrict,\n                 FILE * __restrict) __DARWIN_ALIAS(freopen);\nint\t fscanf(FILE * __restrict, const char * __restrict, ...) __scanflike(2, 3);\nint\t fseek(FILE *, long, int);\nint\t fsetpos(FILE *, const fpos_t *);\nlong\t ftell(FILE *);\nsize_t\t fwrite(const void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream) __DARWIN_ALIAS(fwrite);\nint\t getc(FILE *);\nint\t getchar(void);\n\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.\")\n#endif\nchar\t*gets(char *);\n\nvoid\t perror(const char *) __cold;\nint\t printf(const char * __restrict, ...) __printflike(1, 2);\nint\t putc(int, FILE *);\nint\t putchar(int);\nint\t puts(const char *);\nint\t remove(const char *);\nint\t rename (const char *__old, const char *__new);\nvoid\t rewind(FILE *);\nint\t scanf(const char * __restrict, ...) __scanflike(1, 2);\nvoid\t setbuf(FILE * __restrict, char * __restrict);\nint\t setvbuf(FILE * __restrict, char * __restrict, int, size_t);\n\n__swift_unavailable(\"Use snprintf instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.\")\n#endif\nint\t sprintf(char * __restrict, const char * __restrict, ...) __printflike(2, 3);\n\nint\t sscanf(const char * __restrict, const char * __restrict, ...) __scanflike(2, 3);\nFILE\t*tmpfile(void);\n\n__swift_unavailable(\"Use mkstemp(3) instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.\")\n#endif\nchar\t*tmpnam(char *);\n\nint\t ungetc(int, FILE *);\nint\t vfprintf(FILE * __restrict, const char * __restrict, va_list) __printflike(2, 0);\nint\t vprintf(const char * __restrict, va_list) __printflike(1, 0);\n\n__swift_unavailable(\"Use vsnprintf instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use vsnprintf(3) instead.\")\n#endif\nint\t vsprintf(char * __restrict, const char * __restrict, va_list) __printflike(2, 0);\n__END_DECLS\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-1988\n */\n\n#if __DARWIN_C_LEVEL >= 198808L\n#define\tL_ctermid\t1024\t/* size for ctermid(); PATH_MAX */\n\n#include <_ctermid.h>\n\n__BEGIN_DECLS\n\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fdopen));\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fdopen));\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\nint\t fileno(FILE *);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 198808L */\n\n\n/* Additional functionality provided by:\n * POSIX.2-1992 C Language Binding Option\n */\n\n#if __DARWIN_C_LEVEL >= 199209L\n__BEGIN_DECLS\nint\t pclose(FILE *) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(popen)) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(popen)) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 199209L */\n\n/* Additional functionality provided by:\n * POSIX.1c-1995,\n * POSIX.1i-1995,\n * and the omnibus ISO/IEC 9945-1: 1996\n */\n\n#if __DARWIN_C_LEVEL >= 199506L\n\n/* Functions internal to the implementation. */\n__BEGIN_DECLS\nint\t__srget(FILE *);\nint\t__svfscanf(FILE *, const char *, va_list) __scanflike(2, 0);\nint\t__swbuf(int, FILE *);\n__END_DECLS\n\n/*\n * The __sfoo macros are here so that we can\n * define function versions in the C library.\n */\n#define\t__sgetc(p) (--(p)->_r < 0 ? __srget(p) : (int)(*(p)->_p++))\n#if defined(__GNUC__) && defined(__STDC__)\n__header_always_inline int __sputc(int _c, FILE *_p) {\n\tif (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\\n'))\n\t\treturn (*_p->_p++ = _c);\n\telse\n\t\treturn (__swbuf(_c, _p));\n}\n#else\n/*\n * This has been tuned to generate reasonable code on the vax using pcc.\n */\n#define\t__sputc(c, p) \\\n\t(--(p)->_w < 0 ? \\\n\t\t(p)->_w >= (p)->_lbfsize ? \\\n\t\t\t(*(p)->_p = (c)), *(p)->_p != '\\n' ? \\\n\t\t\t\t(int)*(p)->_p++ : \\\n\t\t\t\t__swbuf('\\n', p) : \\\n\t\t\t__swbuf((int)(c), p) : \\\n\t\t(*(p)->_p = (c), (int)*(p)->_p++))\n#endif\n\n#define\t__sfeof(p)\t(((p)->_flags & __SEOF) != 0)\n#define\t__sferror(p)\t(((p)->_flags & __SERR) != 0)\n#define\t__sclearerr(p)\t((void)((p)->_flags &= ~(__SERR|__SEOF)))\n#define\t__sfileno(p)\t((p)->_file)\n\n__BEGIN_DECLS\nvoid\t flockfile(FILE *);\nint\t ftrylockfile(FILE *);\nvoid\t funlockfile(FILE *);\nint\t getc_unlocked(FILE *);\nint\t getchar_unlocked(void);\nint\t putc_unlocked(int, FILE *);\nint\t putchar_unlocked(int);\n\n/* Removed in Issue 6 */\n#if !defined(_POSIX_C_SOURCE) || _POSIX_C_SOURCE < 200112L\nint\t getw(FILE *);\nint\t putw(int, FILE *);\n#endif\n\n__swift_unavailable(\"Use mkstemp(3) instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.\")\n#endif\nchar\t*tempnam(const char *__dir, const char *__prefix) __DARWIN_ALIAS(tempnam);\n__END_DECLS\n\n#ifndef lint\n#define\tgetc_unlocked(fp)\t__sgetc(fp)\n#define putc_unlocked(x, fp)\t__sputc(x, fp)\n#endif /* lint */\n\n#define\tgetchar_unlocked()\tgetc_unlocked(stdin)\n#define\tputchar_unlocked(x)\tputc_unlocked(x, stdout)\n#endif /* __DARWIN_C_LEVEL >= 199506L */\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-2001\n * ISO C99\n */\n\n#if __DARWIN_C_LEVEL >= 200112L\n#include <sys/_types/_off_t.h>\n\n__BEGIN_DECLS\nint\t fseeko(FILE * __stream, off_t __offset, int __whence);\noff_t\t ftello(FILE * __stream);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200112L */\n\n#if __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus)\n__BEGIN_DECLS\nint\t snprintf(char * __restrict __str, size_t __size, const char * __restrict __format, ...) __printflike(3, 4);\nint\t vfscanf(FILE * __restrict __stream, const char * __restrict __format, va_list) __scanflike(2, 0);\nint\t vscanf(const char * __restrict __format, va_list) __scanflike(1, 0);\nint\t vsnprintf(char * __restrict __str, size_t __size, const char * __restrict __format, va_list) __printflike(3, 0);\nint\t vsscanf(const char * __restrict __str, const char * __restrict __format, va_list) __scanflike(2, 0);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus) */\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-2008\n */\n\n#if __DARWIN_C_LEVEL >= 200809L\n#include <sys/_types/_ssize_t.h>\n\n__BEGIN_DECLS\nint\tdprintf(int, const char * __restrict, ...) __printflike(2, 3) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nint\tvdprintf(int, const char * __restrict, va_list) __printflike(2, 0) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nssize_t getdelim(char ** __restrict __linep, size_t * __restrict __linecapp, int __delimiter, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nssize_t getline(char ** __restrict __linep, size_t * __restrict __linecapp, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nFILE *fmemopen(void * __restrict __buf, size_t __size, const char * __restrict __mode) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\nFILE *open_memstream(char **__bufp, size_t *__sizep) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200809L */\n\n\n\n/* Darwin extensions */\n\n#if __DARWIN_C_LEVEL >= __DARWIN_C_FULL\n__BEGIN_DECLS\nextern __const int sys_nerr;\t\t/* perror(3) external variables */\nextern __const char *__const sys_errlist[];\n\nint\t asprintf(char ** __restrict, const char * __restrict, ...) __printflike(2, 3);\nchar\t*ctermid_r(char *);\nchar\t*fgetln(FILE *, size_t *);\n__const char *fmtcheck(const char *, const char *) __attribute__((format_arg(2)));\nint\t fpurge(FILE *);\nvoid\t setbuffer(FILE *, char *, int);\nint\t setlinebuf(FILE *);\nint\t vasprintf(char ** __restrict, const char * __restrict, va_list) __printflike(2, 0);\n\n\n/*\n * Stdio function-access interface.\n */\nFILE\t*funopen(const void *,\n                 int (* _Nullable)(void *, char *, int),\n                 int (* _Nullable)(void *, const char *, int),\n                 fpos_t (* _Nullable)(void *, fpos_t, int),\n                 int (* _Nullable)(void *));\n__END_DECLS\n#define\tfropen(cookie, fn) funopen(cookie, fn, 0, 0, 0)\n#define\tfwopen(cookie, fn) funopen(cookie, 0, fn, 0, 0)\n\n#define\tfeof_unlocked(p)\t__sfeof(p)\n#define\tferror_unlocked(p)\t__sferror(p)\n#define\tclearerr_unlocked(p)\t__sclearerr(p)\n#define\tfileno_unlocked(p)\t__sfileno(p)\n\n#endif /* __DARWIN_C_LEVEL >= __DARWIN_C_FULL */\n\n\n#ifdef _USE_EXTENDED_LOCALES_\n#include <xlocale/_stdio.h>\n#endif /* _USE_EXTENDED_LOCALES_ */\n\n#if defined (__GNUC__) && _FORTIFY_SOURCE > 0 && !defined (__cplusplus)\n/* Security checking functions.  */\n#include <secure/_stdio.h>\n#endif\n\n#endif /* _STDIO_H_ */\n"
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%ld: load memory[%d] = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"%ld: add memory[%d](%d) = memory[%d] + memory[%d]\n"

l_.str.2:                               ; @.str.2
	.asciz	"%ld: jmpne if memory[%d](%d) != memory[%d](%d) then programPointer = %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"%ld: print memory[%d](%d)\n"

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

l_.str.5:                               ; @.str.5
	.asciz	"%ld: ret\n"

	.file	2 "." "bytecode.h" md5 0xc8e1e974e2eb424d295059f7e81af4ac source "#pragma once\n\ntypedef enum\n{\n    OP_LOAD,\n    OP_ADD,\n    OP_JMPNE,\n    OP_PRINT,\n    OP_RET\n} opcode_t;\n\ntypedef unsigned int bytecode_t;\n\n// Bytecde: packed 32 bit\n// --------------------------\n//    A:B:C:OP = 8: 8:12: 4\n//    A:Imm:OP =    8:20: 4\n//  A:B:Jmp:OP = 8: 8:12: 4\n\n#define MAKE_OPCODE(op) ((op) & 0xf)\n\n#define MAKE_OPCODE_A_B_C(op, a, b, c) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((c) & 0xfff) << 4))\n\n#define MAKE_OPCODE_IMM(op, a, imm) (((op) & 0xf) + (((a) & 0xff) << 24) + (((imm & 0xfffff) << 4)))\n\n#define MAKE_OPCODE_A_B_JMP(op, a, b, jmp) (((op) & 0xf) + (((a) & 0xff) << 24) + (((b) & 0xff) << 16) + (((jmp) & 0xfff) << 4))\n\n#define GET_OPCODE(instruction) ((instruction) & 0xf)\n\n#define GET_OPERAND_A(instruction) (((instruction) >> 24) & 0xff)\n\n#define GET_OPERAND_B(instruction) (((instruction) >> 16) & 0xff)\n\n#define GET_OPERAND_C(instruction) (((instruction) >> 4) & 0xfff)\n\n#define GET_OPERAND_IMM(instruction) (((instruction) >> 4) & 0xfffff)\n\n#define GET_OPERAND_JMP(instruction) (((instruction) >> 4) & 0xfff)\n\nextern void vm_loop(bytecode_t *pp);"
	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ; Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ; Version
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
	.long	2                               ; Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
.set Lset2, Ldebug_loc1-Lloclists_table_base0
	.long	Lset2
Ldebug_loc0:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin0-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp5-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp5-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp30-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp31-Lfunc_begin0            ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp31-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc1:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp8-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp9-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp11-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp12-Lfunc_begin0            ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp12-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp13-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp15-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp16-Lfunc_begin0            ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp16-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp17-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp20-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp21-Lfunc_begin0            ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp22-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp23-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp25-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp26-Lfunc_begin0            ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp26-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp27-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_list_header_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	37                              ; DW_FORM_strx1
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	37                              ; DW_FORM_strx1
	.byte	114                             ; DW_AT_str_offsets_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	115                             ; DW_AT_addr_base
	.byte	23                              ; DW_FORM_sec_offset
	.ascii	"\214\001"                      ; DW_AT_loclists_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	10                              ; DW_TAG_label
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset3, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset3
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset4, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset4
	.byte	1                               ; Abbrev [1] 0xc:0x15d DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
	.byte	3                               ; DW_AT_APPLE_sdk
.set Lset5, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset5
.set Lset6, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset6
	.byte	4                               ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.byte	6                               ; DW_AT_low_pc
.set Lset7, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset7
.set Lset8, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset8
.set Lset9, Lloclists_table_base0-Lsection_debug_loc0 ; DW_AT_loclists_base
	.long	Lset9
	.byte	2                               ; Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	27                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3f:0x4 DW_TAG_base_type
	.byte	5                               ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x43:0x4 DW_TAG_base_type
	.byte	6                               ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x47:0xa DW_TAG_variable
	.long	81                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ; Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	51                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x5d:0xa DW_TAG_variable
	.long	103                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               ; Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	73                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x73:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               ; Abbrev [2] 0x7d:0xa DW_TAG_variable
	.long	135                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               ; Abbrev [3] 0x87:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x8c:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x93:0xa DW_TAG_variable
	.long	157                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               ; Abbrev [3] 0x9d:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xa2:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	10                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xa9:0x72 DW_TAG_subprogram
	.byte	6                               ; DW_AT_low_pc
.set Lset10, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset10
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	9                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0xb4:0x9 DW_TAG_formal_parameter
	.byte	0                               ; DW_AT_location
	.byte	12                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.long	343                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xbd:0xc DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.byte	10                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	317                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xc9:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.byte	11                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0xd4:0x9 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	343                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xdd:0x5 DW_TAG_label
	.byte	16                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	13                              ; DW_AT_low_pc
	.byte	11                              ; Abbrev [11] 0xe2:0x5 DW_TAG_label
	.byte	17                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.byte	14                              ; DW_AT_low_pc
	.byte	11                              ; Abbrev [11] 0xe7:0x5 DW_TAG_label
	.byte	18                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.byte	15                              ; DW_AT_low_pc
	.byte	11                              ; Abbrev [11] 0xec:0x5 DW_TAG_label
	.byte	19                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
	.byte	16                              ; DW_AT_low_pc
	.byte	11                              ; Abbrev [11] 0xf1:0x5 DW_TAG_label
	.byte	20                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	44                              ; DW_AT_decl_line
	.byte	17                              ; DW_AT_low_pc
	.byte	12                              ; Abbrev [12] 0xf6:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	7                               ; DW_AT_call_return_pc
	.byte	12                              ; Abbrev [12] 0xfc:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	8                               ; DW_AT_call_return_pc
	.byte	12                              ; Abbrev [12] 0x102:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	9                               ; DW_AT_call_return_pc
	.byte	12                              ; Abbrev [12] 0x108:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	10                              ; DW_AT_call_return_pc
	.byte	12                              ; Abbrev [12] 0x10e:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	11                              ; DW_AT_call_return_pc
	.byte	12                              ; Abbrev [12] 0x114:0x6 DW_TAG_call_site
	.long	283                             ; DW_AT_call_origin
	.byte	12                              ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x11b:0xf DW_TAG_subprogram
	.byte	7                               ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	298                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	14                              ; Abbrev [14] 0x123:0x5 DW_TAG_formal_parameter
	.long	302                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x128:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x12a:0x4 DW_TAG_base_type
	.byte	8                               ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	16                              ; Abbrev [16] 0x12e:0x5 DW_TAG_restrict_type
	.long	307                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x133:0x5 DW_TAG_pointer_type
	.long	312                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x138:0x5 DW_TAG_const_type
	.long	63                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x13d:0xc DW_TAG_array_type
	.long	329                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x142:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	5                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x149:0x1 DW_TAG_pointer_type
	.byte	3                               ; Abbrev [3] 0x14a:0xd DW_TAG_array_type
	.long	298                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x14f:0x7 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x157:0x5 DW_TAG_pointer_type
	.long	348                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x15c:0x8 DW_TAG_typedef
	.long	356                             ; DW_AT_type
	.byte	14                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x164:0x4 DW_TAG_base_type
	.byte	13                              ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	88                              ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.6" ; string offset=0
	.asciz	"bytecode.c"                    ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=41
	.asciz	"MacOSX14.sdk"                  ; string offset=95
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading" ; string offset=108
	.asciz	"char"                          ; string offset=173
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=178
	.asciz	"vm_loop"                       ; string offset=198
	.asciz	"printf"                        ; string offset=206
	.asciz	"int"                           ; string offset=213
	.asciz	"dispatch_table"                ; string offset=217
	.asciz	"memory"                        ; string offset=232
	.asciz	"program"                       ; string offset=239
	.asciz	"bytecode_t"                    ; string offset=247
	.asciz	"unsigned int"                  ; string offset=258
	.asciz	"programPointer"                ; string offset=271
	.asciz	"do_load"                       ; string offset=286
	.asciz	"do_add"                        ; string offset=294
	.asciz	"do_jmpne"                      ; string offset=301
	.asciz	"do_print"                      ; string offset=310
	.asciz	"do_ret"                        ; string offset=319
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	30
	.long	41
	.long	95
	.long	108
	.long	173
	.long	178
	.long	206
	.long	213
	.long	198
	.long	217
	.long	232
	.long	239
	.long	258
	.long	247
	.long	271
	.long	286
	.long	294
	.long	301
	.long	310
	.long	319
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset11, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset11
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	Lfunc_begin0
	.quad	Ltmp10
	.quad	Ltmp14
	.quad	Ltmp18
	.quad	Ltmp24
	.quad	Ltmp25
	.quad	Ltmp28
	.quad	Ltmp9
	.quad	Ltmp13
	.quad	Ltmp17
	.quad	Ltmp23
	.quad	Ltmp27
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset12, Lnames_end0-Lnames_start0  ; Header: unit length
	.long	Lset12
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	6                               ; Header: bucket count
	.long	6                               ; Header: name count
.set Lset13, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset13
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset14, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset14
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	3                               ; Bucket 3
	.long	0                               ; Bucket 4
	.long	4                               ; Bucket 5
	.long	739847143                       ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 2
	.long	-2075254111                     ; Hash in Bucket 3
	.long	217009403                       ; Hash in Bucket 5
	.long	2090147939                      ; Hash in Bucket 5
	.long	-1304652851                     ; Hash in Bucket 5
	.long	247                             ; String in Bucket 1: bytecode_t
	.long	213                             ; String in Bucket 2: int
	.long	198                             ; String in Bucket 3: vm_loop
	.long	178                             ; String in Bucket 5: __ARRAY_SIZE_TYPE__
	.long	173                             ; String in Bucket 5: char
	.long	258                             ; String in Bucket 5: unsigned int
.set Lset15, Lnames4-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset15
.set Lset16, Lnames3-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset16
.set Lset17, Lnames2-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset17
.set Lset18, Lnames1-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset18
.set Lset19, Lnames0-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset19
.set Lset20, Lnames5-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset20
Lnames_abbrev_start0:
	.byte	46                              ; Abbrev code
	.byte	46                              ; DW_TAG_subprogram
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	22                              ; Abbrev code
	.byte	22                              ; DW_TAG_typedef
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	36                              ; Abbrev code
	.byte	36                              ; DW_TAG_base_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames4:
	.byte	22                              ; Abbreviation code
	.long	348                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: bytecode_t
Lnames3:
	.byte	36                              ; Abbreviation code
	.long	298                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: int
Lnames2:
	.byte	46                              ; Abbreviation code
	.long	169                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: vm_loop
Lnames1:
	.byte	36                              ; Abbreviation code
	.long	67                              ; DW_IDX_die_offset
	.byte	0                               ; End of list: __ARRAY_SIZE_TYPE__
Lnames0:
	.byte	36                              ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; End of list: char
Lnames5:
	.byte	36                              ; Abbreviation code
	.long	356                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: unsigned int
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
