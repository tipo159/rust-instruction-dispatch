	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	1 "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" "direct_tail_call_threading.c"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "time.h"
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	1 143 0                         ; direct_tail_call_threading.c:143:0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1248
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
Ltmp0:
	.loc	1 157 9 prologue_end            ; direct_tail_call_threading.c:157:9
	add	x0, sp, #48
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp1:
	.loc	1 0 9 is_stmt 0                 ; direct_tail_call_threading.c:0:9
	sub	x8, x29, #224
Lloh3:
	adrp	x9, l___const.main.program@PAGE
Lloh4:
	add	x9, x9, l___const.main.program@PAGEOFF
Lloh5:
	adrp	x10, LJTI0_0@PAGE
Lloh6:
	add	x10, x10, LJTI0_0@PAGEOFF
Lloh7:
	adrp	x12, _load@PAGE
Lloh8:
	add	x12, x12, _load@PAGEOFF
Lloh9:
	adrp	x13, _add@PAGE
Lloh10:
	add	x13, x13, _add@PAGEOFF
Ltmp2:
	;DEBUG_VALUE: convert:instructions <- $x9
	;DEBUG_VALUE: convert:i <- 0
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 109 5 is_stmt 1               ; direct_tail_call_threading.c:109:5
	add	x11, x8, #8
Lloh11:
	adrp	x14, _jmpne@PAGE
Lloh12:
	add	x14, x14, _jmpne@PAGEOFF
	mov	w15, #24                        ; =0x18
Lloh13:
	adrp	x16, _print@PAGE
Lloh14:
	add	x16, x16, _print@PAGEOFF
	b	LBB0_3
Ltmp3:
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 131 46                        ; direct_tail_call_threading.c:131:46
	stur	x16, [x11, #-8]
	.loc	1 132 42                        ; direct_tail_call_threading.c:132:42
	ubfx	x17, x17, #24, #8
	.loc	1 132 40 is_stmt 0              ; direct_tail_call_threading.c:132:40
	strb	w17, [x11]
Ltmp4:
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $fp
	.loc	1 109 5 is_stmt 1               ; direct_tail_call_threading.c:109:5
	add	x11, x11, #24
Ltmp5:
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	.loc	1 111 17                        ; direct_tail_call_threading.c:111:17
	ldr	w17, [x9], #4
	.loc	1 111 9 is_stmt 0               ; direct_tail_call_threading.c:111:9
	and	x0, x17, #0xf
	cmp	w0, #4
	b.hi	LBB0_2
Ltmp6:
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 0 9                           ; direct_tail_call_threading.c:0:9
	adr	x1, LBB0_1
	ldrb	w2, [x10, x0]
	add	x1, x1, x2, lsl #2
	br	x1
Ltmp7:
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 114 46 is_stmt 1              ; direct_tail_call_threading.c:114:46
	stur	x12, [x11, #-8]
	.loc	1 115 42                        ; direct_tail_call_threading.c:115:42
	ubfx	x0, x17, #24, #8
	.loc	1 115 40 is_stmt 0              ; direct_tail_call_threading.c:115:40
	strb	w0, [x11]
	.loc	1 116 44 is_stmt 1              ; direct_tail_call_threading.c:116:44
	ubfx	w17, w17, #4, #20
	.loc	1 116 42 is_stmt 0              ; direct_tail_call_threading.c:116:42
	str	w17, [x11, #8]
Ltmp8:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $fp
	.loc	1 109 5 is_stmt 1               ; direct_tail_call_threading.c:109:5
	add	x11, x11, #24
Ltmp9:
	.loc	1 0 5 is_stmt 0                 ; direct_tail_call_threading.c:0:5
	b	LBB0_3
Ltmp10:
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 119 46 is_stmt 1              ; direct_tail_call_threading.c:119:46
	stur	x13, [x11, #-8]
	.loc	1 120 42                        ; direct_tail_call_threading.c:120:42
	ubfx	x0, x17, #24, #8
	.loc	1 120 40 is_stmt 0              ; direct_tail_call_threading.c:120:40
	strb	w0, [x11]
	.loc	1 121 42 is_stmt 1              ; direct_tail_call_threading.c:121:42
	ubfx	x0, x17, #16, #16
	.loc	1 121 40 is_stmt 0              ; direct_tail_call_threading.c:121:40
	strb	w0, [x11, #1]
	.loc	1 122 42 is_stmt 1              ; direct_tail_call_threading.c:122:42
	ubfx	x17, x17, #4, #28
	.loc	1 122 40 is_stmt 0              ; direct_tail_call_threading.c:122:40
	strb	w17, [x11, #8]
Ltmp11:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $fp
	.loc	1 109 5 is_stmt 1               ; direct_tail_call_threading.c:109:5
	add	x11, x11, #24
Ltmp12:
	.loc	1 0 5 is_stmt 0                 ; direct_tail_call_threading.c:0:5
	b	LBB0_3
Ltmp13:
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 125 46 is_stmt 1              ; direct_tail_call_threading.c:125:46
	stur	x14, [x11, #-8]
	.loc	1 126 42                        ; direct_tail_call_threading.c:126:42
	ubfx	x0, x17, #24, #8
	.loc	1 126 40 is_stmt 0              ; direct_tail_call_threading.c:126:40
	strb	w0, [x11]
	.loc	1 127 42 is_stmt 1              ; direct_tail_call_threading.c:127:42
	ubfx	x0, x17, #16, #16
	.loc	1 127 40 is_stmt 0              ; direct_tail_call_threading.c:127:40
	strb	w0, [x11, #1]
	.loc	1 128 67 is_stmt 1              ; direct_tail_call_threading.c:128:67
	ubfx	x17, x17, #4, #12
	.loc	1 128 45 is_stmt 0              ; direct_tail_call_threading.c:128:45
	umaddl	x17, w17, w15, x8
	.loc	1 128 42                        ; direct_tail_call_threading.c:128:42
	str	x17, [x11, #8]
Ltmp14:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $fp
	.loc	1 109 5 is_stmt 1               ; direct_tail_call_threading.c:109:5
	add	x11, x11, #24
Ltmp15:
	.loc	1 0 5 is_stmt 0                 ; direct_tail_call_threading.c:0:5
	b	LBB0_3
Ltmp16:
LBB0_8:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 224, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 24, DW_OP_div, DW_OP_stack_value] $x11, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	mov	x22, #0                         ; =0x0
Ltmp17:
	.loc	1 135 46 is_stmt 1              ; direct_tail_call_threading.c:135:46
Lloh15:
	adrp	x8, _ret@PAGE
Lloh16:
	add	x8, x8, _ret@PAGEOFF
	stur	x8, [x11, #-8]
	mov	w20, #110                       ; =0x6e
	;DEBUG_VALUE: i <- 0
Ltmp18:
	;DEBUG_VALUE: main:average <- 0
	.loc	1 0 46 is_stmt 0                ; direct_tail_call_threading.c:0:46
	mov	w21, #51712                     ; =0xca00
	movk	w21, #15258, lsl #16
Lloh17:
	adrp	x19, l_.str@PAGE
Lloh18:
	add	x19, x19, l_.str@PAGEOFF
Ltmp19:
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: main:average <- $x22
	;DEBUG_VALUE: i <- [DW_OP_consts 110, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $w20
	.loc	1 164 13 is_stmt 1              ; direct_tail_call_threading.c:164:13
	cmp	w20, #100
	csel	x22, xzr, x22, eq
Ltmp20:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 168 9                         ; direct_tail_call_threading.c:168:9
	add	x1, sp, #32
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp21:
	.loc	1 169 29                        ; direct_tail_call_threading.c:169:29
	ldur	x8, [x29, #-224]
	.loc	1 169 9 is_stmt 0               ; direct_tail_call_threading.c:169:9
	sub	x0, x29, #224
	add	x1, sp, #48
	blr	x8
Ltmp22:
	.loc	1 170 9 is_stmt 1               ; direct_tail_call_threading.c:170:9
	add	x1, sp, #16
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp23:
	.loc	1 171 28                        ; direct_tail_call_threading.c:171:28
	ldp	x8, x9, [sp, #16]
	.loc	1 171 46 is_stmt 0              ; direct_tail_call_threading.c:171:46
	ldp	x10, x11, [sp, #32]
	.loc	1 171 35                        ; direct_tail_call_threading.c:171:35
	sub	x8, x8, x10
	.loc	1 171 67                        ; direct_tail_call_threading.c:171:67
	madd	x8, x8, x21, x9
	.loc	1 171 84                        ; direct_tail_call_threading.c:171:84
	sub	x8, x8, x11
	.loc	1 171 17                        ; direct_tail_call_threading.c:171:17
	add	x22, x8, x22
Ltmp24:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 172 9 is_stmt 1               ; direct_tail_call_threading.c:172:9
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
Ltmp25:
	;DEBUG_VALUE: i <- [DW_OP_consts 110, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $w20
	.loc	1 162 23                        ; direct_tail_call_threading.c:162:23
	subs	w20, w20, #1
Ltmp26:
	.loc	1 162 5 is_stmt 0               ; direct_tail_call_threading.c:162:5
	b.ne	LBB0_9
Ltmp27:
; %bb.10:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 0 5                           ; direct_tail_call_threading.c:0:5
	mov	x8, #55051                      ; =0xd70b
	movk	x8, #28835, lsl #16
	movk	x8, #2621, lsl #32
	movk	x8, #41943, lsl #48
	.loc	1 175 13 is_stmt 1              ; direct_tail_call_threading.c:175:13
	smulh	x8, x22, x8
	add	x8, x8, x22
	asr	x9, x8, #6
	add	x8, x9, x8, lsr #63
Ltmp28:
	;DEBUG_VALUE: main:average <- $x8
	.loc	1 0 13 is_stmt 0                ; direct_tail_call_threading.c:0:13
	mov	w9, #100                        ; =0x64
	.loc	1 176 5 is_stmt 1               ; direct_tail_call_threading.c:176:5
	stp	x9, x8, [sp]
Lloh19:
	adrp	x0, l_.str.1@PAGE
Lloh20:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
Ltmp29:
	.loc	1 0 5 is_stmt 0                 ; direct_tail_call_threading.c:0:5
	ldur	x8, [x29, #-56]
Lloh21:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh22:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh23:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_12
; %bb.11:
	.loc	1 177 1 is_stmt 1               ; direct_tail_call_threading.c:177:1
	mov	w0, #0                          ; =0x0
	.loc	1 177 1 epilogue_begin is_stmt 0 ; direct_tail_call_threading.c:177:1
	add	sp, sp, #1248
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp30:
LBB0_12:
	.loc	1 0 1                           ; direct_tail_call_threading.c:0:1
	bl	___stack_chk_fail
Ltmp31:
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh21, Lloh22, Lloh23
	.loh AdrpAdd	Lloh19, Lloh20
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__const
LJTI0_0:
	.byte	(LBB0_5-LBB0_1)>>2
	.byte	(LBB0_6-LBB0_1)>>2
	.byte	(LBB0_7-LBB0_1)>>2
	.byte	(LBB0_1-LBB0_1)>>2
	.byte	(LBB0_8-LBB0_1)>>2
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/arm" "_types.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/sys/_types" "_timespec.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "stdio.h"
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function load
_load:                                  ; @load
Lfunc_begin1:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: load:instruction <- $x0
	;DEBUG_VALUE: load:memory <- $x1
	.loc	1 69 5 prologue_end is_stmt 1   ; direct_tail_call_threading.c:69:5
	ldr	x2, [x0, #24]!
Ltmp32:
	;DEBUG_VALUE: load:instruction <- $x0
	.loc	1 67 43                         ; direct_tail_call_threading.c:67:43
	ldur	w8, [x0, #-8]
	.loc	1 67 25 is_stmt 0               ; direct_tail_call_threading.c:67:25
	ldurb	w9, [x0, #-16]
	.loc	1 67 28                         ; direct_tail_call_threading.c:67:28
	str	w8, [x1, x9, lsl #2]
Ltmp33:
	.loc	1 69 5 is_stmt 1                ; direct_tail_call_threading.c:69:5
	br	x2
Ltmp34:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function add
_add:                                   ; @add
Lfunc_begin2:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: add:instruction <- $x0
	;DEBUG_VALUE: add:memory <- $x1
	.loc	1 77 5 prologue_end             ; direct_tail_call_threading.c:77:5
	ldr	x2, [x0, #24]!
Ltmp35:
	;DEBUG_VALUE: add:instruction <- $x0
	.loc	1 75 50                         ; direct_tail_call_threading.c:75:50
	ldurb	w8, [x0, #-15]
	.loc	1 75 30 is_stmt 0               ; direct_tail_call_threading.c:75:30
	ldr	w8, [x1, x8, lsl #2]
	.loc	1 75 75                         ; direct_tail_call_threading.c:75:75
	ldurb	w9, [x0, #-8]
	.loc	1 75 55                         ; direct_tail_call_threading.c:75:55
	ldr	w9, [x1, x9, lsl #2]
	.loc	1 75 53                         ; direct_tail_call_threading.c:75:53
	add	w8, w9, w8
	.loc	1 75 25                         ; direct_tail_call_threading.c:75:25
	ldurb	w9, [x0, #-16]
	.loc	1 75 28                         ; direct_tail_call_threading.c:75:28
	str	w8, [x1, x9, lsl #2]
Ltmp36:
	.loc	1 77 5 is_stmt 1                ; direct_tail_call_threading.c:77:5
	br	x2
Ltmp37:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function jmpne
_jmpne:                                 ; @jmpne
Lfunc_begin3:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:memory <- $x1
	.loc	1 83 29 prologue_end            ; direct_tail_call_threading.c:83:29
	ldrb	w8, [x0, #8]
	.loc	1 83 9 is_stmt 0                ; direct_tail_call_threading.c:83:9
	ldr	w8, [x1, x8, lsl #2]
	.loc	1 83 55                         ; direct_tail_call_threading.c:83:55
	ldrb	w9, [x0, #9]
	.loc	1 83 35                         ; direct_tail_call_threading.c:83:35
	ldr	w9, [x1, x9, lsl #2]
Ltmp38:
	.loc	1 83 9                          ; direct_tail_call_threading.c:83:9
	cmp	w8, w9
	b.ne	LBB3_2
Ltmp39:
; %bb.1:
	;DEBUG_VALUE: jmpne:memory <- $x1
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	1 91 5 is_stmt 1                ; direct_tail_call_threading.c:91:5
	ldr	x2, [x0, #24]!
Ltmp40:
	br	x2
Ltmp41:
LBB3_2:
	;DEBUG_VALUE: jmpne:memory <- $x1
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	1 85 36                         ; direct_tail_call_threading.c:85:36
	ldr	x0, [x0, #16]
Ltmp42:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	1 91 5                          ; direct_tail_call_threading.c:91:5
	ldr	x2, [x0]
Ltmp43:
	br	x2
Ltmp44:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function print
_print:                                 ; @print
Lfunc_begin4:
	.loc	1 96 0                          ; direct_tail_call_threading.c:96:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: print:instruction <- $x0
	;DEBUG_VALUE: print:memory <- $x1
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Ltmp45:
	;DEBUG_VALUE: print:memory <- $x19
	mov	x20, x0
Ltmp46:
	;DEBUG_VALUE: print:instruction <- $x20
	.loc	1 97 40 prologue_end            ; direct_tail_call_threading.c:97:40
	ldrb	w8, [x0, #8]
	.loc	1 97 5 is_stmt 0                ; direct_tail_call_threading.c:97:5
	ldr	w8, [x1, x8, lsl #2]
	str	x8, [sp]
Lloh24:
	adrp	x0, l_.str.2@PAGE
Lloh25:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp47:
	.loc	1 99 5 is_stmt 1                ; direct_tail_call_threading.c:99:5
	ldr	x2, [x20, #24]!
Ltmp48:
	;DEBUG_VALUE: print:instruction <- $x20
	mov	x0, x20
	mov	x1, x19
	.loc	1 99 5 epilogue_begin is_stmt 0 ; direct_tail_call_threading.c:99:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
Ltmp49:
	;DEBUG_VALUE: print:memory <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #48
Ltmp50:
	br	x2
Ltmp51:
	.loh AdrpAdd	Lloh24, Lloh25
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function ret
_ret:                                   ; @ret
Lfunc_begin5:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: ret:instruction <- undef
	;DEBUG_VALUE: ret:memory <- undef
	.loc	1 103 40 prologue_end is_stmt 1 ; direct_tail_call_threading.c:103:40
	ret
Ltmp52:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.program
l___const.main.program:
	.long	0                               ; 0x0
	.long	16777232                        ; 0x1000010
	.long	50331632                        ; 0x2fffff0
	.long	17                              ; 0x11
	.long	131122                          ; 0x20032
	.long	3                               ; 0x3
	.long	4                               ; 0x4

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Time elapsed: %10ld ns\n"

l_.str.1:                               ; @.str.1
	.asciz	"Average of %d results: %10ld ns\n"

l_.str.2:                               ; @.str.2
	.asciz	"%d\n"

	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Ltmp2-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp3-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset2, Ltmp2-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp3-Lfunc_begin0
	.quad	Lset3
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset4, Ltmp3-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp4-Lfunc_begin0
	.quad	Lset5
	.short	13                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp4-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp5-Lfunc_begin0
	.quad	Lset7
	.short	16                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset8, Ltmp5-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp8-Lfunc_begin0
	.quad	Lset9
	.short	13                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset10, Ltmp8-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp9-Lfunc_begin0
	.quad	Lset11
	.short	16                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset12, Ltmp10-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp11-Lfunc_begin0
	.quad	Lset13
	.short	13                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp11-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp12-Lfunc_begin0
	.quad	Lset15
	.short	16                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset16, Ltmp13-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp14-Lfunc_begin0
	.quad	Lset17
	.short	13                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset18, Ltmp14-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp15-Lfunc_begin0
	.quad	Lset19
	.short	16                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset20, Ltmp16-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp19-Lfunc_begin0
	.quad	Lset21
	.short	13                              ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	160                             ; -224
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	24                              ; 24
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset22, Ltmp19-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp25-Lfunc_begin0
	.quad	Lset23
	.short	10                              ; Loc expr size
	.byte	132                             ; DW_OP_breg20
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	238                             ; 110
	.byte	0                               ; 
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	127                             ; -1
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset24, Ltmp25-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp26-Lfunc_begin0
	.quad	Lset25
	.short	13                              ; Loc expr size
	.byte	132                             ; DW_OP_breg20
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	238                             ; 110
	.byte	0                               ; 
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	127                             ; -1
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset26, Ltmp18-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp19-Lfunc_begin0
	.quad	Lset27
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset28, Ltmp19-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp28-Lfunc_begin0
	.quad	Lset29
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset30, Ltmp28-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp29-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset32, Lfunc_begin3-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp40-Lfunc_begin0
	.quad	Lset33
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset34, Ltmp41-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp44-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset36, Lfunc_begin4-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp46-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset38, Ltmp46-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp49-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset40, Lfunc_begin4-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp45-Lfunc_begin0
	.quad	Lset41
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset42, Ltmp45-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp49-Lfunc_begin0
	.quad	Lset43
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset44, Ltmp49-Lfunc_begin0
	.quad	Lset44
.set Lset45, Lfunc_end4-Lfunc_begin0
	.quad	Lset45
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	14                              ; DW_FORM_strp
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
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	4                               ; DW_TAG_enumeration_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	40                              ; DW_TAG_enumerator
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
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
	.byte	18                              ; Abbreviation Code
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
	.byte	19                              ; Abbreviation Code
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
	.byte	20                              ; Abbreviation Code
	.byte	21                              ; DW_TAG_subroutine_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	33                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
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
	.byte	35                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	36                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	37                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	38                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.ascii	"\202\001"                      ; DW_AT_call_tail_call
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\201\001"                      ; DW_AT_call_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	39                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	40                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.ascii	"\202\001"                      ; DW_AT_call_tail_call
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\201\001"                      ; DW_AT_call_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	41                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	42                              ; Abbreviation Code
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
.set Lset46, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset46
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset47, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset47
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x4ea DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.long	30                              ; DW_AT_name
	.long	59                              ; DW_AT_LLVM_sysroot
	.long	113                             ; DW_AT_APPLE_sdk
.set Lset48, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset48
	.long	126                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset49, Lfunc_end5-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset49
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str
	.byte	3                               ; Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	24                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	201                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	206                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	176                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.1
	.byte	3                               ; Abbrev [3] 0x6e:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x73:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	33                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7a:0x11 DW_TAG_variable
	.long	139                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0x8b:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x90:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x97:0x39 DW_TAG_enumeration_type
	.long	208                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	2                               ; DW_AT_decl_file
	.byte	153                             ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0x9f:0x6 DW_TAG_enumerator
	.long	239                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xa5:0x6 DW_TAG_enumerator
	.long	255                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xab:0x6 DW_TAG_enumerator
	.long	272                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb1:0x6 DW_TAG_enumerator
	.long	293                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb7:0x6 DW_TAG_enumerator
	.long	321                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xbd:0x6 DW_TAG_enumerator
	.long	339                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc3:0x6 DW_TAG_enumerator
	.long	364                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc9:0x6 DW_TAG_enumerator
	.long	390                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xd0:0x7 DW_TAG_base_type
	.long	226                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0xd7:0x27 DW_TAG_enumeration_type
	.long	208                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xdf:0x6 DW_TAG_enumerator
	.long	415                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xe5:0x6 DW_TAG_enumerator
	.long	423                             ; DW_AT_name
	.byte	1                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xeb:0x6 DW_TAG_enumerator
	.long	430                             ; DW_AT_name
	.byte	2                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf1:0x6 DW_TAG_enumerator
	.long	439                             ; DW_AT_name
	.byte	3                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf7:0x6 DW_TAG_enumerator
	.long	448                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xfe:0x2a DW_TAG_subprogram
	.long	455                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	10                              ; Abbrev [10] 0x106:0xb DW_TAG_formal_parameter
	.long	463                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
	.long	296                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x111:0xb DW_TAG_formal_parameter
	.long	487                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	106                             ; DW_AT_decl_line
	.long	322                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x11c:0xb DW_TAG_variable
	.long	593                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	108                             ; DW_AT_decl_line
	.long	469                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x128:0x5 DW_TAG_restrict_type
	.long	301                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x12d:0x5 DW_TAG_pointer_type
	.long	306                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x132:0x5 DW_TAG_const_type
	.long	311                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x137:0xb DW_TAG_typedef
	.long	208                             ; DW_AT_type
	.long	476                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x142:0x5 DW_TAG_pointer_type
	.long	327                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x147:0xb DW_TAG_typedef
	.long	338                             ; DW_AT_type
	.long	509                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.byte	16                              ; Abbrev [16] 0x152:0x5e DW_TAG_structure_type
	.long	532                             ; DW_AT_name
	.byte	24                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x15a:0xc DW_TAG_member
	.long	553                             ; DW_AT_name
	.long	432                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x166:0xc DW_TAG_member
	.long	565                             ; DW_AT_name
	.long	476                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x172:0xc DW_TAG_member
	.long	581                             ; DW_AT_name
	.long	476                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_data_member_location
	.byte	18                              ; Abbrev [18] 0x17e:0x8 DW_TAG_member
	.long	390                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.byte	16                              ; DW_AT_data_member_location
	.byte	19                              ; Abbrev [19] 0x186:0x29 DW_TAG_union_type
	.byte	8                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x18a:0xc DW_TAG_member
	.long	583                             ; DW_AT_name
	.long	476                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	58                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x196:0xc DW_TAG_member
	.long	585                             ; DW_AT_name
	.long	454                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x1a2:0xc DW_TAG_member
	.long	589                             ; DW_AT_name
	.long	469                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	60                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x1b0:0x5 DW_TAG_pointer_type
	.long	437                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x1b5:0xc DW_TAG_subroutine_type
                                        ; DW_AT_prototyped
	.byte	21                              ; Abbrev [21] 0x1b6:0x5 DW_TAG_formal_parameter
	.long	449                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x1bb:0x5 DW_TAG_formal_parameter
	.long	459                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x1c1:0x5 DW_TAG_restrict_type
	.long	454                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1c6:0x5 DW_TAG_pointer_type
	.long	338                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x1cb:0x5 DW_TAG_restrict_type
	.long	464                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1d0:0x5 DW_TAG_pointer_type
	.long	469                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x1d5:0x7 DW_TAG_base_type
	.long	561                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x1dc:0x7 DW_TAG_base_type
	.long	567                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x1e3:0x127 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset50, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset50
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	595                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	142                             ; DW_AT_decl_line
	.long	469                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	23                              ; Abbrev [23] 0x1fc:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\240~"
	.long	701                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	156                             ; DW_AT_decl_line
	.long	1226                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x20b:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.long	1238                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x219:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	32
	.long	725                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	158                             ; DW_AT_decl_line
	.long	816                             ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x227:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	734                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	158                             ; DW_AT_decl_line
	.long	816                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x235:0xf DW_TAG_variable
.set Lset51, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset51
	.long	741                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	161                             ; DW_AT_decl_line
	.long	860                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x244:0xb DW_TAG_variable
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	144                             ; DW_AT_decl_line
	.long	1251                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x24f:0x31 DW_TAG_inlined_subroutine
	.long	254                             ; DW_AT_abstract_origin
	.quad	Ltmp2                           ; DW_AT_low_pc
.set Lset52, Ltmp19-Ltmp2               ; DW_AT_high_pc
	.long	Lset52
	.byte	1                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x263:0x9 DW_TAG_formal_parameter
.set Lset53, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset53
	.long	262                             ; DW_AT_abstract_origin
	.byte	27                              ; Abbrev [27] 0x26c:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\240~"
	.byte	159
	.long	273                             ; DW_AT_abstract_origin
	.byte	28                              ; Abbrev [28] 0x276:0x9 DW_TAG_variable
.set Lset54, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset54
	.long	284                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x280:0x1d DW_TAG_lexical_block
	.quad	Ltmp19                          ; DW_AT_low_pc
.set Lset55, Ltmp27-Ltmp19              ; DW_AT_high_pc
	.long	Lset55
	.byte	24                              ; Abbrev [24] 0x28d:0xf DW_TAG_variable
.set Lset56, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset56
	.long	593                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	162                             ; DW_AT_decl_line
	.long	469                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x29d:0x19 DW_TAG_call_site
	.long	778                             ; DW_AT_call_origin
	.quad	Ltmp21                          ; DW_AT_call_return_pc
	.byte	31                              ; Abbrev [31] 0x2aa:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	31                              ; Abbrev [31] 0x2af:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	32
	.byte	0                               ; End Of Children Mark
	.byte	32                              ; Abbrev [32] 0x2b6:0x19 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	88
	.quad	Ltmp22                          ; DW_AT_call_return_pc
	.byte	31                              ; Abbrev [31] 0x2c1:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	48
	.byte	31                              ; Abbrev [31] 0x2c7:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	145
	.ascii	"\240~"
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x2cf:0x19 DW_TAG_call_site
	.long	778                             ; DW_AT_call_origin
	.quad	Ltmp23                          ; DW_AT_call_return_pc
	.byte	31                              ; Abbrev [31] 0x2dc:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	31                              ; Abbrev [31] 0x2e1:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	16
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x2e8:0x14 DW_TAG_call_site
	.long	867                             ; DW_AT_call_origin
	.quad	Ltmp25                          ; DW_AT_call_return_pc
	.byte	31                              ; Abbrev [31] 0x2f5:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	131
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x2fc:0xd DW_TAG_call_site
	.long	867                             ; DW_AT_call_origin
	.quad	Ltmp29                          ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	34                              ; Abbrev [34] 0x30a:0x16 DW_TAG_subprogram
	.long	600                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	178                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	469                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	21                              ; Abbrev [21] 0x315:0x5 DW_TAG_formal_parameter
	.long	800                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x31a:0x5 DW_TAG_formal_parameter
	.long	811                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x320:0xb DW_TAG_typedef
	.long	151                             ; DW_AT_type
	.long	614                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x32b:0x5 DW_TAG_pointer_type
	.long	816                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x330:0x21 DW_TAG_structure_type
	.long	624                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x338:0xc DW_TAG_member
	.long	633                             ; DW_AT_name
	.long	849                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x344:0xc DW_TAG_member
	.long	661                             ; DW_AT_name
	.long	860                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x351:0xb DW_TAG_typedef
	.long	860                             ; DW_AT_type
	.long	640                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x35c:0x7 DW_TAG_base_type
	.long	656                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	34                              ; Abbrev [34] 0x363:0x12 DW_TAG_subprogram
	.long	669                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	469                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	21                              ; Abbrev [21] 0x36e:0x5 DW_TAG_formal_parameter
	.long	885                             ; DW_AT_type
	.byte	35                              ; Abbrev [35] 0x373:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x375:0x5 DW_TAG_restrict_type
	.long	890                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x37a:0x5 DW_TAG_pointer_type
	.long	895                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x37f:0x5 DW_TAG_const_type
	.long	79                              ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0x384:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset57, Lfunc_end1-Lfunc_begin1    ; DW_AT_high_pc
	.long	Lset57
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	676                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	37                              ; Abbrev [37] 0x399:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	757                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	1263                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0x3a6:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	459                             ; DW_AT_type
	.byte	38                              ; Abbrev [38] 0x3b3:0x13 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.quad	Ltmp33                          ; DW_AT_call_pc
	.byte	31                              ; Abbrev [31] 0x3be:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	163
	.byte	1
	.byte	81
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	36                              ; Abbrev [36] 0x3c7:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset58, Lfunc_end2-Lfunc_begin2    ; DW_AT_high_pc
	.long	Lset58
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	681                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	37                              ; Abbrev [37] 0x3dc:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	757                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	1263                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0x3e9:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	459                             ; DW_AT_type
	.byte	38                              ; Abbrev [38] 0x3f6:0x13 DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.quad	Ltmp36                          ; DW_AT_call_pc
	.byte	31                              ; Abbrev [31] 0x401:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	163
	.byte	1
	.byte	81
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	36                              ; Abbrev [36] 0x40a:0x48 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset59, Lfunc_end3-Lfunc_begin3    ; DW_AT_high_pc
	.long	Lset59
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	685                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	39                              ; Abbrev [39] 0x41f:0xf DW_TAG_formal_parameter
.set Lset60, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset60
	.long	757                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	1263                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0x42e:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.long	459                             ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x43b:0xb DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.quad	Ltmp40                          ; DW_AT_call_pc
	.byte	40                              ; Abbrev [40] 0x446:0xb DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.quad	Ltmp43                          ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	41                              ; Abbrev [41] 0x452:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset61, Lfunc_end4-Lfunc_begin4    ; DW_AT_high_pc
	.long	Lset61
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	691                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	39                              ; Abbrev [39] 0x467:0xf DW_TAG_formal_parameter
.set Lset62, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset62
	.long	757                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	1263                            ; DW_AT_type
	.byte	39                              ; Abbrev [39] 0x476:0xf DW_TAG_formal_parameter
.set Lset63, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset63
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	95                              ; DW_AT_decl_line
	.long	459                             ; DW_AT_type
	.byte	33                              ; Abbrev [33] 0x485:0xd DW_TAG_call_site
	.long	867                             ; DW_AT_call_origin
	.quad	Ltmp47                          ; DW_AT_call_return_pc
	.byte	40                              ; Abbrev [40] 0x492:0xb DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	82
                                        ; DW_AT_call_tail_call
	.quad	Ltmp50                          ; DW_AT_call_pc
	.byte	0                               ; End Of Children Mark
	.byte	36                              ; Abbrev [36] 0x49e:0x2c DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset64, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset64
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	697                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	102                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x4b3:0xb DW_TAG_formal_parameter
	.long	757                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	102                             ; DW_AT_decl_line
	.long	1263                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4be:0xb DW_TAG_formal_parameter
	.long	718                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	459                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4ca:0xc DW_TAG_array_type
	.long	327                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4cf:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4d6:0xd DW_TAG_array_type
	.long	469                             ; DW_AT_type
	.byte	42                              ; Abbrev [42] 0x4db:0x7 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4e3:0xc DW_TAG_array_type
	.long	311                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4e8:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x4ef:0x5 DW_TAG_restrict_type
	.long	322                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.3" ; string offset=0
	.asciz	"direct_tail_call_threading.c"  ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=59
	.asciz	"MacOSX14.sdk"                  ; string offset=113
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-tail-call-threading" ; string offset=126
	.asciz	"char"                          ; string offset=201
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=206
	.asciz	"unsigned int"                  ; string offset=226
	.asciz	"_CLOCK_REALTIME"               ; string offset=239
	.asciz	"_CLOCK_MONOTONIC"              ; string offset=255
	.asciz	"_CLOCK_MONOTONIC_RAW"          ; string offset=272
	.asciz	"_CLOCK_MONOTONIC_RAW_APPROX"   ; string offset=293
	.asciz	"_CLOCK_UPTIME_RAW"             ; string offset=321
	.asciz	"_CLOCK_UPTIME_RAW_APPROX"      ; string offset=339
	.asciz	"_CLOCK_PROCESS_CPUTIME_ID"     ; string offset=364
	.asciz	"_CLOCK_THREAD_CPUTIME_ID"      ; string offset=390
	.asciz	"OP_LOAD"                       ; string offset=415
	.asciz	"OP_ADD"                        ; string offset=423
	.asciz	"OP_JMPNE"                      ; string offset=430
	.asciz	"OP_PRINT"                      ; string offset=439
	.asciz	"OP_RET"                        ; string offset=448
	.asciz	"convert"                       ; string offset=455
	.asciz	"instructions"                  ; string offset=463
	.asciz	"bytecode_t"                    ; string offset=476
	.asciz	"internal_instructions"         ; string offset=487
	.asciz	"internal_instruction_t"        ; string offset=509
	.asciz	"internal_instruction"          ; string offset=532
	.asciz	"handler"                       ; string offset=553
	.asciz	"int"                           ; string offset=561
	.asciz	"a"                             ; string offset=565
	.asciz	"unsigned char"                 ; string offset=567
	.asciz	"b"                             ; string offset=581
	.asciz	"c"                             ; string offset=583
	.asciz	"jmp"                           ; string offset=585
	.asciz	"imm"                           ; string offset=589
	.asciz	"i"                             ; string offset=593
	.asciz	"main"                          ; string offset=595
	.asciz	"clock_gettime"                 ; string offset=600
	.asciz	"clockid_t"                     ; string offset=614
	.asciz	"timespec"                      ; string offset=624
	.asciz	"tv_sec"                        ; string offset=633
	.asciz	"__darwin_time_t"               ; string offset=640
	.asciz	"long"                          ; string offset=656
	.asciz	"tv_nsec"                       ; string offset=661
	.asciz	"printf"                        ; string offset=669
	.asciz	"load"                          ; string offset=676
	.asciz	"add"                           ; string offset=681
	.asciz	"jmpne"                         ; string offset=685
	.asciz	"print"                         ; string offset=691
	.asciz	"ret"                           ; string offset=697
	.asciz	"internal_program"              ; string offset=701
	.asciz	"memory"                        ; string offset=718
	.asciz	"ts_start"                      ; string offset=725
	.asciz	"ts_end"                        ; string offset=734
	.asciz	"average"                       ; string offset=741
	.asciz	"program"                       ; string offset=749
	.asciz	"instruction"                   ; string offset=757
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	7                               ; Header Bucket Count
	.long	7                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	3                               ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	6                               ; Bucket 6
	.long	271190290                       ; Hash in Bucket 0
	.long	-746933562                      ; Hash in Bucket 0
	.long	193504592                       ; Hash in Bucket 1
	.long	193486030                       ; Hash in Bucket 3
	.long	2090478981                      ; Hash in Bucket 3
	.long	2090499946                      ; Hash in Bucket 3
	.long	263902687                       ; Hash in Bucket 6
.set Lset65, LNames5-Lnames_begin       ; Offset in Bucket 0
	.long	Lset65
.set Lset66, LNames1-Lnames_begin       ; Offset in Bucket 0
	.long	Lset66
.set Lset67, LNames6-Lnames_begin       ; Offset in Bucket 1
	.long	Lset67
.set Lset68, LNames3-Lnames_begin       ; Offset in Bucket 3
	.long	Lset68
.set Lset69, LNames2-Lnames_begin       ; Offset in Bucket 3
	.long	Lset69
.set Lset70, LNames0-Lnames_begin       ; Offset in Bucket 3
	.long	Lset70
.set Lset71, LNames4-Lnames_begin       ; Offset in Bucket 6
	.long	Lset71
LNames5:
	.long	691                             ; print
	.long	1                               ; Num DIEs
	.long	1106
	.long	0
LNames1:
	.long	455                             ; convert
	.long	1                               ; Num DIEs
	.long	591
	.long	0
LNames6:
	.long	697                             ; ret
	.long	1                               ; Num DIEs
	.long	1182
	.long	0
LNames3:
	.long	681                             ; add
	.long	1                               ; Num DIEs
	.long	967
	.long	0
LNames2:
	.long	676                             ; load
	.long	1                               ; Num DIEs
	.long	900
	.long	0
LNames0:
	.long	595                             ; main
	.long	1                               ; Num DIEs
	.long	483
	.long	0
LNames4:
	.long	685                             ; jmpne
	.long	1                               ; Num DIEs
	.long	1034
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	12                              ; Header Bucket Count
	.long	12                              ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	1                               ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	2                               ; Bucket 7
	.long	5                               ; Bucket 8
	.long	7                               ; Bucket 9
	.long	9                               ; Bucket 10
	.long	10                              ; Bucket 11
	.long	-243996567                      ; Hash in Bucket 1
	.long	-1304652851                     ; Hash in Bucket 5
	.long	347473699                       ; Hash in Bucket 7
	.long	567385087                       ; Hash in Bucket 7
	.long	739847143                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	-104093792                      ; Hash in Bucket 8
	.long	2090479413                      ; Hash in Bucket 9
	.long	-113466703                      ; Hash in Bucket 9
	.long	441739414                       ; Hash in Bucket 10
	.long	2090147939                      ; Hash in Bucket 11
	.long	-594775205                      ; Hash in Bucket 11
.set Lset72, Ltypes10-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset72
.set Lset73, Ltypes2-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset73
.set Lset74, Ltypes5-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset74
.set Lset75, Ltypes9-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset75
.set Lset76, Ltypes3-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset76
.set Lset77, Ltypes6-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset77
.set Lset78, Ltypes7-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset78
.set Lset79, Ltypes11-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset79
.set Lset80, Ltypes8-Ltypes_begin       ; Offset in Bucket 9
	.long	Lset80
.set Lset81, Ltypes4-Ltypes_begin       ; Offset in Bucket 10
	.long	Lset81
.set Lset82, Ltypes0-Ltypes_begin       ; Offset in Bucket 11
	.long	Lset82
.set Lset83, Ltypes1-Ltypes_begin       ; Offset in Bucket 11
	.long	Lset83
Ltypes10:
	.long	640                             ; __darwin_time_t
	.long	1                               ; Num DIEs
	.long	849
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	226                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	208
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	532                             ; internal_instruction
	.long	1                               ; Num DIEs
	.long	338
	.short	19
	.byte	0
	.long	0
Ltypes9:
	.long	624                             ; timespec
	.long	1                               ; Num DIEs
	.long	816
	.short	19
	.byte	0
	.long	0
Ltypes3:
	.long	476                             ; bytecode_t
	.long	1                               ; Num DIEs
	.long	311
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	561                             ; int
	.long	1                               ; Num DIEs
	.long	469
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	567                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	476
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	656                             ; long
	.long	1                               ; Num DIEs
	.long	860
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	614                             ; clockid_t
	.long	1                               ; Num DIEs
	.long	800
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	509                             ; internal_instruction_t
	.long	1                               ; Num DIEs
	.long	327
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	201                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	206                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
