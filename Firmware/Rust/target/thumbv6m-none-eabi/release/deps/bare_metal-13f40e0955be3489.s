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
	.file	"bare_metal0-124b05f8d9c09407275f33938ba34d1f.rs"
	.section	.text._ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E,"ax",%progbits
	.globl	_ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E
	.p2align	1
	.type	_ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E,%function
	.code	16
	.thumb_func
_ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E:
.Lfunc_begin0:
	.file	1 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/bare-metal-0.1.1/src/lib.rs"
	.loc	1 50 0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
	.loc	1 52 0 prologue_end
	bx	lr
.Ltmp0:
.Lfunc_end0:
	.size	_ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E, .Lfunc_end0-_ZN10bare_metal15CriticalSection3new17h69ada38fcbccb1c9E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.24.0-nightly (560a5da9f 2017-11-27))"
.Linfo_string1:
	.asciz	"/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/bare-metal-0.1.1/src/lib.rs"
.Linfo_string2:
	.asciz	"/Users/arko/GitHub/OneButton/Firmware/Rust"
.Linfo_string3:
	.asciz	"bare_metal"
.Linfo_string4:
	.asciz	"_0"
.Linfo_string5:
	.asciz	"()"
.Linfo_string6:
	.asciz	"CriticalSection"
.Linfo_string7:
	.asciz	"_ZN10bare_metal8{{impl}}3newE"
.Linfo_string8:
	.asciz	"new"
	.section	.debug_loc,"",%progbits
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
	.byte	4
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
	.byte	5
	.byte	46
	.byte	0
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
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	6
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
	.long	92
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
	.byte	3
	.long	.Linfo_string6
	.byte	0
	.byte	1
	.byte	4
	.long	.Linfo_string4
	.long	88
	.byte	1
	.byte	0
	.byte	5
	.long	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string7
	.long	.Linfo_string8
	.byte	1
	.byte	50
	.long	43

	.byte	0
	.byte	0
	.byte	6
	.long	.Linfo_string5
	.byte	7
	.byte	0
	.byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0
.LpubNames_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	96
	.long	61
	.asciz	"new"
	.long	38
	.asciz	"bare_metal"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	96
	.long	43
	.asciz	"CriticalSection"
	.long	88
	.asciz	"()"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 3
	.section	.debug_line,"",%progbits
.Lline_table_start0:
