	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.p2align	2
__ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3109adbe0832e9d8E:
	.cfi_startproc
	ldr	x0, [x0]
	b	__ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE
	.cfi_endproc

	.p2align	2
__ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E:
	.cfi_startproc
	ldr	x0, [x0]
	b	__ZN4core3fmt17pointer_fmt_inner17h86d786f9b29006b1E
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec11finish_grow17ha91ee2020d3c2644E:
	.cfi_startproc
	stp	x22, x21, [sp, #-48]!
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_remember_state
	mov	x19, x2
	mov	x20, x0
	cbz	x1, LBB2_8
	mov	x21, x1
	ldr	x8, [x3, #8]
	cbz	x8, LBB2_5
	ldr	x1, [x3, #16]
	cbz	x1, LBB2_5
	ldr	x0, [x3]
	mov	x2, x21
	mov	x3, x19
	bl	___rust_realloc
	cbnz	x0, LBB2_7
LBB2_4:
	str	x21, [x20, #8]
	b	LBB2_9
LBB2_5:
	cbz	x19, LBB2_11
Lloh0:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x19
	mov	x1, x21
	bl	___rust_alloc
	cbz	x0, LBB2_4
LBB2_7:
	mov	x8, #0
	str	x0, [x20, #8]
	b	LBB2_10
LBB2_8:
	str	xzr, [x20, #8]
LBB2_9:
	mov	w8, #1
LBB2_10:
	str	x19, [x20, #16]
	str	x8, [x20]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	ldp	x20, x19, [sp, #16]
	ldp	x22, x21, [sp], #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
LBB2_11:
	.cfi_restore_state
	mov	x0, x21
	cbnz	x21, LBB2_7
	b	LBB2_4
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	adds	x9, x1, #1
	b.hs	LBB3_5
	mov	x19, x0
	ldr	x8, [x0, #8]
	lsl	x10, x8, #1
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	mov	x9, #6148914691236517205
	movk	x9, #21846
	movk	x9, #1365, lsl #48
	cmp	x20, x9
	add	x9, x20, x20, lsl #1
	cset	w10, lo
	lsl	x2, x9, #3
	ubfiz	x1, x10, #3, #32
	cbz	x8, LBB3_6
	ldr	x9, [x19]
	add	x8, x8, x8, lsl #1
	lsl	x8, x8, #3
	mov	w10, #8
	stp	x9, x10, [sp, #24]
	str	x8, [sp, #40]
	mov	x0, sp
	add	x3, sp, #24
	bl	__ZN5alloc7raw_vec11finish_grow17ha91ee2020d3c2644E
	ldp	x8, x0, [sp]
	cbz	x8, LBB3_7
LBB3_3:
	mov	x8, #-9223372036854775807
	cmp	x0, x8
	b.eq	LBB3_8
	cbnz	x0, LBB3_9
LBB3_5:
	bl	__ZN5alloc7raw_vec17capacity_overflow17h465f58d66bf1461cE
LBB3_6:
	str	xzr, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	bl	__ZN5alloc7raw_vec11finish_grow17ha91ee2020d3c2644E
	ldp	x8, x0, [sp]
	cbnz	x8, LBB3_3
LBB3_7:
	stp	x0, x20, [x19]
LBB3_8:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB3_9:
	.cfi_restore_state
	ldr	x1, [sp, #16]
	bl	__ZN5alloc5alloc18handle_alloc_error17he63473ab5d0e3fe6E
	.cfi_endproc

	.globl	__ZN5mylib8bytecode6Opcode8from_u3217h238f8da0e15de211E
	.p2align	2
__ZN5mylib8bytecode6Opcode8from_u3217h238f8da0e15de211E:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	w0, [sp, #12]
	cmp	w0, #5
	b.hs	LBB4_2
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB4_2:
	.cfi_restore_state
Lloh2:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh3:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	add	x9, sp, #12
	stp	x9, x8, [x29, #-16]
Lloh4:
	adrp	x8, l___unnamed_1@PAGE
Lloh5:
	add	x8, x8, l___unnamed_1@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [sp, #16]
	stp	x9, xzr, [sp, #40]
	sub	x8, x29, #16
	str	x8, [sp, #32]
Lloh6:
	adrp	x1, l___unnamed_2@PAGE
Lloh7:
	add	x1, x1, l___unnamed_2@PAGEOFF
	add	x0, sp, #16
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.cfi_endproc

	.globl	__ZN5mylib8bytecode11make_opcode17h06d79e875f4da2b5E
	.p2align	2
__ZN5mylib8bytecode11make_opcode17h06d79e875f4da2b5E:
	.cfi_startproc
	and	w0, w0, #0xff
	ret
	.cfi_endproc

	.globl	__ZN5mylib8bytecode14print_bytecode17h519a7f947fc6262bE
	.p2align	2
__ZN5mylib8bytecode14print_bytecode17h519a7f947fc6262bE:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	and	w8, w0, #0xf
	stur	w8, [x29, #-52]
	cmp	w8, #4
	b.hi	LBB6_11
Lloh8:
	adrp	x9, LJTI6_0@PAGE
Lloh9:
	add	x9, x9, LJTI6_0@PAGEOFF
	adr	x10, LBB6_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB6_2:
	lsr	w8, w0, #24
	str	w8, [sp, #56]
	ubfx	w8, w0, #4, #20
	stur	w8, [x29, #-52]
	add	x8, sp, #56
Lloh10:
	adrp	x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh11:
	ldr	x9, [x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x8, x9, [sp]
	sub	x8, x29, #52
	stp	x8, x9, [sp, #16]
Lloh12:
	adrp	x8, l___unnamed_3@PAGE
Lloh13:
	add	x8, x8, l___unnamed_3@PAGEOFF
	mov	w9, #3
	stp	x8, x9, [x29, #-48]
	stur	xzr, [x29, #-16]
	mov	x8, sp
	mov	w9, #2
	b	LBB6_7
LBB6_3:
	lsr	w9, w0, #24
	ubfx	w8, w0, #16, #8
	stp	w9, w8, [sp, #52]
	ubfx	w8, w0, #4, #12
	stur	w8, [x29, #-52]
	add	x8, sp, #52
Lloh14:
	adrp	x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh15:
	ldr	x9, [x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x8, x9, [x29, #-48]
	add	x8, sp, #56
	stp	x8, x9, [x29, #-32]
	sub	x8, x29, #52
	stp	x8, x9, [x29, #-16]
Lloh16:
	adrp	x8, l___unnamed_4@PAGE
Lloh17:
	add	x8, x8, l___unnamed_4@PAGEOFF
	b	LBB6_5
LBB6_4:
	lsr	w9, w0, #24
	ubfx	w8, w0, #16, #8
	stp	w9, w8, [sp, #52]
	ubfx	w8, w0, #4, #12
	stur	w8, [x29, #-52]
	add	x8, sp, #52
Lloh18:
	adrp	x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh19:
	ldr	x9, [x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x8, x9, [x29, #-48]
	add	x8, sp, #56
	stp	x8, x9, [x29, #-32]
	sub	x8, x29, #52
	stp	x8, x9, [x29, #-16]
Lloh20:
	adrp	x8, l___unnamed_5@PAGE
Lloh21:
	add	x8, x8, l___unnamed_5@PAGEOFF
LBB6_5:
	mov	w9, #4
	stp	x8, x9, [sp]
	sub	x8, x29, #48
	mov	w9, #3
	str	x8, [sp, #16]
	stp	x9, xzr, [sp, #24]
	mov	x0, sp
	b	LBB6_10
LBB6_6:
	lsr	w8, w0, #24
	stur	w8, [x29, #-52]
	sub	x8, x29, #52
Lloh22:
	adrp	x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh23:
	ldr	x9, [x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x8, x9, [sp]
Lloh24:
	adrp	x8, l___unnamed_6@PAGE
Lloh25:
	add	x8, x8, l___unnamed_6@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [x29, #-48]
	stur	xzr, [x29, #-16]
	mov	x8, sp
	mov	w9, #1
LBB6_7:
	stp	x8, x9, [x29, #-32]
	b	LBB6_9
LBB6_8:
Lloh26:
	adrp	x8, l___unnamed_7@PAGE
Lloh27:
	add	x8, x8, l___unnamed_7@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [x29, #-48]
Lloh28:
	adrp	x8, l___unnamed_8@PAGE
Lloh29:
	add	x8, x8, l___unnamed_8@PAGEOFF
	stp	xzr, xzr, [x29, #-24]
	stur	x8, [x29, #-32]
LBB6_9:
	sub	x0, x29, #48
LBB6_10:
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB6_11:
	.cfi_restore_state
Lloh30:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh31:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	sub	x9, x29, #52
	stp	x9, x8, [sp]
Lloh32:
	adrp	x8, l___unnamed_1@PAGE
Lloh33:
	add	x8, x8, l___unnamed_1@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [x29, #-48]
	stp	x9, xzr, [x29, #-24]
	mov	x8, sp
	stur	x8, [x29, #-32]
Lloh34:
	adrp	x1, l___unnamed_2@PAGE
Lloh35:
	add	x1, x1, l___unnamed_2@PAGEOFF
	sub	x0, x29, #48
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh30, Lloh31
	.cfi_endproc
	.section	__TEXT,__const
LJTI6_0:
	.byte	(LBB6_2-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_4-LBB6_2)>>2
	.byte	(LBB6_6-LBB6_2)>>2
	.byte	(LBB6_8-LBB6_2)>>2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mylib7convert7convert17h0d011be3ba11396cE
	.p2align	2
__ZN5mylib7convert7convert17h0d011be3ba11396cE:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x28, x27, [sp, #80]
	stp	x26, x25, [sp, #96]
	stp	x24, x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_remember_state
	str	x1, [sp]
	cbz	x1, LBB7_22
	mov	x19, x2
	mov	x21, x0
Lloh36:
	adrp	x22, LJTI7_0@PAGE
Lloh37:
	add	x22, x22, LJTI7_0@PAGEOFF
	mov	w25, #24
Lloh38:
	adrp	x26, __ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE@PAGE
Lloh39:
	add	x26, x26, __ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE@PAGEOFF
	ldr	x27, [sp]
Lloh40:
	adrp	x28, __ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE@PAGE
Lloh41:
	add	x28, x28, __ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE@PAGEOFF
	b	LBB7_4
LBB7_2:
	mov	w8, #0
	ldr	x9, [x19]
	madd	x9, x1, x25, x9
	str	x28, [x9]
	strh	wzr, [x9, #8]
LBB7_3:
	ubfx	x10, x20, #24, #8
	strb	w10, [x9, #16]
	strb	w8, [x9, #17]
	add	x8, x1, #1
	str	x8, [x19, #16]
	add	x21, x21, #4
	subs	x27, x27, #1
	b.eq	LBB7_22
LBB7_4:
	ldr	w20, [x21]
	and	x8, x20, #0xf
	str	w8, [sp, #12]
	cmp	w8, #4
	b.hi	LBB7_24
	adr	x9, LBB7_6
	ldrb	w10, [x22, x8]
	add	x9, x9, x10, lsl #2
	br	x9
LBB7_6:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB7_8
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE
	ldr	x1, [x19, #16]
LBB7_8:
	mov	w8, #0
	ubfx	w10, w20, #4, #20
	ldr	x9, [x19]
	madd	x9, x1, x25, x9
Lloh42:
	adrp	x11, __ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE@PAGE
Lloh43:
	add	x11, x11, __ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE@PAGEOFF
	str	x11, [x9]
	str	w10, [x9, #8]
	b	LBB7_3
LBB7_9:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB7_11
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE
	ldr	x1, [x19, #16]
LBB7_11:
	ubfx	w10, w20, #4, #12
	ubfx	x8, x20, #16, #16
	ldr	x9, [x19]
	madd	x9, x1, x25, x9
Lloh44:
	adrp	x11, __ZN5mylib20internal_instruction3add17hfdfc5affdb585608E@PAGE
Lloh45:
	add	x11, x11, __ZN5mylib20internal_instruction3add17hfdfc5affdb585608E@PAGEOFF
	str	x11, [x9]
	strh	w10, [x9, #8]
	b	LBB7_3
LBB7_12:
	ubfx	x23, x20, #4, #12
	ldr	x1, [x19, #16]
	cmp	x1, x23
	b.ls	LBB7_23
	ldp	x24, x8, [x19]
	cmp	x1, x8
	b.ne	LBB7_17
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE
	ldr	x1, [x19, #16]
	ldr	x9, [x19]
	b	LBB7_18
LBB7_15:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB7_2
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE
	ldr	x1, [x19, #16]
	b	LBB7_2
LBB7_17:
	mov	x9, x24
LBB7_18:
	umaddl	x10, w23, w25, x24
	lsr	w8, w20, #16
	madd	x9, x1, x25, x9
	stp	x26, x10, [x9]
	b	LBB7_3
LBB7_19:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB7_21
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h12f1f3efa6f8162eE
	ldr	x1, [x19, #16]
LBB7_21:
	ldr	x8, [x19]
	mov	w9, #24
Lloh46:
	adrp	x10, __ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E@PAGE
Lloh47:
	add	x10, x10, __ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E@PAGEOFF
	madd	x8, x1, x9, x8
	str	x10, [x8]
	strh	wzr, [x8, #8]
	strh	wzr, [x8, #16]
	add	x8, x1, #1
	str	x8, [x19, #16]
	.cfi_def_cfa wsp, 176
	ldp	x29, x30, [sp, #160]
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB7_22:
	.cfi_restore_state
Lloh48:
	adrp	x2, l___unnamed_9@PAGE
Lloh49:
	add	x2, x2, l___unnamed_9@PAGEOFF
	ldr	x0, [sp]
	mov	x1, x0
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB7_23:
	mov	w0, w23
Lloh50:
	adrp	x2, l___unnamed_10@PAGE
Lloh51:
	add	x2, x2, l___unnamed_10@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB7_24:
Lloh52:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh53:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	add	x9, sp, #12
	stp	x9, x8, [sp, #64]
Lloh54:
	adrp	x8, l___unnamed_1@PAGE
Lloh55:
	add	x8, x8, l___unnamed_1@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [sp, #16]
	stp	x9, xzr, [sp, #40]
	add	x8, sp, #64
	str	x8, [sp, #32]
Lloh56:
	adrp	x1, l___unnamed_2@PAGE
Lloh57:
	add	x1, x1, l___unnamed_2@PAGEOFF
	add	x0, sp, #16
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh52, Lloh53
	.cfi_endproc
	.section	__TEXT,__const
LJTI7_0:
	.byte	(LBB7_6-LBB7_6)>>2
	.byte	(LBB7_9-LBB7_6)>>2
	.byte	(LBB7_12-LBB7_6)>>2
	.byte	(LBB7_15-LBB7_6)>>2
	.byte	(LBB7_19-LBB7_6)>>2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE
	.p2align	2
__ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE:
	.cfi_startproc
	ldr	x3, [x0, #24]!
	ldur	w8, [x0, #-16]
	ldurb	w9, [x0, #-8]
	str	w8, [x1, x9, lsl #2]
	br	x3
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction3add17hfdfc5affdb585608E
	.p2align	2
__ZN5mylib20internal_instruction3add17hfdfc5affdb585608E:
	.cfi_startproc
	ldr	x3, [x0, #24]!
	ldurb	w8, [x0, #-7]
	ldr	w8, [x1, x8, lsl #2]
	ldurh	w9, [x0, #-16]
	ldr	w9, [x1, x9, lsl #2]
	ldurb	w10, [x0, #-8]
	add	w8, w9, w8
	str	w8, [x1, x10, lsl #2]
	br	x3
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE
	.p2align	2
__ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE:
	.cfi_startproc
	ldrb	w8, [x0, #16]
	ldrb	w9, [x0, #17]
	ldr	w8, [x1, x8, lsl #2]
	ldr	w9, [x1, x9, lsl #2]
	cmp	w8, w9
	b.ne	LBB10_2
	ldr	x3, [x0, #24]!
	br	x3
LBB10_2:
	ldr	x0, [x0, #8]
	ldr	x3, [x0]
	br	x3
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE
	.p2align	2
__ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x22, x21, [sp, #80]
	stp	x20, x19, [sp, #96]
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	ldrb	w8, [x0, #16]
	add	x8, x1, x8, lsl #2
	stur	x8, [x29, #-40]
	sub	x8, x29, #40
Lloh58:
	adrp	x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3109adbe0832e9d8E@PAGE
Lloh59:
	add	x9, x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3109adbe0832e9d8E@PAGEOFF
	stp	x8, x9, [sp, #56]
Lloh60:
	adrp	x8, l___unnamed_11@PAGE
Lloh61:
	add	x8, x8, l___unnamed_11@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #8]
	add	x8, sp, #56
	mov	w9, #1
	str	x8, [sp, #24]
	stp	x9, xzr, [sp, #32]
	add	x0, sp, #8
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	ldr	x8, [x21, #24]!
	mov	x0, x21
	mov	x1, x20
	mov	x2, x19
	blr	x8
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	ret
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E
	.p2align	2
__ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E:
	.cfi_startproc
	ret
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction7vm_loop17haddd5bc3d041d2d5E
	.p2align	2
__ZN5mylib20internal_instruction7vm_loop17haddd5bc3d041d2d5E:
	.cfi_startproc
	stp	x28, x27, [sp, #-48]!
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w27, -40
	.cfi_offset w28, -48
	.cfi_remember_state
	sub	sp, sp, #1024
	mov	x20, x1
	mov	x19, x0
	mov	x0, sp
	mov	w1, #1024
	bl	_bzero
	cbz	x20, LBB13_2
	ldr	x8, [x19]
	mov	x1, sp
	mov	x0, x19
	mov	w2, #256
	blr	x8
	add	sp, sp, #1024
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	ldp	x20, x19, [sp, #16]
	ldp	x28, x27, [sp], #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w27
	.cfi_restore w28
	ret
LBB13_2:
	.cfi_restore_state
Lloh62:
	adrp	x2, l___unnamed_12@PAGE
Lloh63:
	add	x2, x2, l___unnamed_12@PAGEOFF
	mov	x0, #0
	mov	x1, #0
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh62, Lloh63
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction26print_internal_instruction17h08409d53e9cfe78fE
	.p2align	2
__ZN5mylib20internal_instruction26print_internal_instruction17h08409d53e9cfe78fE:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #8]
	ldr	x8, [x0]
Lloh64:
	adrp	x9, __ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE@PAGE
Lloh65:
	add	x9, x9, __ZN5mylib20internal_instruction4load17hc8613acdbcd85fadE@PAGEOFF
	cmp	x8, x9
	b.eq	LBB14_6
Lloh66:
	adrp	x9, __ZN5mylib20internal_instruction3add17hfdfc5affdb585608E@PAGE
Lloh67:
	add	x9, x9, __ZN5mylib20internal_instruction3add17hfdfc5affdb585608E@PAGEOFF
	cmp	x8, x9
	b.eq	LBB14_7
Lloh68:
	adrp	x9, __ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE@PAGE
Lloh69:
	add	x9, x9, __ZN5mylib20internal_instruction5jmpne17h4120a944227d976bE@PAGEOFF
	cmp	x8, x9
	b.eq	LBB14_8
Lloh70:
	adrp	x9, __ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE@PAGE
Lloh71:
	add	x9, x9, __ZN5mylib20internal_instruction5print17h9c45c5ce5502e94dE@PAGEOFF
	cmp	x8, x9
	b.eq	LBB14_13
Lloh72:
	adrp	x9, __ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E@PAGE
Lloh73:
	add	x9, x9, __ZN5mylib20internal_instruction3ret17h160c8aea7ebab755E@PAGEOFF
	cmp	x8, x9
	b.ne	LBB14_12
	add	x8, sp, #8
Lloh74:
	adrp	x9, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGE
Lloh75:
	add	x9, x9, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGEOFF
	stp	x8, x9, [sp, #16]
Lloh76:
	adrp	x8, l___unnamed_13@PAGE
Lloh77:
	add	x8, x8, l___unnamed_13@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #64]
	str	xzr, [sp, #96]
	add	x8, sp, #16
	mov	w9, #1
	b	LBB14_14
LBB14_6:
	add	x8, x0, #16
	add	x9, x0, #8
	add	x10, sp, #8
Lloh78:
	adrp	x11, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGE
Lloh79:
	add	x11, x11, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGEOFF
	stp	x10, x11, [sp, #64]
Lloh80:
	adrp	x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh81:
	ldr	x10, [x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	stp	x8, x10, [sp, #80]
Lloh82:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh83:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x9, x8, [sp, #96]
Lloh84:
	adrp	x8, l___unnamed_14@PAGE
Lloh85:
	add	x8, x8, l___unnamed_14@PAGEOFF
	mov	w9, #4
	stp	x8, x9, [sp, #16]
	str	xzr, [sp, #48]
	add	x8, sp, #64
	mov	w9, #3
	b	LBB14_10
LBB14_7:
	add	x8, sp, #8
Lloh86:
	adrp	x9, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGE
Lloh87:
	add	x9, x9, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGEOFF
	stp	x8, x9, [sp, #64]
	add	x8, x0, #16
Lloh88:
	adrp	x9, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh89:
	ldr	x9, [x9, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	add	x10, x0, #17
	add	x11, x0, #8
	stp	x8, x9, [sp, #80]
	stp	x10, x9, [sp, #96]
Lloh90:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGE
Lloh91:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGEOFF]
	stp	x11, x8, [sp, #112]
Lloh92:
	adrp	x8, l___unnamed_15@PAGE
Lloh93:
	add	x8, x8, l___unnamed_15@PAGEOFF
	b	LBB14_9
LBB14_8:
Lloh94:
	adrp	x8, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGE
Lloh95:
	add	x8, x8, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGEOFF
	add	x9, sp, #8
	stp	x9, x8, [sp, #64]
	add	x9, x0, #16
Lloh96:
	adrp	x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh97:
	ldr	x10, [x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	add	x11, x0, #17
	add	x12, x0, #8
	stp	x9, x10, [sp, #80]
	stp	x11, x10, [sp, #96]
	stp	x12, x8, [sp, #112]
Lloh98:
	adrp	x8, l___unnamed_16@PAGE
Lloh99:
	add	x8, x8, l___unnamed_16@PAGEOFF
LBB14_9:
	mov	w9, #5
	stp	x8, x9, [sp, #16]
	str	xzr, [sp, #48]
	add	x8, sp, #64
	mov	w9, #4
LBB14_10:
	stp	x8, x9, [sp, #32]
	add	x0, sp, #16
LBB14_11:
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
LBB14_12:
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB14_13:
	.cfi_restore_state
	add	x8, x0, #16
	add	x9, sp, #8
Lloh100:
	adrp	x10, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGE
Lloh101:
	add	x10, x10, __ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17he028694e1c0d67e0E@PAGEOFF
	stp	x9, x10, [sp, #16]
Lloh102:
	adrp	x9, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh103:
	ldr	x9, [x9, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	stp	x8, x9, [sp, #32]
Lloh104:
	adrp	x8, l___unnamed_17@PAGE
Lloh105:
	add	x8, x8, l___unnamed_17@PAGEOFF
	mov	w9, #3
	stp	x8, x9, [sp, #64]
	str	xzr, [sp, #96]
	add	x8, sp, #16
	mov	w9, #2
LBB14_14:
	stp	x8, x9, [sp, #80]
	add	x0, sp, #64
	b	LBB14_11
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpLdrGot	Lloh82, Lloh83
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpLdrGot	Lloh90, Lloh91
	.loh AdrpLdrGot	Lloh88, Lloh89
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpLdrGot	Lloh96, Lloh97
	.loh AdrpAdd	Lloh94, Lloh95
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpLdrGot	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.cfi_endproc

	.globl	__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E
	.p2align	2
__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E:
	.cfi_startproc
	mov	x8, x1
	ldrb	w9, [x0]
	lsl	x9, x9, #3
Lloh106:
	adrp	x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E@PAGE
Lloh107:
	add	x10, x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E@PAGEOFF
	ldr	x2, [x10, x9]
Lloh108:
	adrp	x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E.14@PAGE
Lloh109:
	add	x10, x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E.14@PAGEOFF
	ldr	x1, [x10, x9]
	mov	x0, x8
	b	__ZN4core3fmt9Formatter9write_str17hf28662d815207628E
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh106, Lloh107
	.cfi_endproc

	.section	__TEXT,__const
	.p2align	3, 0x0
l___unnamed_8:
	.byte	0

l___unnamed_18:
	.ascii	"Unknown Opcode value: "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_1:
	.quad	l___unnamed_18
	.asciz	"\026\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_19:
	.ascii	"src/bytecode.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_2:
	.quad	l___unnamed_19
	.asciz	"\017\000\000\000\000\000\000\000 \000\000\000\022\000\000"

	.section	__TEXT,__const
l___unnamed_20:
	.ascii	"LOAD: memory["

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_21:
	.ascii	"] = "

	.section	__TEXT,__const
l___unnamed_22:
	.byte	10

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_3:
	.quad	l___unnamed_20
	.asciz	"\r\000\000\000\000\000\000"
	.quad	l___unnamed_21
	.asciz	"\004\000\000\000\000\000\000"
	.quad	l___unnamed_22
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_23:
	.ascii	"ADD: memory["

l___unnamed_24:
	.ascii	"] = memory["

l___unnamed_25:
	.ascii	"] + memory["

l___unnamed_26:
	.ascii	"]\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_4:
	.quad	l___unnamed_23
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_24
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_26
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_27:
	.ascii	"JMPNE: if memory["

l___unnamed_28:
	.ascii	"] != memory["

l___unnamed_29:
	.ascii	"] pc = "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_5:
	.quad	l___unnamed_27
	.asciz	"\021\000\000\000\000\000\000"
	.quad	l___unnamed_28
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\007\000\000\000\000\000\000"
	.quad	l___unnamed_22
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_30:
	.ascii	"PRINT: print memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_6:
	.quad	l___unnamed_30
	.asciz	"\024\000\000\000\000\000\000"
	.quad	l___unnamed_26
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_31:
	.ascii	"RET\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_7:
	.quad	l___unnamed_31
	.asciz	"\004\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_32:
	.ascii	"src/convert.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_9:
	.quad	l___unnamed_32
	.asciz	"\016\000\000\000\000\000\000\000\037\000\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_10:
	.quad	l___unnamed_32
	.asciz	"\016\000\000\000\000\000\000\000;\000\000\000\035\000\000"

	.p2align	3, 0x0
l___unnamed_11:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_22
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_33:
	.ascii	"src/internal_instruction.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_12:
	.quad	l___unnamed_33
	.asciz	"\033\000\000\000\000\000\000\000\321\000\000\000\006\000\000"

	.section	__TEXT,__const
l___unnamed_34:
	.ascii	": ret\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_13:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_34
	.asciz	"\006\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_35:
	.ascii	": print: print memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_17:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_35
	.asciz	"\026\000\000\000\000\000\000"
	.quad	l___unnamed_26
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_36:
	.ascii	": jmpne: if memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_16:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_36
	.asciz	"\023\000\000\000\000\000\000"
	.quad	l___unnamed_28
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\007\000\000\000\000\000\000"
	.quad	l___unnamed_22
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_37:
	.ascii	": add: memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_15:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_37
	.asciz	"\016\000\000\000\000\000\000"
	.quad	l___unnamed_24
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_26
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_38:
	.ascii	": load: memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_14:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_38
	.asciz	"\017\000\000\000\000\000\000"
	.quad	l___unnamed_21
	.asciz	"\004\000\000\000\000\000\000"
	.quad	l___unnamed_22
	.asciz	"\001\000\000\000\000\000\000"

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

	.p2align	3, 0x0
l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E:
	.quad	4
	.quad	3
	.quad	5
	.quad	5
	.quad	3

	.section	__DATA,__const
	.p2align	3, 0x0
l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hc45b1bccd4dc5201E.14:
	.quad	l___unnamed_39
	.quad	l___unnamed_40
	.quad	l___unnamed_41
	.quad	l___unnamed_42
	.quad	l___unnamed_43

.subsections_via_symbols
