	.file	"ee_oo_sched_entry_points.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_task_end,"ax",@progbits
.global	osEE_scheduler_task_end
	.type	osEE_scheduler_task_end, @function
osEE_scheduler_task_end:
.LFB62:
	.file 1 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_oo_sched_entry_points.c"
	.loc 1 74 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
.LCFI2:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 78 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_terminated
.LVL0:
.LBB51:
.LBB52:
	.file 2 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_hal_internal.h"
	.loc 2 185 0
	movw r22,r24
	ldd r24,Y+1
	ldd r25,Y+2
.LVL1:
	call osEE_change_context_from_task_end
.LVL2:
/* epilogue start */
.LBE52:
.LBE51:
	.loc 1 86 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE62:
	.size	osEE_scheduler_task_end, .-osEE_scheduler_task_end
	.section	.text.osEE_scheduler_task_wrapper_restore,"ax",@progbits
.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
.LFB63:
	.loc 1 94 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	.loc 1 150 0
	ret
	.cfi_endproc
.LFE63:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB64:
	.loc 1 157 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24
.LVL5:
	.loc 1 158 0
	ldd r30,Y+4
	ldd r31,Y+5
	.loc 1 161 0
	ldd r24,Z+1
.LVL6:
	cpi r24,lo8(-1)
	breq .L4
.LVL7:
.LBB66:
.LBB67:
	.loc 2 105 0
/* #APP */
 ;  105 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL8:
/* #NOAPP */
.L4:
.LBE67:
.LBE66:
	.loc 1 166 0
	ldd r30,Y+9
	ldd r31,Y+10
	icall
.LVL9:
.LBB68:
.LBB69:
.LBB70:
.LBB71:
.LBB72:
.LBB73:
	.loc 2 111 0
	in r24,__SREG__
.LBB74:
.LBB75:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE75:
.LBE74:
.LBE73:
.LBE72:
.LBE71:
.LBE70:
.LBB76:
.LBB77:
	.file 3 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_std_change_context.h"
	.loc 3 136 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.LVL11:
.LBE77:
.LBE76:
.LBE69:
.LBE68:
	.cfi_endproc
.LFE64:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB65:
	.loc 1 177 0
	.cfi_startproc
	push r16
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LBB78:
.LBB79:
.LBB80:
.LBB81:
	.loc 2 111 0
	in r28,__SREG__
.LVL12:
.LBB82:
.LBB83:
	.loc 2 100 0
/* #APP */
 ;  100 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL13:
/* #NOAPP */
.LBE83:
.LBE82:
.LBE81:
.LBE80:
.LBE79:
.LBE78:
	.loc 1 183 0
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_preemption_point
.LVL14:
.LBB84:
.LBB85:
.LBB86:
.LBB87:
	.loc 2 118 0
	.loc 2 119 0
	out __SREG__,r28
.LBE87:
.LBE86:
.LBE85:
.LBE84:
	.loc 1 186 0
	lds r16,CDB
	lds r17,CDB+1
.LBB88:
	.loc 1 188 0
	lds r28,CDB+2
	lds r29,CDB+2+1
.L9:
.LBE88:
	.loc 1 186 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
.L10:
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L11
	.loc 1 196 0
	lds r24,CDB+4
	lds r25,CDB+4+1
/* epilogue start */
	.loc 1 197 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 196 0
	jmp osEE_idle_task_terminate
.LVL15:
.L11:
.LBB89:
	.loc 1 189 0
	sbiw r28,0
	breq .L10
	.loc 1 190 0
	movw r30,r28
	icall
.LVL16:
	rjmp .L9
.LBE89:
	.cfi_endproc
.LFE65:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.text
.Letext0:
	.file 4 "/home/user/arduino-1.8.13/hardware/tools/avr/avr/include/stdint.h"
	.file 5 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_platform_types.h"
	.file 6 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_api_types.h"
	.file 7 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_hal_internal_types.h"
	.file 8 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_scheduler_types.h"
	.file 9 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_kernel_types.h"
	.file 10 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_get_kernel_and_core.h"
	.file 11 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_kernel.h"
	.file 12 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10e6
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF237
	.byte	0xc
	.long	.LASF238
	.long	.LASF239
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x4
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
	.byte	0x80
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.byte	0x56
	.long	0x98
	.uleb128 0x6
	.long	.LASF10
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x5
	.byte	0x59
	.long	0x7e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x5f
	.long	0x4c
	.uleb128 0x7
	.long	0xa3
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x69
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x6c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0x71
	.long	0x5e
	.uleb128 0x8
	.byte	0x2
	.long	0xda
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF17
	.byte	0x6
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF18
	.byte	0x6
	.byte	0x45
	.long	0xa3
	.uleb128 0x4
	.long	.LASF19
	.byte	0x6
	.byte	0x4f
	.long	0x57
	.uleb128 0x7
	.long	0xf2
	.uleb128 0x4
	.long	.LASF20
	.byte	0x6
	.byte	0x5b
	.long	0x57
	.uleb128 0x4
	.long	.LASF21
	.byte	0x6
	.byte	0x66
	.long	0xd4
	.uleb128 0x7
	.long	0x10d
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x6d
	.long	0x147
	.uleb128 0x6
	.long	.LASF22
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.uleb128 0x6
	.long	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x6
	.byte	0x72
	.long	0x11d
	.uleb128 0x4
	.long	.LASF27
	.byte	0x6
	.byte	0x74
	.long	0x147
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x76
	.long	0x193
	.uleb128 0x6
	.long	.LASF30
	.byte	0
	.uleb128 0x6
	.long	.LASF31
	.byte	0x1
	.uleb128 0x6
	.long	.LASF32
	.byte	0x2
	.uleb128 0x6
	.long	.LASF33
	.byte	0x3
	.uleb128 0x6
	.long	.LASF34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x6
	.byte	0x7f
	.long	0x15d
	.uleb128 0x4
	.long	.LASF37
	.byte	0x6
	.byte	0x86
	.long	0x193
	.uleb128 0x4
	.long	.LASF38
	.byte	0x6
	.byte	0x93
	.long	0xbe
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.byte	0xa0
	.long	0x1e7
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0xa2
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0xa5
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0xa9
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x6
	.byte	0xab
	.long	0x1b4
	.uleb128 0x4
	.long	.LASF43
	.byte	0x6
	.byte	0xc8
	.long	0xc9
	.uleb128 0x4
	.long	.LASF44
	.byte	0x6
	.byte	0xdc
	.long	0xb3
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0xe4
	.long	0x2c2
	.uleb128 0x6
	.long	.LASF46
	.byte	0
	.uleb128 0x6
	.long	.LASF47
	.byte	0x1
	.uleb128 0x6
	.long	.LASF48
	.byte	0x2
	.uleb128 0x6
	.long	.LASF49
	.byte	0x3
	.uleb128 0x6
	.long	.LASF50
	.byte	0x4
	.uleb128 0x6
	.long	.LASF51
	.byte	0x5
	.uleb128 0x6
	.long	.LASF52
	.byte	0x6
	.uleb128 0x6
	.long	.LASF53
	.byte	0x7
	.uleb128 0x6
	.long	.LASF54
	.byte	0x8
	.uleb128 0x6
	.long	.LASF55
	.byte	0x9
	.uleb128 0x6
	.long	.LASF56
	.byte	0xa
	.uleb128 0x6
	.long	.LASF57
	.byte	0xb
	.uleb128 0x6
	.long	.LASF58
	.byte	0xc
	.uleb128 0x6
	.long	.LASF59
	.byte	0xd
	.uleb128 0x6
	.long	.LASF60
	.byte	0xe
	.uleb128 0x6
	.long	.LASF61
	.byte	0xf
	.uleb128 0x6
	.long	.LASF62
	.byte	0x10
	.uleb128 0x6
	.long	.LASF63
	.byte	0x11
	.uleb128 0x6
	.long	.LASF64
	.byte	0x12
	.uleb128 0x6
	.long	.LASF65
	.byte	0x13
	.uleb128 0x6
	.long	.LASF66
	.byte	0x14
	.uleb128 0x6
	.long	.LASF67
	.byte	0x15
	.uleb128 0x6
	.long	.LASF68
	.byte	0x16
	.uleb128 0x6
	.long	.LASF69
	.byte	0x17
	.uleb128 0x6
	.long	.LASF70
	.byte	0x18
	.uleb128 0x6
	.long	.LASF71
	.byte	0x19
	.uleb128 0x6
	.long	.LASF72
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF73
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x6
	.word	0x106
	.long	0x208
	.uleb128 0xd
	.long	.LASF75
	.byte	0x6
	.word	0x108
	.long	0x2c2
	.uleb128 0xe
	.long	.LASF78
	.byte	0x14
	.byte	0x7
	.byte	0x3f
	.long	0x3e9
	.uleb128 0xf
	.string	"r29"
	.byte	0x7
	.byte	0x40
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"r28"
	.byte	0x7
	.byte	0x41
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"r17"
	.byte	0x7
	.byte	0x42
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"r16"
	.byte	0x7
	.byte	0x43
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.string	"r15"
	.byte	0x7
	.byte	0x44
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"r14"
	.byte	0x7
	.byte	0x45
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xf
	.string	"r13"
	.byte	0x7
	.byte	0x46
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"r12"
	.byte	0x7
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.string	"r11"
	.byte	0x7
	.byte	0x48
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"r10"
	.byte	0x7
	.byte	0x49
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.string	"r9"
	.byte	0x7
	.byte	0x4a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.string	"r8"
	.byte	0x7
	.byte	0x4b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.string	"r7"
	.byte	0x7
	.byte	0x4c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"r6"
	.byte	0x7
	.byte	0x4d
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"r5"
	.byte	0x7
	.byte	0x4e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"r4"
	.byte	0x7
	.byte	0x4f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.string	"r3"
	.byte	0x7
	.byte	0x50
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"r2"
	.byte	0x7
	.byte	0x51
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF76
	.byte	0x7
	.byte	0x52
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x2da
	.uleb128 0x4
	.long	.LASF77
	.byte	0x7
	.byte	0x53
	.long	0x2da
	.uleb128 0xe
	.long	.LASF79
	.byte	0x2
	.byte	0x7
	.byte	0x56
	.long	0x415
	.uleb128 0xc
	.long	.LASF80
	.byte	0x7
	.byte	0x57
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x3ef
	.uleb128 0x4
	.long	.LASF81
	.byte	0x7
	.byte	0x58
	.long	0x3fa
	.uleb128 0xe
	.long	.LASF82
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.long	0x44f
	.uleb128 0xc
	.long	.LASF83
	.byte	0x7
	.byte	0x5b
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF84
	.byte	0x7
	.byte	0x5c
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x426
	.uleb128 0x4
	.long	.LASF85
	.byte	0x7
	.byte	0x5d
	.long	0x44f
	.uleb128 0xe
	.long	.LASF86
	.byte	0x4
	.byte	0x7
	.byte	0x5f
	.long	0x488
	.uleb128 0xc
	.long	.LASF87
	.byte	0x7
	.byte	0x60
	.long	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF88
	.byte	0x7
	.byte	0x61
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x45f
	.uleb128 0x8
	.byte	0x2
	.long	0x454
	.uleb128 0x8
	.byte	0x2
	.long	0x41b
	.uleb128 0x4
	.long	.LASF89
	.byte	0x7
	.byte	0x65
	.long	0x488
	.uleb128 0xe
	.long	.LASF90
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.long	0x4cd
	.uleb128 0xc
	.long	.LASF91
	.byte	0x8
	.byte	0x46
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x8
	.byte	0x47
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x4a4
	.uleb128 0xe
	.long	.LASF93
	.byte	0xe
	.byte	0x9
	.byte	0xac
	.long	0x550
	.uleb128 0xf
	.string	"hdb"
	.byte	0x9
	.byte	0xad
	.long	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF94
	.byte	0x9
	.byte	0xae
	.long	0x6bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"tid"
	.byte	0x9
	.byte	0xaf
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF95
	.byte	0x9
	.byte	0xb0
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF96
	.byte	0x9
	.byte	0xb1
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF97
	.byte	0x9
	.byte	0xb2
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF98
	.byte	0x9
	.byte	0xb3
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF99
	.byte	0x9
	.byte	0xb4
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.long	0x4d3
	.uleb128 0x8
	.byte	0x2
	.long	0x550
	.uleb128 0x4
	.long	.LASF100
	.byte	0x8
	.byte	0x48
	.long	0x4a4
	.uleb128 0x4
	.long	.LASF101
	.byte	0x8
	.byte	0x9f
	.long	0x571
	.uleb128 0x8
	.byte	0x2
	.long	0x55b
	.uleb128 0x4
	.long	.LASF102
	.byte	0x9
	.byte	0x50
	.long	0xd4
	.uleb128 0x4
	.long	.LASF103
	.byte	0x9
	.byte	0x52
	.long	0x57
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0x71
	.long	0x5b3
	.uleb128 0x6
	.long	.LASF104
	.byte	0
	.uleb128 0x6
	.long	.LASF105
	.byte	0x1
	.uleb128 0x6
	.long	.LASF106
	.byte	0x2
	.uleb128 0x6
	.long	.LASF107
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF108
	.byte	0x9
	.byte	0x79
	.long	0x58d
	.uleb128 0xe
	.long	.LASF109
	.byte	0x5
	.byte	0x9
	.byte	0x7f
	.long	0x5f5
	.uleb128 0xc
	.long	.LASF91
	.byte	0x9
	.byte	0x80
	.long	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF110
	.byte	0x9
	.byte	0x81
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF111
	.byte	0x9
	.byte	0x83
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF112
	.byte	0x3
	.byte	0x9
	.byte	0x91
	.long	0x61e
	.uleb128 0xc
	.long	.LASF113
	.byte	0x9
	.byte	0x92
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x9
	.byte	0x93
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x5f5
	.uleb128 0x8
	.byte	0x2
	.long	0x61e
	.uleb128 0x4
	.long	.LASF115
	.byte	0x9
	.byte	0x88
	.long	0x5be
	.uleb128 0x8
	.byte	0x2
	.long	0x629
	.uleb128 0x4
	.long	.LASF116
	.byte	0x9
	.byte	0x99
	.long	0x61e
	.uleb128 0xe
	.long	.LASF117
	.byte	0xa
	.byte	0x9
	.byte	0x9c
	.long	0x6a6
	.uleb128 0xc
	.long	.LASF118
	.byte	0x9
	.byte	0x9d
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x9
	.byte	0x9e
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF120
	.byte	0x9
	.byte	0x9f
	.long	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF121
	.byte	0x9
	.byte	0xa1
	.long	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF122
	.byte	0x9
	.byte	0xa4
	.long	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF123
	.byte	0x9
	.byte	0xa5
	.long	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x63a
	.uleb128 0x7
	.long	0x6a6
	.uleb128 0x4
	.long	.LASF124
	.byte	0x9
	.byte	0xaa
	.long	0x645
	.uleb128 0x8
	.byte	0x2
	.long	0x6b1
	.uleb128 0x4
	.long	.LASF125
	.byte	0x9
	.byte	0xb8
	.long	0x550
	.uleb128 0x8
	.byte	0x2
	.long	0x6c2
	.uleb128 0x7
	.long	0x6cd
	.uleb128 0x4
	.long	.LASF126
	.byte	0x9
	.byte	0xcb
	.long	0x6e3
	.uleb128 0x8
	.byte	0x2
	.long	0x724
	.uleb128 0x10
	.long	.LASF127
	.byte	0xe
	.byte	0x9
	.word	0x110
	.long	0x724
	.uleb128 0x11
	.long	.LASF128
	.byte	0x9
	.word	0x111
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF129
	.byte	0x9
	.word	0x112
	.long	0x810
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF130
	.byte	0x9
	.word	0x116
	.long	0x84f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x6e9
	.uleb128 0xe
	.long	.LASF131
	.byte	0x4
	.byte	0x9
	.byte	0xcd
	.long	0x752
	.uleb128 0xc
	.long	.LASF132
	.byte	0x9
	.byte	0xce
	.long	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF133
	.byte	0x9
	.byte	0xcf
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF134
	.byte	0x9
	.byte	0xd3
	.long	0x729
	.uleb128 0xe
	.long	.LASF135
	.byte	0x8
	.byte	0x9
	.byte	0xdc
	.long	0x786
	.uleb128 0xc
	.long	.LASF136
	.byte	0x9
	.byte	0xdd
	.long	0x78b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF137
	.byte	0x9
	.byte	0xe1
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x75d
	.uleb128 0x8
	.byte	0x2
	.long	0x752
	.uleb128 0x4
	.long	.LASF138
	.byte	0x9
	.byte	0xe5
	.long	0x786
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0xe7
	.long	0x7c2
	.uleb128 0x6
	.long	.LASF139
	.byte	0
	.uleb128 0x6
	.long	.LASF140
	.byte	0x1
	.uleb128 0x6
	.long	.LASF141
	.byte	0x2
	.uleb128 0x6
	.long	.LASF142
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF143
	.byte	0x9
	.byte	0xec
	.long	0x79c
	.uleb128 0xe
	.long	.LASF144
	.byte	0x8
	.byte	0x9
	.byte	0xee
	.long	0x810
	.uleb128 0xf
	.string	"f"
	.byte	0x9
	.byte	0xef
	.long	0x577
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x9
	.byte	0xf0
	.long	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF129
	.byte	0x9
	.byte	0xf1
	.long	0x810
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF145
	.byte	0x9
	.byte	0xf3
	.long	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x791
	.uleb128 0x7
	.long	0x810
	.uleb128 0x4
	.long	.LASF144
	.byte	0x9
	.byte	0xf5
	.long	0x7cd
	.uleb128 0xe
	.long	.LASF146
	.byte	0xa
	.byte	0x9
	.byte	0xf7
	.long	0x84f
	.uleb128 0xc
	.long	.LASF147
	.byte	0x9
	.byte	0xf8
	.long	0x81b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x9
	.byte	0xf9
	.long	0x7c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF149
	.byte	0x9
	.byte	0xfa
	.long	0x826
	.uleb128 0x10
	.long	.LASF150
	.byte	0x8
	.byte	0x9
	.word	0x103
	.long	0x8a4
	.uleb128 0x11
	.long	.LASF91
	.byte	0x9
	.word	0x104
	.long	0x6e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF151
	.byte	0x9
	.word	0x105
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF152
	.byte	0x9
	.word	0x106
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF153
	.byte	0x9
	.word	0x109
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x9
	.word	0x10e
	.long	0x85a
	.uleb128 0x8
	.byte	0x2
	.long	0x8a4
	.uleb128 0xd
	.long	.LASF155
	.byte	0x9
	.word	0x11a
	.long	0x724
	.uleb128 0x10
	.long	.LASF156
	.byte	0x6
	.byte	0x9
	.word	0x11d
	.long	0x8fd
	.uleb128 0x11
	.long	.LASF157
	.byte	0x9
	.word	0x11e
	.long	0x902
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF158
	.byte	0x9
	.word	0x11f
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF153
	.byte	0x9
	.word	0x120
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x8c2
	.uleb128 0x8
	.byte	0x2
	.long	0x8b6
	.uleb128 0xd
	.long	.LASF159
	.byte	0x9
	.word	0x121
	.long	0x8fd
	.uleb128 0x10
	.long	.LASF160
	.byte	0x4
	.byte	0x9
	.word	0x123
	.long	0x940
	.uleb128 0x11
	.long	.LASF161
	.byte	0x9
	.word	0x124
	.long	0x950
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF162
	.byte	0x9
	.word	0x125
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x914
	.uleb128 0x12
	.long	0x908
	.long	0x950
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x945
	.uleb128 0xd
	.long	.LASF163
	.byte	0x9
	.word	0x126
	.long	0x940
	.uleb128 0xd
	.long	.LASF164
	.byte	0x9
	.word	0x135
	.long	0x8b6
	.uleb128 0x10
	.long	.LASF165
	.byte	0x4
	.byte	0x9
	.word	0x13c
	.long	0x99a
	.uleb128 0x11
	.long	.LASF166
	.byte	0x9
	.word	0x13d
	.long	0x9aa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF167
	.byte	0x9
	.word	0x13e
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x96e
	.uleb128 0x12
	.long	0x6d3
	.long	0x9aa
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x99f
	.uleb128 0xd
	.long	.LASF168
	.byte	0x9
	.word	0x13f
	.long	0x99a
	.uleb128 0x10
	.long	.LASF169
	.byte	0x12
	.byte	0x9
	.word	0x142
	.long	0xa7d
	.uleb128 0x11
	.long	.LASF170
	.byte	0x9
	.word	0x143
	.long	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"rq"
	.byte	0x9
	.word	0x148
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF171
	.byte	0x9
	.word	0x149
	.long	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF172
	.byte	0x9
	.word	0x14e
	.long	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF173
	.byte	0x9
	.word	0x14f
	.long	0x5b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF174
	.byte	0x9
	.word	0x150
	.long	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF175
	.byte	0x9
	.word	0x152
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF176
	.byte	0x9
	.word	0x163
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.long	.LASF177
	.byte	0x9
	.word	0x164
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF178
	.byte	0x9
	.word	0x165
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF179
	.byte	0x9
	.word	0x166
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF180
	.byte	0x9
	.word	0x167
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x9
	.word	0x16b
	.long	0x9bc
	.uleb128 0x10
	.long	.LASF182
	.byte	0x10
	.byte	0x9
	.word	0x16d
	.long	0xb0f
	.uleb128 0x11
	.long	.LASF183
	.byte	0x9
	.word	0x171
	.long	0xb14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF184
	.byte	0x9
	.word	0x173
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF185
	.byte	0x9
	.word	0x175
	.long	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF186
	.byte	0x9
	.word	0x177
	.long	0x810
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF187
	.byte	0x9
	.word	0x17a
	.long	0xb25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF188
	.byte	0x9
	.word	0x17b
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF189
	.byte	0x9
	.word	0x17e
	.long	0xb36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF190
	.byte	0x9
	.word	0x17f
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.long	0xa89
	.uleb128 0x8
	.byte	0x2
	.long	0xa7d
	.uleb128 0x12
	.long	0x9b0
	.long	0xb25
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xb1a
	.uleb128 0x12
	.long	0x956
	.long	0xb36
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xb2b
	.uleb128 0xd
	.long	.LASF191
	.byte	0x9
	.word	0x184
	.long	0xb0f
	.uleb128 0x10
	.long	.LASF192
	.byte	0x1
	.byte	0x9
	.word	0x186
	.long	0xb65
	.uleb128 0x11
	.long	.LASF193
	.byte	0x9
	.word	0x19c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF194
	.byte	0x9
	.word	0x19e
	.long	0xb48
	.uleb128 0x10
	.long	.LASF195
	.byte	0x16
	.byte	0x9
	.word	0x1a0
	.long	0xc24
	.uleb128 0x11
	.long	.LASF196
	.byte	0x9
	.word	0x1a1
	.long	0xc29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF166
	.byte	0x9
	.word	0x1a8
	.long	0x9aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF197
	.byte	0x9
	.word	0x1ae
	.long	0xc3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF167
	.byte	0x9
	.word	0x1b0
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF198
	.byte	0x9
	.word	0x1b1
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF199
	.byte	0x9
	.word	0x1b3
	.long	0xc4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF200
	.byte	0x9
	.word	0x1b4
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF201
	.byte	0x9
	.word	0x1b7
	.long	0xc5c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF202
	.byte	0x9
	.word	0x1b8
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF203
	.byte	0x9
	.word	0x1ba
	.long	0xc78
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x11
	.long	.LASF204
	.byte	0x9
	.word	0x1bb
	.long	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.long	0xb71
	.uleb128 0x8
	.byte	0x2
	.long	0xb65
	.uleb128 0x12
	.long	0x55b
	.long	0xc3a
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xc2f
	.uleb128 0x12
	.long	0x6ac
	.long	0xc4b
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xc40
	.uleb128 0x12
	.long	0x816
	.long	0xc5c
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xc51
	.uleb128 0x12
	.long	0xc73
	.long	0xc6d
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x962
	.uleb128 0x7
	.long	0xc6d
	.uleb128 0x8
	.byte	0x2
	.long	0xc62
	.uleb128 0xd
	.long	.LASF205
	.byte	0x9
	.word	0x1c1
	.long	0xc24
	.uleb128 0x15
	.string	"KDB"
	.byte	0xa
	.byte	0x3b
	.long	0xc7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CDB"
	.byte	0xa
	.byte	0x3c
	.long	0xb3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"KCB"
	.byte	0xa
	.byte	0x3d
	.long	0xb65
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CCB"
	.byte	0xa
	.byte	0x3e
	.long	0xa7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF208
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST6
	.byte	0x1
	.long	0xdb8
	.uleb128 0x17
	.long	.LASF206
	.byte	0x1
	.byte	0xb3
	.long	0xdbe
	.uleb128 0x17
	.long	.LASF207
	.byte	0x1
	.byte	0xb6
	.long	0xae
	.uleb128 0x18
	.long	.Ldebug_ranges0+0
	.long	0xd0b
	.uleb128 0x17
	.long	.LASF184
	.byte	0x1
	.byte	0xbc
	.long	0x118
	.uleb128 0x19
	.long	.LVL16
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	0xf83
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.byte	0xb6
	.long	0xd61
	.uleb128 0x1b
	.long	0xfcd
	.long	.LBB79
	.long	.LBE79
	.byte	0xb
	.byte	0x88
	.uleb128 0x1b
	.long	0x100c
	.long	.LBB80
	.long	.LBE80
	.byte	0x2
	.byte	0x8e
	.uleb128 0x1c
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x1d
	.long	0x101d
	.long	.LLST7
	.uleb128 0x1e
	.long	0x1031
	.long	.LBB82
	.long	.LBE82
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0xf6a
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0xb8
	.long	0xda4
	.uleb128 0x1f
	.long	0xf77
	.uleb128 0x1b
	.long	0xfb4
	.long	.LBB85
	.long	.LBE85
	.byte	0xb
	.byte	0x91
	.uleb128 0x1f
	.long	0xfc1
	.uleb128 0x1b
	.long	0xff3
	.long	.LBB86
	.long	.LBE86
	.byte	0x2
	.byte	0x95
	.uleb128 0x1f
	.long	0x1000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL14
	.long	0x10a7
	.uleb128 0x21
	.long	.LVL15
	.byte	0x1
	.long	0x10b4
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xb3c
	.uleb128 0x7
	.long	0xdb8
	.uleb128 0x22
	.byte	0x1
	.long	.LASF209
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xebb
	.uleb128 0x23
	.long	.LASF214
	.byte	0x1
	.byte	0x9b
	.long	0x6cd
	.long	.LLST4
	.uleb128 0x24
	.long	.LASF211
	.byte	0x1
	.byte	0x9e
	.long	0xfd
	.long	.LLST5
	.uleb128 0x1e
	.long	0x1028
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.byte	0xa4
	.uleb128 0x1b
	.long	0xf51
	.long	.LBB68
	.long	.LBE68
	.byte	0x1
	.byte	0xa9
	.uleb128 0x25
	.long	0xf5e
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	0xf83
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0x3e
	.long	0xe79
	.uleb128 0x1b
	.long	0xfcd
	.long	.LBB71
	.long	.LBE71
	.byte	0xb
	.byte	0x88
	.uleb128 0x1b
	.long	0x100c
	.long	.LBB72
	.long	.LBE72
	.byte	0x2
	.byte	0x8e
	.uleb128 0x1c
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x26
	.long	0x101d
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.long	0x1031
	.long	.LBB74
	.long	.LBE74
	.byte	0x2
	.byte	0x70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x103a
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.byte	0x40
	.uleb128 0x25
	.long	0x1047
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x25
	.long	0x1052
	.byte	0x6
	.byte	0x3
	.long	osEE_scheduler_task_end
	.byte	0x9f
	.uleb128 0x27
	.long	.LVL11
	.long	0x10c1
	.uleb128 0x28
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	osEE_scheduler_task_end
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF240
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.long	0xed5
	.uleb128 0x2a
	.long	.LASF214
	.byte	0x1
	.byte	0x5c
	.long	0x6cd
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF210
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST0
	.byte	0x1
	.long	0xf51
	.uleb128 0x24
	.long	.LASF212
	.byte	0x1
	.byte	0x4b
	.long	0x6cd
	.long	.LLST1
	.uleb128 0x2b
	.long	.LASF213
	.byte	0x1
	.byte	0x4c
	.long	0x6cd
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1a
	.long	0xf90
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.byte	0x54
	.long	0xf3b
	.uleb128 0x2c
	.long	0xfa8
	.long	.LLST1
	.uleb128 0x2c
	.long	0xf9d
	.long	.LLST3
	.uleb128 0x20
	.long	.LVL2
	.long	0x10ce
	.byte	0
	.uleb128 0x27
	.long	.LVL0
	.long	0x10dc
	.uleb128 0x28
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF216
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.long	0xf6a
	.uleb128 0x2a
	.long	.LASF215
	.byte	0x1
	.byte	0x3b
	.long	0x6cd
	.byte	0
	.uleb128 0x2d
	.long	.LASF217
	.byte	0xb
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0xf83
	.uleb128 0x2a
	.long	.LASF207
	.byte	0xb
	.byte	0x8e
	.long	0xa3
	.byte	0
	.uleb128 0x2e
	.long	.LASF221
	.byte	0xb
	.byte	0x83
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF218
	.byte	0x2
	.byte	0xb3
	.byte	0x1
	.byte	0x3
	.long	0xfb4
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x2
	.byte	0xb5
	.long	0x6cd
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x2
	.byte	0xb6
	.long	0x6cd
	.byte	0
	.uleb128 0x2d
	.long	.LASF219
	.byte	0x2
	.byte	0x93
	.byte	0x1
	.byte	0x3
	.long	0xfcd
	.uleb128 0x2a
	.long	.LASF220
	.byte	0x2
	.byte	0x93
	.long	0xa3
	.byte	0
	.uleb128 0x2e
	.long	.LASF222
	.byte	0x2
	.byte	0x8c
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF223
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.long	0xff3
	.uleb128 0x2a
	.long	.LASF224
	.byte	0x2
	.byte	0x7a
	.long	0xf2
	.byte	0
	.uleb128 0x2d
	.long	.LASF225
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.byte	0x3
	.long	0x100c
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x2
	.byte	0x74
	.long	0xa3
	.byte	0
	.uleb128 0x2f
	.long	.LASF241
	.byte	0x2
	.byte	0x6d
	.byte	0x1
	.long	0xa3
	.byte	0x3
	.long	0x1028
	.uleb128 0x30
	.string	"sr"
	.byte	0x2
	.byte	0x6f
	.long	0xa3
	.byte	0
	.uleb128 0x31
	.long	.LASF226
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x31
	.long	.LASF227
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF228
	.byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x3
	.long	0x105e
	.uleb128 0x2a
	.long	.LASF215
	.byte	0x3
	.byte	0x84
	.long	0x105e
	.uleb128 0x2a
	.long	.LASF229
	.byte	0x3
	.byte	0x85
	.long	0x577
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x499
	.uleb128 0x2e
	.long	.LASF230
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.long	0x1071
	.byte	0x3
	.uleb128 0x8
	.byte	0x2
	.long	0xc7e
	.uleb128 0x2e
	.long	.LASF231
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.long	0xdb8
	.byte	0x3
	.uleb128 0x32
	.long	0xebb
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x10a7
	.uleb128 0x25
	.long	0xec9
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF232
	.long	.LASF232
	.byte	0xc
	.byte	0x7c
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF233
	.long	.LASF233
	.byte	0x3
	.byte	0x96
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF234
	.long	.LASF234
	.byte	0x3
	.byte	0x72
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF235
	.long	.LASF235
	.byte	0x9
	.word	0x1de
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF236
	.long	.LASF236
	.byte	0xc
	.byte	0x9b
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.long	.LFB65
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE64
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x88
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL9-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST0:
	.long	.LFB62
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI3
	.long	.LFE62
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL2-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB88
	.long	.LBE88
	.long	.LBB89
	.long	.LBE89
	.long	0
	.long	0
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF194:
	.string	"OsEE_KCB"
.LASF128:
	.string	"p_trigger_cb"
.LASF215:
	.string	"p_to_term"
.LASF241:
	.string	"osEE_hal_suspendIRQ"
.LASF142:
	.string	"OSEE_ACTION_CALLBACK"
.LASF57:
	.string	"E_OS_MISSINGEND"
.LASF59:
	.string	"E_OS_STACKFAULT"
.LASF132:
	.string	"trigger_queue"
.LASF191:
	.string	"OsEE_CDB"
.LASF182:
	.string	"OsEE_CDB_tag"
.LASF32:
	.string	"OSEE_TASK_READY_STACKED"
.LASF167:
	.string	"tdb_array_size"
.LASF43:
	.string	"EventMaskType"
.LASF22:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF207:
	.string	"flags"
.LASF101:
	.string	"OsEE_RQ"
.LASF98:
	.string	"dispatch_prio"
.LASF157:
	.string	"p_trigger_db"
.LASF178:
	.string	"s_isr_all_cnt"
.LASF235:
	.string	"osEE_change_context_from_task_end"
.LASF210:
	.string	"osEE_scheduler_task_end"
.LASF0:
	.string	"unsigned int"
.LASF155:
	.string	"OsEE_TriggerDB"
.LASF184:
	.string	"p_idle_hook"
.LASF38:
	.string	"TickType"
.LASF186:
	.string	"p_sys_counter_db"
.LASF103:
	.string	"OsEE_byte"
.LASF55:
	.string	"E_OS_SERVICEID"
.LASF112:
	.string	"OsEE_MDB_tag"
.LASF145:
	.string	"mask"
.LASF150:
	.string	"OsEE_TriggerCB_tag"
.LASF199:
	.string	"p_res_ptr_array"
.LASF151:
	.string	"when"
.LASF193:
	.string	"dummy"
.LASF52:
	.string	"E_OS_RESOURCE"
.LASF100:
	.string	"OsEE_SN"
.LASF114:
	.string	"mtx_prio"
.LASF80:
	.string	"p_tos"
.LASF16:
	.string	"OsEE_event_mask"
.LASF40:
	.string	"ticksperbase"
.LASF154:
	.string	"OsEE_TriggerCB"
.LASF211:
	.string	"task_prio"
.LASF227:
	.string	"osEE_hal_disableIRQ"
.LASF51:
	.string	"E_OS_NOFUNC"
.LASF28:
	.string	"OsEE_task_type_tag"
.LASF152:
	.string	"active"
.LASF81:
	.string	"OsEE_SCB"
.LASF209:
	.string	"osEE_scheduler_task_wrapper_run"
.LASF123:
	.string	"event_mask"
.LASF185:
	.string	"p_idle_task"
.LASF15:
	.string	"OsEE_tick_type"
.LASF240:
	.string	"osEE_scheduler_task_wrapper_restore"
.LASF139:
	.string	"OSEE_ACTION_TASK"
.LASF26:
	.string	"OsEE_task_type"
.LASF231:
	.string	"osEE_get_curr_core"
.LASF97:
	.string	"ready_prio"
.LASF160:
	.string	"OsEE_autostart_trigger_tag"
.LASF85:
	.string	"OsEE_SDB"
.LASF104:
	.string	"OSEE_KERNEL_STOPPED"
.LASF9:
	.string	"long long unsigned int"
.LASF18:
	.string	"TaskType"
.LASF44:
	.string	"MemSize"
.LASF86:
	.string	"OsEE_HDB_tag"
.LASF234:
	.string	"osEE_hal_terminate_ctx"
.LASF136:
	.string	"p_counter_cb"
.LASF133:
	.string	"value"
.LASF96:
	.string	"task_func"
.LASF219:
	.string	"osEE_hal_end_nested_primitive"
.LASF37:
	.string	"TaskStateType"
.LASF46:
	.string	"E_OK"
.LASF197:
	.string	"p_sn_array"
.LASF119:
	.string	"current_prio"
.LASF192:
	.string	"OsEE_KCB_tag"
.LASF170:
	.string	"p_curr"
.LASF126:
	.string	"OsEE_TriggerQ"
.LASF141:
	.string	"OSEE_ACTION_COUNTER"
.LASF31:
	.string	"OSEE_TASK_READY"
.LASF94:
	.string	"p_tcb"
.LASF203:
	.string	"p_alarm_ptr_array"
.LASF172:
	.string	"p_stk_sn"
.LASF218:
	.string	"osEE_change_context_from_isr2_end"
.LASF14:
	.string	"OsEE_mem_size"
.LASF73:
	.string	"E_OS_SYS_ACT"
.LASF39:
	.string	"maxallowedvalue"
.LASF158:
	.string	"increment"
.LASF233:
	.string	"osEE_idle_task_terminate"
.LASF129:
	.string	"p_counter_db"
.LASF201:
	.string	"p_counter_ptr_array"
.LASF49:
	.string	"E_OS_ID"
.LASF42:
	.string	"AlarmBaseType"
.LASF108:
	.string	"OsEE_kernel_status"
.LASF92:
	.string	"p_tdb"
.LASF67:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF102:
	.string	"OsEE_kernel_cb"
.LASF50:
	.string	"E_OS_LIMIT"
.LASF190:
	.string	"autostart_trigger_array_size"
.LASF17:
	.string	"AppModeType"
.LASF220:
	.string	"flag"
.LASF206:
	.string	"p_cdb"
.LASF27:
	.string	"TaskExecutionType"
.LASF187:
	.string	"p_autostart_tdb_array"
.LASF174:
	.string	"app_mode"
.LASF228:
	.string	"osEE_hal_terminate_activation"
.LASF214:
	.string	"p_tdb_to"
.LASF176:
	.string	"prev_s_isr_all_status"
.LASF68:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF105:
	.string	"OSEE_KERNEL_STARTING"
.LASF109:
	.string	"OsEE_MCB_tag"
.LASF164:
	.string	"OsEE_AlarmDB"
.LASF208:
	.string	"osEE_idle_hook_wrapper"
.LASF5:
	.string	"uint8_t"
.LASF120:
	.string	"status"
.LASF148:
	.string	"type"
.LASF21:
	.string	"TaskFunc"
.LASF111:
	.string	"locked"
.LASF78:
	.string	"OsEE_CTX_tag"
.LASF82:
	.string	"OsEE_SDB_tag"
.LASF64:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF60:
	.string	"E_OS_PARAM_POINTER"
.LASF149:
	.string	"OsEE_action"
.LASF156:
	.string	"OsEE_autostart_trigger_info_tag"
.LASF1:
	.string	"long long int"
.LASF45:
	.string	"OsEE_status_type_tag"
.LASF216:
	.string	"osEE_scheduler_task_not_terminated"
.LASF74:
	.string	"OsEE_status_type"
.LASF204:
	.string	"alarm_array_size"
.LASF113:
	.string	"p_mcb"
.LASF134:
	.string	"OsEE_CounterCB"
.LASF232:
	.string	"osEE_scheduler_task_preemption_point"
.LASF12:
	.string	"OsEE_bool"
.LASF147:
	.string	"param"
.LASF124:
	.string	"OsEE_TCB"
.LASF168:
	.string	"OsEE_autostart_tdb"
.LASF25:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF35:
	.string	"OSEE_TASK_CHAINED"
.LASF137:
	.string	"info"
.LASF202:
	.string	"counter_array_size"
.LASF173:
	.string	"os_status"
.LASF183:
	.string	"p_ccb"
.LASF224:
	.string	"virt_prio"
.LASF230:
	.string	"osEE_get_kernel"
.LASF200:
	.string	"res_array_size"
.LASF66:
	.string	"E_OS_SPINLOCK"
.LASF72:
	.string	"E_OS_SYS_STACK"
.LASF90:
	.string	"OsEE_SN_tag"
.LASF10:
	.string	"OSEE_FALSE"
.LASF2:
	.string	"long double"
.LASF6:
	.string	"uint16_t"
.LASF125:
	.string	"OsEE_TDB"
.LASF225:
	.string	"osEE_hal_resumeIRQ"
.LASF159:
	.string	"OsEE_autostart_trigger_info"
.LASF166:
	.string	"p_tdb_ptr_array"
.LASF180:
	.string	"d_isr_all_cnt"
.LASF222:
	.string	"osEE_hal_begin_nested_primitive"
.LASF117:
	.string	"OsEE_TCB_tag"
.LASF11:
	.string	"OSEE_TRUE"
.LASF33:
	.string	"OSEE_TASK_WAITING"
.LASF140:
	.string	"OSEE_ACTION_EVENT"
.LASF20:
	.string	"TaskActivation"
.LASF30:
	.string	"OSEE_TASK_SUSPENDED"
.LASF95:
	.string	"task_type"
.LASF162:
	.string	"trigger_array_size"
.LASF7:
	.string	"long int"
.LASF122:
	.string	"wait_mask"
.LASF138:
	.string	"OsEE_CounterDB"
.LASF146:
	.string	"OsEE_action_tag"
.LASF135:
	.string	"OsEE_CounterDB_tag"
.LASF153:
	.string	"cycle"
.LASF91:
	.string	"p_next"
.LASF99:
	.string	"max_num_of_act"
.LASF161:
	.string	"p_trigger_ptr_array"
.LASF19:
	.string	"TaskPrio"
.LASF76:
	.string	"p_ctx"
.LASF130:
	.string	"action"
.LASF61:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF29:
	.string	"OsEE_task_status_tag"
.LASF213:
	.string	"p_from"
.LASF223:
	.string	"osEE_hal_set_ipl"
.LASF127:
	.string	"OsEE_TriggerDB_tag"
.LASF221:
	.string	"osEE_begin_primitive"
.LASF13:
	.string	"OsEE_reg"
.LASF75:
	.string	"StatusType"
.LASF238:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_oo_sched_entry_points.c"
.LASF65:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF196:
	.string	"p_kcb"
.LASF144:
	.string	"OsEE_action_param"
.LASF54:
	.string	"E_OS_VALUE"
.LASF63:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF198:
	.string	"sn_array_size"
.LASF34:
	.string	"OSEE_TASK_RUNNING"
.LASF175:
	.string	"last_error"
.LASF163:
	.string	"OsEE_autostart_trigger"
.LASF143:
	.string	"OsEE_action_type"
.LASF8:
	.string	"long unsigned int"
.LASF177:
	.string	"prev_s_isr_os_status"
.LASF115:
	.string	"OsEE_MCB"
.LASF189:
	.string	"p_autostart_trigger_array"
.LASF56:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF58:
	.string	"E_OS_DISABLEDINT"
.LASF179:
	.string	"s_isr_os_cnt"
.LASF236:
	.string	"osEE_scheduler_task_terminated"
.LASF212:
	.string	"p_to"
.LASF71:
	.string	"E_OS_SYS_TASK"
.LASF205:
	.string	"OsEE_KDB"
.LASF4:
	.string	"unsigned char"
.LASF79:
	.string	"OsEE_SCB_tag"
.LASF48:
	.string	"E_OS_CALLEVEL"
.LASF47:
	.string	"E_OS_ACCESS"
.LASF36:
	.string	"OsEE_task_status"
.LASF53:
	.string	"E_OS_STATE"
.LASF116:
	.string	"OsEE_MDB"
.LASF107:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF23:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF188:
	.string	"autostart_tdb_array_size"
.LASF89:
	.string	"OsEE_HDB"
.LASF41:
	.string	"mincycle"
.LASF62:
	.string	"E_OS_PROTECTION_TIME"
.LASF106:
	.string	"OSEE_KERNEL_STARTED"
.LASF237:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF110:
	.string	"prev_prio"
.LASF24:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF181:
	.string	"OsEE_CCB"
.LASF239:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika"
.LASF3:
	.string	"signed char"
.LASF169:
	.string	"OsEE_CCB_tag"
.LASF121:
	.string	"p_first_mtx"
.LASF93:
	.string	"OsEE_TDB_tag"
.LASF88:
	.string	"p_scb"
.LASF131:
	.string	"OsEE_CounterCB_tag"
.LASF69:
	.string	"E_OS_CORE"
.LASF84:
	.string	"stack_size"
.LASF118:
	.string	"current_num_of_act"
.LASF195:
	.string	"OsEE_KDB_tag"
.LASF171:
	.string	"p_free_sn"
.LASF77:
	.string	"OsEE_CTX"
.LASF229:
	.string	"kernel_cb"
.LASF165:
	.string	"OsEE_autostart_tdb_tag"
.LASF217:
	.string	"osEE_end_primitive"
.LASF226:
	.string	"osEE_hal_enableIRQ"
.LASF70:
	.string	"E_OS_SYS_INIT"
.LASF83:
	.string	"p_bos"
.LASF87:
	.string	"p_sdb"
	.ident	"GCC: (GNU) 7.3.0"
