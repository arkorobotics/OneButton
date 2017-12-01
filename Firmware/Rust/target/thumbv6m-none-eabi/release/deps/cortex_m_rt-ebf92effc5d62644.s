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
	.code	16
	.file	"cortex_m_rt0-ae04bea55509392a6db21c570f9c9252.rs"


	.weak	NMI
NMI = DEFAULT_HANDLER

	.weak	HARD_FAULT
HARD_FAULT = DEFAULT_HANDLER

	.weak	MEM_MANAGE
MEM_MANAGE = DEFAULT_HANDLER

	.weak	BUS_FAULT
BUS_FAULT = DEFAULT_HANDLER

	.weak	USAGE_FAULT
USAGE_FAULT = DEFAULT_HANDLER

	.weak	SVCALL
SVCALL = DEFAULT_HANDLER

	.weak	PENDSV
PENDSV = DEFAULT_HANDLER

	.weak	SYS_TICK
SYS_TICK = DEFAULT_HANDLER


	.file	1 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/cortex-m-rt-0.3.6/src/lib.rs"
	.section	.text.rust_begin_unwind,"ax",%progbits
	.globl	rust_begin_unwind
	.p2align	1
	.type	rust_begin_unwind,%function
	.code	16
	.thumb_func
rust_begin_unwind:
.Lfunc_begin0:
	.file	2 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/cortex-m-rt-0.3.6/src/lang_items.rs"
	.loc	2 4 0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
	.loc	2 10 0 prologue_end
	.inst.n	0xdefe
	.inst.n	0xdefe
.Ltmp0:
.Lfunc_end0:
	.size	rust_begin_unwind, .Lfunc_end0-rust_begin_unwind
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E,"ax",%progbits
	.globl	_ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E
	.p2align	1
	.type	_ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E,%function
	.code	16
	.thumb_func
_ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E:
.Lfunc_begin1:
	.loc	2 32 0
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi0:
	.cfi_def_cfa_offset 8
.Lcfi1:
	.cfi_offset lr, -4
.Lcfi2:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi3:
	.cfi_def_cfa_register r7
.Ltmp1:
	.loc	2 37 0 prologue_end
	blx	r0
.Ltmp2:
	.loc	2 40 0
	movs	r0, #0
	pop	{r7, pc}
.Ltmp3:
.Lfunc_end1:
	.size	_ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E, .Lfunc_end1-_ZN11cortex_m_rt10lang_items5start17h584bcb1b0254fa88E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.reset_handler,"ax",%progbits
	.p2align	2
	.type	_ZN11cortex_m_rt13reset_handler17h7ac1081f12ccda13E,%function
	.code	16
	.thumb_func
_ZN11cortex_m_rt13reset_handler17h7ac1081f12ccda13E:
.Lfunc_begin2:
	.loc	1 335 0
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi4:
	.cfi_def_cfa_offset 8
.Lcfi5:
	.cfi_offset lr, -4
.Lcfi6:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi7:
	.cfi_def_cfa_register r7
.Ltmp4:
	.file	3 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/r0-0.2.2/src/lib.rs"
	.loc	3 171 0 prologue_end
	ldr	r0, .LCPI2_0
	ldr	r1, .LCPI2_1
	b	.LBB2_2
.LBB2_1:
.Ltmp5:
	.file	4 "/Users/arko/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src/libcore/ptr.rs"
	.loc	4 470 0
	movs	r2, #0
	stm	r1!, {r2}
.Ltmp6:
.LBB2_2:
	.loc	4 0 0 is_stmt 0
	cmp	r1, r0
	blo	.LBB2_1
.Ltmp7:
	.loc	3 132 0 is_stmt 1
	ldr	r0, .LCPI2_2
	ldr	r1, .LCPI2_3
.Ltmp8:
	cmp	r1, r0
.Ltmp9:
	.loc	3 0 0 is_stmt 0
	bhs	.LBB2_6
.Ltmp10:
	ldr	r2, .LCPI2_4
.Ltmp11:
.LBB2_5:
	.loc	4 252 0 is_stmt 1
	ldm	r2!, {r3}
.Ltmp12:
	.loc	4 328 0
	stm	r1!, {r3}
.Ltmp13:
	.loc	3 132 0
	cmp	r1, r0
.Ltmp14:
	.loc	3 0 0 is_stmt 0
	blo	.LBB2_5
.Ltmp15:
.LBB2_6:
	.loc	1 344 0 is_stmt 1
	movs	r0, #0
	mov	r1, r0
	bl	main
.LBB2_7:
	.loc	1 371 0
	@APP
	wfi
	@NO_APP
	.loc	1 370 0
	b	.LBB2_7
.Ltmp16:
	.p2align	2
	.loc	1 0 0 is_stmt 0
.LCPI2_0:
	.long	_ebss
.LCPI2_1:
	.long	_sbss
.LCPI2_2:
	.long	_edata
.LCPI2_3:
	.long	_sdata
.LCPI2_4:
	.long	_sidata
.Lfunc_end2:
	.size	_ZN11cortex_m_rt13reset_handler17h7ac1081f12ccda13E, .Lfunc_end2-_ZN11cortex_m_rt13reset_handler17h7ac1081f12ccda13E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E,"ax",%progbits
	.p2align	1
	.type	_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E,%function
	.code	16
	.thumb_func
_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E:
.Lfunc_begin3:
	.loc	1 442 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.file	5 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/cortex-m-0.3.1/src/asm.rs"
	.loc	5 12 0 prologue_end
	@APP
	bkpt	#0
	@NO_APP
.Ltmp17:
.LBB3_1:
	.loc	1 445 0
	b	.LBB3_1
.Ltmp18:
.Lfunc_end3:
	.size	_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E, .Lfunc_end3-_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text.DEFAULT_HANDLER,"ax",%progbits
	.weak	DEFAULT_HANDLER
	.p2align	1
	.type	DEFAULT_HANDLER,%function
	.code	16
	.thumb_func
DEFAULT_HANDLER:
.Lfunc_begin4:
	.loc	1 450 0
	.fnstart
	.cfi_startproc
	.loc	1 452 0 prologue_end
	@APP
	mrs	r0, msp
	b	_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E
	@NO_APP
	.loc	1 459 0
	.inst.n	0xdefe
.Ltmp19:
.Lfunc_end4:
	.size	DEFAULT_HANDLER, .Lfunc_end4-DEFAULT_HANDLER
	.cfi_endproc
	.cantunwind
	.fnend

	.type	_ZN11cortex_m_rt12RESET_VECTOR17h0ee471d0143aef4dE,%object
	.section	.vector_table.reset_vector,"a",%progbits
	.p2align	2
_ZN11cortex_m_rt12RESET_VECTOR17h0ee471d0143aef4dE:
	.long	_ZN11cortex_m_rt13reset_handler17h7ac1081f12ccda13E
	.size	_ZN11cortex_m_rt12RESET_VECTOR17h0ee471d0143aef4dE, 4

	.type	_ZN11cortex_m_rt15default_handler4KEEP17ha17cfe7c6f6d9b70E,%object
	.section	.rodata._ZN11cortex_m_rt15default_handler4KEEP17ha17cfe7c6f6d9b70E,"a",%progbits
	.p2align	2
_ZN11cortex_m_rt15default_handler4KEEP17ha17cfe7c6f6d9b70E:
	.long	DEFAULT_HANDLER
	.size	_ZN11cortex_m_rt15default_handler4KEEP17ha17cfe7c6f6d9b70E, 4

	.type	_ZN11cortex_m_rt4KEEP17h3b0e38a62cf4581bE,%object
	.section	.rodata._ZN11cortex_m_rt4KEEP17h3b0e38a62cf4581bE,"a",%progbits
	.p2align	2
_ZN11cortex_m_rt4KEEP17h3b0e38a62cf4581bE:
	.long	_ZN11cortex_m_rt15default_handler17hdcca38ab4379ffb6E
	.size	_ZN11cortex_m_rt4KEEP17h3b0e38a62cf4581bE, 4

	.type	EXCEPTIONS,%object
	.section	.vector_table.exceptions,"a",%progbits
	.globl	EXCEPTIONS
	.p2align	2
EXCEPTIONS:
	.long	NMI
	.long	HARD_FAULT
	.long	MEM_MANAGE
	.long	BUS_FAULT
	.long	USAGE_FAULT
	.long	0
	.long	0
	.long	0
	.long	0
	.long	SVCALL
	.long	0
	.long	0
	.long	PENDSV
	.long	SYS_TICK
	.size	EXCEPTIONS, 56

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.24.0-nightly (560a5da9f 2017-11-27))"
.Linfo_string1:
	.asciz	"/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/cortex-m-rt-0.3.6/src/lib.rs"
.Linfo_string2:
	.asciz	"/Users/arko/GitHub/OneButton/Firmware/Rust"
.Linfo_string3:
	.asciz	"cortex_m_rt"
.Linfo_string4:
	.asciz	"RESET_VECTOR"
.Linfo_string5:
	.asciz	"!"
.Linfo_string6:
	.asciz	"unsafe extern \"C\" fn() -> !"
.Linfo_string7:
	.asciz	"_ZN11cortex_m_rt12RESET_VECTORE"
.Linfo_string8:
	.asciz	"EXCEPTIONS"
.Linfo_string9:
	.asciz	"core"
.Linfo_string10:
	.asciz	"option"
.Linfo_string11:
	.asciz	"RUST$ENCODED$ENUM$0$None"
.Linfo_string12:
	.asciz	"__0"
.Linfo_string13:
	.asciz	"unsafe extern \"C\" fn()"
.Linfo_string14:
	.asciz	"Some"
.Linfo_string15:
	.asciz	"Option<unsafe extern \"C\" fn()>"
.Linfo_string16:
	.asciz	"sizetype"
.Linfo_string17:
	.asciz	"_ZN11cortex_m_rt10EXCEPTIONSE"
.Linfo_string18:
	.asciz	"default_handler"
.Linfo_string19:
	.asciz	"KEEP"
.Linfo_string20:
	.asciz	"extern \"C\" fn() -> !"
.Linfo_string21:
	.asciz	"_ZN11cortex_m_rt15default_handler4KEEPE"
.Linfo_string22:
	.asciz	"cortex_m"
.Linfo_string23:
	.asciz	"exception"
.Linfo_string24:
	.asciz	"r0"
.Linfo_string25:
	.asciz	"u32"
.Linfo_string26:
	.asciz	"r1"
.Linfo_string27:
	.asciz	"r2"
.Linfo_string28:
	.asciz	"r3"
.Linfo_string29:
	.asciz	"r12"
.Linfo_string30:
	.asciz	"lr"
.Linfo_string31:
	.asciz	"pc"
.Linfo_string32:
	.asciz	"xpsr"
.Linfo_string33:
	.asciz	"ExceptionFrame"
.Linfo_string34:
	.asciz	"&cortex_m::exception::ExceptionFrame"
.Linfo_string35:
	.asciz	"extern \"C\" fn(&cortex_m::exception::ExceptionFrame) -> !"
.Linfo_string36:
	.asciz	"_ZN11cortex_m_rt4KEEPE"
.Linfo_string37:
	.asciz	"fmt"
.Linfo_string38:
	.asciz	"rt"
.Linfo_string39:
	.asciz	"v1"
.Linfo_string40:
	.asciz	"Next"
.Linfo_string41:
	.asciz	"At"
.Linfo_string42:
	.asciz	"Position"
.Linfo_string43:
	.asciz	"Left"
.Linfo_string44:
	.asciz	"Right"
.Linfo_string45:
	.asciz	"Center"
.Linfo_string46:
	.asciz	"Unknown"
.Linfo_string47:
	.asciz	"u8"
.Linfo_string48:
	.asciz	"Alignment"
.Linfo_string49:
	.asciz	"Is"
.Linfo_string50:
	.asciz	"Param"
.Linfo_string51:
	.asciz	"NextParam"
.Linfo_string52:
	.asciz	"Implied"
.Linfo_string53:
	.asciz	"Count"
.Linfo_string54:
	.asciz	"result"
.Linfo_string55:
	.asciz	"Ok"
.Linfo_string56:
	.asciz	"Err"
.Linfo_string57:
	.asciz	"Result"
.Linfo_string58:
	.asciz	"None"
.Linfo_string59:
	.asciz	"Option"
.Linfo_string60:
	.asciz	"lang_items"
.Linfo_string61:
	.asciz	"T"
.Linfo_string62:
	.asciz	"_ZN2r013zero_bss<u32>E"
.Linfo_string63:
	.asciz	"zero_bss<u32>"
.Linfo_string64:
	.asciz	"sbss"
.Linfo_string65:
	.asciz	"*mut u32"
.Linfo_string66:
	.asciz	"ebss"
.Linfo_string67:
	.asciz	"ptr"
.Linfo_string68:
	.asciz	"_ZN4core3ptr19write_volatile<u32>E"
.Linfo_string69:
	.asciz	"write_volatile<u32>"
.Linfo_string70:
	.asciz	"dst"
.Linfo_string71:
	.asciz	"src"
.Linfo_string72:
	.asciz	"_ZN2r014init_data<u32>E"
.Linfo_string73:
	.asciz	"init_data<u32>"
.Linfo_string74:
	.asciz	"sdata"
.Linfo_string75:
	.asciz	"edata"
.Linfo_string76:
	.asciz	"sidata"
.Linfo_string77:
	.asciz	"*const u32"
.Linfo_string78:
	.asciz	"_ZN4core3ptr9read<u32>E"
.Linfo_string79:
	.asciz	"read<u32>"
.Linfo_string80:
	.asciz	"tmp"
.Linfo_string81:
	.asciz	"_ZN4core3ptr10write<u32>E"
.Linfo_string82:
	.asciz	"write<u32>"
.Linfo_string83:
	.asciz	"asm"
.Linfo_string84:
	.asciz	"_ZN8cortex_m3asm4bkptE"
.Linfo_string85:
	.asciz	"bkpt"
.Linfo_string86:
	.asciz	"_ZN11cortex_m_rt10lang_items9panic_fmtE"
.Linfo_string87:
	.asciz	"panic_fmt"
.Linfo_string88:
	.asciz	"_ZN11cortex_m_rt10lang_items5startE"
.Linfo_string89:
	.asciz	"start"
.Linfo_string90:
	.asciz	"isize"
.Linfo_string91:
	.asciz	"_ZN11cortex_m_rt13reset_handlerE"
.Linfo_string92:
	.asciz	"reset_handler"
.Linfo_string93:
	.asciz	"_ZN11cortex_m_rt15default_handlerE"
.Linfo_string94:
	.asciz	"_ZN11cortex_m_rt15default_handler10trampolineE"
.Linfo_string95:
	.asciz	"trampoline"
.Linfo_string96:
	.asciz	"pieces"
.Linfo_string97:
	.asciz	"data_ptr"
.Linfo_string98:
	.asciz	"*const u8"
.Linfo_string99:
	.asciz	"length"
.Linfo_string100:
	.asciz	"usize"
.Linfo_string101:
	.asciz	"&str"
.Linfo_string102:
	.asciz	"*const &str"
.Linfo_string103:
	.asciz	"&[&str]"
.Linfo_string104:
	.asciz	"position"
.Linfo_string105:
	.asciz	"RUST$ENUM$DISR"
.Linfo_string106:
	.asciz	"format"
.Linfo_string107:
	.asciz	"fill"
.Linfo_string108:
	.asciz	"char"
.Linfo_string109:
	.asciz	"align"
.Linfo_string110:
	.asciz	"flags"
.Linfo_string111:
	.asciz	"precision"
.Linfo_string112:
	.asciz	"width"
.Linfo_string113:
	.asciz	"FormatSpec"
.Linfo_string114:
	.asciz	"Argument"
.Linfo_string115:
	.asciz	"*const core::fmt::rt::v1::Argument"
.Linfo_string116:
	.asciz	"&[core::fmt::rt::v1::Argument]"
.Linfo_string117:
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
.Linfo_string118:
	.asciz	"args"
.Linfo_string119:
	.asciz	"value"
.Linfo_string120:
	.asciz	"_priv"
.Linfo_string121:
	.asciz	"()"
.Linfo_string122:
	.asciz	"_oibit_remover"
.Linfo_string123:
	.asciz	"marker"
.Linfo_string124:
	.asciz	"PhantomData<*mut Fn<()>>"
.Linfo_string125:
	.asciz	"Void"
.Linfo_string126:
	.asciz	"&core::fmt::Void"
.Linfo_string127:
	.asciz	"formatter"
.Linfo_string128:
	.asciz	"Option<usize>"
.Linfo_string129:
	.asciz	"buf"
.Linfo_string130:
	.asciz	"pointer"
.Linfo_string131:
	.asciz	"*mut u8"
.Linfo_string132:
	.asciz	"vtable"
.Linfo_string133:
	.asciz	"&()"
.Linfo_string134:
	.asciz	"&mut Write"
.Linfo_string135:
	.asciz	"curarg"
.Linfo_string136:
	.asciz	"slice"
.Linfo_string137:
	.asciz	"end"
.Linfo_string138:
	.asciz	"_marker"
.Linfo_string139:
	.asciz	"PhantomData<&core::fmt::ArgumentV1>"
.Linfo_string140:
	.asciz	"Iter<core::fmt::ArgumentV1>"
.Linfo_string141:
	.asciz	"Formatter"
.Linfo_string142:
	.asciz	"&mut core::fmt::Formatter"
.Linfo_string143:
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
.Linfo_string144:
	.asciz	"ArgumentV1"
.Linfo_string145:
	.asciz	"*const core::fmt::ArgumentV1"
.Linfo_string146:
	.asciz	"&[core::fmt::ArgumentV1]"
.Linfo_string147:
	.asciz	"Arguments"
.Linfo_string148:
	.asciz	"main"
.Linfo_string149:
	.asciz	"fn()"
.Linfo_string150:
	.asciz	"_argc"
.Linfo_string151:
	.asciz	"_argv"
.Linfo_string152:
	.asciz	"*const *const u8"
.Linfo_string153:
	.asciz	"ef"
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin1
	.long	.Ltmp2
	.short	1
	.byte	80
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin1
	.long	.Ltmp2
	.short	1
	.byte	81
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin1
	.long	.Ltmp2
	.short	1
	.byte	82
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp5
	.long	.Ltmp7
	.short	1
	.byte	81
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp8
	.long	.Ltmp15
	.short	1
	.byte	81
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp9
	.long	.Ltmp15
	.short	1
	.byte	80
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp11
	.long	.Ltmp15
	.short	1
	.byte	82
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp11
	.long	.Ltmp12
	.short	1
	.byte	82
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp12
	.long	.Ltmp15
	.short	1
	.byte	83
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp12
	.long	.Ltmp15
	.short	1
	.byte	83
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp14
	.long	.Ltmp15
	.short	1
	.byte	81
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
	.byte	85
	.byte	23
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
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	2
	.byte	24
	.byte	110
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	2
	.byte	24
	.byte	110
	.byte	14
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
	.byte	5
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	6
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
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	0
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
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
	.byte	10
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
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	11
	.byte	29
	.byte	1
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
	.byte	12
	.byte	5
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	13
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	5
	.byte	0
	.byte	28
	.byte	15
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	15
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	16
	.byte	52
	.byte	0
	.byte	2
	.byte	23
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	17
	.byte	5
	.byte	0
	.byte	2
	.byte	24
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
	.byte	18
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
	.byte	19
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	20
	.byte	21
	.byte	0
	.byte	73
	.byte	19
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
	.byte	22
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	23
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	34
	.byte	11
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	24
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
	.byte	25
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
	.byte	26
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
	.byte	27
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	109
	.byte	25
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	28
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	13
	.byte	0
	.byte	0
	.byte	29
	.byte	13
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	13
	.byte	11
	.byte	12
	.byte	11
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	30
	.byte	13
	.byte	0
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	31
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
	.byte	52
	.byte	25
	.byte	0
	.byte	0
	.byte	32
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
	.byte	63
	.byte	25
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	33
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	34
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
	.byte	35
	.byte	46
	.byte	1
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
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	36
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	37
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
	.byte	38
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
	.byte	39
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	41
	.byte	21
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	42
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	43
	.byte	46
	.byte	0
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
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	44
	.byte	46
	.byte	1
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
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	2239
	.short	4
	.long	.Lsection_abbrev
	.byte	4
	.byte	1
	.long	.Linfo_string0
	.short	28
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2
	.long	0
	.long	.Ldebug_ranges0
	.byte	2
	.long	.Linfo_string3
	.byte	3
	.long	.Linfo_string4
	.long	554
	.byte	1
	.short	328
	.byte	5
	.byte	3
	.long	_ZN11cortex_m_rt12RESET_VECTOR17h0ee471d0143aef4dE
	.long	.Linfo_string7
	.byte	4
	.long	.Linfo_string8
	.long	575

	.byte	1
	.short	419
	.byte	5
	.byte	3
	.long	EXCEPTIONS
	.long	.Linfo_string17
	.byte	2
	.long	.Linfo_string18
	.byte	3
	.long	.Linfo_string19
	.long	1678
	.byte	1
	.short	464
	.byte	5
	.byte	3
	.long	_ZN11cortex_m_rt15default_handler4KEEP17ha17cfe7c6f6d9b70E
	.long	.Linfo_string21
	.byte	5
	.long	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	87
	.long	.Linfo_string94
	.long	.Linfo_string95
	.byte	1
	.short	450
	.long	568

	.byte	0
	.byte	3
	.long	.Linfo_string19
	.long	1687
	.byte	1
	.short	471
	.byte	5
	.byte	3
	.long	_ZN11cortex_m_rt4KEEP17h3b0e38a62cf4581bE
	.long	.Linfo_string36
	.byte	2
	.long	.Linfo_string60
	.byte	6
	.long	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string86
	.long	.Linfo_string87
	.byte	2
	.byte	4
	.long	568

	.byte	7
	.byte	2
	.byte	1
	.long	1189
	.byte	7
	.byte	2
	.byte	1
	.long	2025
	.byte	8
	.byte	2
	.byte	125
	.byte	16
	.byte	2
	.byte	1
	.long	1842
	.byte	8
	.byte	2
	.byte	125
	.byte	20
	.byte	2
	.byte	1
	.long	1842
	.byte	0
	.byte	6
	.long	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.byte	2
	.byte	32
	.long	1979

	.byte	9
	.long	.Ldebug_loc0
	.long	.Linfo_string148
	.byte	2
	.byte	1
	.long	2224
	.byte	9
	.long	.Ldebug_loc1
	.long	.Linfo_string150
	.byte	2
	.byte	1
	.long	1979
	.byte	9
	.long	.Ldebug_loc2
	.long	.Linfo_string151
	.byte	2
	.byte	1
	.long	2233
	.byte	0
	.byte	0
	.byte	10
	.long	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	87
	.long	.Linfo_string91
	.long	.Linfo_string92
	.byte	1
	.short	335
	.long	568
	.byte	11
	.long	1861
	.long	.Ltmp4
	.long	.Ltmp6-.Ltmp4
	.byte	1
	.short	336
	.byte	12
	.long	.Ldebug_loc3
	.long	1882
	.byte	13
	.long	1452
	.long	.Ltmp5
	.long	.Ltmp6-.Ltmp5
	.byte	3
	.byte	173
	.byte	14
	.byte	0
	.long	1485
	.byte	0
	.byte	0
	.byte	11
	.long	1905
	.long	.Ltmp7
	.long	.Ltmp15-.Ltmp7
	.byte	1
	.short	337
	.byte	12
	.long	.Ldebug_loc4
	.long	1926
	.byte	12
	.long	.Ldebug_loc5
	.long	1937
	.byte	12
	.long	.Ldebug_loc6
	.long	1948
	.byte	13
	.long	1497
	.long	.Ltmp11
	.long	.Ltmp12-.Ltmp11
	.byte	3
	.byte	133
	.byte	12
	.long	.Ldebug_loc7
	.long	1522
	.byte	15
	.long	.Ltmp11
	.long	.Ltmp12-.Ltmp11
	.byte	16
	.long	.Ldebug_loc9
	.long	1534
	.byte	0
	.byte	0
	.byte	13
	.long	1547
	.long	.Ltmp12
	.long	.Ltmp13-.Ltmp12
	.byte	3
	.byte	133
	.byte	12
	.long	.Ldebug_loc10
	.long	1569
	.byte	12
	.long	.Ldebug_loc8
	.long	1580
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.long	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	87
	.long	.Linfo_string93
	.long	.Linfo_string18
	.byte	1
	.short	442
	.long	568
	.byte	17
	.byte	1
	.byte	80
	.long	.Linfo_string153
	.byte	1
	.byte	1
	.long	1707
	.byte	18
	.long	1828
	.long	.Lfunc_begin3
	.long	.Ltmp17-.Lfunc_begin3
	.byte	1
	.short	443
	.byte	0
	.byte	0
	.byte	19
	.long	563
	.long	.Linfo_string6
	.byte	20
	.long	568
	.byte	21
	.long	.Linfo_string5
	.byte	7
	.byte	0
	.byte	22
	.long	598
	.byte	23
	.long	1671
	.byte	0
	.byte	14
	.byte	0
	.byte	2
	.long	.Linfo_string9
	.byte	2
	.long	.Linfo_string10
	.byte	24
	.long	.Linfo_string15
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string11
	.long	617
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string14
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string12
	.long	1661
	.byte	4
	.byte	0
	.byte	0
	.byte	27
	.long	1842

	.long	.Linfo_string59
	.byte	4
	.byte	4
	.byte	28
	.long	.Linfo_string58
	.byte	0
	.byte	28
	.long	.Linfo_string14
	.byte	1
	.byte	0
	.byte	24
	.long	.Linfo_string117
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string11
	.long	679
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string14
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string12
	.long	2071
	.byte	4
	.byte	0
	.byte	0
	.byte	24
	.long	.Linfo_string128
	.byte	8
	.byte	4
	.byte	29
	.long	722
	.byte	8
	.byte	32
	.byte	32
	.byte	0
	.byte	30
	.long	741
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string58
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	636
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string14
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	636
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string12
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string37
	.byte	2
	.long	.Linfo_string38
	.byte	2
	.long	.Linfo_string39
	.byte	27
	.long	1842

	.long	.Linfo_string42
	.byte	4
	.byte	4
	.byte	28
	.long	.Linfo_string40
	.byte	0
	.byte	28
	.long	.Linfo_string41
	.byte	1
	.byte	0
	.byte	27
	.long	1849

	.long	.Linfo_string48
	.byte	1
	.byte	1
	.byte	28
	.long	.Linfo_string43
	.byte	0
	.byte	28
	.long	.Linfo_string44
	.byte	1
	.byte	28
	.long	.Linfo_string45
	.byte	2
	.byte	28
	.long	.Linfo_string46
	.byte	3
	.byte	0
	.byte	27
	.long	1842

	.long	.Linfo_string53
	.byte	4
	.byte	4
	.byte	28
	.long	.Linfo_string49
	.byte	0
	.byte	28
	.long	.Linfo_string50
	.byte	1
	.byte	28
	.long	.Linfo_string51
	.byte	2
	.byte	28
	.long	.Linfo_string52
	.byte	3
	.byte	0
	.byte	26
	.long	.Linfo_string114
	.byte	36
	.byte	4
	.byte	25
	.long	.Linfo_string104
	.long	913
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string106
	.long	986
	.byte	4
	.byte	8
	.byte	0
	.byte	24
	.long	.Linfo_string42
	.byte	8
	.byte	4
	.byte	29
	.long	937
	.byte	8
	.byte	32
	.byte	32
	.byte	0
	.byte	30
	.long	956
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string40
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	787
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string41
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	787
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string12
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	26
	.long	.Linfo_string113
	.byte	28
	.byte	4
	.byte	25
	.long	.Linfo_string107
	.long	2110
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string109
	.long	811
	.byte	1
	.byte	24
	.byte	25
	.long	.Linfo_string110
	.long	1842
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string111
	.long	1049
	.byte	4
	.byte	8
	.byte	25
	.long	.Linfo_string112
	.long	1049
	.byte	4
	.byte	16
	.byte	0
	.byte	24
	.long	.Linfo_string53
	.byte	8
	.byte	4
	.byte	30
	.long	1089
	.byte	4
	.byte	0
	.byte	30
	.long	1119
	.byte	4
	.byte	0
	.byte	29
	.long	1149
	.byte	8
	.byte	32
	.byte	32
	.byte	0
	.byte	29
	.long	1168
	.byte	8
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string49
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	847
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string12
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	26
	.long	.Linfo_string50
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	847
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string12
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	26
	.long	.Linfo_string51
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	847
	.byte	4
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string52
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string105
	.long	847
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string147
	.byte	24
	.byte	4
	.byte	25
	.long	.Linfo_string96
	.long	1986
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string37
	.long	660
	.byte	4
	.byte	8
	.byte	25
	.long	.Linfo_string118
	.long	2117
	.byte	4
	.byte	16
	.byte	0
	.byte	26
	.long	.Linfo_string144
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string119
	.long	2156
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string127
	.long	2172
	.byte	4
	.byte	4
	.byte	0
	.byte	26
	.long	.Linfo_string125
	.byte	0
	.byte	1
	.byte	25
	.long	.Linfo_string120
	.long	2165
	.byte	1
	.byte	0
	.byte	25
	.long	.Linfo_string122
	.long	1598
	.byte	1
	.byte	0
	.byte	0
	.byte	26
	.long	.Linfo_string141
	.byte	52
	.byte	4
	.byte	25
	.long	.Linfo_string110
	.long	1842
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string107
	.long	2110
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string109
	.long	811
	.byte	1
	.byte	48
	.byte	25
	.long	.Linfo_string112
	.long	698
	.byte	4
	.byte	8
	.byte	25
	.long	.Linfo_string111
	.long	698
	.byte	4
	.byte	16
	.byte	25
	.long	.Linfo_string129
	.long	1386
	.byte	4
	.byte	24
	.byte	25
	.long	.Linfo_string135
	.long	1618
	.byte	4
	.byte	32
	.byte	25
	.long	.Linfo_string118
	.long	2117
	.byte	4
	.byte	40
	.byte	0
	.byte	26
	.long	.Linfo_string134
	.byte	8
	.byte	4
	.byte	31
	.long	.Linfo_string130
	.long	2206
	.byte	4
	.byte	0

	.byte	31
	.long	.Linfo_string132
	.long	2215
	.byte	4
	.byte	4

	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string54
	.byte	27
	.long	1849

	.long	.Linfo_string57
	.byte	1
	.byte	1
	.byte	28
	.long	.Linfo_string55
	.byte	0
	.byte	28
	.long	.Linfo_string56
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string67
	.byte	32
	.long	.Linfo_string68
	.long	.Linfo_string69
	.byte	4
	.short	469

	.byte	1
	.byte	33
	.long	1842
	.long	.Linfo_string61
	.byte	34
	.long	.Linfo_string70
	.byte	4
	.byte	1
	.long	1961
	.byte	34
	.long	.Linfo_string71
	.byte	4
	.byte	1
	.long	1842
	.byte	0
	.byte	35
	.long	.Linfo_string78
	.long	.Linfo_string79
	.byte	4
	.byte	250
	.long	1842

	.byte	1
	.byte	33
	.long	1842
	.long	.Linfo_string61
	.byte	34
	.long	.Linfo_string71
	.byte	4
	.byte	1
	.long	1970
	.byte	36
	.byte	37
	.long	.Linfo_string80
	.byte	4
	.byte	251
	.long	1842
	.byte	0
	.byte	0
	.byte	32
	.long	.Linfo_string81
	.long	.Linfo_string82
	.byte	4
	.short	327

	.byte	1
	.byte	33
	.long	1842
	.long	.Linfo_string61
	.byte	34
	.long	.Linfo_string70
	.byte	4
	.byte	1
	.long	1961
	.byte	34
	.long	.Linfo_string71
	.byte	4
	.byte	1
	.long	1842
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string123
	.byte	38
	.long	.Linfo_string124
	.byte	0
	.byte	1
	.byte	38
	.long	.Linfo_string139
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.long	.Linfo_string136
	.byte	26
	.long	.Linfo_string140
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string67
	.long	2147
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string137
	.long	2147
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string138
	.long	1605
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	19
	.long	1670
	.long	.Linfo_string13
	.byte	39
	.byte	40
	.long	.Linfo_string16
	.byte	8
	.byte	7
	.byte	19
	.long	563
	.long	.Linfo_string20
	.byte	19
	.long	1696
	.long	.Linfo_string35
	.byte	41
	.long	568
	.byte	42
	.long	1707
	.byte	0
	.byte	19
	.long	1726
	.long	.Linfo_string34
	.byte	2
	.long	.Linfo_string22
	.byte	2
	.long	.Linfo_string23
	.byte	26
	.long	.Linfo_string33
	.byte	32
	.byte	4
	.byte	25
	.long	.Linfo_string24
	.long	1842
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string26
	.long	1842
	.byte	4
	.byte	4
	.byte	25
	.long	.Linfo_string27
	.long	1842
	.byte	4
	.byte	8
	.byte	25
	.long	.Linfo_string28
	.long	1842
	.byte	4
	.byte	12
	.byte	25
	.long	.Linfo_string29
	.long	1842
	.byte	4
	.byte	16
	.byte	25
	.long	.Linfo_string30
	.long	1842
	.byte	4
	.byte	20
	.byte	25
	.long	.Linfo_string31
	.long	1842
	.byte	4
	.byte	24
	.byte	25
	.long	.Linfo_string32
	.long	1842
	.byte	4
	.byte	28
	.byte	0
	.byte	0
	.byte	2
	.long	.Linfo_string83
	.byte	43
	.long	.Linfo_string84
	.long	.Linfo_string85
	.byte	5
	.byte	9

	.byte	1
	.byte	0
	.byte	0
	.byte	21
	.long	.Linfo_string25
	.byte	7
	.byte	4
	.byte	21
	.long	.Linfo_string47
	.byte	7
	.byte	1
	.byte	2
	.long	.Linfo_string24
	.byte	44
	.long	.Linfo_string62
	.long	.Linfo_string63
	.byte	3
	.byte	167

	.byte	1
	.byte	33
	.long	1842
	.long	.Linfo_string61
	.byte	34
	.long	.Linfo_string64
	.byte	3
	.byte	1
	.long	1961
	.byte	34
	.long	.Linfo_string66
	.byte	3
	.byte	1
	.long	1961
	.byte	0
	.byte	44
	.long	.Linfo_string72
	.long	.Linfo_string73
	.byte	3
	.byte	125

	.byte	1
	.byte	33
	.long	1842
	.long	.Linfo_string61
	.byte	34
	.long	.Linfo_string74
	.byte	3
	.byte	1
	.long	1961
	.byte	34
	.long	.Linfo_string75
	.byte	3
	.byte	1
	.long	1961
	.byte	34
	.long	.Linfo_string76
	.byte	3
	.byte	1
	.long	1970
	.byte	0
	.byte	0
	.byte	19
	.long	1842
	.long	.Linfo_string65
	.byte	19
	.long	1842
	.long	.Linfo_string77
	.byte	21
	.long	.Linfo_string90
	.byte	5
	.byte	4
	.byte	26
	.long	.Linfo_string103
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string97
	.long	2016
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string99
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	19
	.long	2025
	.long	.Linfo_string102
	.byte	26
	.long	.Linfo_string101
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string97
	.long	2055
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string99
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	19
	.long	1849
	.long	.Linfo_string98
	.byte	21
	.long	.Linfo_string100
	.byte	7
	.byte	4
	.byte	26
	.long	.Linfo_string116
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string97
	.long	2101
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string99
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	19
	.long	883
	.long	.Linfo_string115
	.byte	21
	.long	.Linfo_string108
	.byte	8
	.byte	4
	.byte	26
	.long	.Linfo_string146
	.byte	8
	.byte	4
	.byte	25
	.long	.Linfo_string97
	.long	2147
	.byte	4
	.byte	0
	.byte	25
	.long	.Linfo_string99
	.long	2064
	.byte	4
	.byte	4
	.byte	0
	.byte	19
	.long	1230
	.long	.Linfo_string145
	.byte	19
	.long	1260
	.long	.Linfo_string126
	.byte	21
	.long	.Linfo_string121
	.byte	7
	.byte	0
	.byte	19
	.long	2181
	.long	.Linfo_string143
	.byte	41
	.long	1422
	.byte	42
	.long	2156
	.byte	42
	.long	2197
	.byte	0
	.byte	19
	.long	1290
	.long	.Linfo_string142
	.byte	19
	.long	1849
	.long	.Linfo_string131
	.byte	19
	.long	2165
	.long	.Linfo_string133
	.byte	19
	.long	1670
	.long	.Linfo_string149
	.byte	19
	.long	2055
	.long	.Linfo_string152
	.byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
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
	.long	2243
	.long	1417
	.asciz	"result"
	.long	1716
	.asciz	"cortex_m"
	.long	497
	.asciz	"default_handler"
	.long	300
	.asciz	"reset_handler"
	.long	1905
	.asciz	"init_data<u32>"
	.long	1593
	.asciz	"marker"
	.long	588
	.asciz	"core"
	.long	1721
	.asciz	"exception"
	.long	43
	.asciz	"RESET_VECTOR"
	.long	1447
	.asciz	"ptr"
	.long	593
	.asciz	"option"
	.long	114
	.asciz	"trampoline"
	.long	1823
	.asciz	"asm"
	.long	65
	.asciz	"EXCEPTIONS"
	.long	163
	.asciz	"lang_items"
	.long	141
	.asciz	"KEEP"
	.long	38
	.asciz	"cortex_m_rt"
	.long	772
	.asciz	"fmt"
	.long	782
	.asciz	"v1"
	.long	777
	.asciz	"rt"
	.long	1856
	.asciz	"r0"
	.long	228
	.asciz	"start"
	.long	1497
	.asciz	"read<u32>"
	.long	1828
	.asciz	"bkpt"
	.long	168
	.asciz	"panic_fmt"
	.long	1613
	.asciz	"slice"
	.long	1861
	.asciz	"zero_bss<u32>"
	.long	1452
	.asciz	"write_volatile<u32>"
	.long	1547
	.asciz	"write<u32>"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	2243
	.long	2101
	.asciz	"*const core::fmt::rt::v1::Argument"
	.long	1168
	.asciz	"Implied"
	.long	2197
	.asciz	"&mut core::fmt::Formatter"
	.long	2206
	.asciz	"*mut u8"
	.long	2147
	.asciz	"*const core::fmt::ArgumentV1"
	.long	1290
	.asciz	"Formatter"
	.long	741
	.asciz	"Some"
	.long	913
	.asciz	"Position"
	.long	986
	.asciz	"FormatSpec"
	.long	1726
	.asciz	"ExceptionFrame"
	.long	2172
	.asciz	"fn(&core::fmt::Void, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
	.long	1986
	.asciz	"&[&str]"
	.long	1422
	.asciz	"Result"
	.long	811
	.asciz	"Alignment"
	.long	568
	.asciz	"!"
	.long	660
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
	.long	698
	.asciz	"Option<usize>"
	.long	937
	.asciz	"Next"
	.long	1687
	.asciz	"extern \"C\" fn(&cortex_m::exception::ExceptionFrame) -> !"
	.long	1049
	.asciz	"Count"
	.long	1970
	.asciz	"*const u32"
	.long	1260
	.asciz	"Void"
	.long	1605
	.asciz	"PhantomData<&core::fmt::ArgumentV1>"
	.long	1189
	.asciz	"Arguments"
	.long	598
	.asciz	"Option<unsafe extern \"C\" fn()>"
	.long	1961
	.asciz	"*mut u32"
	.long	2117
	.asciz	"&[core::fmt::ArgumentV1]"
	.long	1661
	.asciz	"unsafe extern \"C\" fn()"
	.long	1979
	.asciz	"isize"
	.long	1386
	.asciz	"&mut Write"
	.long	1598
	.asciz	"PhantomData<*mut Fn<()>>"
	.long	1849
	.asciz	"u8"
	.long	1678
	.asciz	"extern \"C\" fn() -> !"
	.long	2233
	.asciz	"*const *const u8"
	.long	2016
	.asciz	"*const &str"
	.long	2064
	.asciz	"usize"
	.long	2165
	.asciz	"()"
	.long	2156
	.asciz	"&core::fmt::Void"
	.long	956
	.asciz	"At"
	.long	722
	.asciz	"None"
	.long	1707
	.asciz	"&cortex_m::exception::ExceptionFrame"
	.long	1089
	.asciz	"Is"
	.long	2055
	.asciz	"*const u8"
	.long	2110
	.asciz	"char"
	.long	883
	.asciz	"Argument"
	.long	2224
	.asciz	"fn()"
	.long	1230
	.asciz	"ArgumentV1"
	.long	2071
	.asciz	"&[core::fmt::rt::v1::Argument]"
	.long	554
	.asciz	"unsafe extern \"C\" fn() -> !"
	.long	1119
	.asciz	"Param"
	.long	1149
	.asciz	"NextParam"
	.long	1618
	.asciz	"Iter<core::fmt::ArgumentV1>"
	.long	2215
	.asciz	"&()"
	.long	636
	.asciz	"Option"
	.long	1842
	.asciz	"u32"
	.long	2025
	.asciz	"&str"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 3
	.section	.debug_line,"",%progbits
.Lline_table_start0:
