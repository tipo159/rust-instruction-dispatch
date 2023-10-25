	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.p2align	2
__ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d72e10ad6cc3f5dE:
	.cfi_startproc
	ldr	x0, [x0]
	b	__ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec11finish_grow17h8714bd8f5a32921eE:
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
	cbz	x1, LBB1_8
	mov	x21, x1
	ldr	x8, [x3, #8]
	cbz	x8, LBB1_5
	ldr	x1, [x3, #16]
	cbz	x1, LBB1_5
	ldr	x0, [x3]
	mov	x2, x21
	mov	x3, x19
	bl	___rust_realloc
	cbnz	x0, LBB1_7
LBB1_4:
	str	x21, [x20, #8]
	b	LBB1_9
LBB1_5:
	cbz	x19, LBB1_11
Lloh0:
	adrp	x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
	ldrb	wzr, [x8]
	mov	x0, x19
	mov	x1, x21
	bl	___rust_alloc
	cbz	x0, LBB1_4
LBB1_7:
	mov	x8, #0
	str	x0, [x20, #8]
	b	LBB1_10
LBB1_8:
	str	xzr, [x20, #8]
LBB1_9:
	mov	w8, #1
LBB1_10:
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
LBB1_11:
	.cfi_restore_state
	mov	x0, x21
	cbnz	x21, LBB1_7
	b	LBB1_4
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E:
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
	b.hs	LBB2_5
	mov	x19, x0
	ldr	x8, [x0, #8]
	lsl	x10, x8, #1
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	w10, #4
	cmp	x9, #4
	csel	x20, x9, x10, hi
	lsl	x2, x20, #4
	lsr	x9, x20, #59
	cmp	x9, #0
	cset	w9, eq
	ubfiz	x1, x9, #3, #32
	cbz	x8, LBB2_6
	ldr	x9, [x19]
	lsl	x8, x8, #4
	mov	w10, #8
	stp	x9, x10, [sp, #24]
	str	x8, [sp, #40]
	mov	x0, sp
	add	x3, sp, #24
	bl	__ZN5alloc7raw_vec11finish_grow17h8714bd8f5a32921eE
	ldp	x8, x0, [sp]
	cbz	x8, LBB2_7
LBB2_3:
	mov	x8, #-9223372036854775807
	cmp	x0, x8
	b.eq	LBB2_8
	cbnz	x0, LBB2_9
LBB2_5:
	bl	__ZN5alloc7raw_vec17capacity_overflow17h465f58d66bf1461cE
LBB2_6:
	str	xzr, [sp, #32]
	mov	x0, sp
	add	x3, sp, #24
	bl	__ZN5alloc7raw_vec11finish_grow17h8714bd8f5a32921eE
	ldp	x8, x0, [sp]
	cbnz	x8, LBB2_3
LBB2_7:
	stp	x0, x20, [x19]
LBB2_8:
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
LBB2_9:
	.cfi_restore_state
	ldr	x1, [sp, #16]
	bl	__ZN5alloc5alloc18handle_alloc_error17he63473ab5d0e3fe6E
	.cfi_endproc

	.globl	__ZN5mylib8bytecode6Opcode8from_u3217h84c1eb4d740f1f14E
	.p2align	2
__ZN5mylib8bytecode6Opcode8from_u3217h84c1eb4d740f1f14E:
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
	b.hs	LBB3_2
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB3_2:
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

	.globl	__ZN5mylib8bytecode14print_bytecode17h2f04ed32ebb8ba3eE
	.p2align	2
__ZN5mylib8bytecode14print_bytecode17h2f04ed32ebb8ba3eE:
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
	b.hi	LBB4_11
Lloh8:
	adrp	x9, LJTI4_0@PAGE
Lloh9:
	add	x9, x9, LJTI4_0@PAGEOFF
	adr	x10, LBB4_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB4_2:
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
	b	LBB4_7
LBB4_3:
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
	b	LBB4_5
LBB4_4:
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
LBB4_5:
	mov	w9, #4
	stp	x8, x9, [sp]
	sub	x8, x29, #48
	mov	w9, #3
	str	x8, [sp, #16]
	stp	x9, xzr, [sp, #24]
	mov	x0, sp
	b	LBB4_10
LBB4_6:
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
LBB4_7:
	stp	x8, x9, [x29, #-32]
	b	LBB4_9
LBB4_8:
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
LBB4_9:
	sub	x0, x29, #48
LBB4_10:
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB4_11:
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
LJTI4_0:
	.byte	(LBB4_2-LBB4_2)>>2
	.byte	(LBB4_3-LBB4_2)>>2
	.byte	(LBB4_4-LBB4_2)>>2
	.byte	(LBB4_6-LBB4_2)>>2
	.byte	(LBB4_8-LBB4_2)>>2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mylib7convert7convert17hfab8bb1467217276E
	.p2align	2
__ZN5mylib7convert7convert17hfab8bb1467217276E:
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
	mov	x20, x1
	cbz	x1, LBB5_20
	mov	x19, x2
	mov	x21, x0
Lloh36:
	adrp	x22, LJTI5_0@PAGE
Lloh37:
	add	x22, x22, LJTI5_0@PAGEOFF
Lloh38:
	adrp	x23, __ZN5mylib20internal_instruction4load17h51982ade91e5ea13E@PAGE
Lloh39:
	add	x23, x23, __ZN5mylib20internal_instruction4load17h51982ade91e5ea13E@PAGEOFF
Lloh40:
	adrp	x24, __ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E@PAGE
Lloh41:
	add	x24, x24, __ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E@PAGEOFF
Lloh42:
	adrp	x25, __ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E@PAGE
Lloh43:
	add	x25, x25, __ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E@PAGEOFF
	mov	x26, x20
Lloh44:
	adrp	x27, __ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E@PAGE
Lloh45:
	add	x27, x27, __ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E@PAGEOFF
	b	LBB5_4
LBB5_2:
	mov	w8, #0
	ldr	x9, [x19]
	add	x9, x9, x1, lsl #4
	str	x27, [x9]
	strh	wzr, [x9, #8]
LBB5_3:
	lsr	w10, w28, #24
	strb	w10, [x9, #12]
	strb	w8, [x9, #13]
	add	x8, x1, #1
	str	x8, [x19, #16]
	add	x21, x21, #4
	subs	x26, x26, #1
	b.eq	LBB5_20
LBB5_4:
	ldr	w28, [x21]
	and	x8, x28, #0xf
	str	w8, [sp, #12]
	cmp	w8, #4
	b.hi	LBB5_21
	adr	x9, LBB5_6
	ldrb	w10, [x22, x8]
	add	x9, x9, x10, lsl #2
	br	x9
LBB5_6:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB5_8
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E
	ldr	x1, [x19, #16]
LBB5_8:
	mov	w8, #0
	ubfx	w10, w28, #4, #20
	ldr	x9, [x19]
	add	x9, x9, x1, lsl #4
	str	x23, [x9]
	str	w10, [x9, #8]
	b	LBB5_3
LBB5_9:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB5_11
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E
	ldr	x1, [x19, #16]
LBB5_11:
	ubfx	w10, w28, #4, #12
	lsr	w8, w28, #16
	ldr	x9, [x19]
	add	x9, x9, x1, lsl #4
	str	x24, [x9]
	strh	w10, [x9, #8]
	b	LBB5_3
LBB5_12:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB5_14
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E
	ldr	x1, [x19, #16]
LBB5_14:
	ubfx	w10, w28, #4, #12
	lsr	w8, w28, #16
	ldr	x9, [x19]
	add	x9, x9, x1, lsl #4
	str	x25, [x9]
	strh	w10, [x9, #8]
	b	LBB5_3
LBB5_15:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB5_2
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E
	ldr	x1, [x19, #16]
	b	LBB5_2
LBB5_17:
	ldp	x8, x1, [x19, #8]
	cmp	x1, x8
	b.ne	LBB5_19
	mov	x0, x19
	bl	__ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hff7fc496d937c781E
	ldr	x1, [x19, #16]
LBB5_19:
	ldr	x8, [x19]
Lloh46:
	adrp	x9, __ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E@PAGE
Lloh47:
	add	x9, x9, __ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E@PAGEOFF
	add	x8, x8, x1, lsl #4
	str	x9, [x8]
	strh	wzr, [x8, #8]
	strh	wzr, [x8, #12]
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
LBB5_20:
	.cfi_restore_state
Lloh48:
	adrp	x2, l___unnamed_9@PAGE
Lloh49:
	add	x2, x2, l___unnamed_9@PAGEOFF
	mov	x0, x20
	mov	x1, x20
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
LBB5_21:
Lloh50:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh51:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	add	x9, sp, #12
	stp	x9, x8, [sp, #64]
Lloh52:
	adrp	x8, l___unnamed_1@PAGE
Lloh53:
	add	x8, x8, l___unnamed_1@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [sp, #16]
	stp	x9, xzr, [sp, #40]
	add	x8, sp, #64
	str	x8, [sp, #32]
Lloh54:
	adrp	x1, l___unnamed_2@PAGE
Lloh55:
	add	x1, x1, l___unnamed_2@PAGEOFF
	add	x0, sp, #16
	bl	__ZN4core9panicking9panic_fmt17h3bbf9265d206434cE
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
	.cfi_endproc
	.section	__TEXT,__const
LJTI5_0:
	.byte	(LBB5_6-LBB5_6)>>2
	.byte	(LBB5_9-LBB5_6)>>2
	.byte	(LBB5_12-LBB5_6)>>2
	.byte	(LBB5_15-LBB5_6)>>2
	.byte	(LBB5_17-LBB5_6)>>2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mylib20internal_instruction4load17h51982ade91e5ea13E
	.p2align	2
__ZN5mylib20internal_instruction4load17h51982ade91e5ea13E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	mov	x8, x0
	ldr	x0, [x2]
	cmp	x0, x1
	b.hs	LBB6_2
	add	x8, x8, x0, lsl #4
	ldr	w9, [x8, #8]
	ldrb	w8, [x8, #12]
	str	w9, [x3, x8, lsl #2]
	add	x8, x0, #1
	str	x8, [x2]
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB6_2:
	.cfi_restore_state
Lloh56:
	adrp	x2, l___unnamed_10@PAGE
Lloh57:
	add	x2, x2, l___unnamed_10@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh56, Lloh57
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E
	.p2align	2
__ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	mov	x8, x0
	ldr	x0, [x2]
	cmp	x0, x1
	b.hs	LBB7_2
	add	x8, x8, x0, lsl #4
	ldrb	w9, [x8, #13]
	ldr	w9, [x3, x9, lsl #2]
	ldrh	w10, [x8, #8]
	ldr	w10, [x3, x10, lsl #2]
	ldrb	w8, [x8, #12]
	add	w9, w10, w9
	str	w9, [x3, x8, lsl #2]
	add	x8, x0, #1
	str	x8, [x2]
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB7_2:
	.cfi_restore_state
Lloh58:
	adrp	x2, l___unnamed_11@PAGE
Lloh59:
	add	x2, x2, l___unnamed_11@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh58, Lloh59
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E
	.p2align	2
__ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	mov	x8, x0
	ldr	x0, [x2]
	cmp	x0, x1
	b.hs	LBB8_5
	add	x8, x8, x0, lsl #4
	ldrb	w9, [x8, #12]
	ldrb	w10, [x8, #13]
	ldr	w9, [x3, x9, lsl #2]
	ldr	w10, [x3, x10, lsl #2]
	cmp	w9, w10
	b.ne	LBB8_3
	add	x8, x0, #1
	b	LBB8_4
LBB8_3:
	ldrh	w8, [x8, #8]
LBB8_4:
	str	x8, [x2]
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB8_5:
	.cfi_restore_state
Lloh60:
	adrp	x2, l___unnamed_12@PAGE
Lloh61:
	add	x2, x2, l___unnamed_12@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh60, Lloh61
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E
	.p2align	2
__ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x20, x19, [sp, #80]
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	ldr	x19, [x2]
	cmp	x19, x1
	b.hs	LBB9_2
	mov	x20, x2
	add	x8, x0, x19, lsl #4
	ldrb	w8, [x8, #12]
	add	x10, x3, x8, lsl #2
	sub	x8, x29, #24
Lloh62:
	adrp	x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d72e10ad6cc3f5dE@PAGE
Lloh63:
	add	x9, x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4d72e10ad6cc3f5dE@PAGEOFF
	stur	x8, [x29, #-40]
	stp	x9, x10, [x29, #-32]
Lloh64:
	adrp	x8, l___unnamed_13@PAGE
Lloh65:
	add	x8, x8, l___unnamed_13@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #8]
	sub	x8, x29, #40
	mov	w9, #1
	str	x8, [sp, #24]
	stp	x9, xzr, [sp, #32]
	add	x0, sp, #8
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
	add	x8, x19, #1
	str	x8, [x20]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	ldp	x20, x19, [sp, #80]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore w19
	.cfi_restore w20
	ret
LBB9_2:
	.cfi_restore_state
Lloh66:
	adrp	x2, l___unnamed_14@PAGE
Lloh67:
	add	x2, x2, l___unnamed_14@PAGEOFF
	mov	x0, x19
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh66, Lloh67
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E
	.p2align	2
__ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E:
	.cfi_startproc
	ldr	x8, [x2]
	add	x8, x8, #1
	str	x8, [x2]
	ret
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction7vm_loop17h0935e6b73314a88bE
	.p2align	2
__ZN5mylib20internal_instruction7vm_loop17h0935e6b73314a88bE:
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
	sub	sp, sp, #1040
	mov	x20, x2
	mov	x19, x1
	mov	x21, x0
	add	x0, sp, #8
	mov	w1, #1024
	bl	_bzero
	stur	xzr, [x29, #-40]
	cbz	x20, LBB11_4
	mov	x0, #0
LBB11_2:
	cmp	x0, x19
	b.hs	LBB11_5
	lsl	x8, x0, #4
	ldr	x8, [x21, x8]
	sub	x2, x29, #40
	add	x3, sp, #8
	mov	x0, x21
	mov	x1, x19
	mov	w4, #256
	blr	x8
	ldur	x0, [x29, #-40]
	cmp	x0, x20
	b.lo	LBB11_2
LBB11_4:
	add	sp, sp, #1040
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
LBB11_5:
	.cfi_restore_state
Lloh68:
	adrp	x2, l___unnamed_15@PAGE
Lloh69:
	add	x2, x2, l___unnamed_15@PAGEOFF
	mov	x1, x19
	bl	__ZN4core9panicking18panic_bounds_check17h498693eedff70cb4E
	.loh AdrpAdd	Lloh68, Lloh69
	.cfi_endproc

	.globl	__ZN5mylib20internal_instruction26print_internal_instruction17hde52f67874ce7368E
	.p2align	2
__ZN5mylib20internal_instruction26print_internal_instruction17hde52f67874ce7368E:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	ldr	x8, [x0]
Lloh70:
	adrp	x9, __ZN5mylib20internal_instruction4load17h51982ade91e5ea13E@PAGE
Lloh71:
	add	x9, x9, __ZN5mylib20internal_instruction4load17h51982ade91e5ea13E@PAGEOFF
	cmp	x8, x9
	b.eq	LBB12_6
Lloh72:
	adrp	x9, __ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E@PAGE
Lloh73:
	add	x9, x9, __ZN5mylib20internal_instruction3add17h7f3b39ab27287c29E@PAGEOFF
	cmp	x8, x9
	b.eq	LBB12_9
Lloh74:
	adrp	x9, __ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E@PAGE
Lloh75:
	add	x9, x9, __ZN5mylib20internal_instruction5jmpne17h8b702e99991189d2E@PAGEOFF
	cmp	x8, x9
	b.eq	LBB12_10
Lloh76:
	adrp	x9, __ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E@PAGE
Lloh77:
	add	x9, x9, __ZN5mylib20internal_instruction5print17hf224acc3010d6ec9E@PAGEOFF
	cmp	x8, x9
	b.eq	LBB12_14
Lloh78:
	adrp	x9, __ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E@PAGE
Lloh79:
	add	x9, x9, __ZN5mylib20internal_instruction3ret17h4e3767f4366bbef4E@PAGEOFF
	cmp	x8, x9
	b.ne	LBB12_13
Lloh80:
	adrp	x8, l___unnamed_16@PAGE
Lloh81:
	add	x8, x8, l___unnamed_16@PAGEOFF
	mov	w9, #1
	stp	x8, x9, [sp, #48]
Lloh82:
	adrp	x8, l___unnamed_8@PAGE
Lloh83:
	add	x8, x8, l___unnamed_8@PAGEOFF
	stp	xzr, xzr, [sp, #72]
	str	x8, [sp, #64]
	b	LBB12_8
LBB12_6:
	add	x8, x0, #12
	add	x9, x0, #8
Lloh84:
	adrp	x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh85:
	ldr	x10, [x10, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	stp	x8, x10, [sp]
Lloh86:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGE
Lloh87:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h86eb4398173913faE@GOTPAGEOFF]
	stp	x9, x8, [sp, #16]
Lloh88:
	adrp	x8, l___unnamed_17@PAGE
Lloh89:
	add	x8, x8, l___unnamed_17@PAGEOFF
	mov	w9, #3
	stp	x8, x9, [sp, #48]
	str	xzr, [sp, #80]
	mov	x8, sp
	mov	w9, #2
LBB12_7:
	stp	x8, x9, [sp, #64]
LBB12_8:
	add	x0, sp, #48
	b	LBB12_12
LBB12_9:
Lloh90:
	adrp	x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh91:
	ldr	x8, [x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	add	x9, x0, #12
	add	x10, x0, #13
	add	x11, x0, #8
	stp	x9, x8, [sp, #48]
	stp	x10, x8, [sp, #64]
Lloh92:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGE
Lloh93:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGEOFF]
	stp	x11, x8, [sp, #80]
Lloh94:
	adrp	x8, l___unnamed_18@PAGE
Lloh95:
	add	x8, x8, l___unnamed_18@PAGEOFF
	b	LBB12_11
LBB12_10:
Lloh96:
	adrp	x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh97:
	ldr	x8, [x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	add	x9, x0, #12
	add	x10, x0, #13
	add	x11, x0, #8
	stp	x9, x8, [sp, #48]
	stp	x10, x8, [sp, #64]
Lloh98:
	adrp	x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGE
Lloh99:
	ldr	x8, [x8, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h036c96fb40a1546eE@GOTPAGEOFF]
	stp	x11, x8, [sp, #80]
Lloh100:
	adrp	x8, l___unnamed_19@PAGE
Lloh101:
	add	x8, x8, l___unnamed_19@PAGEOFF
LBB12_11:
	mov	w9, #4
	stp	x8, x9, [sp]
	add	x8, sp, #48
	mov	w9, #3
	str	x8, [sp, #16]
	stp	x9, xzr, [sp, #24]
	mov	x0, sp
LBB12_12:
	bl	__ZN3std2io5stdio6_print17hb79efcbb9b8c1566E
LBB12_13:
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB12_14:
	.cfi_restore_state
Lloh102:
	adrp	x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGE
Lloh103:
	ldr	x8, [x8, __ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h9edd8454e574c069E@GOTPAGEOFF]
	add	x9, x0, #12
	stp	x9, x8, [sp]
Lloh104:
	adrp	x8, l___unnamed_20@PAGE
Lloh105:
	add	x8, x8, l___unnamed_20@PAGEOFF
	mov	w9, #2
	stp	x8, x9, [sp, #48]
	str	xzr, [sp, #80]
	mov	x8, sp
	mov	w9, #1
	b	LBB12_7
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpLdrGot	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpAdd	Lloh94, Lloh95
	.loh AdrpLdrGot	Lloh92, Lloh93
	.loh AdrpLdrGot	Lloh90, Lloh91
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpLdrGot	Lloh98, Lloh99
	.loh AdrpLdrGot	Lloh96, Lloh97
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpLdrGot	Lloh102, Lloh103
	.cfi_endproc

	.globl	__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE
	.p2align	2
__ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE:
	.cfi_startproc
	mov	x8, x1
	ldrb	w9, [x0]
	lsl	x9, x9, #3
Lloh106:
	adrp	x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE@PAGE
Lloh107:
	add	x10, x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE@PAGEOFF
	ldr	x2, [x10, x9]
Lloh108:
	adrp	x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE.12@PAGE
Lloh109:
	add	x10, x10, l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE.12@PAGEOFF
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

l___unnamed_21:
	.ascii	"Unknown Opcode value: "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_1:
	.quad	l___unnamed_21
	.asciz	"\026\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_22:
	.ascii	"src/bytecode.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_2:
	.quad	l___unnamed_22
	.asciz	"\017\000\000\000\000\000\000\000 \000\000\000\022\000\000"

	.section	__TEXT,__const
l___unnamed_23:
	.ascii	"LOAD: memory["

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_24:
	.ascii	"] = "

	.section	__TEXT,__const
l___unnamed_25:
	.byte	10

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_3:
	.quad	l___unnamed_23
	.asciz	"\r\000\000\000\000\000\000"
	.quad	l___unnamed_24
	.asciz	"\004\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_26:
	.ascii	"ADD: memory["

l___unnamed_27:
	.ascii	"] = memory["

l___unnamed_28:
	.ascii	"] + memory["

l___unnamed_29:
	.ascii	"]\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_4:
	.quad	l___unnamed_26
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_27
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_28
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_30:
	.ascii	"JMPNE: if memory["

l___unnamed_31:
	.ascii	"] != memory["

l___unnamed_32:
	.ascii	"] pc = "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_5:
	.quad	l___unnamed_30
	.asciz	"\021\000\000\000\000\000\000"
	.quad	l___unnamed_31
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_32
	.asciz	"\007\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_33:
	.ascii	"PRINT: print memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_6:
	.quad	l___unnamed_33
	.asciz	"\024\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_34:
	.ascii	"RET\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_7:
	.quad	l___unnamed_34
	.asciz	"\004\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_35:
	.ascii	"src/convert.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_9:
	.quad	l___unnamed_35
	.asciz	"\016\000\000\000\000\000\000\000\037\000\000\000\032\000\000"

	.section	__TEXT,__const
l___unnamed_36:
	.ascii	"src/internal_instruction.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_10:
	.quad	l___unnamed_36
	.asciz	"\033\000\000\000\000\000\000\000@\000\000\000\t\000\000"

	.p2align	3, 0x0
l___unnamed_11:
	.quad	l___unnamed_36
	.asciz	"\033\000\000\000\000\000\000\000m\000\000\000\032\000\000"

	.p2align	3, 0x0
l___unnamed_12:
	.quad	l___unnamed_36
	.asciz	"\033\000\000\000\000\000\000\000\226\000\000\000\030\000\000"

	.p2align	3, 0x0
l___unnamed_13:
	.quad	l___unnamed_8
	.space	8
	.quad	l___unnamed_25
	.asciz	"\001\000\000\000\000\000\000"

	.p2align	3, 0x0
l___unnamed_14:
	.quad	l___unnamed_36
	.asciz	"\033\000\000\000\000\000\000\000\271\000\000\000\031\000\000"

	.p2align	3, 0x0
l___unnamed_15:
	.quad	l___unnamed_36
	.asciz	"\033\000\000\000\000\000\000\000\345\000\000\000\n\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_37:
	.ascii	"ret\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_16:
	.quad	l___unnamed_37
	.asciz	"\004\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_38:
	.ascii	"print: print memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_20:
	.quad	l___unnamed_38
	.asciz	"\024\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_39:
	.ascii	"jmpne: if memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_19:
	.quad	l___unnamed_39
	.asciz	"\021\000\000\000\000\000\000"
	.quad	l___unnamed_31
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_32
	.asciz	"\007\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_40:
	.ascii	"add: memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_18:
	.quad	l___unnamed_40
	.asciz	"\f\000\000\000\000\000\000"
	.quad	l___unnamed_27
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_28
	.asciz	"\013\000\000\000\000\000\000"
	.quad	l___unnamed_29
	.asciz	"\002\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_41:
	.ascii	"load: memory["

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_17:
	.quad	l___unnamed_41
	.asciz	"\r\000\000\000\000\000\000"
	.quad	l___unnamed_24
	.asciz	"\004\000\000\000\000\000\000"
	.quad	l___unnamed_25
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__literal4,4byte_literals
l___unnamed_42:
	.ascii	"LOAD"

	.section	__TEXT,__const
l___unnamed_43:
	.ascii	"ADD"

l___unnamed_44:
	.ascii	"JMPNE"

l___unnamed_45:
	.ascii	"PRINT"

l___unnamed_46:
	.ascii	"RET"

	.p2align	3, 0x0
l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE:
	.quad	4
	.quad	3
	.quad	5
	.quad	5
	.quad	3

	.section	__DATA,__const
	.p2align	3, 0x0
l_switch.table._ZN60_$LT$mylib..bytecode..Opcode$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb270afcec8f708aE.12:
	.quad	l___unnamed_42
	.quad	l___unnamed_43
	.quad	l___unnamed_44
	.quad	l___unnamed_45
	.quad	l___unnamed_46

.subsections_via_symbols
