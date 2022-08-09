	.file	"ee_atmega_intvect.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__vector_default,"ax",@progbits
.global	__vector_default
	.type	__vector_default, @function
__vector_default:
.LFB61:
	.file 1 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c"
	.loc 1 61 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 61 0
/* #APP */
 ;  61 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	.global tag___vector_default
tag___vector_default:

 ;  0 "" 2
	.loc 1 61 0
 ;  61 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L2:
	rjmp .L2
	.cfi_endproc
.LFE61:
	.size	__vector_default, .-__vector_default
	.section	.text.osEE_atmega_intvect,"ax",@progbits
.global	osEE_atmega_intvect
	.type	osEE_atmega_intvect, @function
osEE_atmega_intvect:
.LFB62:
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 65 0
/* #APP */
 ;  65 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	.global tag___vector_default
 ldi r30, lo8(tag___vector_default)

 ;  0 "" 2
/* epilogue start */
	.loc 1 66 0
/* #NOAPP */
	ret
	.cfi_endproc
.LFE62:
	.size	osEE_atmega_intvect, .-osEE_atmega_intvect
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB63:
	.loc 1 294 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 294 0
/* #APP */
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	.global tag___vector_1
tag___vector_1:

 ;  0 "" 2
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	push r24

 ;  0 "" 2
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	push r25

 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	call osEE_avr8_isr2_stub
.LVL0:
/* #APP */
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	pop r25

 ;  0 "" 2
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	pop r24

 ;  0 "" 2
	.loc 1 294 0
 ;  294 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	reti
 ;  0 "" 2
/* epilogue start */
	.loc 1 294 0
/* #NOAPP */
	.cfi_endproc
.LFE63:
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_11,"ax",@progbits
.global	__vector_11
	.type	__vector_11, @function
__vector_11:
.LFB64:
	.loc 1 463 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 463 0
/* #APP */
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	.global tag___vector_11
tag___vector_11:

 ;  0 "" 2
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	push r24

 ;  0 "" 2
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	push r25

 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	call osEE_avr8_isr2_stub
.LVL1:
/* #APP */
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	pop r25

 ;  0 "" 2
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	pop r24

 ;  0 "" 2
	.loc 1 463 0
 ;  463 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c" 1
	reti
 ;  0 "" 2
/* epilogue start */
	.loc 1 463 0
/* #NOAPP */
	.cfi_endproc
.LFE64:
	.size	__vector_11, .-__vector_11
	.text
.Letext0:
	.file 2 "/home/user/arduino-1.8.13/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_platform_types.h"
	.file 4 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_api_types.h"
	.file 5 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_hal_internal_types.h"
	.file 6 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_scheduler_types.h"
	.file 7 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_kernel_types.h"
	.file 8 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_get_kernel_and_core.h"
	.file 9 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_avr8_irqstub.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd3b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF210
	.byte	0xc
	.long	.LASF211
	.long	.LASF212
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
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4
	.byte	0x93
	.long	0xb9
	.uleb128 0xa
	.byte	0x6
	.byte	0x4
	.byte	0xa0
	.long	0x1d8
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0xa2
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.byte	0xa5
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.byte	0xa9
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x4
	.byte	0xab
	.long	0x1a5
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
	.long	0x2b3
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
	.uleb128 0xc
	.long	.LASF74
	.byte	0x4
	.word	0x106
	.long	0x1f9
	.uleb128 0xc
	.long	.LASF75
	.byte	0x4
	.word	0x108
	.long	0x2b3
	.uleb128 0xd
	.long	.LASF78
	.byte	0x14
	.byte	0x5
	.byte	0x3f
	.long	0x3da
	.uleb128 0xe
	.string	"r29"
	.byte	0x5
	.byte	0x40
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"r28"
	.byte	0x5
	.byte	0x41
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"r17"
	.byte	0x5
	.byte	0x42
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"r16"
	.byte	0x5
	.byte	0x43
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"r15"
	.byte	0x5
	.byte	0x44
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"r14"
	.byte	0x5
	.byte	0x45
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"r13"
	.byte	0x5
	.byte	0x46
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"r12"
	.byte	0x5
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"r11"
	.byte	0x5
	.byte	0x48
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"r10"
	.byte	0x5
	.byte	0x49
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"r9"
	.byte	0x5
	.byte	0x4a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"r8"
	.byte	0x5
	.byte	0x4b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.string	"r7"
	.byte	0x5
	.byte	0x4c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"r6"
	.byte	0x5
	.byte	0x4d
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"r5"
	.byte	0x5
	.byte	0x4e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"r4"
	.byte	0x5
	.byte	0x4f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.string	"r3"
	.byte	0x5
	.byte	0x50
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"r2"
	.byte	0x5
	.byte	0x51
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF76
	.byte	0x5
	.byte	0x52
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x2cb
	.uleb128 0x4
	.long	.LASF77
	.byte	0x5
	.byte	0x53
	.long	0x2cb
	.uleb128 0xd
	.long	.LASF79
	.byte	0x2
	.byte	0x5
	.byte	0x56
	.long	0x406
	.uleb128 0xb
	.long	.LASF80
	.byte	0x5
	.byte	0x57
	.long	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3e0
	.uleb128 0x4
	.long	.LASF81
	.byte	0x5
	.byte	0x58
	.long	0x3eb
	.uleb128 0xd
	.long	.LASF82
	.byte	0x4
	.byte	0x5
	.byte	0x5a
	.long	0x440
	.uleb128 0xb
	.long	.LASF83
	.byte	0x5
	.byte	0x5b
	.long	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF84
	.byte	0x5
	.byte	0x5c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x417
	.uleb128 0x4
	.long	.LASF85
	.byte	0x5
	.byte	0x5d
	.long	0x440
	.uleb128 0xd
	.long	.LASF86
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.long	0x479
	.uleb128 0xb
	.long	.LASF87
	.byte	0x5
	.byte	0x60
	.long	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF88
	.byte	0x5
	.byte	0x61
	.long	0x484
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x450
	.uleb128 0x7
	.byte	0x2
	.long	0x445
	.uleb128 0x7
	.byte	0x2
	.long	0x40c
	.uleb128 0x4
	.long	.LASF89
	.byte	0x5
	.byte	0x65
	.long	0x479
	.uleb128 0xd
	.long	.LASF90
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.long	0x4be
	.uleb128 0xb
	.long	.LASF91
	.byte	0x6
	.byte	0x46
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x6
	.byte	0x47
	.long	0x546
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x495
	.uleb128 0xd
	.long	.LASF93
	.byte	0xe
	.byte	0x7
	.byte	0xac
	.long	0x541
	.uleb128 0xe
	.string	"hdb"
	.byte	0x7
	.byte	0xad
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x7
	.byte	0xae
	.long	0x6ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x7
	.byte	0xaf
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF95
	.byte	0x7
	.byte	0xb0
	.long	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF96
	.byte	0x7
	.byte	0xb1
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF97
	.byte	0x7
	.byte	0xb2
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.long	.LASF98
	.byte	0x7
	.byte	0xb3
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF99
	.byte	0x7
	.byte	0xb4
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xf
	.long	0x4c4
	.uleb128 0x7
	.byte	0x2
	.long	0x541
	.uleb128 0x4
	.long	.LASF100
	.byte	0x6
	.byte	0x48
	.long	0x495
	.uleb128 0x4
	.long	.LASF101
	.byte	0x6
	.byte	0x9f
	.long	0x562
	.uleb128 0x7
	.byte	0x2
	.long	0x54c
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
	.long	0x5a4
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
	.long	0x57e
	.uleb128 0xd
	.long	.LASF109
	.byte	0x5
	.byte	0x7
	.byte	0x7f
	.long	0x5e6
	.uleb128 0xb
	.long	.LASF91
	.byte	0x7
	.byte	0x80
	.long	0x614
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF110
	.byte	0x7
	.byte	0x81
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF111
	.byte	0x7
	.byte	0x83
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF112
	.byte	0x3
	.byte	0x7
	.byte	0x91
	.long	0x60f
	.uleb128 0xb
	.long	.LASF113
	.byte	0x7
	.byte	0x92
	.long	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF114
	.byte	0x7
	.byte	0x93
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x5e6
	.uleb128 0x7
	.byte	0x2
	.long	0x60f
	.uleb128 0x4
	.long	.LASF115
	.byte	0x7
	.byte	0x88
	.long	0x5af
	.uleb128 0x7
	.byte	0x2
	.long	0x61a
	.uleb128 0x4
	.long	.LASF116
	.byte	0x7
	.byte	0x99
	.long	0x60f
	.uleb128 0xd
	.long	.LASF117
	.byte	0xa
	.byte	0x7
	.byte	0x9c
	.long	0x697
	.uleb128 0xb
	.long	.LASF118
	.byte	0x7
	.byte	0x9d
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF119
	.byte	0x7
	.byte	0x9e
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF120
	.byte	0x7
	.byte	0x9f
	.long	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF121
	.byte	0x7
	.byte	0xa1
	.long	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF122
	.byte	0x7
	.byte	0xa4
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF123
	.byte	0x7
	.byte	0xa5
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x62b
	.uleb128 0xf
	.long	0x697
	.uleb128 0x4
	.long	.LASF124
	.byte	0x7
	.byte	0xaa
	.long	0x636
	.uleb128 0x7
	.byte	0x2
	.long	0x6a2
	.uleb128 0x4
	.long	.LASF125
	.byte	0x7
	.byte	0xb8
	.long	0x541
	.uleb128 0x7
	.byte	0x2
	.long	0x6b3
	.uleb128 0xf
	.long	0x6be
	.uleb128 0x4
	.long	.LASF126
	.byte	0x7
	.byte	0xcb
	.long	0x6d4
	.uleb128 0x7
	.byte	0x2
	.long	0x715
	.uleb128 0x10
	.long	.LASF127
	.byte	0xe
	.byte	0x7
	.word	0x110
	.long	0x715
	.uleb128 0x11
	.long	.LASF128
	.byte	0x7
	.word	0x111
	.long	0x8a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF129
	.byte	0x7
	.word	0x112
	.long	0x801
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF130
	.byte	0x7
	.word	0x116
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.long	0x6da
	.uleb128 0xd
	.long	.LASF131
	.byte	0x4
	.byte	0x7
	.byte	0xcd
	.long	0x743
	.uleb128 0xb
	.long	.LASF132
	.byte	0x7
	.byte	0xce
	.long	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF133
	.byte	0x7
	.byte	0xcf
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF134
	.byte	0x7
	.byte	0xd3
	.long	0x71a
	.uleb128 0xd
	.long	.LASF135
	.byte	0x8
	.byte	0x7
	.byte	0xdc
	.long	0x777
	.uleb128 0xb
	.long	.LASF136
	.byte	0x7
	.byte	0xdd
	.long	0x77c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF137
	.byte	0x7
	.byte	0xe1
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x74e
	.uleb128 0x7
	.byte	0x2
	.long	0x743
	.uleb128 0x4
	.long	.LASF138
	.byte	0x7
	.byte	0xe5
	.long	0x777
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0xe7
	.long	0x7b3
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
	.long	0x78d
	.uleb128 0xd
	.long	.LASF144
	.byte	0x8
	.byte	0x7
	.byte	0xee
	.long	0x801
	.uleb128 0xe
	.string	"f"
	.byte	0x7
	.byte	0xef
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x7
	.byte	0xf0
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF129
	.byte	0x7
	.byte	0xf1
	.long	0x801
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF145
	.byte	0x7
	.byte	0xf3
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x782
	.uleb128 0xf
	.long	0x801
	.uleb128 0x4
	.long	.LASF144
	.byte	0x7
	.byte	0xf5
	.long	0x7be
	.uleb128 0xd
	.long	.LASF146
	.byte	0xa
	.byte	0x7
	.byte	0xf7
	.long	0x840
	.uleb128 0xb
	.long	.LASF147
	.byte	0x7
	.byte	0xf8
	.long	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF148
	.byte	0x7
	.byte	0xf9
	.long	0x7b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF149
	.byte	0x7
	.byte	0xfa
	.long	0x817
	.uleb128 0x10
	.long	.LASF150
	.byte	0x8
	.byte	0x7
	.word	0x103
	.long	0x895
	.uleb128 0x11
	.long	.LASF91
	.byte	0x7
	.word	0x104
	.long	0x6d4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF151
	.byte	0x7
	.word	0x105
	.long	0x19a
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
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.long	.LASF154
	.byte	0x7
	.word	0x10e
	.long	0x84b
	.uleb128 0x7
	.byte	0x2
	.long	0x895
	.uleb128 0xc
	.long	.LASF155
	.byte	0x7
	.word	0x11a
	.long	0x715
	.uleb128 0x10
	.long	.LASF156
	.byte	0x6
	.byte	0x7
	.word	0x11d
	.long	0x8ee
	.uleb128 0x11
	.long	.LASF157
	.byte	0x7
	.word	0x11e
	.long	0x8f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF158
	.byte	0x7
	.word	0x11f
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF153
	.byte	0x7
	.word	0x120
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.long	0x8b3
	.uleb128 0x7
	.byte	0x2
	.long	0x8a7
	.uleb128 0xc
	.long	.LASF159
	.byte	0x7
	.word	0x121
	.long	0x8ee
	.uleb128 0x10
	.long	.LASF160
	.byte	0x4
	.byte	0x7
	.word	0x123
	.long	0x931
	.uleb128 0x11
	.long	.LASF161
	.byte	0x7
	.word	0x124
	.long	0x941
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF162
	.byte	0x7
	.word	0x125
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x905
	.uleb128 0x12
	.long	0x8f9
	.long	0x941
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x936
	.uleb128 0xc
	.long	.LASF163
	.byte	0x7
	.word	0x126
	.long	0x931
	.uleb128 0xc
	.long	.LASF164
	.byte	0x7
	.word	0x135
	.long	0x8a7
	.uleb128 0x10
	.long	.LASF165
	.byte	0x4
	.byte	0x7
	.word	0x13c
	.long	0x98b
	.uleb128 0x11
	.long	.LASF166
	.byte	0x7
	.word	0x13d
	.long	0x99b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x13e
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x95f
	.uleb128 0x12
	.long	0x6c4
	.long	0x99b
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x990
	.uleb128 0xc
	.long	.LASF168
	.byte	0x7
	.word	0x13f
	.long	0x98b
	.uleb128 0x10
	.long	.LASF169
	.byte	0x12
	.byte	0x7
	.word	0x142
	.long	0xa6e
	.uleb128 0x11
	.long	.LASF170
	.byte	0x7
	.word	0x143
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"rq"
	.byte	0x7
	.word	0x148
	.long	0x557
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF171
	.byte	0x7
	.word	0x149
	.long	0x562
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF172
	.byte	0x7
	.word	0x14e
	.long	0x562
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF173
	.byte	0x7
	.word	0x14f
	.long	0x5a4
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
	.long	0x2bf
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
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF179
	.byte	0x7
	.word	0x166
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF180
	.byte	0x7
	.word	0x167
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	.LASF181
	.byte	0x7
	.word	0x16b
	.long	0x9ad
	.uleb128 0x10
	.long	.LASF182
	.byte	0x10
	.byte	0x7
	.word	0x16d
	.long	0xb00
	.uleb128 0x11
	.long	.LASF183
	.byte	0x7
	.word	0x171
	.long	0xb05
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
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF186
	.byte	0x7
	.word	0x177
	.long	0x801
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF187
	.byte	0x7
	.word	0x17a
	.long	0xb16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF188
	.byte	0x7
	.word	0x17b
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF189
	.byte	0x7
	.word	0x17e
	.long	0xb27
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF190
	.byte	0x7
	.word	0x17f
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.long	0xa7a
	.uleb128 0x7
	.byte	0x2
	.long	0xa6e
	.uleb128 0x12
	.long	0x9a1
	.long	0xb16
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb0b
	.uleb128 0x12
	.long	0x947
	.long	0xb27
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb1c
	.uleb128 0xc
	.long	.LASF191
	.byte	0x7
	.word	0x184
	.long	0xb00
	.uleb128 0x10
	.long	.LASF192
	.byte	0x1
	.byte	0x7
	.word	0x186
	.long	0xb56
	.uleb128 0x11
	.long	.LASF193
	.byte	0x7
	.word	0x19c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.long	.LASF194
	.byte	0x7
	.word	0x19e
	.long	0xb39
	.uleb128 0x10
	.long	.LASF195
	.byte	0x16
	.byte	0x7
	.word	0x1a0
	.long	0xc15
	.uleb128 0x11
	.long	.LASF196
	.byte	0x7
	.word	0x1a1
	.long	0xc1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF166
	.byte	0x7
	.word	0x1a8
	.long	0x99b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF197
	.byte	0x7
	.word	0x1ae
	.long	0xc2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x1b0
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF198
	.byte	0x7
	.word	0x1b1
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF199
	.byte	0x7
	.word	0x1b3
	.long	0xc3c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF200
	.byte	0x7
	.word	0x1b4
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF201
	.byte	0x7
	.word	0x1b7
	.long	0xc4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF202
	.byte	0x7
	.word	0x1b8
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF203
	.byte	0x7
	.word	0x1ba
	.long	0xc69
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x11
	.long	.LASF204
	.byte	0x7
	.word	0x1bb
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.long	0xb62
	.uleb128 0x7
	.byte	0x2
	.long	0xb56
	.uleb128 0x12
	.long	0x54c
	.long	0xc2b
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc20
	.uleb128 0x12
	.long	0x69d
	.long	0xc3c
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc31
	.uleb128 0x12
	.long	0x807
	.long	0xc4d
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc42
	.uleb128 0x12
	.long	0xc64
	.long	0xc5e
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x953
	.uleb128 0xf
	.long	0xc5e
	.uleb128 0x7
	.byte	0x2
	.long	0xc53
	.uleb128 0xc
	.long	.LASF205
	.byte	0x7
	.word	0x1c1
	.long	0xc15
	.uleb128 0x15
	.string	"KDB"
	.byte	0x8
	.byte	0x3b
	.long	0xc6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CDB"
	.byte	0x8
	.byte	0x3c
	.long	0xb2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"KCB"
	.byte	0x8
	.byte	0x3d
	.long	0xb56
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CCB"
	.byte	0x8
	.byte	0x3e
	.long	0xa6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF206
	.byte	0x1
	.word	0x1cf
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xcda
	.uleb128 0x17
	.long	.LVL1
	.long	0xd31
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF207
	.byte	0x1
	.word	0x126
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd05
	.uleb128 0x17
	.long	.LVL0
	.long	0xd31
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF208
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF209
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF213
	.long	.LASF213
	.byte	0x9
	.byte	0x48
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	.LFB64
	.long	.LFE64-.LFB64
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
	.long	.LFB64
	.long	.LFE64
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
.LASF208:
	.string	"osEE_atmega_intvect"
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
.LASF101:
	.string	"OsEE_RQ"
.LASF98:
	.string	"dispatch_prio"
.LASF157:
	.string	"p_trigger_db"
.LASF178:
	.string	"s_isr_all_cnt"
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
.LASF207:
	.string	"__vector_1"
.LASF15:
	.string	"OsEE_tick_type"
.LASF139:
	.string	"OSEE_ACTION_TASK"
.LASF26:
	.string	"OsEE_task_type"
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
.LASF129:
	.string	"p_counter_db"
.LASF201:
	.string	"p_counter_ptr_array"
.LASF49:
	.string	"E_OS_ID"
.LASF211:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_intvect.c"
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
.LASF213:
	.string	"osEE_avr8_isr2_stub"
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
.LASF210:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF110:
	.string	"prev_prio"
.LASF24:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF181:
	.string	"OsEE_CCB"
.LASF212:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika"
.LASF206:
	.string	"__vector_11"
.LASF209:
	.string	"__vector_default"
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
.LASF87:
	.string	"p_sdb"
	.ident	"GCC: (GNU) 7.3.0"
