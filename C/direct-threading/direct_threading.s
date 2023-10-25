	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	1 "/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading" "direct_threading.c"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "time.h"
	.section	__DATA,__const
	.p2align	3, 0x0                          ; -- Begin function main
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
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	1 52 0                          ; direct_threading.c:52:0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #1120
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
Lloh0:
	adrp	x8, lCPI0_0@PAGE
Lloh1:
	ldr	x8, [x8, lCPI0_0@PAGEOFF]
Ltmp5:
	.loc	1 69 11 prologue_end            ; direct_threading.c:69:11
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
Lloh6:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh7:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh8:
	ldr	x9, [x9]
	fmov	d1, x8
Lloh9:
	adrp	x8, lCPI0_3@PAGE
Lloh10:
	ldr	x8, [x8, lCPI0_3@PAGEOFF]
	mov.d	v1[1], x8
	stur	x9, [x29, #-88]
	stp	q0, q1, [x29, #-128]
Lloh11:
	adrp	x8, lCPI0_4@PAGE
Lloh12:
	ldr	x8, [x8, lCPI0_4@PAGEOFF]
	stur	x8, [x29, #-96]
	add	x21, sp, #48
	.loc	1 72 9                          ; direct_threading.c:72:9
	add	x0, sp, #48
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp6:
	.loc	1 0 9 is_stmt 0                 ; direct_threading.c:0:9
	mov	w22, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
Lloh13:
	adrp	x23, l___const.main.program@PAGE
Lloh14:
	add	x23, x23, l___const.main.program@PAGEOFF
	;DEBUG_VALUE: i <- 0
Ltmp7:
	;DEBUG_VALUE: main:average <- 0
	;DEBUG_VALUE: main:pp <- undef
	sub	x24, x29, #128
Lloh15:
	adrp	x19, l_.str@PAGE
Lloh16:
	add	x19, x19, l_.str@PAGEOFF
	mov	w26, #51712                     ; =0xca00
	movk	w26, #15258, lsl #16
Lloh17:
	adrp	x20, l_.str.1@PAGE
Lloh18:
	add	x20, x20, l_.str.1@PAGEOFF
	mov	x27, x23
	b	LBB0_2
Ltmp8:
Ltmp4:                                  ; Block address taken
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	.loc	1 78 13 is_stmt 1               ; direct_threading.c:78:13
	cmp	w22, #10
	csel	x25, xzr, x25, eq
Ltmp9:
	;DEBUG_LABEL: do_ret
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 117 9                         ; direct_threading.c:117:9
	add	x1, sp, #16
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp10:
	.loc	1 118 28                        ; direct_threading.c:118:28
	ldp	x8, x9, [sp, #16]
	.loc	1 118 46 is_stmt 0              ; direct_threading.c:118:46
	ldp	x10, x11, [sp, #32]
	.loc	1 118 35                        ; direct_threading.c:118:35
	sub	x8, x8, x10
	.loc	1 118 67                        ; direct_threading.c:118:67
	madd	x8, x8, x26, x9
	.loc	1 118 84                        ; direct_threading.c:118:84
	sub	x8, x8, x11
	.loc	1 118 17                        ; direct_threading.c:118:17
	add	x25, x8, x25
Ltmp11:
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 119 9 is_stmt 1               ; direct_threading.c:119:9
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp12:
	.loc	1 76 68                         ; direct_threading.c:76:68
	add	w22, w22, #1
Ltmp13:
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:pp <- $x27
	.loc	1 76 5 is_stmt 0                ; direct_threading.c:76:5
	cmp	w22, #110
	b.eq	LBB0_7
Ltmp14:
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
	;DEBUG_VALUE: main:pp <- $x27
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: i <- $w22
	.loc	1 82 9 is_stmt 1                ; direct_threading.c:82:9
	add	x1, sp, #32
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp15:
	.loc	1 0 0 is_stmt 0                 ; direct_threading.c:0:0
	ldr	w8, [x27]
	and	x9, x8, #0xf
	ldr	x9, [x24, x9, lsl #3]
	br	x9
Ltmp16:
Ltmp0:                                  ; Block address taken
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	;DEBUG_LABEL: do_load
	.loc	1 88 38 is_stmt 1               ; direct_threading.c:88:38
	ubfx	w9, w8, #4, #20
	.loc	1 88 9 is_stmt 0                ; direct_threading.c:88:9
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	.loc	1 88 36                         ; direct_threading.c:88:36
	str	w9, [x21, x8]
Ltmp17:
	;DEBUG_VALUE: main:pp <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x27
	.loc	1 0 0                           ; direct_threading.c:0:0
	ldr	w8, [x27, #4]!
Ltmp18:
	and	x9, x8, #0xf
	ldr	x9, [x24, x9, lsl #3]
Ltmp19:
	;DEBUG_VALUE: main:pp <- $x27
	br	x9
Ltmp20:
Ltmp1:                                  ; Block address taken
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	;DEBUG_LABEL: do_add
	.loc	1 95 45 is_stmt 1               ; direct_threading.c:95:45
	ubfx	x9, x8, #16, #8
	.loc	1 95 38 is_stmt 0               ; direct_threading.c:95:38
	ldr	w9, [x21, x9, lsl #2]
	.loc	1 95 74                         ; direct_threading.c:95:74
	ubfx	x10, x8, #4, #12
	.loc	1 95 67                         ; direct_threading.c:95:67
	ldr	w10, [x21, x10, lsl #2]
	.loc	1 95 65                         ; direct_threading.c:95:65
	add	w9, w10, w9
	.loc	1 95 9                          ; direct_threading.c:95:9
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	.loc	1 95 36                         ; direct_threading.c:95:36
	str	w9, [x21, x8]
Ltmp21:
	;DEBUG_VALUE: main:pp <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x27
	.loc	1 0 0                           ; direct_threading.c:0:0
	ldr	w8, [x27, #4]!
Ltmp22:
	and	x9, x8, #0xf
	ldr	x9, [x24, x9, lsl #3]
Ltmp23:
	;DEBUG_VALUE: main:pp <- $x27
	br	x9
Ltmp24:
Ltmp2:                                  ; Block address taken
LBB0_5:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	;DEBUG_LABEL: do_jmpne
	.loc	1 102 20 is_stmt 1              ; direct_threading.c:102:20
	ubfx	x9, x8, #24, #8
	.loc	1 102 13 is_stmt 0              ; direct_threading.c:102:13
	ldr	w9, [x21, w9, uxtw #2]
	.loc	1 102 50                        ; direct_threading.c:102:50
	ubfx	w10, w8, #16, #8
	.loc	1 102 43                        ; direct_threading.c:102:43
	ldr	w10, [x21, w10, uxtw #2]
Ltmp25:
	.loc	1 102 13                        ; direct_threading.c:102:13
	ubfx	w8, w8, #4, #12
	sub	w8, w8, #1
	add	x8, x23, w8, uxtw #2
	cmp	w9, w10
	csel	x8, x27, x8, eq
Ltmp26:
	;DEBUG_VALUE: main:pp <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x8
	.loc	1 0 0                           ; direct_threading.c:0:0
	add	x27, x8, #4
	ldr	w8, [x27]
Ltmp27:
	and	x9, x8, #0xf
	ldr	x9, [x24, x9, lsl #3]
Ltmp28:
	;DEBUG_VALUE: main:pp <- $x27
	br	x9
Ltmp29:
Ltmp3:                                  ; Block address taken
LBB0_6:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	;DEBUG_LABEL: do_print
	.loc	1 111 31 is_stmt 1              ; direct_threading.c:111:31
	ubfx	x8, x8, #24, #8
	.loc	1 111 9 is_stmt 0               ; direct_threading.c:111:9
	ldr	w8, [x21, w8, uxtw #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
Ltmp30:
	;DEBUG_VALUE: main:pp <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x27
	.loc	1 0 0                           ; direct_threading.c:0:0
	ldr	w8, [x27, #4]!
Ltmp31:
	and	x9, x8, #0xf
	ldr	x9, [x24, x9, lsl #3]
Ltmp32:
	;DEBUG_VALUE: main:pp <- $x27
	br	x9
Ltmp33:
LBB0_7:
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pp <- $x27
	mov	x8, #55051                      ; =0xd70b
	movk	x8, #28835, lsl #16
	movk	x8, #2621, lsl #32
	movk	x8, #41943, lsl #48
	.loc	1 122 13 is_stmt 1              ; direct_threading.c:122:13
	smulh	x8, x25, x8
	add	x8, x8, x25
	asr	x9, x8, #6
	add	x8, x9, x8, lsr #63
Ltmp34:
	;DEBUG_VALUE: main:average <- $x8
	.loc	1 0 13 is_stmt 0                ; direct_threading.c:0:13
	mov	w9, #100                        ; =0x64
	.loc	1 123 5 is_stmt 1               ; direct_threading.c:123:5
	stp	x9, x8, [sp]
Lloh19:
	adrp	x0, l_.str.2@PAGE
Lloh20:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp35:
	.loc	1 0 5 is_stmt 0                 ; direct_threading.c:0:5
	ldur	x8, [x29, #-88]
Lloh21:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh22:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh23:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
Ltmp36:
; %bb.8:
	;DEBUG_VALUE: main:pp <- $x27
	.loc	1 124 1 is_stmt 1               ; direct_threading.c:124:1
	mov	w0, #0                          ; =0x0
	.loc	1 124 1 epilogue_begin is_stmt 0 ; direct_threading.c:124:1
	add	sp, sp, #1120
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
Ltmp37:
	ret
Ltmp38:
LBB0_9:
	;DEBUG_VALUE: main:pp <- $x27
	.loc	1 0 1                           ; direct_threading.c:0:1
	bl	___stack_chk_fail
Ltmp39:
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdr	Lloh11, Lloh12
	.loh AdrpLdr	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh6, Lloh7, Lloh8
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpLdr	Lloh0, Lloh1
	.loh AdrpLdrGotLdr	Lloh21, Lloh22, Lloh23
	.loh AdrpAdd	Lloh19, Lloh20
Lfunc_end0:
	.cfi_endproc
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/arm" "_types.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/sys/_types" "_timespec.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "stdio.h"
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
	.asciz	"%d\n"

l_.str.1:                               ; @.str.1
	.asciz	"Time elapsed: %10ld ns\n"

l_.str.2:                               ; @.str.2
	.asciz	"Average of %d results: %10ld ns\n"

	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Ltmp7-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp8-Lfunc_begin0
	.quad	Lset1
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset2, Ltmp8-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp34-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset4, Ltmp34-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp35-Lfunc_begin0
	.quad	Lset5
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Ltmp8-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp17-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset8, Ltmp17-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp18-Lfunc_begin0
	.quad	Lset9
	.short	3                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
.set Lset10, Ltmp19-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp21-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset12, Ltmp21-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp22-Lfunc_begin0
	.quad	Lset13
	.short	3                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp23-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp26-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset16, Ltmp26-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp27-Lfunc_begin0
	.quad	Lset17
	.short	3                               ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
.set Lset18, Ltmp28-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp30-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset20, Ltmp30-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp31-Lfunc_begin0
	.quad	Lset21
	.short	3                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
.set Lset22, Ltmp32-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp37-Lfunc_begin0
	.quad	Lset23
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset24, Ltmp38-Lfunc_begin0
	.quad	Lset24
.set Lset25, Lfunc_end0-Lfunc_begin0
	.quad	Lset25
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
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
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
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
	.byte	12                              ; Abbreviation Code
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
	.byte	13                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	10                              ; DW_TAG_label
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
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
	.byte	19                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
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
	.byte	21                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
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
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
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
.set Lset26, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset26
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset27, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset27
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x2cd DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.long	30                              ; DW_AT_name
	.long	49                              ; DW_AT_LLVM_sysroot
	.long	103                             ; DW_AT_APPLE_sdk
.set Lset28, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset28
	.long	116                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset29, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset29
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	111                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str
	.byte	3                               ; Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	181                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	186                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.1
	.byte	3                               ; Abbrev [3] 0x6e:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x73:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	24                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7a:0x11 DW_TAG_variable
	.long	139                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	123                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0x8b:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x90:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	33                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x97:0x39 DW_TAG_enumeration_type
	.long	208                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	2                               ; DW_AT_decl_file
	.byte	153                             ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0x9f:0x6 DW_TAG_enumerator
	.long	219                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xa5:0x6 DW_TAG_enumerator
	.long	235                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xab:0x6 DW_TAG_enumerator
	.long	252                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb1:0x6 DW_TAG_enumerator
	.long	273                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb7:0x6 DW_TAG_enumerator
	.long	301                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xbd:0x6 DW_TAG_enumerator
	.long	319                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc3:0x6 DW_TAG_enumerator
	.long	344                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc9:0x6 DW_TAG_enumerator
	.long	370                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xd0:0x7 DW_TAG_base_type
	.long	206                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0xd7:0x149 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset30, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset30
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	395                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	566                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0xf0:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	480                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	673                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0xff:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	495                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	686                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x10d:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	32
	.long	502                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	589                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x11b:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	511                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	589                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x129:0xf DW_TAG_variable
.set Lset31, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset31
	.long	520                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	633                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x138:0xf DW_TAG_variable
.set Lset32, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset32
	.long	528                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x147:0xb DW_TAG_variable
	.long	582                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	715                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x152:0x66 DW_TAG_lexical_block
	.quad	Ltmp8                           ; DW_AT_low_pc
.set Lset33, Ltmp33-Ltmp8               ; DW_AT_high_pc
	.long	Lset33
	.byte	10                              ; Abbrev [10] 0x15f:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	518                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	76                              ; DW_AT_decl_line
	.long	566                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x16c:0xf DW_TAG_label
	.long	542                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	113                             ; DW_AT_decl_line
	.quad	Ltmp9                           ; DW_AT_low_pc
	.byte	14                              ; Abbrev [14] 0x17b:0xf DW_TAG_label
	.long	549                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	84                              ; DW_AT_decl_line
	.quad	Ltmp16                          ; DW_AT_low_pc
	.byte	14                              ; Abbrev [14] 0x18a:0xf DW_TAG_label
	.long	557                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.quad	Ltmp20                          ; DW_AT_low_pc
	.byte	14                              ; Abbrev [14] 0x199:0xf DW_TAG_label
	.long	564                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.quad	Ltmp24                          ; DW_AT_low_pc
	.byte	14                              ; Abbrev [14] 0x1a8:0xf DW_TAG_label
	.long	573                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	107                             ; DW_AT_decl_line
	.quad	Ltmp29                          ; DW_AT_low_pc
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1b8:0x19 DW_TAG_call_site
	.long	544                             ; DW_AT_call_origin
	.quad	Ltmp10                          ; DW_AT_call_return_pc
	.byte	16                              ; Abbrev [16] 0x1c5:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	16                              ; Abbrev [16] 0x1ca:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	16
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1d1:0x14 DW_TAG_call_site
	.long	640                             ; DW_AT_call_origin
	.quad	Ltmp12                          ; DW_AT_call_return_pc
	.byte	16                              ; Abbrev [16] 0x1de:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1e5:0x19 DW_TAG_call_site
	.long	544                             ; DW_AT_call_origin
	.quad	Ltmp15                          ; DW_AT_call_return_pc
	.byte	16                              ; Abbrev [16] 0x1f2:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	16                              ; Abbrev [16] 0x1f7:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	32
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1fe:0x14 DW_TAG_call_site
	.long	640                             ; DW_AT_call_origin
	.quad	Ltmp30                          ; DW_AT_call_return_pc
	.byte	16                              ; Abbrev [16] 0x20b:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	131
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x212:0xd DW_TAG_call_site
	.long	640                             ; DW_AT_call_origin
	.quad	Ltmp35                          ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x220:0x16 DW_TAG_subprogram
	.long	400                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	178                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	566                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	19                              ; Abbrev [19] 0x22b:0x5 DW_TAG_formal_parameter
	.long	573                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x230:0x5 DW_TAG_formal_parameter
	.long	584                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x236:0x7 DW_TAG_base_type
	.long	414                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	20                              ; Abbrev [20] 0x23d:0xb DW_TAG_typedef
	.long	151                             ; DW_AT_type
	.long	418                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.byte	21                              ; Abbrev [21] 0x248:0x5 DW_TAG_pointer_type
	.long	589                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x24d:0x21 DW_TAG_structure_type
	.long	428                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	23                              ; Abbrev [23] 0x255:0xc DW_TAG_member
	.long	437                             ; DW_AT_name
	.long	622                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x261:0xc DW_TAG_member
	.long	465                             ; DW_AT_name
	.long	633                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x26e:0xb DW_TAG_typedef
	.long	633                             ; DW_AT_type
	.long	444                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x279:0x7 DW_TAG_base_type
	.long	460                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0x280:0x12 DW_TAG_subprogram
	.long	473                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	566                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	19                              ; Abbrev [19] 0x28b:0x5 DW_TAG_formal_parameter
	.long	658                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x290:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x292:0x5 DW_TAG_restrict_type
	.long	663                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x297:0x5 DW_TAG_pointer_type
	.long	668                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x29c:0x5 DW_TAG_const_type
	.long	79                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x2a1:0xc DW_TAG_array_type
	.long	685                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x2a6:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	5                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	27                              ; Abbrev [27] 0x2ad:0x1 DW_TAG_pointer_type
	.byte	3                               ; Abbrev [3] 0x2ae:0xd DW_TAG_array_type
	.long	566                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x2b3:0x7 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x2bb:0x5 DW_TAG_pointer_type
	.long	704                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x2c0:0xb DW_TAG_typedef
	.long	208                             ; DW_AT_type
	.long	531                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x2cb:0xc DW_TAG_array_type
	.long	704                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x2d0:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.3" ; string offset=0
	.asciz	"direct_threading.c"            ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=49
	.asciz	"MacOSX14.sdk"                  ; string offset=103
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/direct-threading" ; string offset=116
	.asciz	"char"                          ; string offset=181
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=186
	.asciz	"unsigned int"                  ; string offset=206
	.asciz	"_CLOCK_REALTIME"               ; string offset=219
	.asciz	"_CLOCK_MONOTONIC"              ; string offset=235
	.asciz	"_CLOCK_MONOTONIC_RAW"          ; string offset=252
	.asciz	"_CLOCK_MONOTONIC_RAW_APPROX"   ; string offset=273
	.asciz	"_CLOCK_UPTIME_RAW"             ; string offset=301
	.asciz	"_CLOCK_UPTIME_RAW_APPROX"      ; string offset=319
	.asciz	"_CLOCK_PROCESS_CPUTIME_ID"     ; string offset=344
	.asciz	"_CLOCK_THREAD_CPUTIME_ID"      ; string offset=370
	.asciz	"main"                          ; string offset=395
	.asciz	"clock_gettime"                 ; string offset=400
	.asciz	"int"                           ; string offset=414
	.asciz	"clockid_t"                     ; string offset=418
	.asciz	"timespec"                      ; string offset=428
	.asciz	"tv_sec"                        ; string offset=437
	.asciz	"__darwin_time_t"               ; string offset=444
	.asciz	"long"                          ; string offset=460
	.asciz	"tv_nsec"                       ; string offset=465
	.asciz	"printf"                        ; string offset=473
	.asciz	"dispatch_table"                ; string offset=480
	.asciz	"memory"                        ; string offset=495
	.asciz	"ts_start"                      ; string offset=502
	.asciz	"ts_end"                        ; string offset=511
	.asciz	"i"                             ; string offset=518
	.asciz	"average"                       ; string offset=520
	.asciz	"pp"                            ; string offset=528
	.asciz	"bytecode_t"                    ; string offset=531
	.asciz	"do_ret"                        ; string offset=542
	.asciz	"do_load"                       ; string offset=549
	.asciz	"do_add"                        ; string offset=557
	.asciz	"do_jmpne"                      ; string offset=564
	.asciz	"do_print"                      ; string offset=573
	.asciz	"program"                       ; string offset=582
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	1                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	2090499946                      ; Hash in Bucket 0
.set Lset34, LNames0-Lnames_begin       ; Offset in Bucket 0
	.long	Lset34
LNames0:
	.long	395                             ; main
	.long	1                               ; Num DIEs
	.long	215
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
	.long	9                               ; Header Bucket Count
	.long	9                               ; Header Hash Count
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
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	3                               ; Bucket 3
	.long	4                               ; Bucket 4
	.long	5                               ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	7                               ; Bucket 7
	.long	8                               ; Bucket 8
	.long	-113466703                      ; Hash in Bucket 0
	.long	739847143                       ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 2
	.long	2090479413                      ; Hash in Bucket 3
	.long	567385087                       ; Hash in Bucket 4
	.long	-1304652851                     ; Hash in Bucket 5
	.long	-594775205                      ; Hash in Bucket 5
	.long	-243996567                      ; Hash in Bucket 7
	.long	2090147939                      ; Hash in Bucket 8
.set Lset35, Ltypes4-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset35
.set Lset36, Ltypes8-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset36
.set Lset37, Ltypes3-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset37
.set Lset38, Ltypes7-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset38
.set Lset39, Ltypes5-Ltypes_begin       ; Offset in Bucket 4
	.long	Lset39
.set Lset40, Ltypes2-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset40
.set Lset41, Ltypes1-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset41
.set Lset42, Ltypes6-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset42
.set Lset43, Ltypes0-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset43
Ltypes4:
	.long	418                             ; clockid_t
	.long	1                               ; Num DIEs
	.long	573
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	531                             ; bytecode_t
	.long	1                               ; Num DIEs
	.long	704
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	414                             ; int
	.long	1                               ; Num DIEs
	.long	566
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	460                             ; long
	.long	1                               ; Num DIEs
	.long	633
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	428                             ; timespec
	.long	1                               ; Num DIEs
	.long	589
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	206                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	208
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	186                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	444                             ; __darwin_time_t
	.long	1                               ; Num DIEs
	.long	622
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	181                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
