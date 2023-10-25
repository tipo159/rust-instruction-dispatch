	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.p2align	2
__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x8, [sp]
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x3, [sp, #32]
	subs	x8, x1, x3
	cset	w8, lo
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, hi
	and	w8, w8, #0x1
	strb	w8, [sp, #47]
	b	LBB0_3
LBB0_2:
	mov	w8, #1
	strb	w8, [sp, #47]
	b	LBB0_3
LBB0_3:
	ldrb	w8, [sp, #47]
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	x8, [sp, #32]
	ldr	x9, [sp]
	ldr	x10, [sp, #24]
	ldr	x11, [sp, #16]
	ldr	x12, [sp, #8]
	stur	xzr, [x29, #-32]
	str	x12, [x9]
	str	x11, [x9, #8]
	ldur	x12, [x29, #-32]
	ldur	x11, [x29, #-24]
	str	x12, [x9, #32]
	str	x11, [x9, #40]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB0_5:
	.cfi_restore_state
	stur	xzr, [x29, #-16]
	add	x0, sp, #48
	adrp	x8, l___unnamed_1@PAGE
	add	x8, x8, l___unnamed_1@PAGEOFF
	str	x8, [sp, #48]
	mov	w8, #1
	str	x8, [sp, #56]
	ldur	x9, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x9, [sp, #80]
	str	x8, [sp, #88]
	adrp	x8, l___unnamed_2@PAGE
	add	x8, x8, l___unnamed_2@PAGEOFF
	str	x8, [sp, #64]
	str	xzr, [sp, #72]
	adrp	x1, l___unnamed_3@PAGE
	add	x1, x1, l___unnamed_3@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments9new_const17h0448d446c3219d9eE:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	subs	x8, x1, #1
	cset	w8, hi
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	stur	xzr, [x29, #-16]
	str	x10, [x8]
	str	x9, [x8, #8]
	ldur	x10, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	x10, [x8, #32]
	str	x9, [x8, #40]
	adrp	x9, l___unnamed_2@PAGE
	add	x9, x9, l___unnamed_2@PAGEOFF
	str	x9, [x8, #16]
	str	xzr, [x8, #24]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB1_2:
	.cfi_restore_state
	add	x8, sp, #32
	str	x8, [sp]
	adrp	x0, l___unnamed_1@PAGE
	add	x0, x0, l___unnamed_1@PAGEOFF
	mov	w9, #1
	mov	x1, x9
	bl	__ZN4core3fmt9Arguments9new_const17h0448d446c3219d9eE
	ldr	x0, [sp]
	adrp	x1, l___unnamed_4@PAGE
	add	x1, x1, l___unnamed_4@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.cfi_endproc

	.globl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	.p2align	2
__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	mov	w8, w8
	str	x8, [sp, #16]
	subs	x8, x8, #4
	cset	w8, hi
	tbnz	w8, #0, LBB2_2
	ldr	x11, [sp, #16]
	adrp	x10, LJTI2_0@PAGE
	add	x10, x10, LJTI2_0@PAGEOFF
Ltmp0:
	adr	x8, Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB2_2:
	add	x8, sp, #24
	stur	x8, [x29, #-16]
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	ldur	x8, [x29, #-8]
	sub	x2, x29, #32
	stur	x9, [x29, #-32]
	stur	x8, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp, #8]
	adrp	x0, l___unnamed_5@PAGE
	add	x0, x0, l___unnamed_5@PAGEOFF
	mov	w9, #1
	mov	x3, x9
	mov	x1, x3
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #8]
	adrp	x1, l___unnamed_6@PAGE
	add	x1, x1, l___unnamed_6@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
LBB2_3:
	strb	wzr, [sp, #31]
	b	LBB2_8
LBB2_4:
	mov	w8, #1
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_5:
	mov	w8, #2
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_6:
	mov	w8, #3
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_7:
	mov	w8, #4
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_8:
	ldrb	w0, [sp, #31]
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI2_0:
	.long	LBB2_3-Ltmp0
	.long	LBB2_4-Ltmp0
	.long	LBB2_5-Ltmp0
	.long	LBB2_6-Ltmp0
	.long	LBB2_7-Ltmp0

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mylib8bytecode7vm_loop17h1bd61d467948a81dE
	.p2align	2
__ZN5mylib8bytecode7vm_loop17h1bd61d467948a81dE:
	.cfi_startproc
	stp	x28, x27, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	.cfi_remember_state
	sub	sp, sp, #1536
	str	x0, [sp, #304]
	str	x1, [sp, #312]
	add	x0, sp, #328
	mov	w8, #1024
	mov	x1, x8
	bl	_bzero
	ldr	x1, [sp, #312]
	stur	xzr, [x29, #-200]
	; InlineAsm Start
	adrp	x8, _load_@PAGE
	add	x8, x8, _load_@PAGEOFF
	; InlineAsm End
	stur	x8, [x29, #-152]
	ldur	x12, [x29, #-152]
	; InlineAsm Start
	adrp	x8, _add_@PAGE
	add	x8, x8, _add_@PAGEOFF
	; InlineAsm End
	stur	x8, [x29, #-144]
	ldur	x11, [x29, #-144]
	; InlineAsm Start
	adrp	x8, _jmpne_@PAGE
	add	x8, x8, _jmpne_@PAGEOFF
	; InlineAsm End
	stur	x8, [x29, #-136]
	ldur	x10, [x29, #-136]
	; InlineAsm Start
	adrp	x8, _print_@PAGE
	add	x8, x8, _print_@PAGEOFF
	; InlineAsm End
	stur	x8, [x29, #-128]
	ldur	x9, [x29, #-128]
	; InlineAsm Start
	adrp	x8, _ret_@PAGE
	add	x8, x8, _ret_@PAGEOFF
	; InlineAsm End
	stur	x8, [x29, #-120]
	ldur	x8, [x29, #-120]
	stur	x12, [x29, #-192]
	stur	x11, [x29, #-184]
	stur	x10, [x29, #-176]
	stur	x9, [x29, #-168]
	stur	x8, [x29, #-160]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #320]
	subs	x8, x8, x1
	cset	w8, hs
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #320]
	ldr	w8, [x8, x9, lsl #2]
	and	w0, w8, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	sturb	w0, [x29, #-108]
	ldurb	w8, [x29, #-108]
	str	x8, [sp, #296]
	subs	x8, x8, #5
	cset	w8, lo
	tbnz	w8, #0, LBB3_3
	b	LBB3_4
LBB3_2:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #320]
	adrp	x2, l___unnamed_7@PAGE
	add	x2, x2, l___unnamed_7@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_3:
	ldr	x9, [sp, #312]
	ldr	x10, [sp, #296]
	sub	x8, x29, #192
	ldr	x8, [x8, x10, lsl #3]
	; InlineAsm Start
	br	x8
	; InlineAsm End
	; InlineAsm Start
_load_:
	; InlineAsm End
	ldur	x8, [x29, #-200]
	str	x8, [sp, #288]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_5
	b	LBB3_6
LBB3_4:
	ldr	x0, [sp, #296]
	mov	w8, #5
	mov	x1, x8
	adrp	x2, l___unnamed_8@PAGE
	add	x2, x2, l___unnamed_8@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_5:
	ldr	x9, [sp, #312]
	ldr	x8, [sp, #304]
	ldr	x10, [sp, #288]
	ldr	w8, [x8, x10, lsl #2]
	lsr	w8, w8, #4
	and	w8, w8, #0xfffff
	str	w8, [sp, #276]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #280]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_7
	b	LBB3_8
LBB3_6:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #288]
	adrp	x2, l___unnamed_9@PAGE
	add	x2, x2, l___unnamed_9@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_7:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #280]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #24
	str	w8, [sp, #260]
	mov	w8, w8
	str	x8, [sp, #264]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_9
	b	LBB3_10
LBB3_8:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #280]
	adrp	x2, l___unnamed_10@PAGE
	add	x2, x2, l___unnamed_10@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_9:
	ldr	x9, [sp, #312]
	ldr	w8, [sp, #276]
	ldr	w11, [sp, #260]
	add	x10, sp, #328
	str	w8, [x10, w11, uxtw #2]
	ldur	x8, [x29, #-200]
	add	x8, x8, #1
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #248]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_11
	b	LBB3_12
LBB3_10:
	ldr	x0, [sp, #264]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_11@PAGE
	add	x2, x2, l___unnamed_11@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_11:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #248]
	ldr	w8, [x8, x9, lsl #2]
	and	w0, w8, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	sturb	w0, [x29, #-107]
	ldurb	w8, [x29, #-107]
	str	x8, [sp, #240]
	subs	x8, x8, #5
	cset	w8, lo
	tbnz	w8, #0, LBB3_13
	b	LBB3_14
LBB3_12:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #248]
	adrp	x2, l___unnamed_12@PAGE
	add	x2, x2, l___unnamed_12@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_13:
	ldr	x9, [sp, #312]
	ldr	x10, [sp, #240]
	sub	x8, x29, #192
	ldr	x8, [x8, x10, lsl #3]
	; InlineAsm Start
	br	x8
	; InlineAsm End
	; InlineAsm Start
_add_:
	; InlineAsm End
	ldur	x8, [x29, #-200]
	str	x8, [sp, #232]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_15
	b	LBB3_16
LBB3_14:
	ldr	x0, [sp, #240]
	mov	w8, #5
	mov	x1, x8
	adrp	x2, l___unnamed_13@PAGE
	add	x2, x2, l___unnamed_13@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_15:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #232]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #16
	and	w8, w8, #0xff
	str	w8, [sp, #220]
	mov	w8, w8
	str	x8, [sp, #224]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_17
	b	LBB3_18
LBB3_16:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #232]
	adrp	x2, l___unnamed_14@PAGE
	add	x2, x2, l___unnamed_14@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_17:
	ldr	x9, [sp, #312]
	ldr	w10, [sp, #220]
	add	x8, sp, #328
	ldr	w8, [x8, w10, uxtw #2]
	str	w8, [sp, #204]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #208]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_19
	b	LBB3_20
LBB3_18:
	ldr	x0, [sp, #224]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_15@PAGE
	add	x2, x2, l___unnamed_15@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_19:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #208]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #4
	and	w8, w8, #0xfff
	str	w8, [sp, #188]
	mov	w8, w8
	str	x8, [sp, #192]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_21
	b	LBB3_22
LBB3_20:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #208]
	adrp	x2, l___unnamed_16@PAGE
	add	x2, x2, l___unnamed_16@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_21:
	ldr	x9, [sp, #312]
	ldr	w10, [sp, #188]
	add	x8, sp, #328
	ldr	w8, [x8, w10, uxtw #2]
	str	w8, [sp, #172]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #176]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_23
	b	LBB3_24
LBB3_22:
	ldr	x0, [sp, #192]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_17@PAGE
	add	x2, x2, l___unnamed_17@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_23:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #176]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #24
	str	w8, [sp, #156]
	mov	w8, w8
	str	x8, [sp, #160]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_25
	b	LBB3_26
LBB3_24:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #176]
	adrp	x2, l___unnamed_18@PAGE
	add	x2, x2, l___unnamed_18@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_25:
	ldr	x9, [sp, #312]
	ldr	w11, [sp, #156]
	ldr	w8, [sp, #204]
	ldr	w12, [sp, #172]
	add	x10, sp, #328
	add	w8, w8, w12
	str	w8, [x10, w11, uxtw #2]
	ldur	x8, [x29, #-200]
	add	x8, x8, #1
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #144]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_27
	b	LBB3_28
LBB3_26:
	ldr	x0, [sp, #160]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_19@PAGE
	add	x2, x2, l___unnamed_19@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_27:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #144]
	ldr	w8, [x8, x9, lsl #2]
	and	w0, w8, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	sturb	w0, [x29, #-106]
	ldurb	w8, [x29, #-106]
	str	x8, [sp, #136]
	subs	x8, x8, #5
	cset	w8, lo
	tbnz	w8, #0, LBB3_29
	b	LBB3_30
LBB3_28:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #144]
	adrp	x2, l___unnamed_20@PAGE
	add	x2, x2, l___unnamed_20@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_29:
	ldr	x9, [sp, #312]
	ldr	x10, [sp, #136]
	sub	x8, x29, #192
	ldr	x8, [x8, x10, lsl #3]
	; InlineAsm Start
	br	x8
	; InlineAsm End
	; InlineAsm Start
_jmpne_:
	; InlineAsm End
	ldur	x8, [x29, #-200]
	str	x8, [sp, #128]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_31
	b	LBB3_32
LBB3_30:
	ldr	x0, [sp, #136]
	mov	w8, #5
	mov	x1, x8
	adrp	x2, l___unnamed_21@PAGE
	add	x2, x2, l___unnamed_21@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_31:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #128]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #24
	str	w8, [sp, #116]
	mov	w8, w8
	str	x8, [sp, #120]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_33
	b	LBB3_34
LBB3_32:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #128]
	adrp	x2, l___unnamed_22@PAGE
	add	x2, x2, l___unnamed_22@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_33:
	ldr	x9, [sp, #312]
	ldr	w10, [sp, #116]
	add	x8, sp, #328
	ldr	w8, [x8, w10, uxtw #2]
	str	w8, [sp, #100]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #104]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_35
	b	LBB3_36
LBB3_34:
	ldr	x0, [sp, #120]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_23@PAGE
	add	x2, x2, l___unnamed_23@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_35:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #104]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #16
	and	w8, w8, #0xff
	str	w8, [sp, #84]
	mov	w8, w8
	str	x8, [sp, #88]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_37
	b	LBB3_38
LBB3_36:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #104]
	adrp	x2, l___unnamed_24@PAGE
	add	x2, x2, l___unnamed_24@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_37:
	ldr	w8, [sp, #100]
	ldr	w10, [sp, #84]
	add	x9, sp, #328
	ldr	w9, [x9, w10, uxtw #2]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB3_40
	b	LBB3_39
LBB3_38:
	ldr	x0, [sp, #88]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_25@PAGE
	add	x2, x2, l___unnamed_25@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_39:
	ldr	x9, [sp, #312]
	ldur	x8, [x29, #-200]
	add	x8, x8, #1
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #72]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_43
	b	LBB3_44
LBB3_40:
	ldr	x9, [sp, #312]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #64]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB3_42
	b	LBB3_41
LBB3_41:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #64]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #4
	and	w8, w8, #0xfff
	mov	w8, w8
	subs	x8, x8, #1
	stur	x8, [x29, #-200]
	b	LBB3_39
LBB3_42:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #64]
	adrp	x2, l___unnamed_26@PAGE
	add	x2, x2, l___unnamed_26@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_43:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #72]
	ldr	w8, [x8, x9, lsl #2]
	and	w0, w8, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	sturb	w0, [x29, #-105]
	ldurb	w8, [x29, #-105]
	str	x8, [sp, #56]
	subs	x8, x8, #5
	cset	w8, lo
	tbnz	w8, #0, LBB3_45
	b	LBB3_46
LBB3_44:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #72]
	adrp	x2, l___unnamed_27@PAGE
	add	x2, x2, l___unnamed_27@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_45:
	ldr	x9, [sp, #312]
	ldr	x10, [sp, #56]
	sub	x8, x29, #192
	ldr	x8, [x8, x10, lsl #3]
	; InlineAsm Start
	br	x8
	; InlineAsm End
	; InlineAsm Start
_print_:
	; InlineAsm End
	ldur	x8, [x29, #-200]
	str	x8, [sp, #48]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_47
	b	LBB3_48
LBB3_46:
	ldr	x0, [sp, #56]
	mov	w8, #5
	mov	x1, x8
	adrp	x2, l___unnamed_28@PAGE
	add	x2, x2, l___unnamed_28@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_47:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #48]
	ldr	w8, [x8, x9, lsl #2]
	lsr	w8, w8, #24
	str	w8, [sp, #36]
	mov	w8, w8
	str	x8, [sp, #40]
	subs	x8, x8, #256
	cset	w8, lo
	tbnz	w8, #0, LBB3_49
	b	LBB3_50
LBB3_48:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #48]
	adrp	x2, l___unnamed_29@PAGE
	add	x2, x2, l___unnamed_29@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_49:
	ldr	w9, [sp, #36]
	add	x8, sp, #328
	add	x8, x8, w9, uxtw #2
	stur	x8, [x29, #-32]
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	ldur	x8, [x29, #-24]
	sub	x2, x29, #56
	stur	x9, [x29, #-56]
	stur	x8, [x29, #-48]
	sub	x8, x29, #104
	str	x8, [sp, #16]
	adrp	x0, l___unnamed_30@PAGE
	add	x0, x0, l___unnamed_30@PAGEOFF
	mov	w9, #2
	mov	x1, x9
	mov	w9, #1
	mov	x3, x9
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #16]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	ldr	x9, [sp, #312]
	ldur	x8, [x29, #-200]
	add	x8, x8, #1
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-200]
	str	x8, [sp, #24]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB3_51
	b	LBB3_52
LBB3_50:
	ldr	x0, [sp, #40]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l___unnamed_31@PAGE
	add	x2, x2, l___unnamed_31@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_51:
	ldr	x8, [sp, #304]
	ldr	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	and	w0, w8, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	sturb	w0, [x29, #-33]
	ldurb	w8, [x29, #-33]
	str	x8, [sp, #8]
	subs	x8, x8, #5
	cset	w8, lo
	tbnz	w8, #0, LBB3_53
	b	LBB3_54
LBB3_52:
	ldr	x1, [sp, #312]
	ldr	x0, [sp, #24]
	adrp	x2, l___unnamed_32@PAGE
	add	x2, x2, l___unnamed_32@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB3_53:
	ldr	x9, [sp, #8]
	sub	x8, x29, #192
	ldr	x8, [x8, x9, lsl #3]
	; InlineAsm Start
	br	x8
	; InlineAsm End
	; InlineAsm Start
_ret_:
	; InlineAsm End
	add	sp, sp, #1536
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x28, x27, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB3_54:
	.cfi_restore_state
	ldr	x0, [sp, #8]
	mov	w8, #5
	mov	x1, x8
	adrp	x2, l___unnamed_33@PAGE
	add	x2, x2, l___unnamed_33@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.cfi_endproc

	.globl	__ZN5mylib8bytecode14print_bytecode17h77d03d6fb1c494a2E
	.p2align	2
__ZN5mylib8bytecode14print_bytecode17h77d03d6fb1c494a2E:
	.cfi_startproc
	stp	x28, x27, [sp, #-32]!
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #656
	add	x8, sp, #216
	str	x8, [sp, #40]
	str	w0, [sp, #52]
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	str	x8, [sp, #56]
	and	w0, w0, #0xf
	bl	__ZN5mylib8bytecode6Opcode8from_u3217h523084e362af097dE
	strb	w0, [sp, #79]
	ldrb	w8, [sp, #79]
	subs	x8, x8, #0
	str	x8, [sp, #64]
	ldr	x11, [sp, #64]
	adrp	x10, LJTI4_0@PAGE
	add	x10, x10, LJTI4_0@PAGEOFF
Ltmp1:
	adr	x8, Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB4_3:
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #56]
	ldr	w12, [sp, #52]
	lsr	w11, w12, #24
	add	x10, sp, #160
	str	w11, [sp, #160]
	str	x10, [x8, #424]
	mov	x10, x9
	str	x10, [x8, #432]
	ldr	x11, [x8, #424]
	ldr	x10, [x8, #432]
	lsr	w12, w12, #4
	and	w13, w12, #0xfffff
	add	x12, sp, #164
	str	w13, [sp, #164]
	str	x12, [x8, #408]
	str	x9, [x8, #416]
	ldr	x9, [x8, #408]
	ldr	x8, [x8, #416]
	add	x2, sp, #128
	str	x11, [sp, #128]
	str	x10, [sp, #136]
	str	x9, [sp, #144]
	str	x8, [sp, #152]
	add	x8, sp, #80
	str	x8, [sp, #32]
	adrp	x0, l___unnamed_34@PAGE
	add	x0, x0, l___unnamed_34@PAGEOFF
	mov	w9, #3
	mov	x1, x9
	mov	w9, #2
	mov	x3, x9
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #32]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	b	LBB4_8
LBB4_4:
	ldr	x9, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	w10, [sp, #52]
	lsr	w12, w10, #24
	add	x11, sp, #268
	str	w12, [x9, #52]
	str	x11, [x9, #392]
	mov	x11, x8
	str	x11, [x9, #400]
	ldr	x14, [x9, #392]
	ldr	x13, [x9, #400]
	lsr	w11, w10, #16
	and	w12, w11, #0xff
	add	x11, sp, #272
	str	w12, [x9, #56]
	str	x11, [x9, #376]
	mov	x11, x8
	str	x11, [x9, #384]
	ldr	x12, [x9, #376]
	ldr	x11, [x9, #384]
	lsr	w10, w10, #4
	and	w15, w10, #0xfff
	add	x10, sp, #276
	str	w15, [x9, #60]
	str	x10, [x9, #360]
	str	x8, [x9, #368]
	ldr	x10, [x9, #360]
	ldr	x8, [x9, #368]
	add	x2, sp, #216
	str	x14, [x9]
	str	x13, [x9, #8]
	str	x12, [x9, #16]
	str	x11, [x9, #24]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	add	x8, sp, #168
	str	x8, [sp, #24]
	adrp	x0, l___unnamed_35@PAGE
	add	x0, x0, l___unnamed_35@PAGEOFF
	mov	w9, #4
	mov	x1, x9
	mov	w9, #3
	mov	x3, x9
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #24]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	b	LBB4_8
LBB4_5:
	ldr	x9, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	w10, [sp, #52]
	lsr	w12, w10, #24
	add	x11, sp, #380
	str	w12, [x9, #164]
	str	x11, [x9, #344]
	mov	x11, x8
	str	x11, [x9, #352]
	ldr	x14, [x9, #344]
	ldr	x13, [x9, #352]
	lsr	w11, w10, #16
	and	w12, w11, #0xff
	add	x11, sp, #384
	str	w12, [x9, #168]
	str	x11, [x9, #328]
	mov	x11, x8
	str	x11, [x9, #336]
	ldr	x12, [x9, #328]
	ldr	x11, [x9, #336]
	lsr	w10, w10, #4
	and	w15, w10, #0xfff
	add	x10, sp, #388
	str	w15, [x9, #172]
	str	x10, [x9, #312]
	str	x8, [x9, #320]
	ldr	x10, [x9, #312]
	ldr	x8, [x9, #320]
	add	x2, sp, #328
	str	x14, [x9, #112]
	str	x13, [x9, #120]
	str	x12, [x9, #128]
	str	x11, [x9, #136]
	str	x10, [x9, #144]
	str	x8, [x9, #152]
	add	x8, sp, #280
	str	x8, [sp, #16]
	adrp	x0, l___unnamed_36@PAGE
	add	x0, x0, l___unnamed_36@PAGEOFF
	mov	w9, #4
	mov	x1, x9
	mov	w9, #3
	mov	x3, x9
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #16]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	b	LBB4_8
LBB4_6:
	ldr	x9, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	w10, [sp, #52]
	lsr	w11, w10, #24
	sub	x10, x29, #212
	str	w11, [x9, #244]
	str	x10, [x9, #296]
	str	x8, [x9, #304]
	ldr	x10, [x9, #296]
	ldr	x8, [x9, #304]
	sub	x2, x29, #232
	str	x10, [x9, #224]
	str	x8, [x9, #232]
	add	x8, sp, #392
	str	x8, [sp, #8]
	adrp	x0, l___unnamed_37@PAGE
	add	x0, x0, l___unnamed_37@PAGEOFF
	mov	w9, #2
	mov	x1, x9
	mov	w9, #1
	mov	x3, x9
	bl	__ZN4core3fmt9Arguments6new_v117hc8ead5d868234d32E
	ldr	x0, [sp, #8]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	b	LBB4_8
LBB4_7:
	sub	x8, x29, #208
	str	x8, [sp]
	adrp	x0, l___unnamed_38@PAGE
	add	x0, x0, l___unnamed_38@PAGEOFF
	mov	w9, #1
	mov	x1, x9
	bl	__ZN4core3fmt9Arguments9new_const17h0448d446c3219d9eE
	ldr	x0, [sp]
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	b	LBB4_8
LBB4_8:
	add	sp, sp, #656
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	ldp	x28, x27, [sp], #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w27
	.cfi_restore w28
	ret
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI4_0:
	.long	LBB4_3-Ltmp1
	.long	LBB4_4-Ltmp1
	.long	LBB4_5-Ltmp1
	.long	LBB4_6-Ltmp1
	.long	LBB4_7-Ltmp1

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc8af1c07b4bd20abE
	.p2align	2
__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc8af1c07b4bd20abE:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp]
	ldrb	w8, [x0]
	subs	x8, x8, #0
	str	x8, [sp, #8]
	ldr	x11, [sp, #8]
	adrp	x10, LJTI5_0@PAGE
	add	x10, x10, LJTI5_0@PAGEOFF
Ltmp2:
	adr	x8, Ltmp2
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB5_3:
	adrp	x8, l___unnamed_39@PAGE
	add	x8, x8, l___unnamed_39@PAGEOFF
	str	x8, [sp, #16]
	mov	w8, #4
	str	x8, [sp, #24]
	b	LBB5_8
LBB5_4:
	adrp	x8, l___unnamed_40@PAGE
	add	x8, x8, l___unnamed_40@PAGEOFF
	str	x8, [sp, #16]
	mov	w8, #3
	str	x8, [sp, #24]
	b	LBB5_8
LBB5_5:
	adrp	x8, l___unnamed_41@PAGE
	add	x8, x8, l___unnamed_41@PAGEOFF
	str	x8, [sp, #16]
	mov	w8, #5
	str	x8, [sp, #24]
	b	LBB5_8
LBB5_6:
	adrp	x8, l___unnamed_42@PAGE
	add	x8, x8, l___unnamed_42@PAGEOFF
	str	x8, [sp, #16]
	mov	w8, #5
	str	x8, [sp, #24]
	b	LBB5_8
LBB5_7:
	adrp	x8, l___unnamed_43@PAGE
	add	x8, x8, l___unnamed_43@PAGEOFF
	str	x8, [sp, #16]
	mov	w8, #3
	str	x8, [sp, #24]
	b	LBB5_8
LBB5_8:
	ldr	x0, [sp]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZN4core3fmt9Formatter9write_str17hf28662d815207628E
	and	w0, w0, #0x1
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	2, 0x0
LJTI5_0:
	.long	LBB5_3-Ltmp2
	.long	LBB5_4-Ltmp2
	.long	LBB5_5-Ltmp2
	.long	LBB5_6-Ltmp2
	.long	LBB5_7-Ltmp2

l___unnamed_44:
	.ascii	"invalid args"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_1:
	.quad	l___unnamed_44
	.asciz	"\f\000\000\000\000\000\000"

	.section	__TEXT,__const
	.p2align	3, 0x0
l___unnamed_2:
	.byte	0

l___unnamed_45:
	.ascii	"/rustc/d5c2e9c342b358556da91d61ed4133f6f50fc0c3/library/core/src/fmt/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_3:
	.quad	l___unnamed_45
	.asciz	"K\000\000\000\000\000\000\0005\001\000\000\r\000\000"

	.p2align	3, 0x0
l___unnamed_4:
	.quad	l___unnamed_45
	.asciz	"K\000\000\000\000\000\000\000+\001\000\000\r\000\000"

	.section	__TEXT,__const
l___unnamed_46:
	.ascii	"Unknown Opcode value: "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_5:
	.quad	l___unnamed_46
	.asciz	"\026\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_47:
	.ascii	"src/bytecode.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_6:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000`\000\000\000\022\000\000"

	.p2align	3, 0x0
l___unnamed_7:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000$\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_8:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000$\001\000\000\005\000\000"

	.p2align	3, 0x0
l___unnamed_9:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000'\001\000\000F\000\000"

	.p2align	3, 0x0
l___unnamed_10:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000'\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_11:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000'\001\000\000\005\000\000"

	.p2align	3, 0x0
l___unnamed_12:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\0003\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_13:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\0003\001\000\000\005\000\000"

	.p2align	3, 0x0
l___unnamed_14:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000B\001\000\000K\000\000"

	.p2align	3, 0x0
l___unnamed_15:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000B\001\000\0006\000\000"

	.p2align	3, 0x0
l___unnamed_16:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000C\001\000\000 \000\000"

	.p2align	3, 0x0
l___unnamed_17:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000C\001\000\000\013\000\000"

	.p2align	3, 0x0
l___unnamed_18:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000B\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_19:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000B\001\000\000\005\000\000"

	.p2align	3, 0x0
l___unnamed_20:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000M\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_21:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000M\001\000\000\005\000\000"

	.p2align	3, 0x0
l___unnamed_22:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000[\001\000\000\035\000\000"

	.p2align	3, 0x0
l___unnamed_23:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000[\001\000\000\b\000\000"

	.p2align	3, 0x0
l___unnamed_24:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000\\\001\000\000!\000\000"

	.p2align	3, 0x0
l___unnamed_25:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000\\\001\000\000\f\000\000"

	.p2align	3, 0x0
l___unnamed_26:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000^\001\000\000\036\000\000"

	.p2align	3, 0x0
l___unnamed_27:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000e\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_28:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000e\001\000\000\005\000\000"

	.section	__TEXT,__const
l___unnamed_48:
	.byte	10

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_30:
	.quad	l___unnamed_2
	.space	8
	.quad	l___unnamed_48
	.asciz	"\001\000\000\000\000\000\000"

	.p2align	3, 0x0
l___unnamed_29:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000l\001\000\000)\000\000"

	.p2align	3, 0x0
l___unnamed_31:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000l\001\000\000\024\000\000"

	.p2align	3, 0x0
l___unnamed_32:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000n\001\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_33:
	.quad	l___unnamed_47
	.asciz	"\017\000\000\000\000\000\000\000n\001\000\000\005\000\000"

	.section	__TEXT,__const
l___unnamed_49:
	.ascii	"LOAD: memory["

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_50:
	.ascii	"] = "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_34:
	.quad	l___unnamed_49
	.asciz	"\r\000\000\000\000\000\000"
	.quad	l___unnamed_50
	.asciz	"\004\000\000\000\000\000\000"
	.quad	l___unnamed_48
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_51:
	.ascii	"ADD: memory["

l___unnamed_52:
	.ascii	"] = memory["

l___unnamed_53:
	.ascii	"] + memory["

l___unnamed_54:
	.ascii	"]\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_35:
	.quad	l___unnamed_51
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_52
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_53
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_54
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_55:
	.ascii	"JMPNE: if memory["

l___unnamed_56:
	.ascii	"] != memory["

l___unnamed_57:
	.ascii	"] pc = "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_36:
	.quad	l___unnamed_55
	.asciz	"\021\000\000\000\000\000\000"
	.quad	l___unnamed_56
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_57
	.asciz	"\007\000\000\000\000\000\000"
	.quad	l___unnamed_48
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_58:
	.ascii	"PRINT: print memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_37:
	.quad	l___unnamed_58
	.asciz	"\024\000\000\000\000\000\000"
	.quad	l___unnamed_54
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_59:
	.ascii	"RET\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_38:
	.quad	l___unnamed_59
	.asciz	"\004\000\000\000\000\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_39:
	.ascii	"LOAD"

	.section	__TEXT,__const
l___unnamed_40:
	.ascii	"ADD"

l___unnamed_41:
	.ascii	"JMPNE"

l___unnamed_42:
	.ascii	"PRINT"

l___unnamed_43:
	.ascii	"RET"

.subsections_via_symbols
