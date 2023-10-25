	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	1 "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-call-threading" "direct_call_threading.c"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "time.h"
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	1 153 0                         ; direct_call_threading.c:153:0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1200
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
Ltmp0:
	.loc	1 168 9 prologue_end            ; direct_call_threading.c:168:9
	add	x0, sp, #56
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp1:
	.loc	1 0 9 is_stmt 0                 ; direct_call_threading.c:0:9
	sub	x8, x29, #168
Ltmp2:
	;DEBUG_VALUE: convert:i <- 0
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 116 5 is_stmt 1               ; direct_call_threading.c:116:5
	add	x8, x8, #8
Lloh3:
	adrp	x9, l___const.main.program@PAGE
Lloh4:
	add	x9, x9, l___const.main.program@PAGEOFF
Ltmp3:
	;DEBUG_VALUE: convert:instructions <- $x9
	.loc	1 0 5 is_stmt 0                 ; direct_call_threading.c:0:5
Lloh5:
	adrp	x10, LJTI0_0@PAGE
Lloh6:
	add	x10, x10, LJTI0_0@PAGEOFF
Lloh7:
	adrp	x11, _load@PAGE
Lloh8:
	add	x11, x11, _load@PAGEOFF
Lloh9:
	adrp	x12, _add@PAGE
Lloh10:
	add	x12, x12, _add@PAGEOFF
Lloh11:
	adrp	x13, _jmpne@PAGE
Lloh12:
	add	x13, x13, _jmpne@PAGEOFF
Lloh13:
	adrp	x14, _print@PAGE
Lloh14:
	add	x14, x14, _print@PAGEOFF
	b	LBB0_3
Ltmp4:
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 138 46 is_stmt 1              ; direct_call_threading.c:138:46
	stur	x14, [x8, #-8]
	.loc	1 139 42                        ; direct_call_threading.c:139:42
	lsr	w15, w15, #24
	.loc	1 139 40 is_stmt 0              ; direct_call_threading.c:139:40
	strb	w15, [x8]
Ltmp5:
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8, $fp
	.loc	1 116 5 is_stmt 1               ; direct_call_threading.c:116:5
	add	x8, x8, #16
Ltmp6:
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	.loc	1 118 17                        ; direct_call_threading.c:118:17
	ldr	w15, [x9], #4
	.loc	1 118 9 is_stmt 0               ; direct_call_threading.c:118:9
	and	x16, x15, #0xf
	cmp	w16, #4
	b.hi	LBB0_2
Ltmp7:
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 0 9                           ; direct_call_threading.c:0:9
	adr	x17, LBB0_1
	ldrb	w0, [x10, x16]
	add	x17, x17, x0, lsl #2
	br	x17
Ltmp8:
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 121 46 is_stmt 1              ; direct_call_threading.c:121:46
	stur	x11, [x8, #-8]
	.loc	1 122 42                        ; direct_call_threading.c:122:42
	lsr	w16, w15, #24
	.loc	1 122 40 is_stmt 0              ; direct_call_threading.c:122:40
	strb	w16, [x8]
	.loc	1 123 44 is_stmt 1              ; direct_call_threading.c:123:44
	ubfx	w15, w15, #4, #20
	.loc	1 123 42 is_stmt 0              ; direct_call_threading.c:123:42
	str	w15, [x8, #4]
Ltmp9:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8, $fp
	.loc	1 116 5 is_stmt 1               ; direct_call_threading.c:116:5
	add	x8, x8, #16
Ltmp10:
	.loc	1 0 5 is_stmt 0                 ; direct_call_threading.c:0:5
	b	LBB0_3
Ltmp11:
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 126 46 is_stmt 1              ; direct_call_threading.c:126:46
	stur	x12, [x8, #-8]
	.loc	1 127 42                        ; direct_call_threading.c:127:42
	lsr	w16, w15, #24
	.loc	1 127 40 is_stmt 0              ; direct_call_threading.c:127:40
	strb	w16, [x8]
	.loc	1 128 42 is_stmt 1              ; direct_call_threading.c:128:42
	lsr	w16, w15, #16
	.loc	1 128 40 is_stmt 0              ; direct_call_threading.c:128:40
	strb	w16, [x8, #1]
	.loc	1 129 42 is_stmt 1              ; direct_call_threading.c:129:42
	lsr	w15, w15, #4
	.loc	1 129 40 is_stmt 0              ; direct_call_threading.c:129:40
	strb	w15, [x8, #4]
Ltmp12:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8, $fp
	.loc	1 116 5 is_stmt 1               ; direct_call_threading.c:116:5
	add	x8, x8, #16
Ltmp13:
	.loc	1 0 5 is_stmt 0                 ; direct_call_threading.c:0:5
	b	LBB0_3
Ltmp14:
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	1 132 46 is_stmt 1              ; direct_call_threading.c:132:46
	stur	x13, [x8, #-8]
	.loc	1 133 42                        ; direct_call_threading.c:133:42
	lsr	w16, w15, #24
	.loc	1 133 40 is_stmt 0              ; direct_call_threading.c:133:40
	strb	w16, [x8]
	.loc	1 134 42 is_stmt 1              ; direct_call_threading.c:134:42
	lsr	w16, w15, #16
	.loc	1 134 40 is_stmt 0              ; direct_call_threading.c:134:40
	strb	w16, [x8, #1]
	.loc	1 135 44 is_stmt 1              ; direct_call_threading.c:135:44
	ubfx	w15, w15, #4, #12
	.loc	1 135 42 is_stmt 0              ; direct_call_threading.c:135:42
	str	w15, [x8, #4]
Ltmp15:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8, $fp
	.loc	1 116 5 is_stmt 1               ; direct_call_threading.c:116:5
	add	x8, x8, #16
Ltmp16:
	.loc	1 0 5 is_stmt 0                 ; direct_call_threading.c:0:5
	b	LBB0_3
Ltmp17:
LBB0_8:
	;DEBUG_VALUE: convert:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 1, DW_OP_constu 168, DW_OP_minus, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $x8, $fp
	;DEBUG_VALUE: convert:internal_instructions <- [DW_OP_constu 168, DW_OP_minus, DW_OP_stack_value] $fp
	mov	w20, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
Ltmp18:
	.loc	1 142 46 is_stmt 1              ; direct_call_threading.c:142:46
Lloh15:
	adrp	x9, _ret@PAGE
Lloh16:
	add	x9, x9, _ret@PAGEOFF
	stur	x9, [x8, #-8]
	;DEBUG_VALUE: i <- 0
Ltmp19:
	;DEBUG_VALUE: main:average <- 0
	.loc	1 0 46 is_stmt 0                ; direct_call_threading.c:0:46
	sub	x21, x29, #168
	mov	w23, #51712                     ; =0xca00
	movk	w23, #15258, lsl #16
Lloh17:
	adrp	x19, l_.str@PAGE
Lloh18:
	add	x19, x19, l_.str@PAGEOFF
Ltmp20:
LBB0_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_10 Depth 2
	;DEBUG_VALUE: main:average <- $x22
	;DEBUG_VALUE: i <- $w20
	.loc	1 179 9 is_stmt 1               ; direct_call_threading.c:179:9
	add	x1, sp, #32
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp21:
	;DEBUG_VALUE: main:pc <- 0
	.loc	1 0 9 is_stmt 0                 ; direct_call_threading.c:0:9
	mov	x8, #0                          ; =0x0
	.loc	1 180 12 is_stmt 1              ; direct_call_threading.c:180:12
	str	wzr, [sp, #52]
Ltmp22:
LBB0_10:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w20
	;DEBUG_VALUE: main:average <- $x22
	;DEBUG_VALUE: main:pc <- $x8
	.loc	1 183 13                        ; direct_call_threading.c:183:13
	lsl	x8, x8, #4
Ltmp23:
	.loc	1 183 34 is_stmt 0              ; direct_call_threading.c:183:34
	ldr	x8, [x21, x8]
Ltmp24:
	;DEBUG_VALUE: main:pc <- [DW_OP_plus_uconst 52, DW_OP_deref] $sp
	.loc	1 183 13                        ; direct_call_threading.c:183:13
	sub	x0, x29, #168
	add	x1, sp, #52
	add	x2, sp, #56
	blr	x8
Ltmp25:
	.loc	1 181 16 is_stmt 1              ; direct_call_threading.c:181:16
	ldr	w8, [sp, #52]
Ltmp26:
	;DEBUG_VALUE: main:pc <- $w8
	.loc	1 181 9 is_stmt 0               ; direct_call_threading.c:181:9
	cmp	w8, #7
	b.lo	LBB0_10
Ltmp27:
; %bb.11:                               ;   in Loop: Header=BB0_9 Depth=1
	;DEBUG_VALUE: main:pc <- $w8
	;DEBUG_VALUE: i <- $w20
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 175 13 is_stmt 1              ; direct_call_threading.c:175:13
	cmp	w20, #10
	csel	x22, xzr, x22, eq
Ltmp28:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 185 9                         ; direct_call_threading.c:185:9
	add	x1, sp, #16
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp29:
	.loc	1 186 28                        ; direct_call_threading.c:186:28
	ldp	x8, x9, [sp, #16]
	.loc	1 186 46 is_stmt 0              ; direct_call_threading.c:186:46
	ldp	x10, x11, [sp, #32]
	.loc	1 186 35                        ; direct_call_threading.c:186:35
	sub	x8, x8, x10
	.loc	1 186 67                        ; direct_call_threading.c:186:67
	madd	x8, x8, x23, x9
	.loc	1 186 84                        ; direct_call_threading.c:186:84
	sub	x8, x8, x11
	.loc	1 186 17                        ; direct_call_threading.c:186:17
	add	x22, x8, x22
Ltmp30:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 187 9 is_stmt 1               ; direct_call_threading.c:187:9
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
Ltmp31:
	.loc	1 173 68                        ; direct_call_threading.c:173:68
	add	w20, w20, #1
Ltmp32:
	;DEBUG_VALUE: i <- $w20
	.loc	1 173 5 is_stmt 0               ; direct_call_threading.c:173:5
	cmp	w20, #110
	b.ne	LBB0_9
Ltmp33:
; %bb.12:
	;DEBUG_VALUE: main:average <- $x22
	.loc	1 0 5                           ; direct_call_threading.c:0:5
	mov	x8, #55051                      ; =0xd70b
	movk	x8, #28835, lsl #16
	movk	x8, #2621, lsl #32
	movk	x8, #41943, lsl #48
	.loc	1 190 13 is_stmt 1              ; direct_call_threading.c:190:13
	smulh	x8, x22, x8
	add	x8, x8, x22
	asr	x9, x8, #6
	add	x8, x9, x8, lsr #63
Ltmp34:
	;DEBUG_VALUE: main:average <- $x8
	.loc	1 0 13 is_stmt 0                ; direct_call_threading.c:0:13
	mov	w9, #100                        ; =0x64
	.loc	1 191 5 is_stmt 1               ; direct_call_threading.c:191:5
	stp	x9, x8, [sp]
Lloh19:
	adrp	x0, l_.str.1@PAGE
Lloh20:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
Ltmp35:
	.loc	1 0 5 is_stmt 0                 ; direct_call_threading.c:0:5
	ldur	x8, [x29, #-56]
Lloh21:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh22:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh23:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
; %bb.13:
	.loc	1 192 1 is_stmt 1               ; direct_call_threading.c:192:1
	mov	w0, #0                          ; =0x0
	.loc	1 192 1 epilogue_begin is_stmt 0 ; direct_call_threading.c:192:1
	add	sp, sp, #1200
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp36:
LBB0_14:
	.loc	1 0 1                           ; direct_call_threading.c:0:1
	bl	___stack_chk_fail
Ltmp37:
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
	;DEBUG_VALUE: load:pc <- $x1
	;DEBUG_VALUE: load:memory <- $x2
	.loc	1 66 46 prologue_end is_stmt 1  ; direct_call_threading.c:66:46
	ldrsw	x8, [x1]
	.loc	1 66 51 is_stmt 0               ; direct_call_threading.c:66:51
	add	x9, x0, x8, lsl #4
	ldr	w10, [x9, #12]
	.loc	1 66 29                         ; direct_call_threading.c:66:29
	ldrb	w9, [x9, #8]
	.loc	1 66 32                         ; direct_call_threading.c:66:32
	str	w10, [x2, x9, lsl #2]
Ltmp38:
	;DEBUG_VALUE: load:instruction <- [DW_OP_plus_uconst 16, DW_OP_stack_value] undef
	.loc	1 68 10 is_stmt 1               ; direct_call_threading.c:68:10
	add	w8, w8, #1
	str	w8, [x1]
	.loc	1 69 1                          ; direct_call_threading.c:69:1
	ret
Ltmp39:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function add
_add:                                   ; @add
Lfunc_begin2:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: add:instruction <- $x0
	;DEBUG_VALUE: add:pc <- $x1
	;DEBUG_VALUE: add:memory <- $x2
	.loc	1 75 53 prologue_end            ; direct_call_threading.c:75:53
	ldrsw	x8, [x1]
	.loc	1 75 58 is_stmt 0               ; direct_call_threading.c:75:58
	add	x9, x0, x8, lsl #4
	ldrb	w10, [x9, #9]
	.loc	1 75 34                         ; direct_call_threading.c:75:34
	ldr	w10, [x2, x10, lsl #2]
	.loc	1 75 87                         ; direct_call_threading.c:75:87
	ldrb	w11, [x9, #12]
	.loc	1 75 63                         ; direct_call_threading.c:75:63
	ldr	w11, [x2, x11, lsl #2]
	.loc	1 75 61                         ; direct_call_threading.c:75:61
	add	w10, w11, w10
	.loc	1 75 29                         ; direct_call_threading.c:75:29
	ldrb	w9, [x9, #8]
	.loc	1 75 32                         ; direct_call_threading.c:75:32
	str	w10, [x2, x9, lsl #2]
Ltmp40:
	;DEBUG_VALUE: add:instruction <- [DW_OP_plus_uconst 16, DW_OP_stack_value] undef
	.loc	1 77 10 is_stmt 1               ; direct_call_threading.c:77:10
	add	w8, w8, #1
	str	w8, [x1]
	.loc	1 78 1                          ; direct_call_threading.c:78:1
	ret
Ltmp41:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function jmpne
_jmpne:                                 ; @jmpne
Lfunc_begin3:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: jmpne:instruction <- $x0
	;DEBUG_VALUE: jmpne:pc <- $x1
	;DEBUG_VALUE: jmpne:memory <- $x2
	.loc	1 84 28 prologue_end            ; direct_call_threading.c:84:28
	ldrsw	x8, [x1]
	.loc	1 84 33 is_stmt 0               ; direct_call_threading.c:84:33
	add	x9, x0, x8, lsl #4
	ldrb	w10, [x9, #8]
	.loc	1 84 9                          ; direct_call_threading.c:84:9
	ldr	w10, [x2, x10, lsl #2]
	.loc	1 84 63                         ; direct_call_threading.c:84:63
	ldrb	w11, [x9, #9]
	.loc	1 84 39                         ; direct_call_threading.c:84:39
	ldr	w11, [x2, x11, lsl #2]
Ltmp42:
	.loc	1 84 9                          ; direct_call_threading.c:84:9
	cmp	w10, w11
	b.ne	LBB3_2
Ltmp43:
; %bb.1:
	;DEBUG_VALUE: jmpne:memory <- $x2
	;DEBUG_VALUE: jmpne:pc <- $x1
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	1 90 14 is_stmt 1               ; direct_call_threading.c:90:14
	add	w8, w8, #1
Ltmp44:
	.loc	1 0 0 is_stmt 0                 ; direct_call_threading.c:0:0
	str	w8, [x1]
Ltmp45:
	.loc	1 92 1 is_stmt 1                ; direct_call_threading.c:92:1
	ret
Ltmp46:
LBB3_2:
	;DEBUG_VALUE: jmpne:memory <- $x2
	;DEBUG_VALUE: jmpne:pc <- $x1
	;DEBUG_VALUE: jmpne:instruction <- $x0
	.loc	1 86 32                         ; direct_call_threading.c:86:32
	ldr	w8, [x9, #12]
Ltmp47:
	.loc	1 0 0 is_stmt 0                 ; direct_call_threading.c:0:0
	str	w8, [x1]
Ltmp48:
	.loc	1 92 1 is_stmt 1                ; direct_call_threading.c:92:1
	ret
Ltmp49:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function print
_print:                                 ; @print
Lfunc_begin4:
	.loc	1 97 0                          ; direct_call_threading.c:97:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: print:instruction <- $x0
	;DEBUG_VALUE: print:pc <- $x1
	;DEBUG_VALUE: print:memory <- $x2
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
Ltmp50:
	;DEBUG_VALUE: print:pc <- $x19
	.loc	1 98 39 prologue_end            ; direct_call_threading.c:98:39
	ldrsw	x8, [x1]
	.loc	1 98 44 is_stmt 0               ; direct_call_threading.c:98:44
	add	x8, x0, x8, lsl #4
	ldrb	w8, [x8, #8]
	.loc	1 98 5                          ; direct_call_threading.c:98:5
	ldr	w8, [x2, x8, lsl #2]
	str	x8, [sp]
Lloh24:
	adrp	x0, l_.str.2@PAGE
Ltmp51:
	;DEBUG_VALUE: print:instruction <- [DW_OP_LLVM_entry_value 1] $x0
Lloh25:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp52:
	;DEBUG_VALUE: print:memory <- [DW_OP_LLVM_entry_value 1] $x2
	;DEBUG_VALUE: print:instruction <- [DW_OP_plus_uconst 16, DW_OP_stack_value] undef
	.loc	1 100 10 is_stmt 1              ; direct_call_threading.c:100:10
	ldr	w8, [x19]
	add	w8, w8, #1
	str	w8, [x19]
	.loc	1 101 1 epilogue_begin          ; direct_call_threading.c:101:1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
Ltmp53:
	;DEBUG_VALUE: print:pc <- [DW_OP_LLVM_entry_value 1] $x1
	add	sp, sp, #48
	ret
Ltmp54:
	.loh AdrpAdd	Lloh24, Lloh25
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function ret
_ret:                                   ; @ret
Lfunc_begin5:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: ret:pc <- $x1
	;DEBUG_VALUE: ret:instruction <- undef
	;DEBUG_VALUE: ret:memory <- undef
	.loc	1 107 10 prologue_end           ; direct_call_threading.c:107:10
	ldr	w8, [x1]
	add	w8, w8, #1
	str	w8, [x1]
	.loc	1 108 1                         ; direct_call_threading.c:108:1
	ret
Ltmp55:
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
.set Lset1, Ltmp4-Lfunc_begin0
	.quad	Lset1
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset2, Ltmp4-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp5-Lfunc_begin0
	.quad	Lset3
	.short	13                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset4, Ltmp5-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp6-Lfunc_begin0
	.quad	Lset5
	.short	16                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp6-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp9-Lfunc_begin0
	.quad	Lset7
	.short	13                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset8, Ltmp9-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp10-Lfunc_begin0
	.quad	Lset9
	.short	16                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset10, Ltmp11-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp12-Lfunc_begin0
	.quad	Lset11
	.short	13                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset12, Ltmp12-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp13-Lfunc_begin0
	.quad	Lset13
	.short	16                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp14-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp15-Lfunc_begin0
	.quad	Lset15
	.short	13                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset16, Ltmp15-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp16-Lfunc_begin0
	.quad	Lset17
	.short	16                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset18, Ltmp17-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp20-Lfunc_begin0
	.quad	Lset19
	.short	13                              ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	141                             ; DW_OP_breg29
	.byte	216                             ; -168
	.byte	126                             ; 
	.byte	34                              ; DW_OP_plus
	.byte	28                              ; DW_OP_minus
	.byte	17                              ; DW_OP_consts
	.byte	16                              ; 16
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset20, Ltmp3-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp4-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset22, Ltmp19-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp20-Lfunc_begin0
	.quad	Lset23
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset24, Ltmp20-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp34-Lfunc_begin0
	.quad	Lset25
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset26, Ltmp34-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp35-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset28, Ltmp21-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp22-Lfunc_begin0
	.quad	Lset29
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp22-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp23-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset32, Ltmp24-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp26-Lfunc_begin0
	.quad	Lset33
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	52                              ; 52
.set Lset34, Ltmp26-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp29-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset36, Lfunc_begin1-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp38-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset38, Lfunc_begin2-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp40-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset40, Lfunc_begin4-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp51-Lfunc_begin0
	.quad	Lset41
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset42, Ltmp51-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp52-Lfunc_begin0
	.quad	Lset43
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset44, Lfunc_begin4-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp50-Lfunc_begin0
	.quad	Lset45
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset46, Ltmp50-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp53-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset48, Ltmp53-Lfunc_begin0
	.quad	Lset48
.set Lset49, Lfunc_end4-Lfunc_begin0
	.quad	Lset49
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset50, Lfunc_begin4-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp52-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset52, Ltmp52-Lfunc_begin0
	.quad	Lset52
.set Lset53, Lfunc_end4-Lfunc_begin0
	.quad	Lset53
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	82                              ; DW_OP_reg2
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
	.byte	19                              ; DW_TAG_structure_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
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
	.byte	25                              ; Abbreviation Code
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
	.byte	26                              ; Abbreviation Code
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
	.byte	27                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	33                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.ascii	"\203\001"                      ; DW_AT_call_target
	.byte	24                              ; DW_FORM_exprloc
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	35                              ; Abbreviation Code
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
	.byte	36                              ; Abbreviation Code
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
	.byte	37                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	38                              ; Abbreviation Code
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
.set Lset54, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset54
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset55, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset55
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x510 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.long	30                              ; DW_AT_name
	.long	54                              ; DW_AT_LLVM_sysroot
	.long	108                             ; DW_AT_APPLE_sdk
.set Lset56, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset56
	.long	121                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset57, Lfunc_end5-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset57
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	187                             ; DW_AT_decl_line
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
	.long	191                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	196                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	191                             ; DW_AT_decl_line
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
	.byte	98                              ; DW_AT_decl_line
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
	.long	229                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xa5:0x6 DW_TAG_enumerator
	.long	245                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xab:0x6 DW_TAG_enumerator
	.long	262                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb1:0x6 DW_TAG_enumerator
	.long	283                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb7:0x6 DW_TAG_enumerator
	.long	311                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xbd:0x6 DW_TAG_enumerator
	.long	329                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc3:0x6 DW_TAG_enumerator
	.long	354                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc9:0x6 DW_TAG_enumerator
	.long	380                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xd0:0x7 DW_TAG_base_type
	.long	216                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0xd7:0x27 DW_TAG_enumeration_type
	.long	208                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xdf:0x6 DW_TAG_enumerator
	.long	405                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xe5:0x6 DW_TAG_enumerator
	.long	413                             ; DW_AT_name
	.byte	1                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xeb:0x6 DW_TAG_enumerator
	.long	420                             ; DW_AT_name
	.byte	2                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf1:0x6 DW_TAG_enumerator
	.long	429                             ; DW_AT_name
	.byte	3                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf7:0x6 DW_TAG_enumerator
	.long	438                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xfe:0x2a DW_TAG_subprogram
	.long	445                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	112                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	10                              ; Abbrev [10] 0x106:0xb DW_TAG_formal_parameter
	.long	453                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	112                             ; DW_AT_decl_line
	.long	296                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x111:0xb DW_TAG_formal_parameter
	.long	477                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	113                             ; DW_AT_decl_line
	.long	322                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x11c:0xb DW_TAG_variable
	.long	583                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	115                             ; DW_AT_decl_line
	.long	475                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x128:0x5 DW_TAG_restrict_type
	.long	301                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x12d:0x5 DW_TAG_pointer_type
	.long	306                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x132:0x5 DW_TAG_const_type
	.long	311                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x137:0xb DW_TAG_typedef
	.long	208                             ; DW_AT_type
	.long	466                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x142:0x5 DW_TAG_pointer_type
	.long	327                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x147:0xb DW_TAG_typedef
	.long	338                             ; DW_AT_type
	.long	499                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
	.byte	16                              ; Abbrev [16] 0x152:0x5a DW_TAG_structure_type
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x156:0xc DW_TAG_member
	.long	522                             ; DW_AT_name
	.long	428                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x162:0xc DW_TAG_member
	.long	555                             ; DW_AT_name
	.long	487                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x16e:0xc DW_TAG_member
	.long	571                             ; DW_AT_name
	.long	487                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	52                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_data_member_location
	.byte	18                              ; Abbrev [18] 0x17a:0x8 DW_TAG_member
	.long	386                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.byte	12                              ; DW_AT_data_member_location
	.byte	19                              ; Abbrev [19] 0x182:0x29 DW_TAG_union_type
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x186:0xc DW_TAG_member
	.long	573                             ; DW_AT_name
	.long	487                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x192:0xc DW_TAG_member
	.long	575                             ; DW_AT_name
	.long	475                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x19e:0xc DW_TAG_member
	.long	579                             ; DW_AT_name
	.long	475                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x1ac:0x5 DW_TAG_pointer_type
	.long	433                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x1b1:0x11 DW_TAG_subroutine_type
                                        ; DW_AT_prototyped
	.byte	21                              ; Abbrev [21] 0x1b2:0x5 DW_TAG_formal_parameter
	.long	450                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x1b7:0x5 DW_TAG_formal_parameter
	.long	470                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x1bc:0x5 DW_TAG_formal_parameter
	.long	482                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x1c2:0x5 DW_TAG_restrict_type
	.long	455                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1c7:0x5 DW_TAG_pointer_type
	.long	460                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1cc:0x5 DW_TAG_const_type
	.long	465                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x1d1:0x5 DW_TAG_structure_type
	.long	530                             ; DW_AT_name
                                        ; DW_AT_declaration
	.byte	13                              ; Abbrev [13] 0x1d6:0x5 DW_TAG_pointer_type
	.long	475                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x1db:0x7 DW_TAG_base_type
	.long	551                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x1e2:0x5 DW_TAG_restrict_type
	.long	470                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x1e7:0x7 DW_TAG_base_type
	.long	557                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	23                              ; Abbrev [23] 0x1ee:0x13a DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset58, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset58
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	585                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	152                             ; DW_AT_decl_line
	.long	475                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	24                              ; Abbrev [24] 0x207:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	691                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	166                             ; DW_AT_decl_line
	.long	1254                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x216:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	56
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	168                             ; DW_AT_decl_line
	.long	1266                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x224:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	32
	.long	715                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
	.long	846                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x232:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	724                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
	.long	846                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x240:0xf DW_TAG_variable
.set Lset59, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset59
	.long	731                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.long	890                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x24f:0xf DW_TAG_variable
.set Lset60, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset60
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
	.long	475                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x25e:0xb DW_TAG_variable
	.long	742                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	154                             ; DW_AT_decl_line
	.long	1279                            ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x269:0x31 DW_TAG_inlined_subroutine
	.long	254                             ; DW_AT_abstract_origin
	.quad	Ltmp2                           ; DW_AT_low_pc
.set Lset61, Ltmp20-Ltmp2               ; DW_AT_high_pc
	.long	Lset61
	.byte	1                               ; DW_AT_call_file
	.byte	171                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	27                              ; Abbrev [27] 0x27d:0x9 DW_TAG_formal_parameter
.set Lset62, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset62
	.long	262                             ; DW_AT_abstract_origin
	.byte	28                              ; Abbrev [28] 0x286:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\330~"
	.byte	159
	.long	273                             ; DW_AT_abstract_origin
	.byte	29                              ; Abbrev [29] 0x290:0x9 DW_TAG_variable
.set Lset63, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset63
	.long	284                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x29a:0x1b DW_TAG_lexical_block
	.quad	Ltmp20                          ; DW_AT_low_pc
.set Lset64, Ltmp33-Ltmp20              ; DW_AT_high_pc
	.long	Lset64
	.byte	24                              ; Abbrev [24] 0x2a7:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	583                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	173                             ; DW_AT_decl_line
	.long	475                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x2b5:0x19 DW_TAG_call_site
	.long	808                             ; DW_AT_call_origin
	.quad	Ltmp21                          ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x2c2:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	32                              ; Abbrev [32] 0x2c7:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	32
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x2ce:0x1f DW_TAG_call_site
	.byte	1                               ; DW_AT_call_target
	.byte	88
	.quad	Ltmp25                          ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x2d9:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	56
	.byte	32                              ; Abbrev [32] 0x2df:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	52
	.byte	32                              ; Abbrev [32] 0x2e5:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	145
	.ascii	"\330~"
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x2ed:0x19 DW_TAG_call_site
	.long	808                             ; DW_AT_call_origin
	.quad	Ltmp29                          ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x2fa:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	32                              ; Abbrev [32] 0x2ff:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	16
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x306:0x14 DW_TAG_call_site
	.long	897                             ; DW_AT_call_origin
	.quad	Ltmp31                          ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x313:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	131
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	34                              ; Abbrev [34] 0x31a:0xd DW_TAG_call_site
	.long	897                             ; DW_AT_call_origin
	.quad	Ltmp35                          ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	35                              ; Abbrev [35] 0x328:0x16 DW_TAG_subprogram
	.long	590                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	178                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	475                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	21                              ; Abbrev [21] 0x333:0x5 DW_TAG_formal_parameter
	.long	830                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x338:0x5 DW_TAG_formal_parameter
	.long	841                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x33e:0xb DW_TAG_typedef
	.long	151                             ; DW_AT_type
	.long	604                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x349:0x5 DW_TAG_pointer_type
	.long	846                             ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0x34e:0x21 DW_TAG_structure_type
	.long	614                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	17                              ; Abbrev [17] 0x356:0xc DW_TAG_member
	.long	623                             ; DW_AT_name
	.long	879                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	17                              ; Abbrev [17] 0x362:0xc DW_TAG_member
	.long	651                             ; DW_AT_name
	.long	890                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x36f:0xb DW_TAG_typedef
	.long	890                             ; DW_AT_type
	.long	630                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x37a:0x7 DW_TAG_base_type
	.long	646                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	35                              ; Abbrev [35] 0x381:0x12 DW_TAG_subprogram
	.long	659                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	475                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	21                              ; Abbrev [21] 0x38c:0x5 DW_TAG_formal_parameter
	.long	915                             ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0x391:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x393:0x5 DW_TAG_restrict_type
	.long	920                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x398:0x5 DW_TAG_pointer_type
	.long	925                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x39d:0x5 DW_TAG_const_type
	.long	79                              ; DW_AT_type
	.byte	38                              ; Abbrev [38] 0x3a2:0x3f DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset65, Lfunc_end1-Lfunc_begin1    ; DW_AT_high_pc
	.long	Lset65
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	666                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	39                              ; Abbrev [39] 0x3b7:0xf DW_TAG_formal_parameter
.set Lset66, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset66
	.long	750                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	1291                            ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x3c6:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	470                             ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x3d3:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	482                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	38                              ; Abbrev [38] 0x3e1:0x3f DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset67, Lfunc_end2-Lfunc_begin2    ; DW_AT_high_pc
	.long	Lset67
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	671                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	39                              ; Abbrev [39] 0x3f6:0xf DW_TAG_formal_parameter
.set Lset68, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset68
	.long	750                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	1291                            ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x405:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	470                             ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x412:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	482                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	38                              ; Abbrev [38] 0x420:0x3d DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset69, Lfunc_end3-Lfunc_begin3    ; DW_AT_high_pc
	.long	Lset69
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	675                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	40                              ; Abbrev [40] 0x435:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	750                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	1291                            ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x442:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.long	470                             ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x44f:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	82                              ; DW_AT_decl_line
	.long	482                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	41                              ; Abbrev [41] 0x45d:0x50 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset70, Lfunc_end4-Lfunc_begin4    ; DW_AT_high_pc
	.long	Lset70
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	681                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	39                              ; Abbrev [39] 0x472:0xf DW_TAG_formal_parameter
.set Lset71, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset71
	.long	750                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	1291                            ; DW_AT_type
	.byte	39                              ; Abbrev [39] 0x481:0xf DW_TAG_formal_parameter
.set Lset72, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset72
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	95                              ; DW_AT_decl_line
	.long	470                             ; DW_AT_type
	.byte	39                              ; Abbrev [39] 0x490:0xf DW_TAG_formal_parameter
.set Lset73, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset73
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	96                              ; DW_AT_decl_line
	.long	482                             ; DW_AT_type
	.byte	34                              ; Abbrev [34] 0x49f:0xd DW_TAG_call_site
	.long	897                             ; DW_AT_call_origin
	.quad	Ltmp52                          ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	38                              ; Abbrev [38] 0x4ad:0x39 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset74, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset74
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	687                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x4c2:0xb DW_TAG_formal_parameter
	.long	750                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	1291                            ; DW_AT_type
	.byte	40                              ; Abbrev [40] 0x4cd:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	739                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	104                             ; DW_AT_decl_line
	.long	470                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x4da:0xb DW_TAG_formal_parameter
	.long	708                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
	.long	482                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4e6:0xc DW_TAG_array_type
	.long	327                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4eb:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4f2:0xd DW_TAG_array_type
	.long	475                             ; DW_AT_type
	.byte	42                              ; Abbrev [42] 0x4f7:0x7 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4ff:0xc DW_TAG_array_type
	.long	311                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x504:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x50b:0x5 DW_TAG_restrict_type
	.long	1296                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x510:0x5 DW_TAG_pointer_type
	.long	1301                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x515:0x5 DW_TAG_const_type
	.long	327                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.3" ; string offset=0
	.asciz	"direct_call_threading.c"       ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=54
	.asciz	"MacOSX14.sdk"                  ; string offset=108
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-call-threading" ; string offset=121
	.asciz	"char"                          ; string offset=191
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=196
	.asciz	"unsigned int"                  ; string offset=216
	.asciz	"_CLOCK_REALTIME"               ; string offset=229
	.asciz	"_CLOCK_MONOTONIC"              ; string offset=245
	.asciz	"_CLOCK_MONOTONIC_RAW"          ; string offset=262
	.asciz	"_CLOCK_MONOTONIC_RAW_APPROX"   ; string offset=283
	.asciz	"_CLOCK_UPTIME_RAW"             ; string offset=311
	.asciz	"_CLOCK_UPTIME_RAW_APPROX"      ; string offset=329
	.asciz	"_CLOCK_PROCESS_CPUTIME_ID"     ; string offset=354
	.asciz	"_CLOCK_THREAD_CPUTIME_ID"      ; string offset=380
	.asciz	"OP_LOAD"                       ; string offset=405
	.asciz	"OP_ADD"                        ; string offset=413
	.asciz	"OP_JMPNE"                      ; string offset=420
	.asciz	"OP_PRINT"                      ; string offset=429
	.asciz	"OP_RET"                        ; string offset=438
	.asciz	"convert"                       ; string offset=445
	.asciz	"instructions"                  ; string offset=453
	.asciz	"bytecode_t"                    ; string offset=466
	.asciz	"internal_instructions"         ; string offset=477
	.asciz	"internal_instruction_t"        ; string offset=499
	.asciz	"handler"                       ; string offset=522
	.asciz	"internal_instruction"          ; string offset=530
	.asciz	"int"                           ; string offset=551
	.asciz	"a"                             ; string offset=555
	.asciz	"unsigned char"                 ; string offset=557
	.asciz	"b"                             ; string offset=571
	.asciz	"c"                             ; string offset=573
	.asciz	"jmp"                           ; string offset=575
	.asciz	"imm"                           ; string offset=579
	.asciz	"i"                             ; string offset=583
	.asciz	"main"                          ; string offset=585
	.asciz	"clock_gettime"                 ; string offset=590
	.asciz	"clockid_t"                     ; string offset=604
	.asciz	"timespec"                      ; string offset=614
	.asciz	"tv_sec"                        ; string offset=623
	.asciz	"__darwin_time_t"               ; string offset=630
	.asciz	"long"                          ; string offset=646
	.asciz	"tv_nsec"                       ; string offset=651
	.asciz	"printf"                        ; string offset=659
	.asciz	"load"                          ; string offset=666
	.asciz	"add"                           ; string offset=671
	.asciz	"jmpne"                         ; string offset=675
	.asciz	"print"                         ; string offset=681
	.asciz	"ret"                           ; string offset=687
	.asciz	"internal_program"              ; string offset=691
	.asciz	"memory"                        ; string offset=708
	.asciz	"ts_start"                      ; string offset=715
	.asciz	"ts_end"                        ; string offset=724
	.asciz	"average"                       ; string offset=731
	.asciz	"pc"                            ; string offset=739
	.asciz	"program"                       ; string offset=742
	.asciz	"instruction"                   ; string offset=750
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
.set Lset75, LNames5-Lnames_begin       ; Offset in Bucket 0
	.long	Lset75
.set Lset76, LNames1-Lnames_begin       ; Offset in Bucket 0
	.long	Lset76
.set Lset77, LNames6-Lnames_begin       ; Offset in Bucket 1
	.long	Lset77
.set Lset78, LNames3-Lnames_begin       ; Offset in Bucket 3
	.long	Lset78
.set Lset79, LNames2-Lnames_begin       ; Offset in Bucket 3
	.long	Lset79
.set Lset80, LNames0-Lnames_begin       ; Offset in Bucket 3
	.long	Lset80
.set Lset81, LNames4-Lnames_begin       ; Offset in Bucket 6
	.long	Lset81
LNames5:
	.long	681                             ; print
	.long	1                               ; Num DIEs
	.long	1117
	.long	0
LNames1:
	.long	445                             ; convert
	.long	1                               ; Num DIEs
	.long	617
	.long	0
LNames6:
	.long	687                             ; ret
	.long	1                               ; Num DIEs
	.long	1197
	.long	0
LNames3:
	.long	671                             ; add
	.long	1                               ; Num DIEs
	.long	993
	.long	0
LNames2:
	.long	666                             ; load
	.long	1                               ; Num DIEs
	.long	930
	.long	0
LNames0:
	.long	585                             ; main
	.long	1                               ; Num DIEs
	.long	494
	.long	0
LNames4:
	.long	675                             ; jmpne
	.long	1                               ; Num DIEs
	.long	1056
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
	.long	11                              ; Header Bucket Count
	.long	11                              ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	2                               ; Bucket 2
	.long	4                               ; Bucket 3
	.long	5                               ; Bucket 4
	.long	6                               ; Bucket 5
	.long	7                               ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	10                              ; Bucket 8
	.long	-1                              ; Bucket 9
	.long	-1                              ; Bucket 10
	.long	2090147939                      ; Hash in Bucket 0
	.long	2090479413                      ; Hash in Bucket 0
	.long	739847143                       ; Hash in Bucket 2
	.long	-594775205                      ; Hash in Bucket 2
	.long	-243996567                      ; Hash in Bucket 3
	.long	-104093792                      ; Hash in Bucket 4
	.long	567385087                       ; Hash in Bucket 5
	.long	193495088                       ; Hash in Bucket 6
	.long	441739414                       ; Hash in Bucket 6
	.long	-113466703                      ; Hash in Bucket 6
	.long	-1304652851                     ; Hash in Bucket 8
.set Lset82, Ltypes0-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset82
.set Lset83, Ltypes10-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset83
.set Lset84, Ltypes3-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset84
.set Lset85, Ltypes1-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset85
.set Lset86, Ltypes9-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset86
.set Lset87, Ltypes6-Ltypes_begin       ; Offset in Bucket 4
	.long	Lset87
.set Lset88, Ltypes8-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset88
.set Lset89, Ltypes5-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset89
.set Lset90, Ltypes4-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset90
.set Lset91, Ltypes7-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset91
.set Lset92, Ltypes2-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset92
Ltypes0:
	.long	191                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	646                             ; long
	.long	1                               ; Num DIEs
	.long	890
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	466                             ; bytecode_t
	.long	1                               ; Num DIEs
	.long	311
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	196                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	630                             ; __darwin_time_t
	.long	1                               ; Num DIEs
	.long	879
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	557                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	487
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	614                             ; timespec
	.long	1                               ; Num DIEs
	.long	846
	.short	19
	.byte	0
	.long	0
Ltypes5:
	.long	551                             ; int
	.long	1                               ; Num DIEs
	.long	475
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	499                             ; internal_instruction_t
	.long	1                               ; Num DIEs
	.long	327
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	604                             ; clockid_t
	.long	1                               ; Num DIEs
	.long	830
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	216                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	208
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
