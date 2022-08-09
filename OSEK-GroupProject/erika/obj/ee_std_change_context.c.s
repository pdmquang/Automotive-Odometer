	.file	"ee_std_change_context.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_change_context_from_running,"ax",@progbits
.global	osEE_change_context_from_running
	.type	osEE_change_context_from_running, @function
osEE_change_context_from_running:
.LFB61:
	.file 1 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_std_change_context.c"
	.loc 1 61 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	.loc 1 62 0
	ldd r26,Z+4
	ldd r27,Z+5
.LVL1:
	.loc 1 63 0
	adiw r26,2
	ld r18,X+
	ld r19,X
	sbiw r26,2+1
.LVL2:
	.loc 1 65 0
	ldi r20,lo8(4)
	ldi r21,0
	adiw r26,2+1
	st X,r21
	st -X,r20
	sbiw r26,2
	movw r26,r24
.LVL3:
	adiw r26,2
	ld r20,X+
	ld r21,X
	ldd r22,Z+2
	ldd r23,Z+3
.LVL4:
	.loc 1 68 0
	movw r24,r30
.LVL5:
	.loc 1 67 0
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L2
	.loc 1 68 0
	jmp osEE_hal_save_ctx_and_restore_ctx
.LVL6:
.L2:
	.loc 1 71 0
	jmp osEE_hal_save_ctx_and_ready2stacked
.LVL7:
	.cfi_endproc
.LFE61:
	.size	osEE_change_context_from_running, .-osEE_change_context_from_running
	.section	.text.osEE_change_context_from_task_end,"ax",@progbits
.global	osEE_change_context_from_task_end
	.type	osEE_change_context_from_task_end, @function
osEE_change_context_from_task_end:
.LFB62:
	.loc 1 82 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r24,r22
.LVL9:
	.loc 1 83 0
	movw r26,r22
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
.LVL10:
	.loc 1 84 0
	ldd r18,Z+2
	ldd r19,Z+3
.LVL11:
	.loc 1 86 0
	ldi r20,lo8(4)
	ldi r21,0
	std Z+3,r21
	std Z+2,r20
	adiw r26,2
	ld r22,X+
	ld r23,X
.LVL12:
	.loc 1 88 0
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L4
	.loc 1 89 0
	jmp osEE_hal_restore_ctx
.LVL13:
.L4:
	.loc 1 91 0
	jmp osEE_hal_ready2stacked
.LVL14:
	.cfi_endproc
.LFE62:
	.size	osEE_change_context_from_task_end, .-osEE_change_context_from_task_end
	.section	.text.osEE_idle_task_terminate,"ax",@progbits
.global	osEE_idle_task_terminate
	.type	osEE_idle_task_terminate, @function
osEE_idle_task_terminate:
.LFB63:
	.loc 1 103 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 108 0
	movw r26,r24
	adiw r26,2
	ld r22,X+
	ld r23,X
	sbiw r26,2+1
.LVL16:
	.loc 1 109 0
	ld r30,X+
	ld r31,X
	ld r20,Z
	ldd r21,Z+1
.LVL17:
	.loc 1 110 0
	movw r26,r22
	ld r30,X+
	ld r31,X
.LVL18:
.L7:
	.loc 1 114 0 discriminator 2
	ldd r18,Z+18
	ldd r19,Z+19
.LVL19:
	.loc 1 115 0 discriminator 2
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L6
	.loc 1 115 0 is_stmt 0 discriminator 1
	cp r20,r18
	cpc r21,r19
	brne .L8
.L6:
	.loc 1 118 0 is_stmt 1
	movw r26,r22
	st X+,r30
	st X,r31
	.loc 1 120 0
	jmp osEE_hal_restore_ctx
.LVL20:
.L8:
	movw r30,r18
.LVL21:
	rjmp .L7
	.cfi_endproc
.LFE63:
	.size	osEE_idle_task_terminate, .-osEE_idle_task_terminate
	.text
.Letext0:
	.file 2 "/home/user/arduino-1.8.13/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_platform_types.h"
	.file 4 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_api_types.h"
	.file 5 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_hal_internal_types.h"
	.file 6 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_scheduler_types.h"
	.file 7 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_kernel_types.h"
	.file 8 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_get_kernel_and_core.h"
	.file 9 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_std_change_context.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe8a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF219
	.byte	0xc
	.long	.LASF220
	.long	.LASF221
	.long	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x59
	.long	0x7e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x5f
	.long	0x4c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x69
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x6c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0x71
	.long	0x5e
	.uleb128 0x7
	.byte	0x2
	.long	0xd5
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x45
	.long	0xa3
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x4f
	.long	0x57
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x5b
	.long	0x57
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x66
	.long	0xcf
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0x6d
	.long	0x138
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
	.byte	0x4
	.byte	0x72
	.long	0x10e
	.uleb128 0x4
	.long	.LASF27
	.byte	0x4
	.byte	0x74
	.long	0x138
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0x76
	.long	0x184
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
	.byte	0x4
	.byte	0x7f
	.long	0x14e
	.uleb128 0x4
	.long	.LASF37
	.byte	0x4
	.byte	0x86
	.long	0x184
	.uleb128 0xa
	.long	0x18f
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4
	.byte	0x93
	.long	0xb9
	.uleb128 0xb
	.byte	0x6
	.byte	0x4
	.byte	0xa0
	.long	0x1dd
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.byte	0xa2
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x4
	.byte	0xa5
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF41
	.byte	0x4
	.byte	0xa9
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x4
	.byte	0xab
	.long	0x1aa
	.uleb128 0x4
	.long	.LASF43
	.byte	0x4
	.byte	0xc8
	.long	0xc4
	.uleb128 0x4
	.long	.LASF44
	.byte	0x4
	.byte	0xdc
	.long	0xae
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0xe4
	.long	0x2b8
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
	.byte	0x4
	.word	0x106
	.long	0x1fe
	.uleb128 0xd
	.long	.LASF75
	.byte	0x4
	.word	0x108
	.long	0x2b8
	.uleb128 0xe
	.long	.LASF78
	.byte	0x14
	.byte	0x5
	.byte	0x3f
	.long	0x3df
	.uleb128 0xf
	.string	"r29"
	.byte	0x5
	.byte	0x40
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"r28"
	.byte	0x5
	.byte	0x41
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"r17"
	.byte	0x5
	.byte	0x42
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"r16"
	.byte	0x5
	.byte	0x43
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.string	"r15"
	.byte	0x5
	.byte	0x44
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"r14"
	.byte	0x5
	.byte	0x45
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xf
	.string	"r13"
	.byte	0x5
	.byte	0x46
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"r12"
	.byte	0x5
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.string	"r11"
	.byte	0x5
	.byte	0x48
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"r10"
	.byte	0x5
	.byte	0x49
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.string	"r9"
	.byte	0x5
	.byte	0x4a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.string	"r8"
	.byte	0x5
	.byte	0x4b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.string	"r7"
	.byte	0x5
	.byte	0x4c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"r6"
	.byte	0x5
	.byte	0x4d
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"r5"
	.byte	0x5
	.byte	0x4e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"r4"
	.byte	0x5
	.byte	0x4f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.string	"r3"
	.byte	0x5
	.byte	0x50
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"r2"
	.byte	0x5
	.byte	0x51
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF76
	.byte	0x5
	.byte	0x52
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x2d0
	.uleb128 0x4
	.long	.LASF77
	.byte	0x5
	.byte	0x53
	.long	0x2d0
	.uleb128 0xe
	.long	.LASF79
	.byte	0x2
	.byte	0x5
	.byte	0x56
	.long	0x40b
	.uleb128 0xc
	.long	.LASF80
	.byte	0x5
	.byte	0x57
	.long	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3e5
	.uleb128 0xa
	.long	0x40b
	.uleb128 0x4
	.long	.LASF81
	.byte	0x5
	.byte	0x58
	.long	0x3f0
	.uleb128 0xe
	.long	.LASF82
	.byte	0x4
	.byte	0x5
	.byte	0x5a
	.long	0x44a
	.uleb128 0xc
	.long	.LASF83
	.byte	0x5
	.byte	0x5b
	.long	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF84
	.byte	0x5
	.byte	0x5c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x421
	.uleb128 0x4
	.long	.LASF85
	.byte	0x5
	.byte	0x5d
	.long	0x44a
	.uleb128 0xe
	.long	.LASF86
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.long	0x483
	.uleb128 0xc
	.long	.LASF87
	.byte	0x5
	.byte	0x60
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF88
	.byte	0x5
	.byte	0x61
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x45a
	.uleb128 0x7
	.byte	0x2
	.long	0x44f
	.uleb128 0xa
	.long	0x488
	.uleb128 0x7
	.byte	0x2
	.long	0x416
	.uleb128 0xa
	.long	0x493
	.uleb128 0x4
	.long	.LASF89
	.byte	0x5
	.byte	0x65
	.long	0x483
	.uleb128 0xe
	.long	.LASF90
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.long	0x4d2
	.uleb128 0xc
	.long	.LASF91
	.byte	0x6
	.byte	0x46
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x6
	.byte	0x47
	.long	0x55a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4a9
	.uleb128 0xe
	.long	.LASF93
	.byte	0xe
	.byte	0x7
	.byte	0xac
	.long	0x555
	.uleb128 0xf
	.string	"hdb"
	.byte	0x7
	.byte	0xad
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF94
	.byte	0x7
	.byte	0xae
	.long	0x6c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"tid"
	.byte	0x7
	.byte	0xaf
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF95
	.byte	0x7
	.byte	0xb0
	.long	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF96
	.byte	0x7
	.byte	0xb1
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF97
	.byte	0x7
	.byte	0xb2
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF98
	.byte	0x7
	.byte	0xb3
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF99
	.byte	0x7
	.byte	0xb4
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.long	0x4d8
	.uleb128 0x7
	.byte	0x2
	.long	0x555
	.uleb128 0x4
	.long	.LASF100
	.byte	0x6
	.byte	0x48
	.long	0x4a9
	.uleb128 0x4
	.long	.LASF101
	.byte	0x6
	.byte	0x9f
	.long	0x576
	.uleb128 0x7
	.byte	0x2
	.long	0x560
	.uleb128 0x4
	.long	.LASF102
	.byte	0x7
	.byte	0x50
	.long	0xcf
	.uleb128 0x4
	.long	.LASF103
	.byte	0x7
	.byte	0x52
	.long	0x57
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0x71
	.long	0x5b8
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
	.byte	0x7
	.byte	0x79
	.long	0x592
	.uleb128 0xe
	.long	.LASF109
	.byte	0x5
	.byte	0x7
	.byte	0x7f
	.long	0x5fa
	.uleb128 0xc
	.long	.LASF91
	.byte	0x7
	.byte	0x80
	.long	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF110
	.byte	0x7
	.byte	0x81
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF111
	.byte	0x7
	.byte	0x83
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF112
	.byte	0x3
	.byte	0x7
	.byte	0x91
	.long	0x623
	.uleb128 0xc
	.long	.LASF113
	.byte	0x7
	.byte	0x92
	.long	0x639
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x7
	.byte	0x93
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x5fa
	.uleb128 0x7
	.byte	0x2
	.long	0x623
	.uleb128 0x4
	.long	.LASF115
	.byte	0x7
	.byte	0x88
	.long	0x5c3
	.uleb128 0x7
	.byte	0x2
	.long	0x62e
	.uleb128 0x4
	.long	.LASF116
	.byte	0x7
	.byte	0x99
	.long	0x623
	.uleb128 0xe
	.long	.LASF117
	.byte	0xa
	.byte	0x7
	.byte	0x9c
	.long	0x6ab
	.uleb128 0xc
	.long	.LASF118
	.byte	0x7
	.byte	0x9d
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x7
	.byte	0x9e
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF120
	.byte	0x7
	.byte	0x9f
	.long	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF121
	.byte	0x7
	.byte	0xa1
	.long	0x6ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF122
	.byte	0x7
	.byte	0xa4
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF123
	.byte	0x7
	.byte	0xa5
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x63f
	.uleb128 0xa
	.long	0x6ab
	.uleb128 0x4
	.long	.LASF124
	.byte	0x7
	.byte	0xaa
	.long	0x64a
	.uleb128 0x7
	.byte	0x2
	.long	0x6b6
	.uleb128 0xa
	.long	0x6c1
	.uleb128 0x4
	.long	.LASF125
	.byte	0x7
	.byte	0xb8
	.long	0x555
	.uleb128 0x7
	.byte	0x2
	.long	0x6cc
	.uleb128 0xa
	.long	0x6d7
	.uleb128 0x4
	.long	.LASF126
	.byte	0x7
	.byte	0xcb
	.long	0x6ed
	.uleb128 0x7
	.byte	0x2
	.long	0x72e
	.uleb128 0x10
	.long	.LASF127
	.byte	0xe
	.byte	0x7
	.word	0x110
	.long	0x72e
	.uleb128 0x11
	.long	.LASF128
	.byte	0x7
	.word	0x111
	.long	0x8ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF129
	.byte	0x7
	.word	0x112
	.long	0x81a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF130
	.byte	0x7
	.word	0x116
	.long	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.long	0x6f3
	.uleb128 0xe
	.long	.LASF131
	.byte	0x4
	.byte	0x7
	.byte	0xcd
	.long	0x75c
	.uleb128 0xc
	.long	.LASF132
	.byte	0x7
	.byte	0xce
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF133
	.byte	0x7
	.byte	0xcf
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF134
	.byte	0x7
	.byte	0xd3
	.long	0x733
	.uleb128 0xe
	.long	.LASF135
	.byte	0x8
	.byte	0x7
	.byte	0xdc
	.long	0x790
	.uleb128 0xc
	.long	.LASF136
	.byte	0x7
	.byte	0xdd
	.long	0x795
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF137
	.byte	0x7
	.byte	0xe1
	.long	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x767
	.uleb128 0x7
	.byte	0x2
	.long	0x75c
	.uleb128 0x4
	.long	.LASF138
	.byte	0x7
	.byte	0xe5
	.long	0x790
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0xe7
	.long	0x7cc
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
	.byte	0x7
	.byte	0xec
	.long	0x7a6
	.uleb128 0xe
	.long	.LASF144
	.byte	0x8
	.byte	0x7
	.byte	0xee
	.long	0x81a
	.uleb128 0xf
	.string	"f"
	.byte	0x7
	.byte	0xef
	.long	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x7
	.byte	0xf0
	.long	0x6d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF129
	.byte	0x7
	.byte	0xf1
	.long	0x81a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF145
	.byte	0x7
	.byte	0xf3
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x79b
	.uleb128 0xa
	.long	0x81a
	.uleb128 0x4
	.long	.LASF144
	.byte	0x7
	.byte	0xf5
	.long	0x7d7
	.uleb128 0xe
	.long	.LASF146
	.byte	0xa
	.byte	0x7
	.byte	0xf7
	.long	0x859
	.uleb128 0xc
	.long	.LASF147
	.byte	0x7
	.byte	0xf8
	.long	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x7
	.byte	0xf9
	.long	0x7cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF149
	.byte	0x7
	.byte	0xfa
	.long	0x830
	.uleb128 0x10
	.long	.LASF150
	.byte	0x8
	.byte	0x7
	.word	0x103
	.long	0x8ae
	.uleb128 0x11
	.long	.LASF91
	.byte	0x7
	.word	0x104
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF151
	.byte	0x7
	.word	0x105
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF152
	.byte	0x7
	.word	0x106
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF153
	.byte	0x7
	.word	0x109
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x7
	.word	0x10e
	.long	0x864
	.uleb128 0x7
	.byte	0x2
	.long	0x8ae
	.uleb128 0xd
	.long	.LASF155
	.byte	0x7
	.word	0x11a
	.long	0x72e
	.uleb128 0x10
	.long	.LASF156
	.byte	0x6
	.byte	0x7
	.word	0x11d
	.long	0x907
	.uleb128 0x11
	.long	.LASF157
	.byte	0x7
	.word	0x11e
	.long	0x90c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF158
	.byte	0x7
	.word	0x11f
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF153
	.byte	0x7
	.word	0x120
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.long	0x8cc
	.uleb128 0x7
	.byte	0x2
	.long	0x8c0
	.uleb128 0xd
	.long	.LASF159
	.byte	0x7
	.word	0x121
	.long	0x907
	.uleb128 0x10
	.long	.LASF160
	.byte	0x4
	.byte	0x7
	.word	0x123
	.long	0x94a
	.uleb128 0x11
	.long	.LASF161
	.byte	0x7
	.word	0x124
	.long	0x95a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF162
	.byte	0x7
	.word	0x125
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x91e
	.uleb128 0x12
	.long	0x912
	.long	0x95a
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x94f
	.uleb128 0xd
	.long	.LASF163
	.byte	0x7
	.word	0x126
	.long	0x94a
	.uleb128 0xd
	.long	.LASF164
	.byte	0x7
	.word	0x135
	.long	0x8c0
	.uleb128 0x10
	.long	.LASF165
	.byte	0x4
	.byte	0x7
	.word	0x13c
	.long	0x9a4
	.uleb128 0x11
	.long	.LASF166
	.byte	0x7
	.word	0x13d
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x13e
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.long	0x978
	.uleb128 0x12
	.long	0x6dd
	.long	0x9b4
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x9a9
	.uleb128 0xd
	.long	.LASF168
	.byte	0x7
	.word	0x13f
	.long	0x9a4
	.uleb128 0x10
	.long	.LASF169
	.byte	0x12
	.byte	0x7
	.word	0x142
	.long	0xa87
	.uleb128 0x11
	.long	.LASF170
	.byte	0x7
	.word	0x143
	.long	0x6d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"rq"
	.byte	0x7
	.word	0x148
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF171
	.byte	0x7
	.word	0x149
	.long	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF172
	.byte	0x7
	.word	0x14e
	.long	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF173
	.byte	0x7
	.word	0x14f
	.long	0x5b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF174
	.byte	0x7
	.word	0x150
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF175
	.byte	0x7
	.word	0x152
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF176
	.byte	0x7
	.word	0x163
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.long	.LASF177
	.byte	0x7
	.word	0x164
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF178
	.byte	0x7
	.word	0x165
	.long	0x587
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF179
	.byte	0x7
	.word	0x166
	.long	0x587
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF180
	.byte	0x7
	.word	0x167
	.long	0x587
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x7
	.word	0x16b
	.long	0x9c6
	.uleb128 0x10
	.long	.LASF182
	.byte	0x10
	.byte	0x7
	.word	0x16d
	.long	0xb19
	.uleb128 0x11
	.long	.LASF183
	.byte	0x7
	.word	0x171
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF184
	.byte	0x7
	.word	0x173
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF185
	.byte	0x7
	.word	0x175
	.long	0x6d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF186
	.byte	0x7
	.word	0x177
	.long	0x81a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF187
	.byte	0x7
	.word	0x17a
	.long	0xb2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF188
	.byte	0x7
	.word	0x17b
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF189
	.byte	0x7
	.word	0x17e
	.long	0xb40
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF190
	.byte	0x7
	.word	0x17f
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xa
	.long	0xa93
	.uleb128 0x7
	.byte	0x2
	.long	0xa87
	.uleb128 0x12
	.long	0x9ba
	.long	0xb2f
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb24
	.uleb128 0x12
	.long	0x960
	.long	0xb40
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb35
	.uleb128 0xd
	.long	.LASF191
	.byte	0x7
	.word	0x184
	.long	0xb19
	.uleb128 0x10
	.long	.LASF192
	.byte	0x1
	.byte	0x7
	.word	0x186
	.long	0xb6f
	.uleb128 0x11
	.long	.LASF193
	.byte	0x7
	.word	0x19c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF194
	.byte	0x7
	.word	0x19e
	.long	0xb52
	.uleb128 0x10
	.long	.LASF195
	.byte	0x16
	.byte	0x7
	.word	0x1a0
	.long	0xc2e
	.uleb128 0x11
	.long	.LASF196
	.byte	0x7
	.word	0x1a1
	.long	0xc33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF166
	.byte	0x7
	.word	0x1a8
	.long	0x9b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF197
	.byte	0x7
	.word	0x1ae
	.long	0xc44
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x1b0
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF198
	.byte	0x7
	.word	0x1b1
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF199
	.byte	0x7
	.word	0x1b3
	.long	0xc55
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF200
	.byte	0x7
	.word	0x1b4
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF201
	.byte	0x7
	.word	0x1b7
	.long	0xc66
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF202
	.byte	0x7
	.word	0x1b8
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF203
	.byte	0x7
	.word	0x1ba
	.long	0xc82
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x11
	.long	.LASF204
	.byte	0x7
	.word	0x1bb
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.long	0xb7b
	.uleb128 0x7
	.byte	0x2
	.long	0xb6f
	.uleb128 0x12
	.long	0x560
	.long	0xc44
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc39
	.uleb128 0x12
	.long	0x6b1
	.long	0xc55
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc4a
	.uleb128 0x12
	.long	0x820
	.long	0xc66
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc5b
	.uleb128 0x12
	.long	0xc7d
	.long	0xc77
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x96c
	.uleb128 0xa
	.long	0xc77
	.uleb128 0x7
	.byte	0x2
	.long	0xc6c
	.uleb128 0xd
	.long	.LASF205
	.byte	0x7
	.word	0x1c1
	.long	0xc2e
	.uleb128 0x15
	.string	"KDB"
	.byte	0x8
	.byte	0x3b
	.long	0xc88
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CDB"
	.byte	0x8
	.byte	0x3c
	.long	0xb46
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"KCB"
	.byte	0x8
	.byte	0x3d
	.long	0xb6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CCB"
	.byte	0x8
	.byte	0x3e
	.long	0xa87
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF207
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd56
	.uleb128 0x17
	.long	.LASF209
	.byte	0x1
	.byte	0x65
	.long	0x6d7
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.byte	0x68
	.long	0x40b
	.long	.LLST9
	.uleb128 0x18
	.long	.LASF206
	.byte	0x1
	.byte	0x6a
	.long	0xd5c
	.long	.LLST10
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0x6b
	.long	0x48e
	.long	.LLST11
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0x6c
	.long	0x499
	.long	.LLST12
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0x6d
	.long	0x411
	.long	.LLST13
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.byte	0x6e
	.long	0x40b
	.long	.LLST14
	.uleb128 0x19
	.long	.LVL20
	.byte	0x1
	.long	0xe59
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x49e
	.uleb128 0xa
	.long	0xd56
	.uleb128 0x16
	.byte	0x1
	.long	.LASF208
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xddd
	.uleb128 0x17
	.long	.LASF210
	.byte	0x1
	.byte	0x4f
	.long	0x6d7
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF211
	.byte	0x1
	.byte	0x50
	.long	0x6d7
	.long	.LLST5
	.uleb128 0x18
	.long	.LASF212
	.byte	0x1
	.byte	0x53
	.long	0x6c7
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF213
	.byte	0x1
	.byte	0x54
	.long	0x19a
	.long	.LLST7
	.uleb128 0x1a
	.long	.LVL13
	.byte	0x1
	.long	0xe59
	.long	0xdd2
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x19
	.long	.LVL14
	.byte	0x1
	.long	0xe66
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xe59
	.uleb128 0x17
	.long	.LASF210
	.byte	0x1
	.byte	0x3a
	.long	0x6d7
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF211
	.byte	0x1
	.byte	0x3b
	.long	0x6d7
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF212
	.byte	0x1
	.byte	0x3e
	.long	0x6c7
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF213
	.byte	0x1
	.byte	0x3f
	.long	0x19a
	.long	.LLST3
	.uleb128 0x1a
	.long	.LVL6
	.byte	0x1
	.long	0xe73
	.long	0xe4e
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x19
	.long	.LVL7
	.byte	0x1
	.long	0xe80
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0x9
	.byte	0x5c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0x9
	.byte	0x6b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF217
	.long	.LASF217
	.byte	0x9
	.byte	0x54
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF218
	.long	.LASF218
	.byte	0x9
	.byte	0x63
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.long	.LVL15
	.long	.LVL20-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LFE63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL20-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL20-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LFE63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL20-1
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL20
	.long	.LFE63
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL20-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE63
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL20-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE63
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LVL20-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE63
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LFE62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL12
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-1
	.long	.LFE62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL13-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL11
	.long	.LVL13-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6-1
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL6-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6-1
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x86
	.sleb128 4
	.long	.LVL4
	.long	.LVL6-1
	.word	0x2
	.byte	0x8e
	.sleb128 4
	.long	.LVL6
	.long	.LVL7-1
	.word	0x2
	.byte	0x88
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL6-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF194:
	.string	"OsEE_KCB"
.LASF128:
	.string	"p_trigger_cb"
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
.LASF217:
	.string	"osEE_hal_save_ctx_and_restore_ctx"
.LASF167:
	.string	"tdb_array_size"
.LASF43:
	.string	"EventMaskType"
.LASF22:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF101:
	.string	"OsEE_RQ"
.LASF98:
	.string	"dispatch_prio"
.LASF157:
	.string	"p_trigger_db"
.LASF178:
	.string	"s_isr_all_cnt"
.LASF208:
	.string	"osEE_change_context_from_task_end"
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
.LASF218:
	.string	"osEE_hal_save_ctx_and_ready2stacked"
.LASF51:
	.string	"E_OS_NOFUNC"
.LASF28:
	.string	"OsEE_task_type_tag"
.LASF152:
	.string	"active"
.LASF81:
	.string	"OsEE_SCB"
.LASF123:
	.string	"event_mask"
.LASF185:
	.string	"p_idle_task"
.LASF15:
	.string	"OsEE_tick_type"
.LASF139:
	.string	"OSEE_ACTION_TASK"
.LASF26:
	.string	"OsEE_task_type"
.LASF213:
	.string	"status_prev_running"
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
.LASF136:
	.string	"p_counter_cb"
.LASF133:
	.string	"value"
.LASF96:
	.string	"task_func"
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
.LASF14:
	.string	"OsEE_mem_size"
.LASF73:
	.string	"E_OS_SYS_ACT"
.LASF39:
	.string	"maxallowedvalue"
.LASF158:
	.string	"increment"
.LASF207:
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
.LASF209:
	.string	"p_idle_tdb"
.LASF27:
	.string	"TaskExecutionType"
.LASF174:
	.string	"app_mode"
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
.LASF74:
	.string	"OsEE_status_type"
.LASF204:
	.string	"alarm_array_size"
.LASF113:
	.string	"p_mcb"
.LASF134:
	.string	"OsEE_CounterCB"
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
.LASF220:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_std_change_context.c"
.LASF159:
	.string	"OsEE_autostart_trigger_info"
.LASF166:
	.string	"p_tdb_ptr_array"
.LASF180:
	.string	"d_isr_all_cnt"
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
.LASF210:
	.string	"p_from"
.LASF127:
	.string	"OsEE_TriggerDB_tag"
.LASF13:
	.string	"OsEE_reg"
.LASF75:
	.string	"StatusType"
.LASF187:
	.string	"p_autostart_tdb_array"
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
.LASF216:
	.string	"osEE_hal_ready2stacked"
.LASF211:
	.string	"p_to"
.LASF212:
	.string	"p_to_tcb"
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
.LASF206:
	.string	"p_idle_hdb"
.LASF188:
	.string	"autostart_tdb_array_size"
.LASF89:
	.string	"OsEE_HDB"
.LASF214:
	.string	"osEE_change_context_from_running"
.LASF41:
	.string	"mincycle"
.LASF62:
	.string	"E_OS_PROTECTION_TIME"
.LASF106:
	.string	"OSEE_KERNEL_STARTED"
.LASF219:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF110:
	.string	"prev_prio"
.LASF24:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF181:
	.string	"OsEE_CCB"
.LASF221:
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
.LASF165:
	.string	"OsEE_autostart_tdb_tag"
.LASF70:
	.string	"E_OS_SYS_INIT"
.LASF83:
	.string	"p_bos"
.LASF215:
	.string	"osEE_hal_restore_ctx"
.LASF87:
	.string	"p_sdb"
	.ident	"GCC: (GNU) 7.3.0"
