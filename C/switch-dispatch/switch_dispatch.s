	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.file	1 "/Users/kawar/GitHub/rust-instruction-dispatch/C/switch-dispatch" "switch_dispatch.c"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "time.h"
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	1 47 0                          ; switch_dispatch.c:47:0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #1088
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
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	add	x21, sp, #56
Ltmp0:
	.loc	1 61 9 prologue_end             ; switch_dispatch.c:61:9
	add	x0, sp, #56
	mov	w1, #1024                       ; =0x400
	bl	_bzero
Ltmp1:
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: main:average <- 0
	.loc	1 0 9 is_stmt 0                 ; switch_dispatch.c:0:9
	mov	w22, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
Lloh3:
	adrp	x23, l___const.main.program@PAGE
Lloh4:
	add	x23, x23, l___const.main.program@PAGEOFF
	mov	w24, #51712                     ; =0xca00
	movk	w24, #15258, lsl #16
Lloh5:
	adrp	x19, l_.str.1@PAGE
Lloh6:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh7:
	adrp	x26, LJTI0_0@PAGE
Lloh8:
	add	x26, x26, LJTI0_0@PAGEOFF
Lloh9:
	adrp	x20, l_.str@PAGE
Lloh10:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_2
Ltmp2:
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 67 13 is_stmt 1               ; switch_dispatch.c:67:13
	cmp	w22, #10
	csel	x25, xzr, x25, eq
Ltmp3:
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 97 9                          ; switch_dispatch.c:97:9
	add	x1, sp, #24
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp4:
	.loc	1 98 28                         ; switch_dispatch.c:98:28
	ldp	x8, x9, [sp, #24]
	.loc	1 98 46 is_stmt 0               ; switch_dispatch.c:98:46
	ldp	x10, x11, [sp, #40]
	.loc	1 98 35                         ; switch_dispatch.c:98:35
	sub	x8, x8, x10
	.loc	1 98 67                         ; switch_dispatch.c:98:67
	madd	x8, x8, x24, x9
	.loc	1 98 84                         ; switch_dispatch.c:98:84
	sub	x8, x8, x11
	.loc	1 98 17                         ; switch_dispatch.c:98:17
	add	x25, x8, x25
Ltmp5:
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 99 9 is_stmt 1                ; switch_dispatch.c:99:9
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
Ltmp6:
	.loc	1 65 68                         ; switch_dispatch.c:65:68
	add	w22, w22, #1
Ltmp7:
	;DEBUG_VALUE: i <- $w22
	.loc	1 65 5 is_stmt 0                ; switch_dispatch.c:65:5
	cmp	w22, #110
	b.eq	LBB0_12
Ltmp8:
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: i <- $w22
	.loc	1 71 9 is_stmt 1                ; switch_dispatch.c:71:9
	add	x1, sp, #40
	mov	w0, #4                          ; =0x4
	bl	_clock_gettime
Ltmp9:
	;DEBUG_VALUE: main:pc <- 0
	.loc	1 0 9 is_stmt 0                 ; switch_dispatch.c:0:9
	mov	w27, #0                         ; =0x0
	b	LBB0_6
Ltmp10:
LBB0_3:                                 ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 78 54 is_stmt 1               ; switch_dispatch.c:78:54
	ubfx	w9, w8, #4, #20
Ltmp11:
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 0 0 is_stmt 0                 ; switch_dispatch.c:0:0
	lsr	x8, x8, #22
	and	x8, x8, #0x3fc
	str	w9, [x21, x8]
Ltmp12:
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 95 16 is_stmt 1               ; switch_dispatch.c:95:16
	add	w27, w27, #1
Ltmp13:
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 73 9                          ; switch_dispatch.c:73:9
	cmp	w27, #7
	b.hs	LBB0_1
Ltmp14:
LBB0_6:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 75 21                         ; switch_dispatch.c:75:21
	ldr	w8, [x23, w27, uxtw #2]
	.loc	1 75 13 is_stmt 0               ; switch_dispatch.c:75:13
	and	x9, x8, #0xf
	cmp	w9, #3
	b.hi	LBB0_5
Ltmp15:
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 0 13                          ; switch_dispatch.c:0:13
	adr	x10, LBB0_3
	ldrb	w11, [x26, x9]
	add	x10, x10, x11, lsl #2
	br	x10
Ltmp16:
LBB0_8:                                 ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 81 61 is_stmt 1               ; switch_dispatch.c:81:61
	ubfx	x9, x8, #16, #8
	.loc	1 81 54 is_stmt 0               ; switch_dispatch.c:81:54
	ldr	w9, [x21, x9, lsl #2]
	.loc	1 81 98                         ; switch_dispatch.c:81:98
	ubfx	x10, x8, #4, #12
	.loc	1 81 91                         ; switch_dispatch.c:81:91
	ldr	w10, [x21, x10, lsl #2]
	.loc	1 81 89                         ; switch_dispatch.c:81:89
	add	w9, w10, w9
	b	LBB0_4
Ltmp17:
LBB0_9:                                 ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 84 28 is_stmt 1               ; switch_dispatch.c:84:28
	ubfx	x9, x8, #24, #8
	.loc	1 84 21 is_stmt 0               ; switch_dispatch.c:84:21
	ldr	w9, [x21, w9, uxtw #2]
	.loc	1 84 66                         ; switch_dispatch.c:84:66
	ubfx	w10, w8, #16, #8
	.loc	1 84 59                         ; switch_dispatch.c:84:59
	ldr	w10, [x21, w10, uxtw #2]
Ltmp18:
	.loc	1 84 21                         ; switch_dispatch.c:84:21
	cmp	w9, w10
	b.eq	LBB0_5
Ltmp19:
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 86 26 is_stmt 1               ; switch_dispatch.c:86:26
	ubfx	w8, w8, #4, #12
	.loc	1 86 55 is_stmt 0               ; switch_dispatch.c:86:55
	sub	w27, w8, #1
Ltmp20:
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 0 55                          ; switch_dispatch.c:0:55
	b	LBB0_5
Ltmp21:
LBB0_11:                                ;   in Loop: Header=BB0_6 Depth=2
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: i <- $w22
	;DEBUG_VALUE: main:average <- $x25
	.loc	1 90 39 is_stmt 1               ; switch_dispatch.c:90:39
	ubfx	x8, x8, #24, #8
	.loc	1 90 17 is_stmt 0               ; switch_dispatch.c:90:17
	ldr	w8, [x21, w8, uxtw #2]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp22:
	.loc	1 0 17                          ; switch_dispatch.c:0:17
	b	LBB0_5
Ltmp23:
LBB0_12:
	;DEBUG_VALUE: main:pc <- $w27
	;DEBUG_VALUE: main:average <- $x25
	mov	x8, #55051                      ; =0xd70b
	movk	x8, #28835, lsl #16
	movk	x8, #2621, lsl #32
	movk	x8, #41943, lsl #48
	.loc	1 102 13 is_stmt 1              ; switch_dispatch.c:102:13
	smulh	x8, x25, x8
	add	x8, x8, x25
	asr	x9, x8, #6
	add	x8, x9, x8, lsr #63
Ltmp24:
	;DEBUG_VALUE: main:average <- $x8
	.loc	1 0 13 is_stmt 0                ; switch_dispatch.c:0:13
	mov	w9, #100                        ; =0x64
	.loc	1 103 5 is_stmt 1               ; switch_dispatch.c:103:5
	stp	x9, x8, [sp]
Lloh11:
	adrp	x0, l_.str.2@PAGE
Lloh12:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp25:
	.loc	1 0 5 is_stmt 0                 ; switch_dispatch.c:0:5
	ldur	x8, [x29, #-88]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
Ltmp26:
; %bb.13:
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 104 1 is_stmt 1               ; switch_dispatch.c:104:1
	mov	w0, #0                          ; =0x0
	.loc	1 104 1 epilogue_begin is_stmt 0 ; switch_dispatch.c:104:1
	add	sp, sp, #1088
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
Ltmp27:
	ret
Ltmp28:
LBB0_14:
	;DEBUG_VALUE: main:pc <- $w27
	.loc	1 0 1                           ; switch_dispatch.c:0:1
	bl	___stack_chk_fail
Ltmp29:
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpAdd	Lloh11, Lloh12
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__const
LJTI0_0:
	.byte	(LBB0_3-LBB0_3)>>2
	.byte	(LBB0_8-LBB0_3)>>2
	.byte	(LBB0_9-LBB0_3)>>2
	.byte	(LBB0_11-LBB0_3)>>2
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/arm" "_types.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/sys/_types" "_timespec.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include" "stdio.h"
                                        ; -- End function
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
.set Lset0, Ltmp1-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp2-Lfunc_begin0
	.quad	Lset1
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset2, Ltmp2-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp24-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset4, Ltmp24-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp25-Lfunc_begin0
	.quad	Lset5
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Ltmp2-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp8-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset8, Ltmp9-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp10-Lfunc_begin0
	.quad	Lset9
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset10, Ltmp10-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp27-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset12, Ltmp28-Lfunc_begin0
	.quad	Lset12
.set Lset13, Lfunc_end0-Lfunc_begin0
	.quad	Lset13
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
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
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
	.byte	20                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
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
	.byte	22                              ; Abbreviation Code
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
	.byte	23                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
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
.set Lset14, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset14
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset15, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset15
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x288 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	29                              ; DW_AT_language
	.long	30                              ; DW_AT_name
	.long	48                              ; DW_AT_LLVM_sysroot
	.long	102                             ; DW_AT_APPLE_sdk
.set Lset16, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset16
	.long	115                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset17, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset17
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
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
	.long	179                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	184                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	99                              ; DW_AT_decl_line
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
	.byte	103                             ; DW_AT_decl_line
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
	.long	217                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xa5:0x6 DW_TAG_enumerator
	.long	233                             ; DW_AT_name
	.byte	6                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xab:0x6 DW_TAG_enumerator
	.long	250                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb1:0x6 DW_TAG_enumerator
	.long	271                             ; DW_AT_name
	.byte	5                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xb7:0x6 DW_TAG_enumerator
	.long	299                             ; DW_AT_name
	.byte	8                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xbd:0x6 DW_TAG_enumerator
	.long	317                             ; DW_AT_name
	.byte	9                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc3:0x6 DW_TAG_enumerator
	.long	342                             ; DW_AT_name
	.byte	12                              ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xc9:0x6 DW_TAG_enumerator
	.long	368                             ; DW_AT_name
	.byte	16                              ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xd0:0x7 DW_TAG_base_type
	.long	204                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0xd7:0x27 DW_TAG_enumeration_type
	.long	208                             ; DW_AT_type
	.byte	4                               ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xdf:0x6 DW_TAG_enumerator
	.long	393                             ; DW_AT_name
	.byte	0                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xe5:0x6 DW_TAG_enumerator
	.long	401                             ; DW_AT_name
	.byte	1                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xeb:0x6 DW_TAG_enumerator
	.long	408                             ; DW_AT_name
	.byte	2                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf1:0x6 DW_TAG_enumerator
	.long	417                             ; DW_AT_name
	.byte	3                               ; DW_AT_const_value
	.byte	8                               ; Abbrev [8] 0xf7:0x6 DW_TAG_enumerator
	.long	426                             ; DW_AT_name
	.byte	4                               ; DW_AT_const_value
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xfe:0xef DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset18, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset18
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	433                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	515                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x117:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	56
	.long	518                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.long	622                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x125:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	40
	.long	525                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	538                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x133:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	534                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	538                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x141:0xf DW_TAG_variable
.set Lset19, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset19
	.long	543                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	582                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x150:0xf DW_TAG_variable
.set Lset20, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset20
	.long	551                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	60                              ; DW_AT_decl_line
	.long	515                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x15f:0xb DW_TAG_variable
	.long	554                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	635                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x16a:0x1b DW_TAG_lexical_block
	.quad	Ltmp2                           ; DW_AT_low_pc
.set Lset21, Ltmp23-Ltmp2               ; DW_AT_high_pc
	.long	Lset21
	.byte	10                              ; Abbrev [10] 0x177:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	541                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	515                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x185:0x19 DW_TAG_call_site
	.long	493                             ; DW_AT_call_origin
	.quad	Ltmp4                           ; DW_AT_call_return_pc
	.byte	15                              ; Abbrev [15] 0x192:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	15                              ; Abbrev [15] 0x197:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	24
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x19e:0x14 DW_TAG_call_site
	.long	589                             ; DW_AT_call_origin
	.quad	Ltmp6                           ; DW_AT_call_return_pc
	.byte	15                              ; Abbrev [15] 0x1ab:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	131
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x1b2:0x19 DW_TAG_call_site
	.long	493                             ; DW_AT_call_origin
	.quad	Ltmp9                           ; DW_AT_call_return_pc
	.byte	15                              ; Abbrev [15] 0x1bf:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	1                               ; DW_AT_call_value
	.byte	52
	.byte	15                              ; Abbrev [15] 0x1c4:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	40
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x1cb:0x14 DW_TAG_call_site
	.long	589                             ; DW_AT_call_origin
	.quad	Ltmp22                          ; DW_AT_call_return_pc
	.byte	15                              ; Abbrev [15] 0x1d8:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x1df:0xd DW_TAG_call_site
	.long	589                             ; DW_AT_call_origin
	.quad	Ltmp25                          ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x1ed:0x16 DW_TAG_subprogram
	.long	438                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	178                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	515                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	18                              ; Abbrev [18] 0x1f8:0x5 DW_TAG_formal_parameter
	.long	522                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x1fd:0x5 DW_TAG_formal_parameter
	.long	533                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x203:0x7 DW_TAG_base_type
	.long	452                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	19                              ; Abbrev [19] 0x20a:0xb DW_TAG_typedef
	.long	151                             ; DW_AT_type
	.long	456                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.byte	20                              ; Abbrev [20] 0x215:0x5 DW_TAG_pointer_type
	.long	538                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x21a:0x21 DW_TAG_structure_type
	.long	466                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x222:0xc DW_TAG_member
	.long	475                             ; DW_AT_name
	.long	571                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	22                              ; Abbrev [22] 0x22e:0xc DW_TAG_member
	.long	503                             ; DW_AT_name
	.long	582                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x23b:0xb DW_TAG_typedef
	.long	582                             ; DW_AT_type
	.long	482                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x246:0x7 DW_TAG_base_type
	.long	498                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	17                              ; Abbrev [17] 0x24d:0x12 DW_TAG_subprogram
	.long	511                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	167                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	515                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	18                              ; Abbrev [18] 0x258:0x5 DW_TAG_formal_parameter
	.long	607                             ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x25d:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x25f:0x5 DW_TAG_restrict_type
	.long	612                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x264:0x5 DW_TAG_pointer_type
	.long	617                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x269:0x5 DW_TAG_const_type
	.long	79                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x26e:0xd DW_TAG_array_type
	.long	515                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x273:0x7 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x27b:0xc DW_TAG_array_type
	.long	647                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x280:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	7                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x287:0xb DW_TAG_typedef
	.long	208                             ; DW_AT_type
	.long	562                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 17.0.3" ; string offset=0
	.asciz	"switch_dispatch.c"             ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk" ; string offset=48
	.asciz	"MacOSX14.sdk"                  ; string offset=102
	.asciz	"/Users/kawar/GitHub/rust-instruction-dispatch/C/switch-dispatch" ; string offset=115
	.asciz	"char"                          ; string offset=179
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=184
	.asciz	"unsigned int"                  ; string offset=204
	.asciz	"_CLOCK_REALTIME"               ; string offset=217
	.asciz	"_CLOCK_MONOTONIC"              ; string offset=233
	.asciz	"_CLOCK_MONOTONIC_RAW"          ; string offset=250
	.asciz	"_CLOCK_MONOTONIC_RAW_APPROX"   ; string offset=271
	.asciz	"_CLOCK_UPTIME_RAW"             ; string offset=299
	.asciz	"_CLOCK_UPTIME_RAW_APPROX"      ; string offset=317
	.asciz	"_CLOCK_PROCESS_CPUTIME_ID"     ; string offset=342
	.asciz	"_CLOCK_THREAD_CPUTIME_ID"      ; string offset=368
	.asciz	"OP_LOAD"                       ; string offset=393
	.asciz	"OP_ADD"                        ; string offset=401
	.asciz	"OP_JMPNE"                      ; string offset=408
	.asciz	"OP_PRINT"                      ; string offset=417
	.asciz	"OP_RET"                        ; string offset=426
	.asciz	"main"                          ; string offset=433
	.asciz	"clock_gettime"                 ; string offset=438
	.asciz	"int"                           ; string offset=452
	.asciz	"clockid_t"                     ; string offset=456
	.asciz	"timespec"                      ; string offset=466
	.asciz	"tv_sec"                        ; string offset=475
	.asciz	"__darwin_time_t"               ; string offset=482
	.asciz	"long"                          ; string offset=498
	.asciz	"tv_nsec"                       ; string offset=503
	.asciz	"printf"                        ; string offset=511
	.asciz	"memory"                        ; string offset=518
	.asciz	"ts_start"                      ; string offset=525
	.asciz	"ts_end"                        ; string offset=534
	.asciz	"i"                             ; string offset=541
	.asciz	"average"                       ; string offset=543
	.asciz	"pc"                            ; string offset=551
	.asciz	"program"                       ; string offset=554
	.asciz	"bytecode_t"                    ; string offset=562
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
.set Lset22, LNames0-Lnames_begin       ; Offset in Bucket 0
	.long	Lset22
LNames0:
	.long	433                             ; main
	.long	1                               ; Num DIEs
	.long	254
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
.set Lset23, Ltypes4-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset23
.set Lset24, Ltypes8-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset24
.set Lset25, Ltypes3-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset25
.set Lset26, Ltypes7-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset26
.set Lset27, Ltypes5-Ltypes_begin       ; Offset in Bucket 4
	.long	Lset27
.set Lset28, Ltypes2-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset28
.set Lset29, Ltypes1-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset29
.set Lset30, Ltypes6-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset30
.set Lset31, Ltypes0-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset31
Ltypes4:
	.long	456                             ; clockid_t
	.long	1                               ; Num DIEs
	.long	522
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	562                             ; bytecode_t
	.long	1                               ; Num DIEs
	.long	647
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	452                             ; int
	.long	1                               ; Num DIEs
	.long	515
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	498                             ; long
	.long	1                               ; Num DIEs
	.long	582
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	466                             ; timespec
	.long	1                               ; Num DIEs
	.long	538
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	204                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	208
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	184                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	482                             ; __darwin_time_t
	.long	1                               ; Num DIEs
	.long	571
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	179                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
