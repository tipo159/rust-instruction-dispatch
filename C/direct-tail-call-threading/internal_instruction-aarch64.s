	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	0 "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" "internal_instruction.c" md5 0xb7507d1ec52da7462015488ae670cffa source "#include <stdio.h>\n\n#include \"bytecode.h\"\n#include \"internal_instruction.h\"\n\n#define NEXT_INSTRUCTION                                                   \\\n    do                                                                     \\\n    {                                                                      \\\n        __attribute__((musttail)) return instruction->handler(instruction, \\\n                                                              memory);     \\\n    } while (0)\n\n#pragma clang diagnostic push\n#pragma clang diagnostic ignored \"-Wformat\"\n\nvoid load(internal_instruction_t *restrict instruction,\n                 int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: load memory[%d] = %d\\n\", instruction, instruction->a, instruction->imm);\n#endif\n    memory[instruction->a] = instruction->imm;\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid add(internal_instruction_t *restrict instruction,\n                int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: add memory[%d](%d) = memory[%d] + memory[%d]\\n\", instruction, instruction->a,\n           memory[instruction->a], instruction->b, instruction->c);\n#endif\n    memory[instruction->a] = memory[instruction->b] + memory[instruction->c];\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid jmpne(internal_instruction_t *restrict instruction,\n                  int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\\n\", instruction, instruction->a,\n           memory[instruction->a], instruction->b, memory[instruction->b], instruction->jmp);\n#endif\n    if (memory[instruction->a] != memory[instruction->b])\n    {\n        instruction = instruction->jmp;\n    }\n    else\n    {\n        instruction++;\n    }\n    NEXT_INSTRUCTION;\n}\n\nvoid print(internal_instruction_t *restrict instruction,\n                  int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: print memory[%d](%d)\\n\", instruction, instruction->a, memory[instruction->a]);\n#endif\n    printf(\"%d\\n\", memory[instruction->a]);\n    instruction++;\n    NEXT_INSTRUCTION;\n}\n\nvoid ret(internal_instruction_t *restrict instruction,\n                int *restrict memory)\n{\n#ifdef DEBUG\n    printf(\"%x: ret\\n\", instruction);\n#endif\n}\n\n#pragma clang diagnostic pop\n\nvoid vm_loop(internal_instruction_t *internal_program)\n{\n    int memory[256] = {0};\n\n    internal_program[0].handler(internal_program, memory);\n}\n"
	.globl	_load                           ; -- Begin function load
	.p2align	2
_load:                                  ; @load
Lfunc_begin0:
	.loc	0 18 0                          ; internal_instruction.c:18:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: load:instruction <- $x0
	;DEBUG_VALUE: load:memory <- $x1
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Ltmp0:
	;DEBUG_VALUE: load:memory <- $x19
	mov	x20, x0
Ltmp1:
	;DEBUG_VALUE: load:instruction <- $x20
	.loc	0 20 68 prologue_end            ; internal_instruction.c:20:68
	ldrb	w8, [x0, #8]
	.loc	0 20 5 is_stmt 0                ; internal_instruction.c:20:5
	ldr	w9, [x0, #16]
	stp	x8, x9, [sp, #8]
	str	x0, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
Ltmp2:
	.loc	0 22 43 is_stmt 1               ; internal_instruction.c:22:43
	ldr	w8, [x20, #16]
	.loc	0 22 25 is_stmt 0               ; internal_instruction.c:22:25
	ldrb	w9, [x20, #8]
	.loc	0 22 28                         ; internal_instruction.c:22:28
	str	w8, [x19, x9, lsl #2]
Ltmp3:
	.loc	0 24 5 is_stmt 1                ; internal_instruction.c:24:5
	ldr	x2, [x20, #24]!
Ltmp4:
	;DEBUG_VALUE: load:instruction <- $x20
	mov	x0, x20
	mov	x1, x19
	.loc	0 24 5 epilogue_begin is_stmt 0 ; internal_instruction.c:24:5
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp5:
	;DEBUG_VALUE: load:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #64
Ltmp6:
	br	x2
Ltmp7:
	.loh AdrpAdd	Lloh0, Lloh1
Lfunc_end0:
	.cfi_endproc
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "stdio.h" md5 0x463ca938d40f3912493d758c8faacee2 source "/*\n * Copyright (c) 2000, 2005, 2007, 2009, 2010 Apple Inc. All rights reserved.\n *\n * @APPLE_LICENSE_HEADER_START@\n *\n * This file contains Original Code and/or Modifications of Original Code\n * as defined in and that are subject to the Apple Public Source License\n * Version 2.0 (the 'License'). You may not use this file except in\n * compliance with the License. Please obtain a copy of the License at\n * http://www.opensource.apple.com/apsl/ and read it before using this\n * file.\n *\n * The Original Code and all software distributed under the License are\n * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER\n * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,\n * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,\n * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.\n * Please see the License for the specific language governing rights and\n * limitations under the License.\n *\n * @APPLE_LICENSE_HEADER_END@\n */\n/*-\n * Copyright (c) 1990, 1993\n *\tThe Regents of the University of California.  All rights reserved.\n *\n * This code is derived from software contributed to Berkeley by\n * Chris Torek.\n *\n * Redistribution and use in source and binary forms, with or without\n * modification, are permitted provided that the following conditions\n * are met:\n * 1. Redistributions of source code must retain the above copyright\n *    notice, this list of conditions and the following disclaimer.\n * 2. Redistributions in binary form must reproduce the above copyright\n *    notice, this list of conditions and the following disclaimer in the\n *    documentation and/or other materials provided with the distribution.\n * 3. All advertising materials mentioning features or use of this software\n *    must display the following acknowledgement:\n *\tThis product includes software developed by the University of\n *\tCalifornia, Berkeley and its contributors.\n * 4. Neither the name of the University nor the names of its contributors\n *    may be used to endorse or promote products derived from this software\n *    without specific prior written permission.\n *\n * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND\n * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\n * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE\n * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE\n * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\n * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS\n * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\n * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT\n * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY\n * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF\n * SUCH DAMAGE.\n *\n *\t@(#)stdio.h\t8.5 (Berkeley) 4/29/95\n */\n\n#ifndef\t_STDIO_H_\n#define\t_STDIO_H_\n\n#include <_stdio.h>\n\n#include <sys/_types/_seek_set.h>\n\n__BEGIN_DECLS\nextern FILE *__stdinp;\nextern FILE *__stdoutp;\nextern FILE *__stderrp;\n__END_DECLS\n\n#define\t__SLBF\t0x0001\t\t/* line buffered */\n#define\t__SNBF\t0x0002\t\t/* unbuffered */\n#define\t__SRD\t0x0004\t\t/* OK to read */\n#define\t__SWR\t0x0008\t\t/* OK to write */\n\t/* RD and WR are never simultaneously asserted */\n#define\t__SRW\t0x0010\t\t/* open for reading & writing */\n#define\t__SEOF\t0x0020\t\t/* found EOF */\n#define\t__SERR\t0x0040\t\t/* found error */\n#define\t__SMBF\t0x0080\t\t/* _buf is from malloc */\n#define\t__SAPP\t0x0100\t\t/* fdopen()ed in append mode */\n#define\t__SSTR\t0x0200\t\t/* this is an sprintf/snprintf string */\n#define\t__SOPT\t0x0400\t\t/* do fseek() optimisation */\n#define\t__SNPT\t0x0800\t\t/* do not do fseek() optimisation */\n#define\t__SOFF\t0x1000\t\t/* set iff _offset is in fact correct */\n#define\t__SMOD\t0x2000\t\t/* true => fgetln modified _p text */\n#define __SALC  0x4000\t\t/* allocate string space dynamically */\n#define __SIGN  0x8000\t\t/* ignore this file in _fwalk */\n\n/*\n * The following three definitions are for ANSI C, which took them\n * from System V, which brilliantly took internal interface macros and\n * made them official arguments to setvbuf(), without renaming them.\n * Hence, these ugly _IOxxx names are *supposed* to appear in user code.\n *\n * Although numbered as their counterparts above, the implementation\n * does not rely on this.\n */\n#define\t_IOFBF\t0\t\t/* setvbuf should set fully buffered */\n#define\t_IOLBF\t1\t\t/* setvbuf should set line buffered */\n#define\t_IONBF\t2\t\t/* setvbuf should set unbuffered */\n\n#define\tBUFSIZ\t1024\t\t/* size of buffer used by setbuf */\n#define\tEOF\t(-1)\n\n\t\t\t\t/* must be == _POSIX_STREAM_MAX <limits.h> */\n#define\tFOPEN_MAX\t20\t/* must be <= OPEN_MAX <sys/syslimits.h> */\n#define\tFILENAME_MAX\t1024\t/* must be <= PATH_MAX <sys/syslimits.h> */\n\n/* System V/ANSI C; this is the wrong way to do this, do *not* use these. */\n#ifndef _ANSI_SOURCE\n#define\tP_tmpdir\t\"/var/tmp/\"\n#endif\n#define\tL_tmpnam\t1024\t/* XXX must be == PATH_MAX */\n#define\tTMP_MAX\t\t308915776\n\n#define\tstdin\t__stdinp\n#define\tstdout\t__stdoutp\n#define\tstderr\t__stderrp\n\n#ifdef _DARWIN_UNLIMITED_STREAMS\n#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_3_2\n#error \"_DARWIN_UNLIMITED_STREAMS specified, but -miphoneos-version-min version does not support it.\"\n#elif defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED < __MAC_10_6\n#error \"_DARWIN_UNLIMITED_STREAMS specified, but -mmacosx-version-min version does not support it.\"\n#endif\n#endif\n\n/* ANSI-C */\n\n__BEGIN_DECLS\nvoid\t clearerr(FILE *);\nint\t fclose(FILE *);\nint\t feof(FILE *);\nint\t ferror(FILE *);\nint\t fflush(FILE *);\nint\t fgetc(FILE *);\nint\t fgetpos(FILE * __restrict, fpos_t *);\nchar\t*fgets(char * __restrict, int, FILE *);\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fopen));\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*fopen(const char * __restrict __filename, const char * __restrict __mode) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fopen));\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\nint\t fprintf(FILE * __restrict, const char * __restrict, ...) __printflike(2, 3);\nint\t fputc(int, FILE *);\nint\t fputs(const char * __restrict, FILE * __restrict) __DARWIN_ALIAS(fputs);\nsize_t\t fread(void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream);\nFILE\t*freopen(const char * __restrict, const char * __restrict,\n                 FILE * __restrict) __DARWIN_ALIAS(freopen);\nint\t fscanf(FILE * __restrict, const char * __restrict, ...) __scanflike(2, 3);\nint\t fseek(FILE *, long, int);\nint\t fsetpos(FILE *, const fpos_t *);\nlong\t ftell(FILE *);\nsize_t\t fwrite(const void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream) __DARWIN_ALIAS(fwrite);\nint\t getc(FILE *);\nint\t getchar(void);\n\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.\")\n#endif\nchar\t*gets(char *);\n\nvoid\t perror(const char *) __cold;\nint\t printf(const char * __restrict, ...) __printflike(1, 2);\nint\t putc(int, FILE *);\nint\t putchar(int);\nint\t puts(const char *);\nint\t remove(const char *);\nint\t rename (const char *__old, const char *__new);\nvoid\t rewind(FILE *);\nint\t scanf(const char * __restrict, ...) __scanflike(1, 2);\nvoid\t setbuf(FILE * __restrict, char * __restrict);\nint\t setvbuf(FILE * __restrict, char * __restrict, int, size_t);\n\n__swift_unavailable(\"Use snprintf instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.\")\n#endif\nint\t sprintf(char * __restrict, const char * __restrict, ...) __printflike(2, 3);\n\nint\t sscanf(const char * __restrict, const char * __restrict, ...) __scanflike(2, 3);\nFILE\t*tmpfile(void);\n\n__swift_unavailable(\"Use mkstemp(3) instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.\")\n#endif\nchar\t*tmpnam(char *);\n\nint\t ungetc(int, FILE *);\nint\t vfprintf(FILE * __restrict, const char * __restrict, va_list) __printflike(2, 0);\nint\t vprintf(const char * __restrict, va_list) __printflike(1, 0);\n\n__swift_unavailable(\"Use vsnprintf instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use vsnprintf(3) instead.\")\n#endif\nint\t vsprintf(char * __restrict, const char * __restrict, va_list) __printflike(2, 0);\n__END_DECLS\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-1988\n */\n\n#if __DARWIN_C_LEVEL >= 198808L\n#define\tL_ctermid\t1024\t/* size for ctermid(); PATH_MAX */\n\n#include <_ctermid.h>\n\n__BEGIN_DECLS\n\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(fdopen));\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*fdopen(int, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(fdopen));\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\nint\t fileno(FILE *);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 198808L */\n\n\n/* Additional functionality provided by:\n * POSIX.2-1992 C Language Binding Option\n */\n\n#if __DARWIN_C_LEVEL >= 199209L\n__BEGIN_DECLS\nint\t pclose(FILE *) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#if defined(_DARWIN_UNLIMITED_STREAMS) || defined(_DARWIN_C_SOURCE)\nFILE\t*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_3_2, __DARWIN_EXTSN(popen)) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#else /* !_DARWIN_UNLIMITED_STREAMS && !_DARWIN_C_SOURCE */\nFILE\t*popen(const char *, const char *) __DARWIN_ALIAS_STARTING(__MAC_10_6, __IPHONE_2_0, __DARWIN_ALIAS(popen)) __swift_unavailable(\"Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)\");\n#endif /* (DARWIN_UNLIMITED_STREAMS || _DARWIN_C_SOURCE) */\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 199209L */\n\n/* Additional functionality provided by:\n * POSIX.1c-1995,\n * POSIX.1i-1995,\n * and the omnibus ISO/IEC 9945-1: 1996\n */\n\n#if __DARWIN_C_LEVEL >= 199506L\n\n/* Functions internal to the implementation. */\n__BEGIN_DECLS\nint\t__srget(FILE *);\nint\t__svfscanf(FILE *, const char *, va_list) __scanflike(2, 0);\nint\t__swbuf(int, FILE *);\n__END_DECLS\n\n/*\n * The __sfoo macros are here so that we can\n * define function versions in the C library.\n */\n#define\t__sgetc(p) (--(p)->_r < 0 ? __srget(p) : (int)(*(p)->_p++))\n#if defined(__GNUC__) && defined(__STDC__)\n__header_always_inline int __sputc(int _c, FILE *_p) {\n\tif (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\\n'))\n\t\treturn (*_p->_p++ = _c);\n\telse\n\t\treturn (__swbuf(_c, _p));\n}\n#else\n/*\n * This has been tuned to generate reasonable code on the vax using pcc.\n */\n#define\t__sputc(c, p) \\\n\t(--(p)->_w < 0 ? \\\n\t\t(p)->_w >= (p)->_lbfsize ? \\\n\t\t\t(*(p)->_p = (c)), *(p)->_p != '\\n' ? \\\n\t\t\t\t(int)*(p)->_p++ : \\\n\t\t\t\t__swbuf('\\n', p) : \\\n\t\t\t__swbuf((int)(c), p) : \\\n\t\t(*(p)->_p = (c), (int)*(p)->_p++))\n#endif\n\n#define\t__sfeof(p)\t(((p)->_flags & __SEOF) != 0)\n#define\t__sferror(p)\t(((p)->_flags & __SERR) != 0)\n#define\t__sclearerr(p)\t((void)((p)->_flags &= ~(__SERR|__SEOF)))\n#define\t__sfileno(p)\t((p)->_file)\n\n__BEGIN_DECLS\nvoid\t flockfile(FILE *);\nint\t ftrylockfile(FILE *);\nvoid\t funlockfile(FILE *);\nint\t getc_unlocked(FILE *);\nint\t getchar_unlocked(void);\nint\t putc_unlocked(int, FILE *);\nint\t putchar_unlocked(int);\n\n/* Removed in Issue 6 */\n#if !defined(_POSIX_C_SOURCE) || _POSIX_C_SOURCE < 200112L\nint\t getw(FILE *);\nint\t putw(int, FILE *);\n#endif\n\n__swift_unavailable(\"Use mkstemp(3) instead.\")\n#if !defined(_POSIX_C_SOURCE)\n__deprecated_msg(\"This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.\")\n#endif\nchar\t*tempnam(const char *__dir, const char *__prefix) __DARWIN_ALIAS(tempnam);\n__END_DECLS\n\n#ifndef lint\n#define\tgetc_unlocked(fp)\t__sgetc(fp)\n#define putc_unlocked(x, fp)\t__sputc(x, fp)\n#endif /* lint */\n\n#define\tgetchar_unlocked()\tgetc_unlocked(stdin)\n#define\tputchar_unlocked(x)\tputc_unlocked(x, stdout)\n#endif /* __DARWIN_C_LEVEL >= 199506L */\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-2001\n * ISO C99\n */\n\n#if __DARWIN_C_LEVEL >= 200112L\n#include <sys/_types/_off_t.h>\n\n__BEGIN_DECLS\nint\t fseeko(FILE * __stream, off_t __offset, int __whence);\noff_t\t ftello(FILE * __stream);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200112L */\n\n#if __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus)\n__BEGIN_DECLS\nint\t snprintf(char * __restrict __str, size_t __size, const char * __restrict __format, ...) __printflike(3, 4);\nint\t vfscanf(FILE * __restrict __stream, const char * __restrict __format, va_list) __scanflike(2, 0);\nint\t vscanf(const char * __restrict __format, va_list) __scanflike(1, 0);\nint\t vsnprintf(char * __restrict __str, size_t __size, const char * __restrict __format, va_list) __printflike(3, 0);\nint\t vsscanf(const char * __restrict __str, const char * __restrict __format, va_list) __scanflike(2, 0);\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200112L || defined(_C99_SOURCE) || defined(__cplusplus) */\n\n\n\n/* Additional functionality provided by:\n * POSIX.1-2008\n */\n\n#if __DARWIN_C_LEVEL >= 200809L\n#include <sys/_types/_ssize_t.h>\n\n__BEGIN_DECLS\nint\tdprintf(int, const char * __restrict, ...) __printflike(2, 3) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nint\tvdprintf(int, const char * __restrict, va_list) __printflike(2, 0) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nssize_t getdelim(char ** __restrict __linep, size_t * __restrict __linecapp, int __delimiter, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nssize_t getline(char ** __restrict __linep, size_t * __restrict __linecapp, FILE * __restrict __stream) __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_4_3);\nFILE *fmemopen(void * __restrict __buf, size_t __size, const char * __restrict __mode) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\nFILE *open_memstream(char **__bufp, size_t *__sizep) __API_AVAILABLE(macos(10.13), ios(11.0), tvos(11.0), watchos(4.0));\n__END_DECLS\n#endif /* __DARWIN_C_LEVEL >= 200809L */\n\n\n\n/* Darwin extensions */\n\n#if __DARWIN_C_LEVEL >= __DARWIN_C_FULL\n__BEGIN_DECLS\nextern __const int sys_nerr;\t\t/* perror(3) external variables */\nextern __const char *__const sys_errlist[];\n\nint\t asprintf(char ** __restrict, const char * __restrict, ...) __printflike(2, 3);\nchar\t*ctermid_r(char *);\nchar\t*fgetln(FILE *, size_t *);\n__const char *fmtcheck(const char *, const char *) __attribute__((format_arg(2)));\nint\t fpurge(FILE *);\nvoid\t setbuffer(FILE *, char *, int);\nint\t setlinebuf(FILE *);\nint\t vasprintf(char ** __restrict, const char * __restrict, va_list) __printflike(2, 0);\n\n\n/*\n * Stdio function-access interface.\n */\nFILE\t*funopen(const void *,\n                 int (* _Nullable)(void *, char *, int),\n                 int (* _Nullable)(void *, const char *, int),\n                 fpos_t (* _Nullable)(void *, fpos_t, int),\n                 int (* _Nullable)(void *));\n__END_DECLS\n#define\tfropen(cookie, fn) funopen(cookie, fn, 0, 0, 0)\n#define\tfwopen(cookie, fn) funopen(cookie, 0, fn, 0, 0)\n\n#define\tfeof_unlocked(p)\t__sfeof(p)\n#define\tferror_unlocked(p)\t__sferror(p)\n#define\tclearerr_unlocked(p)\t__sclearerr(p)\n#define\tfileno_unlocked(p)\t__sfileno(p)\n\n#endif /* __DARWIN_C_LEVEL >= __DARWIN_C_FULL */\n\n\n#ifdef _USE_EXTENDED_LOCALES_\n#include <xlocale/_stdio.h>\n#endif /* _USE_EXTENDED_LOCALES_ */\n\n#if defined (__GNUC__) && _FORTIFY_SOURCE > 0 && !defined (__cplusplus)\n/* Security checking functions.  */\n#include <secure/_stdio.h>\n#endif\n\n#endif /* _STDIO_H_ */\n"
                                        ; -- End function
	.globl	_add                            ; -- Begin function add
	.p2align	2
_add:                                   ; @add
Lfunc_begin1:
	.loc	0 29 0 is_stmt 1                ; internal_instruction.c:29:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: add:instruction <- $x0
	;DEBUG_VALUE: add:memory <- $x1
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Ltmp8:
	;DEBUG_VALUE: add:memory <- $x19
	mov	x20, x0
Ltmp9:
	;DEBUG_VALUE: add:instruction <- $x20
	.loc	0 31 92 prologue_end            ; internal_instruction.c:31:92
	ldrb	w8, [x0, #8]
	.loc	0 32 49                         ; internal_instruction.c:32:49
	ldrb	w9, [x0, #9]
	.loc	0 32 65 is_stmt 0               ; internal_instruction.c:32:65
	ldrb	w10, [x0, #16]
	.loc	0 31 5 is_stmt 1                ; internal_instruction.c:31:5
	ldr	w11, [x1, x8, lsl #2]
	stp	x9, x10, [sp, #24]
	stp	x8, x11, [sp, #8]
	str	x0, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
Ltmp10:
	.loc	0 34 50                         ; internal_instruction.c:34:50
	ldrb	w8, [x20, #9]
	.loc	0 34 30 is_stmt 0               ; internal_instruction.c:34:30
	ldr	w8, [x19, x8, lsl #2]
	.loc	0 34 75                         ; internal_instruction.c:34:75
	ldrb	w9, [x20, #16]
	.loc	0 34 55                         ; internal_instruction.c:34:55
	ldr	w9, [x19, x9, lsl #2]
	.loc	0 34 53                         ; internal_instruction.c:34:53
	add	w8, w9, w8
	.loc	0 34 25                         ; internal_instruction.c:34:25
	ldrb	w9, [x20, #8]
	.loc	0 34 28                         ; internal_instruction.c:34:28
	str	w8, [x19, x9, lsl #2]
Ltmp11:
	.loc	0 36 5 is_stmt 1                ; internal_instruction.c:36:5
	ldr	x2, [x20, #24]!
Ltmp12:
	;DEBUG_VALUE: add:instruction <- $x20
	mov	x0, x20
	mov	x1, x19
	.loc	0 36 5 epilogue_begin is_stmt 0 ; internal_instruction.c:36:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
Ltmp13:
	;DEBUG_VALUE: add:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #80
Ltmp14:
	br	x2
Ltmp15:
	.loh AdrpAdd	Lloh2, Lloh3
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_jmpne                          ; -- Begin function jmpne
	.p2align	2
_jmpne:                                 ; @jmpne
Lfunc_begin2:
	.loc	0 41 0 is_stmt 1                ; internal_instruction.c:41:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:memory <- $x1
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Ltmp16:
	;DEBUG_VALUE: jmpne:memory <- $x19
	mov	x20, x0
Ltmp17:
	;DEBUG_VALUE: jmpne:instruction <- $x20
	.loc	0 43 102 prologue_end           ; internal_instruction.c:43:102
	ldrb	w8, [x0, #8]
	.loc	0 44 49                         ; internal_instruction.c:44:49
	ldrb	w9, [x0, #9]
	.loc	0 44 89 is_stmt 0               ; internal_instruction.c:44:89
	ldr	x10, [x0, #16]
	.loc	0 43 5 is_stmt 1                ; internal_instruction.c:43:5
	ldr	w11, [x1, x8, lsl #2]
	ldr	w12, [x1, x9, lsl #2]
	stp	x12, x10, [sp, #32]
	stp	x11, x9, [sp, #16]
	stp	x0, x8, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp18:
	.loc	0 46 29                         ; internal_instruction.c:46:29
	ldrb	w8, [x20, #8]
	.loc	0 46 9 is_stmt 0                ; internal_instruction.c:46:9
	ldr	w8, [x19, x8, lsl #2]
	.loc	0 46 55                         ; internal_instruction.c:46:55
	ldrb	w9, [x20, #9]
	.loc	0 46 35                         ; internal_instruction.c:46:35
	ldr	w9, [x19, x9, lsl #2]
Ltmp19:
	.loc	0 46 9                          ; internal_instruction.c:46:9
	cmp	w8, w9
	b.ne	LBB2_2
Ltmp20:
; %bb.1:
	;DEBUG_VALUE: jmpne:instruction <- $x20
	;DEBUG_VALUE: jmpne:memory <- $x19
	.loc	0 52 20 is_stmt 1               ; internal_instruction.c:52:20
	add	x0, x20, #24
Ltmp21:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	0 54 5                          ; internal_instruction.c:54:5
	ldr	x2, [x0]
	mov	x1, x19
	.loc	0 54 5 epilogue_begin is_stmt 0 ; internal_instruction.c:54:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
Ltmp22:
	;DEBUG_VALUE: jmpne:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #80
Ltmp23:
	br	x2
Ltmp24:
LBB2_2:
	;DEBUG_VALUE: jmpne:instruction <- $x20
	;DEBUG_VALUE: jmpne:memory <- $x19
	.loc	0 48 36 is_stmt 1               ; internal_instruction.c:48:36
	ldr	x0, [x20, #16]
Ltmp25:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	0 54 5                          ; internal_instruction.c:54:5
	ldr	x2, [x0]
	mov	x1, x19
	.loc	0 54 5 epilogue_begin is_stmt 0 ; internal_instruction.c:54:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
Ltmp26:
	;DEBUG_VALUE: jmpne:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #80
Ltmp27:
	br	x2
Ltmp28:
	.loh AdrpAdd	Lloh4, Lloh5
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_print                          ; -- Begin function print
	.p2align	2
_print:                                 ; @print
Lfunc_begin3:
	.loc	0 59 0 is_stmt 1                ; internal_instruction.c:59:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: print:instruction <- $x0
	;DEBUG_VALUE: print:memory <- $x1
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Ltmp29:
	;DEBUG_VALUE: print:memory <- $x19
	mov	x20, x0
Ltmp30:
	;DEBUG_VALUE: print:instruction <- $x20
	.loc	0 61 68 prologue_end            ; internal_instruction.c:61:68
	ldrb	w8, [x0, #8]
	.loc	0 61 5 is_stmt 0                ; internal_instruction.c:61:5
	ldr	w9, [x1, x8, lsl #2]
	stp	x8, x9, [sp, #8]
	str	x0, [sp]
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
Ltmp31:
	.loc	0 63 40 is_stmt 1               ; internal_instruction.c:63:40
	ldrb	w8, [x20, #8]
	.loc	0 63 5 is_stmt 0                ; internal_instruction.c:63:5
	ldr	w8, [x19, x8, lsl #2]
	str	x8, [sp]
Lloh8:
	adrp	x0, l_.str.4@PAGE
Lloh9:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
Ltmp32:
	.loc	0 65 5 is_stmt 1                ; internal_instruction.c:65:5
	ldr	x2, [x20, #24]!
Ltmp33:
	;DEBUG_VALUE: print:instruction <- $x20
	mov	x0, x20
	mov	x1, x19
	.loc	0 65 5 epilogue_begin is_stmt 0 ; internal_instruction.c:65:5
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp34:
	;DEBUG_VALUE: print:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #64
Ltmp35:
	br	x2
Ltmp36:
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.globl	_ret                            ; -- Begin function ret
	.p2align	2
_ret:                                   ; @ret
Lfunc_begin4:
	.loc	0 70 0 is_stmt 1                ; internal_instruction.c:70:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: ret:instruction <- $x0
	;DEBUG_VALUE: ret:memory <- $x1
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp37:
	.loc	0 72 5 prologue_end             ; internal_instruction.c:72:5
	str	x0, [sp]
Lloh10:
	adrp	x0, l_.str.5@PAGE
Ltmp38:
	;DEBUG_VALUE: ret:instruction <- [DW_OP_LLVM_entry_value 1] $x0
Lloh11:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
Ltmp39:
	;DEBUG_VALUE: ret:memory <- [DW_OP_LLVM_entry_value 1] $x1
	.loc	0 74 1 epilogue_begin           ; internal_instruction.c:74:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp40:
	.loh AdrpAdd	Lloh10, Lloh11
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.globl	_vm_loop                        ; -- Begin function vm_loop
	.p2align	2
_vm_loop:                               ; @vm_loop
Lfunc_begin5:
	.loc	0 79 0                          ; internal_instruction.c:79:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vm_loop:internal_program <- $x0
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp41:
	;DEBUG_VALUE: vm_loop:internal_program <- $x19
Lloh12:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh13:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh14:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
Ltmp42:
	.loc	0 80 9 prologue_end             ; internal_instruction.c:80:9
	add	x0, sp, #8
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp43:
	.loc	0 82 25                         ; internal_instruction.c:82:25
	ldr	x8, [x19]
	.loc	0 82 5 is_stmt 0                ; internal_instruction.c:82:5
	add	x1, sp, #8
	mov	x0, x19
	blr	x8
Ltmp44:
	.loc	0 0 5                           ; internal_instruction.c:0:5
	ldur	x8, [x29, #-24]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB5_2
Ltmp45:
; %bb.1:
	;DEBUG_VALUE: vm_loop:internal_program <- $x19
	.loc	0 83 1 epilogue_begin is_stmt 1 ; internal_instruction.c:83:1
	add	sp, sp, #1040
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
Ltmp46:
	;DEBUG_VALUE: vm_loop:internal_program <- [DW_OP_LLVM_entry_value 1] $x0
	ret
Ltmp47:
LBB5_2:
	;DEBUG_VALUE: vm_loop:internal_program <- $x19
	.loc	0 0 1 is_stmt 0                 ; internal_instruction.c:0:1
	bl	___stack_chk_fail
Ltmp48:
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%x: load memory[%d] = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"%x: add memory[%d](%d) = memory[%d] + memory[%d]\n"

l_.str.2:                               ; @.str.2
	.asciz	"%x: jmpne if memory[%d](%d) != memory[%d](%d) then pp = %x\n"

l_.str.3:                               ; @.str.3
	.asciz	"%x: print memory[%d](%d)\n"

l_.str.4:                               ; @.str.4
	.asciz	"%d\n"

l_.str.5:                               ; @.str.5
	.asciz	"%x: ret\n"

	.file	2 "." "internal_instruction.h" md5 0xc2dfda2d882de019285914906a4665d7 source "#pragma once\n\n#pragma clang diagnostic push\n#pragma clang diagnostic ignored \"-Wvisibility\"\ntypedef struct internal_instruction\n{\n    void (*handler)(struct internal_instruction *instruction, int *memory);\n    unsigned char a;\n    unsigned char b;\n    union\n    {\n        unsigned char c;\n        struct internal_instruction *jmp;\n        int imm;\n    };\n} internal_instruction_t;\n#pragma clang diagnostic pop\n\nextern void load(internal_instruction_t *restrict instruction,\n                 int *restrict memory);\n\nextern void add(internal_instruction_t *restrict instruction,\n                int *restrict memory);\n\nextern void jmpne(internal_instruction_t *restrict instruction,\n                  int *restrict memory);\n\nextern void print(internal_instruction_t *restrict instruction,\n                  int *restrict memory);\n\nextern void ret(internal_instruction_t *restrict instruction,\n                int *restrict memory);\n\nextern void vm_loop(internal_instruction_t *internal_program);\n"
	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ; Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ; Version
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
	.long	11                              ; Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
.set Lset2, Ldebug_loc1-Lloclists_table_base0
	.long	Lset2
.set Lset3, Ldebug_loc2-Lloclists_table_base0
	.long	Lset3
.set Lset4, Ldebug_loc3-Lloclists_table_base0
	.long	Lset4
.set Lset5, Ldebug_loc4-Lloclists_table_base0
	.long	Lset5
.set Lset6, Ldebug_loc5-Lloclists_table_base0
	.long	Lset6
.set Lset7, Ldebug_loc6-Lloclists_table_base0
	.long	Lset7
.set Lset8, Ldebug_loc7-Lloclists_table_base0
	.long	Lset8
.set Lset9, Ldebug_loc8-Lloclists_table_base0
	.long	Lset9
.set Lset10, Ldebug_loc9-Lloclists_table_base0
	.long	Lset10
.set Lset11, Ldebug_loc10-Lloclists_table_base0
	.long	Lset11
Ldebug_loc0:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin0-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp1-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp1-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp5-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc1:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin0-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp0-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp0-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp5-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp5-Lfunc_begin0             ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc2:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin1-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp9-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp9-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp13-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc3:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin1-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp8-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp8-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp13-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp13-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end1-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc4:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin2-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp17-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp17-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp21-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp21-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp24-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp24-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp25-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp25-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp28-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc5:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin2-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp16-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp16-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp22-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp22-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp24-Lfunc_begin0            ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp24-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp26-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp26-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end2-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc6:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin3-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp30-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp34-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc7:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin3-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp29-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp29-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp34-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp34-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end3-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc8:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin4-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp38-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp38-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end4-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc9:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin4-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp39-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp39-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end4-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc10:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin5-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp41-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp41-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp46-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp46-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp47-Lfunc_begin0            ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp47-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end5-Lfunc_begin0        ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
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
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.ascii	"\202\001"                      ; DW_AT_call_tail_call
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\201\001"                      ; DW_AT_call_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
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
	.byte	12                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
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
	.byte	21                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	23                              ; DW_TAG_union_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	21                              ; DW_TAG_subroutine_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset12, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset12
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset13, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset13
	.byte	1                               ; Abbrev [1] 0xc:0x24b DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
	.byte	3                               ; DW_AT_APPLE_sdk
.set Lset14, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset14
.set Lset15, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset15
	.byte	4                               ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.byte	6                               ; DW_AT_low_pc
.set Lset16, Lfunc_end5-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset16
.set Lset17, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset17
.set Lset18, Lloclists_table_base0-Lsection_debug_loc0 ; DW_AT_loclists_base
	.long	Lset18
	.byte	2                               ; Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	26                              ; DW_AT_count
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
	.byte	31                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ; Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	50                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x5d:0xa DW_TAG_variable
	.long	103                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	43                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               ; Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	60                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x73:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               ; Abbrev [2] 0x7d:0xa DW_TAG_variable
	.long	135                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
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
	.byte	72                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               ; Abbrev [3] 0x9d:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xa2:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	9                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xa9:0x28 DW_TAG_subprogram
	.byte	6                               ; DW_AT_low_pc
.set Lset19, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset19
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	9                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0xb4:0x9 DW_TAG_formal_parameter
	.byte	0                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.long	458                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xbd:0x9 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	580                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xc6:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	7                               ; DW_AT_call_return_pc
	.byte	10                              ; Abbrev [10] 0xcc:0x4 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.byte	8                               ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0xd1:0xf DW_TAG_subprogram
	.byte	7                               ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	224                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	12                              ; Abbrev [12] 0xd9:0x5 DW_TAG_formal_parameter
	.long	228                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0xde:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xe0:0x4 DW_TAG_base_type
	.byte	8                               ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0xe4:0x5 DW_TAG_restrict_type
	.long	233                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xe9:0x5 DW_TAG_pointer_type
	.long	238                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0xee:0x5 DW_TAG_const_type
	.long	63                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xf3:0x28 DW_TAG_subprogram
	.byte	9                               ; DW_AT_low_pc
.set Lset20, Lfunc_end1-Lfunc_begin1    ; DW_AT_high_pc
	.long	Lset20
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	10                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0xfe:0x9 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	458                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x107:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	580                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x110:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	10                              ; DW_AT_call_return_pc
	.byte	10                              ; Abbrev [10] 0x116:0x4 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.byte	11                              ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x11b:0x2c DW_TAG_subprogram
	.byte	12                              ; DW_AT_low_pc
.set Lset21, Lfunc_end2-Lfunc_begin2    ; DW_AT_high_pc
	.long	Lset21
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	11                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0x126:0x9 DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
	.long	458                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x12f:0x9 DW_TAG_formal_parameter
	.byte	5                               ; DW_AT_location
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
	.long	580                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x138:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	13                              ; DW_AT_call_return_pc
	.byte	10                              ; Abbrev [10] 0x13e:0x4 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.byte	14                              ; DW_AT_call_pc
	.byte	10                              ; Abbrev [10] 0x142:0x4 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.byte	15                              ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x147:0x2e DW_TAG_subprogram
	.byte	16                              ; DW_AT_low_pc
.set Lset22, Lfunc_end3-Lfunc_begin3    ; DW_AT_high_pc
	.long	Lset22
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	12                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0x152:0x9 DW_TAG_formal_parameter
	.byte	6                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.long	458                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x15b:0x9 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_location
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	58                              ; DW_AT_decl_line
	.long	580                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x164:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	17                              ; DW_AT_call_return_pc
	.byte	9                               ; Abbrev [9] 0x16a:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	18                              ; DW_AT_call_return_pc
	.byte	10                              ; Abbrev [10] 0x170:0x4 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.byte	19                              ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x175:0x24 DW_TAG_subprogram
	.byte	20                              ; DW_AT_low_pc
.set Lset23, Lfunc_end4-Lfunc_begin4    ; DW_AT_high_pc
	.long	Lset23
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	13                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0x180:0x9 DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_location
	.byte	15                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	458                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x189:0x9 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_location
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	580                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x192:0x6 DW_TAG_call_site
	.long	209                             ; DW_AT_call_origin
	.byte	21                              ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x199:0x31 DW_TAG_subprogram
	.byte	22                              ; DW_AT_low_pc
.set Lset24, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset24
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	14                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	8                               ; Abbrev [8] 0x1a4:0x9 DW_TAG_formal_parameter
	.byte	10                              ; DW_AT_location
	.byte	26                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
	.long	463                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x1ad:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	25                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	585                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x1b8:0x11 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	88
	.byte	23                              ; DW_AT_call_return_pc
	.byte	19                              ; Abbrev [19] 0x1bc:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	131
	.byte	0
	.byte	19                              ; Abbrev [19] 0x1c2:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	8
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x1ca:0x5 DW_TAG_restrict_type
	.long	463                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1cf:0x5 DW_TAG_pointer_type
	.long	468                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x1d4:0x8 DW_TAG_typedef
	.long	476                             ; DW_AT_type
	.byte	24                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	21                              ; Abbrev [21] 0x1dc:0x49 DW_TAG_structure_type
	.byte	23                              ; DW_AT_name
	.byte	24                              ; DW_AT_byte_size
	.byte	2                               ; DW_AT_decl_file
	.byte	5                               ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x1e1:0x9 DW_TAG_member
	.byte	16                              ; DW_AT_name
	.long	549                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x1ea:0x9 DW_TAG_member
	.byte	17                              ; DW_AT_name
	.long	576                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x1f3:0x9 DW_TAG_member
	.byte	19                              ; DW_AT_name
	.long	576                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	9                               ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x1fc:0x8 DW_TAG_member
	.long	516                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	16                              ; DW_AT_data_member_location
	.byte	24                              ; Abbrev [24] 0x204:0x20 DW_TAG_union_type
	.byte	8                               ; DW_AT_byte_size
	.byte	2                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x208:0x9 DW_TAG_member
	.byte	20                              ; DW_AT_name
	.long	576                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x211:0x9 DW_TAG_member
	.byte	21                              ; DW_AT_name
	.long	566                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x21a:0x9 DW_TAG_member
	.byte	22                              ; DW_AT_name
	.long	224                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x225:0x5 DW_TAG_pointer_type
	.long	554                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x22a:0xc DW_TAG_subroutine_type
                                        ; DW_AT_prototyped
	.byte	12                              ; Abbrev [12] 0x22b:0x5 DW_TAG_formal_parameter
	.long	566                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x230:0x5 DW_TAG_formal_parameter
	.long	571                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x236:0x5 DW_TAG_pointer_type
	.long	476                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x23b:0x5 DW_TAG_pointer_type
	.long	224                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x240:0x4 DW_TAG_base_type
	.byte	18                              ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0x244:0x5 DW_TAG_restrict_type
	.long	571                             ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x249:0xd DW_TAG_array_type
	.long	224                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x24e:0x7 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	112                             ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.6" ; string offset=0
	.asciz	"internal_instruction.c"        ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=53
	.asciz	"MacOSX14.sdk"                  ; string offset=107
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" ; string offset=120
	.asciz	"char"                          ; string offset=195
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=200
	.asciz	"load"                          ; string offset=220
	.asciz	"printf"                        ; string offset=225
	.asciz	"int"                           ; string offset=232
	.asciz	"add"                           ; string offset=236
	.asciz	"jmpne"                         ; string offset=240
	.asciz	"print"                         ; string offset=246
	.asciz	"ret"                           ; string offset=252
	.asciz	"vm_loop"                       ; string offset=256
	.asciz	"instruction"                   ; string offset=264
	.asciz	"internal_instruction_t"        ; string offset=276
	.asciz	"internal_instruction"          ; string offset=299
	.asciz	"handler"                       ; string offset=320
	.asciz	"a"                             ; string offset=328
	.asciz	"unsigned char"                 ; string offset=330
	.asciz	"b"                             ; string offset=344
	.asciz	"c"                             ; string offset=346
	.asciz	"jmp"                           ; string offset=348
	.asciz	"imm"                           ; string offset=352
	.asciz	"memory"                        ; string offset=356
	.asciz	"internal_program"              ; string offset=363
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	30
	.long	53
	.long	107
	.long	120
	.long	195
	.long	200
	.long	225
	.long	232
	.long	220
	.long	236
	.long	240
	.long	246
	.long	252
	.long	256
	.long	264
	.long	320
	.long	328
	.long	330
	.long	344
	.long	346
	.long	348
	.long	352
	.long	299
	.long	276
	.long	356
	.long	363
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset25, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset25
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
	.quad	Ltmp2
	.quad	Ltmp6
	.quad	Lfunc_begin1
	.quad	Ltmp10
	.quad	Ltmp14
	.quad	Lfunc_begin2
	.quad	Ltmp18
	.quad	Ltmp23
	.quad	Ltmp27
	.quad	Lfunc_begin3
	.quad	Ltmp31
	.quad	Ltmp32
	.quad	Ltmp35
	.quad	Lfunc_begin4
	.quad	Ltmp39
	.quad	Lfunc_begin5
	.quad	Ltmp44
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset26, Lnames_end0-Lnames_start0  ; Header: unit length
	.long	Lset26
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	12                              ; Header: bucket count
	.long	12                              ; Header: name count
.set Lset27, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset27
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset28, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset28
	.long	0                               ; Bucket 0
	.long	0                               ; Bucket 1
	.long	0                               ; Bucket 2
	.long	0                               ; Bucket 3
	.long	0                               ; Bucket 4
	.long	0                               ; Bucket 5
	.long	0                               ; Bucket 6
	.long	1                               ; Bucket 7
	.long	3                               ; Bucket 8
	.long	6                               ; Bucket 9
	.long	8                               ; Bucket 10
	.long	11                              ; Bucket 11
	.long	263902687                       ; Hash in Bucket 7
	.long	347473699                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	193504592                       ; Hash in Bucket 8
	.long	-104093792                      ; Hash in Bucket 8
	.long	2090478981                      ; Hash in Bucket 9
	.long	-2075254111                     ; Hash in Bucket 9
	.long	193486030                       ; Hash in Bucket 10
	.long	271190290                       ; Hash in Bucket 10
	.long	441739414                       ; Hash in Bucket 10
	.long	217009403                       ; Hash in Bucket 11
	.long	2090147939                      ; Hash in Bucket 11
	.long	240                             ; String in Bucket 7: jmpne
	.long	299                             ; String in Bucket 7: internal_instruction
	.long	232                             ; String in Bucket 8: int
	.long	252                             ; String in Bucket 8: ret
	.long	330                             ; String in Bucket 8: unsigned char
	.long	220                             ; String in Bucket 9: load
	.long	256                             ; String in Bucket 9: vm_loop
	.long	236                             ; String in Bucket 10: add
	.long	246                             ; String in Bucket 10: print
	.long	276                             ; String in Bucket 10: internal_instruction_t
	.long	200                             ; String in Bucket 11: __ARRAY_SIZE_TYPE__
	.long	195                             ; String in Bucket 11: char
.set Lset29, Lnames5-Lnames_entries0    ; Offset in Bucket 7
	.long	Lset29
.set Lset30, Lnames10-Lnames_entries0   ; Offset in Bucket 7
	.long	Lset30
.set Lset31, Lnames3-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset31
.set Lset32, Lnames7-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset32
.set Lset33, Lnames11-Lnames_entries0   ; Offset in Bucket 8
	.long	Lset33
.set Lset34, Lnames2-Lnames_entries0    ; Offset in Bucket 9
	.long	Lset34
.set Lset35, Lnames8-Lnames_entries0    ; Offset in Bucket 9
	.long	Lset35
.set Lset36, Lnames4-Lnames_entries0    ; Offset in Bucket 10
	.long	Lset36
.set Lset37, Lnames6-Lnames_entries0    ; Offset in Bucket 10
	.long	Lset37
.set Lset38, Lnames9-Lnames_entries0    ; Offset in Bucket 10
	.long	Lset38
.set Lset39, Lnames1-Lnames_entries0    ; Offset in Bucket 11
	.long	Lset39
.set Lset40, Lnames0-Lnames_entries0    ; Offset in Bucket 11
	.long	Lset40
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
	.byte	19                              ; Abbrev code
	.byte	19                              ; DW_TAG_structure_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames5:
	.byte	46                              ; Abbreviation code
	.long	283                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: jmpne
Lnames10:
	.byte	19                              ; Abbreviation code
	.long	476                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: internal_instruction
Lnames3:
	.byte	36                              ; Abbreviation code
	.long	224                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: int
Lnames7:
	.byte	46                              ; Abbreviation code
	.long	373                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: ret
Lnames11:
	.byte	36                              ; Abbreviation code
	.long	576                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: unsigned char
Lnames2:
	.byte	46                              ; Abbreviation code
	.long	169                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: load
Lnames8:
	.byte	46                              ; Abbreviation code
	.long	409                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: vm_loop
Lnames4:
	.byte	46                              ; Abbreviation code
	.long	243                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: add
Lnames6:
	.byte	46                              ; Abbreviation code
	.long	327                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: print
Lnames9:
	.byte	22                              ; Abbreviation code
	.long	468                             ; DW_IDX_die_offset
	.byte	0                               ; End of list: internal_instruction_t
Lnames1:
	.byte	36                              ; Abbreviation code
	.long	67                              ; DW_IDX_die_offset
	.byte	0                               ; End of list: __ARRAY_SIZE_TYPE__
Lnames0:
	.byte	36                              ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; End of list: char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
