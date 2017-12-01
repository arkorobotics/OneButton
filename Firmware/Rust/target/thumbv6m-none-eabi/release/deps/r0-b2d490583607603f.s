	.text
	.syntax unified
	.eabi_attribute	67, "2.09"
	.eabi_attribute	6, 12
	.eabi_attribute	8, 0
	.eabi_attribute	9, 1
	.eabi_attribute	17, 1
	.eabi_attribute	20, 1
	.eabi_attribute	21, 1
	.eabi_attribute	23, 3
	.eabi_attribute	34, 0
	.eabi_attribute	24, 1
	.eabi_attribute	25, 1
	.eabi_attribute	38, 1
	.eabi_attribute	14, 0
	.file	"r00-8e2a0c6938386e95fcf66af6bffd084e.rs"
	.section	.text._ZN2r014run_init_array17h981878f3db5560edE,"ax",%progbits
	.globl	_ZN2r014run_init_array17h981878f3db5560edE
	.p2align	1
	.type	_ZN2r014run_init_array17h981878f3db5560edE,%function
	.code	16
	.thumb_func
_ZN2r014run_init_array17h981878f3db5560edE:
.Lfunc_begin0:
	.file	1 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/r0-0.2.2/src/lib.rs"
	.loc	1 139 0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset lr, -4
.Lcfi2:
	.cfi_offset r7, -8
.Lcfi3:
	.cfi_offset r5, -12
.Lcfi4:
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
.Lcfi5:
	.cfi_def_cfa r7, 8
	mov	r4, r0
.Ltmp0:
	.loc	1 143 0 prologue_end
	subs	r0, r1, r4
	lsrs	r0, r0, #2
.Ltmp1:
	.loc	1 0 0 is_stmt 0
	beq	.LBB0_3
.Ltmp2:
	.file	2 "/Users/arko/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src/libcore/slice/mod.rs"
	.loc	2 1 0 is_stmt 1
	lsls	r5, r0, #2
.Ltmp3:
.LBB0_2:
	.loc	1 148 0
	ldm	r4!, {r0}
.Ltmp4:
	blx	r0
.Ltmp5:
	.loc	2 1138 0
	subs	r5, r5, #4
	bne	.LBB0_2
.Ltmp6:
.LBB0_3:
	.loc	1 150 0
	pop	{r4, r5, r7, pc}
.Ltmp7:
.Lfunc_end0:
	.size	_ZN2r014run_init_array17h981878f3db5560edE, .Lfunc_end0-_ZN2r014run_init_array17h981878f3db5560edE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.24.0-nightly (560a5da9f 2017-11-27))"
.Linfo_string1:
	.asciz	"/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/r0-0.2.2/src/lib.rs"
.Linfo_string2:
	.asciz	"/Users/arko/GitHub/OneButton/Firmware/Rust"
.Linfo_string3:
	.asciz	"core"
.Linfo_string4:
	.asciz	"slice"
.Linfo_string5:
	.asciz	"PointerExt"
.Linfo_string6:
	.asciz	"extern \"C\" fn()"
.Linfo_string7:
	.asciz	"*const extern \"C\" fn()"
.Linfo_string8:
	.asciz	"Self"
.Linfo_string9:
	.asciz	"_ZN4core5slice10PointerExt32post_inc<*const extern \"C\" fn()>E"
.Linfo_string10:
	.asciz	"post_inc<*const extern \"C\" fn()>"
.Linfo_string11:
	.asciz	"self"
.Linfo_string12:
	.asciz	"&mut *const extern \"C\" fn()"
.Linfo_string13:
	.asciz	"current"
.Linfo_string14:
	.asciz	"{{impl}}"
.Linfo_string15:
	.asciz	"T"
.Linfo_string16:
	.asciz	"_ZN4core5slice8{{impl}}21next<extern \"C\" fn()>E"
.Linfo_string17:
	.asciz	"next<extern \"C\" fn()>"
.Linfo_string18:
	.asciz	"option"
.Linfo_string19:
	.asciz	"RUST$ENCODED$ENUM$0$None"
.Linfo_string20:
	.asciz	"__0"
.Linfo_string21:
	.asciz	"&extern \"C\" fn()"
.Linfo_string22:
	.asciz	"Some"
.Linfo_string23:
	.asciz	"Option<&extern \"C\" fn()>"
.Linfo_string24:
	.asciz	"ptr"
.Linfo_string25:
	.asciz	"end"
.Linfo_string26:
	.asciz	"_marker"
.Linfo_string27:
	.asciz	"marker"
.Linfo_string28:
	.asciz	"PhantomData<&extern \"C\" fn()>"
.Linfo_string29:
	.asciz	"Iter<extern \"C\" fn()>"
.Linfo_string30:
	.asciz	"&mut core::slice::Iter<extern \"C\" fn()>"
.Linfo_string31:
	.asciz	"r0"
.Linfo_string32:
	.asciz	"_ZN2r014run_init_arrayE"
.Linfo_string33:
	.asciz	"run_init_array"
.Linfo_string34:
	.asciz	"init_array_start"
.Linfo_string35:
	.asciz	"init_array_end"
.Linfo_string36:
	.asciz	"n"
.Linfo_string37:
	.asciz	"usize"
.Linfo_string38:
	.asciz	"_result"
.Linfo_string39:
	.asciz	"()"
.Linfo_string40:
	.asciz	"iter"
.Linfo_string41:
	.asciz	"__next"
.Linfo_string42:
	.asciz	"f"
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
	.short	1
	.byte	80
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	1
	.byte	84
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.short	1
	.byte	81
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	1
	.byte	80
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	57
	.byte	1
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	7
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	10
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	11
	.byte	23
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	12
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	13
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	14
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	16
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	17
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	18
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	19
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	85
	.byte	23
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	29
	.byte	0
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	5
	.byte	0
	.byte	0
	.byte	21
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	515
	.short	4
	.long	.Lsection_abbrev
	.byte	4
	.byte	1
	.long	.Linfo_string0
	.short	28
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2
	.long	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.long	.Linfo_string3
	.byte	2
	.long	.Linfo_string4
	.byte	2
	.long	.Linfo_string5
	.byte	3
	.long	.Linfo_string9
	.long	.Linfo_string10
	.byte	2
	.short	1530
	.long	263

	.byte	1
	.byte	4
	.long	263
	.long	.Linfo_string8
	.byte	5
	.long	.Linfo_string11
	.byte	2
	.byte	1
	.long	282
	.byte	6
	.byte	7
	.long	.Linfo_string13
	.byte	2
	.short	1531
	.long	263
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string14
	.byte	3
	.long	.Linfo_string16
	.long	.Linfo_string17
	.byte	2
	.short	1131
	.long	210

	.byte	1
	.byte	4
	.long	272
	.long	.Linfo_string15
	.byte	5
	.long	.Linfo_string11
	.byte	2
	.byte	1
	.long	300
	.byte	6
	.byte	8
	.long	.Linfo_string24
	.byte	2
	.byte	244
	.long	263
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.long	.Linfo_string29
	.byte	8
	.byte	4
	.byte	10
	.long	.Linfo_string24
	.long	263
	.byte	4
	.byte	0
	.byte	10
	.long	.Linfo_string25
	.long	263
	.byte	4
	.byte	4
	.byte	10
	.long	.Linfo_string26
	.long	254
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string18
	.byte	11
	.long	.Linfo_string23
	.byte	4
	.byte	4
	.byte	10
	.long	.Linfo_string19
	.long	229
	.byte	4
	.byte	0
	.byte	0
	.byte	9
	.long	.Linfo_string22
	.byte	4
	.byte	4
	.byte	10
	.long	.Linfo_string20
	.long	291
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string27
	.byte	12
	.long	.Linfo_string28
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	13
	.long	272
	.long	.Linfo_string7
	.byte	13
	.long	281
	.long	.Linfo_string6
	.byte	14
	.byte	13
	.long	263
	.long	.Linfo_string12
	.byte	13
	.long	272
	.long	.Linfo_string21
	.byte	13
	.long	163
	.long	.Linfo_string30
	.byte	2
	.long	.Linfo_string31
	.byte	15
	.long	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string32
	.long	.Linfo_string33
	.byte	1
	.byte	139

	.byte	16
	.long	.Ldebug_loc0
	.long	.Linfo_string34
	.byte	1
	.byte	1
	.long	291
	.byte	16
	.long	.Ldebug_loc1
	.long	.Linfo_string35
	.byte	1
	.byte	1
	.long	291
	.byte	17
	.long	.Ltmp0
	.long	.Ltmp6-.Ltmp0
	.byte	18
	.long	.Ldebug_loc2
	.long	.Linfo_string36
	.byte	1
	.byte	143
	.long	504
	.byte	17
	.long	.Ltmp2
	.long	.Ltmp6-.Ltmp2
	.byte	8
	.long	.Linfo_string38
	.byte	1
	.byte	147
	.long	511
	.byte	17
	.long	.Ltmp2
	.long	.Ltmp6-.Ltmp2
	.byte	8
	.long	.Linfo_string40
	.byte	1
	.byte	147
	.long	163
	.byte	17
	.long	.Ltmp2
	.long	.Ltmp6-.Ltmp2
	.byte	8
	.long	.Linfo_string41
	.byte	1
	.byte	147
	.long	291
	.byte	19
	.long	111
	.long	.Ldebug_ranges0
	.byte	1
	.byte	147
	.byte	20
	.long	53
	.long	.Ltmp2
	.long	.Ltmp3-.Ltmp2
	.byte	2
	.short	1141
	.byte	0
	.byte	17
	.long	.Ltmp3
	.long	.Ltmp5-.Ltmp3
	.byte	8
	.long	.Linfo_string42
	.byte	1
	.byte	147
	.long	291
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	21
	.long	.Linfo_string37
	.byte	7
	.byte	4
	.byte	21
	.long	.Linfo_string39
	.byte	7
	.byte	0
	.byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0
.LpubNames_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	519
	.long	43
	.asciz	"slice"
	.long	48
	.asciz	"PointerExt"
	.long	106
	.asciz	"{{impl}}"
	.long	249
	.asciz	"marker"
	.long	314
	.asciz	"run_init_array"
	.long	309
	.asciz	"r0"
	.long	38
	.asciz	"core"
	.long	205
	.asciz	"option"
	.long	111
	.asciz	"next<extern \"C\" fn()>"
	.long	53
	.asciz	"post_inc<*const extern \"C\" fn()>"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	519
	.long	163
	.asciz	"Iter<extern \"C\" fn()>"
	.long	504
	.asciz	"usize"
	.long	272
	.asciz	"extern \"C\" fn()"
	.long	263
	.asciz	"*const extern \"C\" fn()"
	.long	229
	.asciz	"Some"
	.long	254
	.asciz	"PhantomData<&extern \"C\" fn()>"
	.long	511
	.asciz	"()"
	.long	291
	.asciz	"&extern \"C\" fn()"
	.long	210
	.asciz	"Option<&extern \"C\" fn()>"
	.long	300
	.asciz	"&mut core::slice::Iter<extern \"C\" fn()>"
	.long	282
	.asciz	"&mut *const extern \"C\" fn()"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 3
	.section	.debug_line,"",%progbits
.Lline_table_start0:
