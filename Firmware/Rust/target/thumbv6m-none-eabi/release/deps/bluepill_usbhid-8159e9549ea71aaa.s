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
	.file	"bluepill_usbhid0-116f3b134f6580112676803bf2a33c82.rs"
	.section	.text._ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE
	.p2align	1
	.type	_ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE:
.Lfunc_begin0:
	.file	1 "/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/bluepill-usbhid-0.1.0/src/lib.rs"
	.loc	1 30 0
	.fnstart
	.cfi_sections .debug_frame
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
.Ltmp0:
	.loc	1 30 0 prologue_end
	bl	NMI_Handler
.Ltmp1:
	.loc	1 30 0 is_stmt 0
	pop	{r7, pc}
.Ltmp2:
.Lfunc_end0:
	.size	_ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE, .Lfunc_end0-_ZN15bluepill_usbhid11nmi_handler17h65d468170c7a213cE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E
	.p2align	1
	.type	_ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E:
.Lfunc_begin1:
	.loc	1 31 0 is_stmt 1
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
.Ltmp3:
	.loc	1 31 0 prologue_end
	bl	HardFault_Handler
.Ltmp4:
	.loc	1 31 0 is_stmt 0
	pop	{r7, pc}
.Ltmp5:
.Lfunc_end1:
	.size	_ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E, .Lfunc_end1-_ZN15bluepill_usbhid17hardfault_handler17hbf07b36327d571c2E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE
	.p2align	1
	.type	_ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE:
.Lfunc_begin2:
	.loc	1 32 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi8:
	.cfi_def_cfa_offset 8
.Lcfi9:
	.cfi_offset lr, -4
.Lcfi10:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi11:
	.cfi_def_cfa_register r7
.Ltmp6:
	.loc	1 32 0 prologue_end
	bl	MemManage_Handler
.Ltmp7:
	.loc	1 32 0 is_stmt 0
	pop	{r7, pc}
.Ltmp8:
.Lfunc_end2:
	.size	_ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE, .Lfunc_end2-_ZN15bluepill_usbhid18mem_manage_handler17he76c8bf43470939cE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E
	.p2align	1
	.type	_ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E:
.Lfunc_begin3:
	.loc	1 33 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi12:
	.cfi_def_cfa_offset 8
.Lcfi13:
	.cfi_offset lr, -4
.Lcfi14:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi15:
	.cfi_def_cfa_register r7
.Ltmp9:
	.loc	1 33 0 prologue_end
	bl	BusFault_Handler
.Ltmp10:
	.loc	1 33 0 is_stmt 0
	pop	{r7, pc}
.Ltmp11:
.Lfunc_end3:
	.size	_ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E, .Lfunc_end3-_ZN15bluepill_usbhid17bus_fault_handler17h993575dac2059b90E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE
	.p2align	1
	.type	_ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE:
.Lfunc_begin4:
	.loc	1 34 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi16:
	.cfi_def_cfa_offset 8
.Lcfi17:
	.cfi_offset lr, -4
.Lcfi18:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi19:
	.cfi_def_cfa_register r7
.Ltmp12:
	.loc	1 34 0 prologue_end
	bl	SVC_Handler
.Ltmp13:
	.loc	1 34 0 is_stmt 0
	pop	{r7, pc}
.Ltmp14:
.Lfunc_end4:
	.size	_ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE, .Lfunc_end4-_ZN15bluepill_usbhid11svc_handler17h7a970eeac9b1453fE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE
	.p2align	1
	.type	_ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE:
.Lfunc_begin5:
	.loc	1 35 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi20:
	.cfi_def_cfa_offset 8
.Lcfi21:
	.cfi_offset lr, -4
.Lcfi22:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi23:
	.cfi_def_cfa_register r7
.Ltmp15:
	.loc	1 35 0 prologue_end
	bl	PendSV_Handler
.Ltmp16:
	.loc	1 35 0 is_stmt 0
	pop	{r7, pc}
.Ltmp17:
.Lfunc_end5:
	.size	_ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE, .Lfunc_end5-_ZN15bluepill_usbhid15pend_sv_handler17h57b6389abb3efb5aE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE
	.p2align	1
	.type	_ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE:
.Lfunc_begin6:
	.loc	1 36 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi24:
	.cfi_def_cfa_offset 8
.Lcfi25:
	.cfi_offset lr, -4
.Lcfi26:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi27:
	.cfi_def_cfa_register r7
.Ltmp18:
	.loc	1 36 0 prologue_end
	bl	SysTick_Handler
.Ltmp19:
	.loc	1 36 0 is_stmt 0
	pop	{r7, pc}
.Ltmp20:
.Lfunc_end6:
	.size	_ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE, .Lfunc_end6-_ZN15bluepill_usbhid15systick_handler17hfd4d06055b45944aE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE,"ax",%progbits
	.globl	_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE
	.p2align	1
	.type	_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE:
.Lfunc_begin7:
	.loc	1 37 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi28:
	.cfi_def_cfa_offset 8
.Lcfi29:
	.cfi_offset lr, -4
.Lcfi30:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi31:
	.cfi_def_cfa_register r7
.Ltmp21:
	.loc	1 37 0 prologue_end
	bl	USB_LP_CAN1_RX0_IRQHandler
.Ltmp22:
	.loc	1 37 0 is_stmt 0
	pop	{r7, pc}
.Ltmp23:
.Lfunc_end7:
	.size	_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE, .Lfunc_end7-_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandler17h31b925f623e2ca6aE
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E
	.p2align	2
	.type	_ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E:
.Lfunc_begin8:
	.loc	1 39 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi32:
	.cfi_def_cfa_offset 8
.Lcfi33:
	.cfi_offset lr, -4
.Lcfi34:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi35:
	.cfi_def_cfa_register r7
.Ltmp24:
	.loc	1 41 0 prologue_end
	cmp	r1, #0
	beq	.LBB8_4
.Ltmp25:
	uxth	r1, r2
.Ltmp26:
	bl	USBD_CUSTOM_HID_SendReport_FS
.Ltmp27:
	mov	r1, r0
	movs	r0, #1
	movs	r2, #0
	cmp	r1, #0
	beq	.LBB8_3
	mov	r0, r2
.Ltmp28:
.LBB8_3:
	.loc	1 43 0
	pop	{r7, pc}
.LBB8_4:
.Ltmp29:
	.loc	1 41 0
	ldr	r0, .LCPI8_0
	movs	r1, #0
.Ltmp30:
	mov	r2, r1
.Ltmp31:
	bl	_ZN4core9panicking18panic_bounds_check17he1dc5c093ac62635E
	.inst.n	0xdefe
.Ltmp32:
	.p2align	2
	.loc	1 0 0 is_stmt 0
.LCPI8_0:
	.long	panic_bounds_check_loc.1
.Lfunc_end8:
	.size	_ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E, .Lfunc_end8-_ZN15bluepill_usbhid8hid_send17h5ebcba0b7a0e2521E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E
	.p2align	1
	.type	_ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E:
.Lfunc_begin9:
	.loc	1 45 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi36:
	.cfi_def_cfa_offset 8
.Lcfi37:
	.cfi_offset lr, -4
.Lcfi38:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi39:
	.cfi_def_cfa_register r7
.Ltmp33:
	.loc	1 45 0 prologue_end
	bl	HAL_Delay
.Ltmp34:
	.loc	1 45 0 is_stmt 0
	pop	{r7, pc}
.Ltmp35:
.Lfunc_end9:
	.size	_ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E, .Lfunc_end9-_ZN15bluepill_usbhid9hal_delay17h4ba80085f0789525E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E
	.p2align	1
	.type	_ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E:
.Lfunc_begin10:
	.loc	1 46 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi40:
	.cfi_def_cfa_offset 8
.Lcfi41:
	.cfi_offset lr, -4
.Lcfi42:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi43:
	.cfi_def_cfa_register r7
.Ltmp36:
	.loc	1 46 0 prologue_end
	bl	HAL_Init
.Ltmp37:
	.loc	1 46 0 is_stmt 0
	pop	{r7, pc}
.Ltmp38:
.Lfunc_end10:
	.size	_ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E, .Lfunc_end10-_ZN15bluepill_usbhid8hal_init17hbaba4110ac5c6d40E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E
	.p2align	1
	.type	_ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E:
.Lfunc_begin11:
	.loc	1 48 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi44:
	.cfi_def_cfa_offset 8
.Lcfi45:
	.cfi_offset lr, -4
.Lcfi46:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi47:
	.cfi_def_cfa_register r7
.Ltmp39:
	.loc	1 48 0 prologue_end
	bl	SystemClock_Config
.Ltmp40:
	.loc	1 48 0 is_stmt 0
	pop	{r7, pc}
.Ltmp41:
.Lfunc_end11:
	.size	_ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E, .Lfunc_end11-_ZN15bluepill_usbhid19system_clock_config17h12ba6015151b5329E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E
	.p2align	1
	.type	_ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E:
.Lfunc_begin12:
	.loc	1 49 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi48:
	.cfi_def_cfa_offset 8
.Lcfi49:
	.cfi_offset lr, -4
.Lcfi50:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi51:
	.cfi_def_cfa_register r7
.Ltmp42:
	.loc	1 49 0 prologue_end
	bl	MX_GPIO_Init
.Ltmp43:
	.loc	1 49 0 is_stmt 0
	pop	{r7, pc}
.Ltmp44:
.Lfunc_end12:
	.size	_ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E, .Lfunc_end12-_ZN15bluepill_usbhid9gpio_init17h817c8d235da91750E
	.cfi_endproc
	.cantunwind
	.fnend

	.section	.text._ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E,"ax",%progbits
	.globl	_ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E
	.p2align	1
	.type	_ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E,%function
	.code	16
	.thumb_func
_ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E:
.Lfunc_begin13:
	.loc	1 50 0 is_stmt 1
	.fnstart
	.cfi_startproc
	.save	{r7, lr}
	push	{r7, lr}
.Lcfi52:
	.cfi_def_cfa_offset 8
.Lcfi53:
	.cfi_offset lr, -4
.Lcfi54:
	.cfi_offset r7, -8
	.setfp	r7, sp
	add	r7, sp, #0
.Lcfi55:
	.cfi_def_cfa_register r7
.Ltmp45:
	.loc	1 50 0 prologue_end
	bl	MX_USB_DEVICE_Init
.Ltmp46:
	.loc	1 50 0 is_stmt 0
	pop	{r7, pc}
.Ltmp47:
.Lfunc_end13:
	.size	_ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E, .Lfunc_end13-_ZN15bluepill_usbhid8usb_init17hbb9dcddea2501e42E
	.cfi_endproc
	.cantunwind
	.fnend

	.type	str.0,%object
	.section	.rodata.str.0,"a",%progbits
	.p2align	4
str.0:
	.ascii	"/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/bluepill-usbhid-0.1.0/src/lib.rs"
	.size	str.0, 92

	.type	panic_bounds_check_loc.1,%object
	.section	.rodata.panic_bounds_check_loc.1,"a",%progbits
	.p2align	2
panic_bounds_check_loc.1:
	.long	str.0
	.long	92
	.long	41
	.long	44
	.size	panic_bounds_check_loc.1, 16

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.24.0-nightly (560a5da9f 2017-11-27))"
.Linfo_string1:
	.asciz	"/Users/arko/.cargo/registry/src/github.com-1ecc6299db9ec823/bluepill-usbhid-0.1.0/src/lib.rs"
.Linfo_string2:
	.asciz	"/Users/arko/GitHub/OneButton/Firmware/Rust"
.Linfo_string3:
	.asciz	"bluepill_usbhid"
.Linfo_string4:
	.asciz	"_ZN15bluepill_usbhid11nmi_handlerE"
.Linfo_string5:
	.asciz	"nmi_handler"
.Linfo_string6:
	.asciz	"_ZN15bluepill_usbhid17hardfault_handlerE"
.Linfo_string7:
	.asciz	"hardfault_handler"
.Linfo_string8:
	.asciz	"_ZN15bluepill_usbhid18mem_manage_handlerE"
.Linfo_string9:
	.asciz	"mem_manage_handler"
.Linfo_string10:
	.asciz	"_ZN15bluepill_usbhid17bus_fault_handlerE"
.Linfo_string11:
	.asciz	"bus_fault_handler"
.Linfo_string12:
	.asciz	"_ZN15bluepill_usbhid11svc_handlerE"
.Linfo_string13:
	.asciz	"svc_handler"
.Linfo_string14:
	.asciz	"_ZN15bluepill_usbhid15pend_sv_handlerE"
.Linfo_string15:
	.asciz	"pend_sv_handler"
.Linfo_string16:
	.asciz	"_ZN15bluepill_usbhid15systick_handlerE"
.Linfo_string17:
	.asciz	"systick_handler"
.Linfo_string18:
	.asciz	"_ZN15bluepill_usbhid26usb_lp_can1_rx0_irqhandlerE"
.Linfo_string19:
	.asciz	"usb_lp_can1_rx0_irqhandler"
.Linfo_string20:
	.asciz	"_ZN15bluepill_usbhid8hid_sendE"
.Linfo_string21:
	.asciz	"hid_send"
.Linfo_string22:
	.asciz	"bool"
.Linfo_string23:
	.asciz	"_ZN15bluepill_usbhid9hal_delayE"
.Linfo_string24:
	.asciz	"hal_delay"
.Linfo_string25:
	.asciz	"_ZN15bluepill_usbhid8hal_initE"
.Linfo_string26:
	.asciz	"hal_init"
.Linfo_string27:
	.asciz	"_ZN15bluepill_usbhid19system_clock_configE"
.Linfo_string28:
	.asciz	"system_clock_config"
.Linfo_string29:
	.asciz	"_ZN15bluepill_usbhid9gpio_initE"
.Linfo_string30:
	.asciz	"gpio_init"
.Linfo_string31:
	.asciz	"_ZN15bluepill_usbhid8usb_initE"
.Linfo_string32:
	.asciz	"usb_init"
.Linfo_string33:
	.asciz	"buffer"
.Linfo_string34:
	.asciz	"data_ptr"
.Linfo_string35:
	.asciz	"u8"
.Linfo_string36:
	.asciz	"*const u8"
.Linfo_string37:
	.asciz	"length"
.Linfo_string38:
	.asciz	"usize"
.Linfo_string39:
	.asciz	"&mut [u8]"
.Linfo_string40:
	.asciz	"delay"
.Linfo_string41:
	.asciz	"u32"
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin8
	.long	.Ltmp26
	.short	6
	.byte	80
	.byte	147
	.byte	4
	.byte	81
	.byte	147
	.byte	4
	.long	.Ltmp29
	.long	.Ltmp30
	.short	6
	.byte	80
	.byte	147
	.byte	4
	.byte	81
	.byte	147
	.byte	4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin8
	.long	.Ltmp27
	.short	1
	.byte	82
	.long	.Ltmp29
	.long	.Ltmp31
	.short	1
	.byte	82
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin9
	.long	.Ltmp34
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
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	4
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
	.byte	5
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
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	7
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
	.byte	8
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
	.byte	9
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
	.byte	10
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	453
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
	.long	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string4
	.long	.Linfo_string5
	.byte	1
	.byte	30

	.byte	3
	.long	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string6
	.long	.Linfo_string7
	.byte	1
	.byte	31

	.byte	3
	.long	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	87
	.long	.Linfo_string8
	.long	.Linfo_string9
	.byte	1
	.byte	32

	.byte	3
	.long	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	87
	.long	.Linfo_string10
	.long	.Linfo_string11
	.byte	1
	.byte	33

	.byte	3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	87
	.long	.Linfo_string12
	.long	.Linfo_string13
	.byte	1
	.byte	34

	.byte	3
	.long	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	87
	.long	.Linfo_string14
	.long	.Linfo_string15
	.byte	1
	.byte	35

	.byte	3
	.long	.Lfunc_begin6
	.long	.Lfunc_end6-.Lfunc_begin6
	.byte	1
	.byte	87
	.long	.Linfo_string16
	.long	.Linfo_string17
	.byte	1
	.byte	36

	.byte	3
	.long	.Lfunc_begin7
	.long	.Lfunc_end7-.Lfunc_begin7
	.byte	1
	.byte	87
	.long	.Linfo_string18
	.long	.Linfo_string19
	.byte	1
	.byte	37

	.byte	4
	.long	.Lfunc_begin8
	.long	.Lfunc_end8-.Lfunc_begin8
	.byte	1
	.byte	87
	.long	.Linfo_string20
	.long	.Linfo_string21
	.byte	1
	.byte	39
	.long	389

	.byte	5
	.long	.Ldebug_loc0
	.long	.Linfo_string33
	.byte	1
	.byte	1
	.long	396
	.byte	5
	.long	.Ldebug_loc1
	.long	.Linfo_string37
	.byte	1
	.byte	1
	.long	442
	.byte	0
	.byte	6
	.long	.Lfunc_begin9
	.long	.Lfunc_end9-.Lfunc_begin9
	.byte	1
	.byte	87
	.long	.Linfo_string23
	.long	.Linfo_string24
	.byte	1
	.byte	45

	.byte	5
	.long	.Ldebug_loc2
	.long	.Linfo_string40
	.byte	1
	.byte	1
	.long	449
	.byte	0
	.byte	3
	.long	.Lfunc_begin10
	.long	.Lfunc_end10-.Lfunc_begin10
	.byte	1
	.byte	87
	.long	.Linfo_string25
	.long	.Linfo_string26
	.byte	1
	.byte	46

	.byte	3
	.long	.Lfunc_begin11
	.long	.Lfunc_end11-.Lfunc_begin11
	.byte	1
	.byte	87
	.long	.Linfo_string27
	.long	.Linfo_string28
	.byte	1
	.byte	48

	.byte	3
	.long	.Lfunc_begin12
	.long	.Lfunc_end12-.Lfunc_begin12
	.byte	1
	.byte	87
	.long	.Linfo_string29
	.long	.Linfo_string30
	.byte	1
	.byte	49

	.byte	3
	.long	.Lfunc_begin13
	.long	.Lfunc_end13-.Lfunc_begin13
	.byte	1
	.byte	87
	.long	.Linfo_string31
	.long	.Linfo_string32
	.byte	1
	.byte	50

	.byte	0
	.byte	7
	.long	.Linfo_string22
	.byte	2
	.byte	1
	.byte	8
	.long	.Linfo_string39
	.byte	8
	.byte	4
	.byte	9
	.long	.Linfo_string34
	.long	426
	.byte	4
	.byte	0
	.byte	9
	.long	.Linfo_string37
	.long	442
	.byte	4
	.byte	4
	.byte	0
	.byte	10
	.long	435
	.long	.Linfo_string36
	.byte	7
	.long	.Linfo_string35
	.byte	7
	.byte	1
	.byte	7
	.long	.Linfo_string38
	.byte	7
	.byte	4
	.byte	7
	.long	.Linfo_string41
	.byte	7
	.byte	4
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
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.long	.Lfunc_begin8
	.long	.Lfunc_end8
	.long	.Lfunc_begin9
	.long	.Lfunc_end9
	.long	.Lfunc_begin10
	.long	.Lfunc_end10
	.long	.Lfunc_begin11
	.long	.Lfunc_end11
	.long	.Lfunc_begin12
	.long	.Lfunc_end12
	.long	.Lfunc_begin13
	.long	.Lfunc_end13
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
	.long	457
	.long	43
	.asciz	"nmi_handler"
	.long	106
	.asciz	"bus_fault_handler"
	.long	267
	.asciz	"hal_delay"
	.long	85
	.asciz	"mem_manage_handler"
	.long	325
	.asciz	"system_clock_config"
	.long	169
	.asciz	"systick_handler"
	.long	304
	.asciz	"hal_init"
	.long	127
	.asciz	"svc_handler"
	.long	190
	.asciz	"usb_lp_can1_rx0_irqhandler"
	.long	148
	.asciz	"pend_sv_handler"
	.long	346
	.asciz	"gpio_init"
	.long	38
	.asciz	"bluepill_usbhid"
	.long	64
	.asciz	"hardfault_handler"
	.long	367
	.asciz	"usb_init"
	.long	211
	.asciz	"hid_send"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0
.LpubTypes_begin0:
	.short	2
	.long	.Lcu_begin0
	.long	457
	.long	442
	.asciz	"usize"
	.long	396
	.asciz	"&mut [u8]"
	.long	449
	.asciz	"u32"
	.long	389
	.asciz	"bool"
	.long	435
	.asciz	"u8"
	.long	426
	.asciz	"*const u8"
	.long	0
.LpubTypes_end0:

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 3
	.section	.debug_line,"",%progbits
.Lline_table_start0:
