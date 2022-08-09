	.file	"ee_atmega_timer1ctc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.OsEE_atmega_startTimer1,"ax",@progbits
.global	OsEE_atmega_startTimer1
	.type	OsEE_atmega_startTimer1, @function
OsEE_atmega_startTimer1:
.LFB61:
	.file 1 "/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_timer1ctc.c"
	.loc 1 67 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
	sts 129,__zero_reg__
	.loc 1 71 0
	sts 128,__zero_reg__
	.loc 1 72 0
	sts 130,__zero_reg__
	.loc 1 73 0
	sts 132+1,__zero_reg__
	sts 132,__zero_reg__
	.loc 1 84 0
	cp r22,__zero_reg__
	ldi r18,16
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L2
.LVL1:
	.loc 1 86 0
	ldi r30,4
	1:
	lsl r22
	rol r23
	dec r30
	brne 1b
.LVL2:
	subi r22,1
	sbc r23,__zero_reg__
.LVL3:
	.loc 1 85 0
	ldi r24,lo8(1)
.LVL4:
.L3:
	.loc 1 107 0
	ldi r25,lo8(2)
	out 0x16,r25
	.loc 1 108 0
	sts 111,r25
	.loc 1 109 0
	sts 136+1,r23
	sts 136,r22
	.loc 1 110 0
	ori r24,lo8(8)
.LVL5:
	sts 129,r24
/* epilogue start */
	.loc 1 111 0
	ret
.LVL6:
.L2:
	.loc 1 88 0
	cp r22,__zero_reg__
	ldi r18,-128
	cpc r23,r18
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L4
.LVL7:
	.loc 1 90 0
	lsl r22
	rol r23
.LVL8:
	subi r22,1
	sbc r23,__zero_reg__
.LVL9:
	.loc 1 89 0
	ldi r24,lo8(2)
	rjmp .L3
.LVL10:
.L4:
	.loc 1 92 0
	cpi r22,-4
	ldi r18,-1
	cpc r23,r18
	ldi r18,3
	cpc r24,r18
	cpc r25,__zero_reg__
	brsh .L5
.LVL11:
	.loc 1 94 0
	ldi r20,2
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r20
	brne 1b
.LVL12:
	subi r22,1
	sbc r23,__zero_reg__
.LVL13:
	.loc 1 93 0
	ldi r24,lo8(3)
	rjmp .L3
.LVL14:
.L5:
	.loc 1 96 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	ldi r18,16
	cpc r24,r18
	cpc r25,__zero_reg__
	brsh .L6
.LVL15:
	.loc 1 98 0
	ldi r19,4
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r19
	brne 1b
.LVL16:
	subi r22,1
	sbc r23,__zero_reg__
.LVL17:
	.loc 1 97 0
	ldi r24,lo8(4)
	rjmp .L3
.LVL18:
.L6:
	.loc 1 102 0
	ldi r18,6
	1:
	lsr r25
	ror r24
	ror r23
	ror r22
	dec r18
	brne 1b
.LVL19:
	subi r22,1
	sbc r23,__zero_reg__
.LVL20:
	.loc 1 101 0
	ldi r24,lo8(5)
	rjmp .L3
	.cfi_endproc
.LFE61:
	.size	OsEE_atmega_startTimer1, .-OsEE_atmega_startTimer1
	.text
.Letext0:
	.file 2 "/home/user/arduino-1.8.13/hardware/tools/avr/avr/include/stdint.h"
	.file 3 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_platform_types.h"
	.file 4 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_api_types.h"
	.file 5 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_hal_internal_types.h"
	.file 6 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_scheduler_types.h"
	.file 7 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_kernel_types.h"
	.file 8 "/home/user/lab-osek/OSEK-GroupProject/erika/inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcfb
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF209
	.byte	0xc
	.long	.LASF210
	.long	.LASF211
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x82
	.long	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x3
	.byte	0x56
	.long	0xa3
	.uleb128 0x6
	.long	.LASF11
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x59
	.long	0x89
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x5f
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x69
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0x6c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF17
	.byte	0x3
	.byte	0x71
	.long	0x5e
	.uleb128 0x7
	.byte	0x2
	.long	0xe0
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x45
	.long	0xae
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x4f
	.long	0x57
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x5b
	.long	0x57
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x66
	.long	0xda
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0x6d
	.long	0x143
	.uleb128 0x6
	.long	.LASF23
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.uleb128 0x6
	.long	.LASF26
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF27
	.byte	0x4
	.byte	0x72
	.long	0x119
	.uleb128 0x4
	.long	.LASF28
	.byte	0x4
	.byte	0x74
	.long	0x143
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0x76
	.long	0x18f
	.uleb128 0x6
	.long	.LASF31
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.uleb128 0x6
	.long	.LASF34
	.byte	0x3
	.uleb128 0x6
	.long	.LASF35
	.byte	0x4
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	.LASF37
	.byte	0x4
	.byte	0x7f
	.long	0x159
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4
	.byte	0x86
	.long	0x18f
	.uleb128 0x4
	.long	.LASF39
	.byte	0x4
	.byte	0x93
	.long	0xc4
	.uleb128 0xa
	.byte	0x6
	.byte	0x4
	.byte	0xa0
	.long	0x1e3
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.byte	0xa2
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.byte	0xa5
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF42
	.byte	0x4
	.byte	0xa9
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF43
	.byte	0x4
	.byte	0xab
	.long	0x1b0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x4
	.byte	0xc8
	.long	0xcf
	.uleb128 0x4
	.long	.LASF45
	.byte	0x4
	.byte	0xdc
	.long	0xb9
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x4
	.byte	0xe4
	.long	0x2be
	.uleb128 0x6
	.long	.LASF47
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x1
	.uleb128 0x6
	.long	.LASF49
	.byte	0x2
	.uleb128 0x6
	.long	.LASF50
	.byte	0x3
	.uleb128 0x6
	.long	.LASF51
	.byte	0x4
	.uleb128 0x6
	.long	.LASF52
	.byte	0x5
	.uleb128 0x6
	.long	.LASF53
	.byte	0x6
	.uleb128 0x6
	.long	.LASF54
	.byte	0x7
	.uleb128 0x6
	.long	.LASF55
	.byte	0x8
	.uleb128 0x6
	.long	.LASF56
	.byte	0x9
	.uleb128 0x6
	.long	.LASF57
	.byte	0xa
	.uleb128 0x6
	.long	.LASF58
	.byte	0xb
	.uleb128 0x6
	.long	.LASF59
	.byte	0xc
	.uleb128 0x6
	.long	.LASF60
	.byte	0xd
	.uleb128 0x6
	.long	.LASF61
	.byte	0xe
	.uleb128 0x6
	.long	.LASF62
	.byte	0xf
	.uleb128 0x6
	.long	.LASF63
	.byte	0x10
	.uleb128 0x6
	.long	.LASF64
	.byte	0x11
	.uleb128 0x6
	.long	.LASF65
	.byte	0x12
	.uleb128 0x6
	.long	.LASF66
	.byte	0x13
	.uleb128 0x6
	.long	.LASF67
	.byte	0x14
	.uleb128 0x6
	.long	.LASF68
	.byte	0x15
	.uleb128 0x6
	.long	.LASF69
	.byte	0x16
	.uleb128 0x6
	.long	.LASF70
	.byte	0x17
	.uleb128 0x6
	.long	.LASF71
	.byte	0x18
	.uleb128 0x6
	.long	.LASF72
	.byte	0x19
	.uleb128 0x6
	.long	.LASF73
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF74
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x4
	.word	0x106
	.long	0x204
	.uleb128 0xc
	.long	.LASF76
	.byte	0x4
	.word	0x108
	.long	0x2be
	.uleb128 0xd
	.long	.LASF79
	.byte	0x14
	.byte	0x5
	.byte	0x3f
	.long	0x3e5
	.uleb128 0xe
	.string	"r29"
	.byte	0x5
	.byte	0x40
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"r28"
	.byte	0x5
	.byte	0x41
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"r17"
	.byte	0x5
	.byte	0x42
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"r16"
	.byte	0x5
	.byte	0x43
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"r15"
	.byte	0x5
	.byte	0x44
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"r14"
	.byte	0x5
	.byte	0x45
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"r13"
	.byte	0x5
	.byte	0x46
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"r12"
	.byte	0x5
	.byte	0x47
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"r11"
	.byte	0x5
	.byte	0x48
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"r10"
	.byte	0x5
	.byte	0x49
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"r9"
	.byte	0x5
	.byte	0x4a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"r8"
	.byte	0x5
	.byte	0x4b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.string	"r7"
	.byte	0x5
	.byte	0x4c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"r6"
	.byte	0x5
	.byte	0x4d
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"r5"
	.byte	0x5
	.byte	0x4e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"r4"
	.byte	0x5
	.byte	0x4f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.string	"r3"
	.byte	0x5
	.byte	0x50
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"r2"
	.byte	0x5
	.byte	0x51
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF77
	.byte	0x5
	.byte	0x52
	.long	0x3e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x2d6
	.uleb128 0x4
	.long	.LASF78
	.byte	0x5
	.byte	0x53
	.long	0x2d6
	.uleb128 0xd
	.long	.LASF80
	.byte	0x2
	.byte	0x5
	.byte	0x56
	.long	0x411
	.uleb128 0xb
	.long	.LASF81
	.byte	0x5
	.byte	0x57
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3eb
	.uleb128 0x4
	.long	.LASF82
	.byte	0x5
	.byte	0x58
	.long	0x3f6
	.uleb128 0xd
	.long	.LASF83
	.byte	0x4
	.byte	0x5
	.byte	0x5a
	.long	0x44b
	.uleb128 0xb
	.long	.LASF84
	.byte	0x5
	.byte	0x5b
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x5
	.byte	0x5c
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x422
	.uleb128 0x4
	.long	.LASF86
	.byte	0x5
	.byte	0x5d
	.long	0x44b
	.uleb128 0xd
	.long	.LASF87
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.long	0x484
	.uleb128 0xb
	.long	.LASF88
	.byte	0x5
	.byte	0x60
	.long	0x489
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x5
	.byte	0x61
	.long	0x48f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x45b
	.uleb128 0x7
	.byte	0x2
	.long	0x450
	.uleb128 0x7
	.byte	0x2
	.long	0x417
	.uleb128 0x4
	.long	.LASF90
	.byte	0x5
	.byte	0x65
	.long	0x484
	.uleb128 0xd
	.long	.LASF91
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.long	0x4c9
	.uleb128 0xb
	.long	.LASF92
	.byte	0x6
	.byte	0x46
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x6
	.byte	0x47
	.long	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4a0
	.uleb128 0xd
	.long	.LASF94
	.byte	0xe
	.byte	0x7
	.byte	0xac
	.long	0x54c
	.uleb128 0xe
	.string	"hdb"
	.byte	0x7
	.byte	0xad
	.long	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x7
	.byte	0xae
	.long	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x7
	.byte	0xaf
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF96
	.byte	0x7
	.byte	0xb0
	.long	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF97
	.byte	0x7
	.byte	0xb1
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF98
	.byte	0x7
	.byte	0xb2
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.long	.LASF99
	.byte	0x7
	.byte	0xb3
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF100
	.byte	0x7
	.byte	0xb4
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xf
	.long	0x4cf
	.uleb128 0x7
	.byte	0x2
	.long	0x54c
	.uleb128 0x4
	.long	.LASF101
	.byte	0x6
	.byte	0x48
	.long	0x4a0
	.uleb128 0x4
	.long	.LASF102
	.byte	0x6
	.byte	0x9f
	.long	0x56d
	.uleb128 0x7
	.byte	0x2
	.long	0x557
	.uleb128 0x4
	.long	.LASF103
	.byte	0x7
	.byte	0x50
	.long	0xda
	.uleb128 0x4
	.long	.LASF104
	.byte	0x7
	.byte	0x52
	.long	0x57
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0x71
	.long	0x5af
	.uleb128 0x6
	.long	.LASF105
	.byte	0
	.uleb128 0x6
	.long	.LASF106
	.byte	0x1
	.uleb128 0x6
	.long	.LASF107
	.byte	0x2
	.uleb128 0x6
	.long	.LASF108
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF109
	.byte	0x7
	.byte	0x79
	.long	0x589
	.uleb128 0xd
	.long	.LASF110
	.byte	0x5
	.byte	0x7
	.byte	0x7f
	.long	0x5f1
	.uleb128 0xb
	.long	.LASF92
	.byte	0x7
	.byte	0x80
	.long	0x61f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF111
	.byte	0x7
	.byte	0x81
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF112
	.byte	0x7
	.byte	0x83
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF113
	.byte	0x3
	.byte	0x7
	.byte	0x91
	.long	0x61a
	.uleb128 0xb
	.long	.LASF114
	.byte	0x7
	.byte	0x92
	.long	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF115
	.byte	0x7
	.byte	0x93
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x5f1
	.uleb128 0x7
	.byte	0x2
	.long	0x61a
	.uleb128 0x4
	.long	.LASF116
	.byte	0x7
	.byte	0x88
	.long	0x5ba
	.uleb128 0x7
	.byte	0x2
	.long	0x625
	.uleb128 0x4
	.long	.LASF117
	.byte	0x7
	.byte	0x99
	.long	0x61a
	.uleb128 0xd
	.long	.LASF118
	.byte	0xa
	.byte	0x7
	.byte	0x9c
	.long	0x6a2
	.uleb128 0xb
	.long	.LASF119
	.byte	0x7
	.byte	0x9d
	.long	0x103
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x7
	.byte	0x9e
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF121
	.byte	0x7
	.byte	0x9f
	.long	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF122
	.byte	0x7
	.byte	0xa1
	.long	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF123
	.byte	0x7
	.byte	0xa4
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF124
	.byte	0x7
	.byte	0xa5
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x636
	.uleb128 0xf
	.long	0x6a2
	.uleb128 0x4
	.long	.LASF125
	.byte	0x7
	.byte	0xaa
	.long	0x641
	.uleb128 0x7
	.byte	0x2
	.long	0x6ad
	.uleb128 0x4
	.long	.LASF126
	.byte	0x7
	.byte	0xb8
	.long	0x54c
	.uleb128 0x7
	.byte	0x2
	.long	0x6be
	.uleb128 0xf
	.long	0x6c9
	.uleb128 0x4
	.long	.LASF127
	.byte	0x7
	.byte	0xcb
	.long	0x6df
	.uleb128 0x7
	.byte	0x2
	.long	0x720
	.uleb128 0x10
	.long	.LASF128
	.byte	0xe
	.byte	0x7
	.word	0x110
	.long	0x720
	.uleb128 0x11
	.long	.LASF129
	.byte	0x7
	.word	0x111
	.long	0x8ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF130
	.byte	0x7
	.word	0x112
	.long	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF131
	.byte	0x7
	.word	0x116
	.long	0x84b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.long	0x6e5
	.uleb128 0xd
	.long	.LASF132
	.byte	0x4
	.byte	0x7
	.byte	0xcd
	.long	0x74e
	.uleb128 0xb
	.long	.LASF133
	.byte	0x7
	.byte	0xce
	.long	0x6d4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF134
	.byte	0x7
	.byte	0xcf
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF135
	.byte	0x7
	.byte	0xd3
	.long	0x725
	.uleb128 0xd
	.long	.LASF136
	.byte	0x8
	.byte	0x7
	.byte	0xdc
	.long	0x782
	.uleb128 0xb
	.long	.LASF137
	.byte	0x7
	.byte	0xdd
	.long	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF138
	.byte	0x7
	.byte	0xe1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x759
	.uleb128 0x7
	.byte	0x2
	.long	0x74e
	.uleb128 0x4
	.long	.LASF139
	.byte	0x7
	.byte	0xe5
	.long	0x782
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x7
	.byte	0xe7
	.long	0x7be
	.uleb128 0x6
	.long	.LASF140
	.byte	0
	.uleb128 0x6
	.long	.LASF141
	.byte	0x1
	.uleb128 0x6
	.long	.LASF142
	.byte	0x2
	.uleb128 0x6
	.long	.LASF143
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF144
	.byte	0x7
	.byte	0xec
	.long	0x798
	.uleb128 0xd
	.long	.LASF145
	.byte	0x8
	.byte	0x7
	.byte	0xee
	.long	0x80c
	.uleb128 0xe
	.string	"f"
	.byte	0x7
	.byte	0xef
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x7
	.byte	0xf0
	.long	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF130
	.byte	0x7
	.byte	0xf1
	.long	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF146
	.byte	0x7
	.byte	0xf3
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x78d
	.uleb128 0xf
	.long	0x80c
	.uleb128 0x4
	.long	.LASF145
	.byte	0x7
	.byte	0xf5
	.long	0x7c9
	.uleb128 0xd
	.long	.LASF147
	.byte	0xa
	.byte	0x7
	.byte	0xf7
	.long	0x84b
	.uleb128 0xb
	.long	.LASF148
	.byte	0x7
	.byte	0xf8
	.long	0x817
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF149
	.byte	0x7
	.byte	0xf9
	.long	0x7be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF150
	.byte	0x7
	.byte	0xfa
	.long	0x822
	.uleb128 0x10
	.long	.LASF151
	.byte	0x8
	.byte	0x7
	.word	0x103
	.long	0x8a0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x7
	.word	0x104
	.long	0x6df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF152
	.byte	0x7
	.word	0x105
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF153
	.byte	0x7
	.word	0x106
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF154
	.byte	0x7
	.word	0x109
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.long	.LASF155
	.byte	0x7
	.word	0x10e
	.long	0x856
	.uleb128 0x7
	.byte	0x2
	.long	0x8a0
	.uleb128 0xc
	.long	.LASF156
	.byte	0x7
	.word	0x11a
	.long	0x720
	.uleb128 0x10
	.long	.LASF157
	.byte	0x6
	.byte	0x7
	.word	0x11d
	.long	0x8f9
	.uleb128 0x11
	.long	.LASF158
	.byte	0x7
	.word	0x11e
	.long	0x8fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF159
	.byte	0x7
	.word	0x11f
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF154
	.byte	0x7
	.word	0x120
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.long	0x8be
	.uleb128 0x7
	.byte	0x2
	.long	0x8b2
	.uleb128 0xc
	.long	.LASF160
	.byte	0x7
	.word	0x121
	.long	0x8f9
	.uleb128 0x10
	.long	.LASF161
	.byte	0x4
	.byte	0x7
	.word	0x123
	.long	0x93c
	.uleb128 0x11
	.long	.LASF162
	.byte	0x7
	.word	0x124
	.long	0x94c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF163
	.byte	0x7
	.word	0x125
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x910
	.uleb128 0x12
	.long	0x904
	.long	0x94c
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x941
	.uleb128 0xc
	.long	.LASF164
	.byte	0x7
	.word	0x126
	.long	0x93c
	.uleb128 0xc
	.long	.LASF165
	.byte	0x7
	.word	0x135
	.long	0x8b2
	.uleb128 0x10
	.long	.LASF166
	.byte	0x4
	.byte	0x7
	.word	0x13c
	.long	0x996
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x13d
	.long	0x9a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF168
	.byte	0x7
	.word	0x13e
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.long	0x96a
	.uleb128 0x12
	.long	0x6cf
	.long	0x9a6
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x99b
	.uleb128 0xc
	.long	.LASF169
	.byte	0x7
	.word	0x13f
	.long	0x996
	.uleb128 0x10
	.long	.LASF170
	.byte	0x12
	.byte	0x7
	.word	0x142
	.long	0xa79
	.uleb128 0x11
	.long	.LASF171
	.byte	0x7
	.word	0x143
	.long	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"rq"
	.byte	0x7
	.word	0x148
	.long	0x562
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF172
	.byte	0x7
	.word	0x149
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF173
	.byte	0x7
	.word	0x14e
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF174
	.byte	0x7
	.word	0x14f
	.long	0x5af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF175
	.byte	0x7
	.word	0x150
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF176
	.byte	0x7
	.word	0x152
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.long	.LASF177
	.byte	0x7
	.word	0x163
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.long	.LASF178
	.byte	0x7
	.word	0x164
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF179
	.byte	0x7
	.word	0x165
	.long	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.long	.LASF180
	.byte	0x7
	.word	0x166
	.long	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF181
	.byte	0x7
	.word	0x167
	.long	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	.LASF182
	.byte	0x7
	.word	0x16b
	.long	0x9b8
	.uleb128 0x10
	.long	.LASF183
	.byte	0x10
	.byte	0x7
	.word	0x16d
	.long	0xb0b
	.uleb128 0x11
	.long	.LASF184
	.byte	0x7
	.word	0x171
	.long	0xb10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF185
	.byte	0x7
	.word	0x173
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF186
	.byte	0x7
	.word	0x175
	.long	0x6c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF187
	.byte	0x7
	.word	0x177
	.long	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF188
	.byte	0x7
	.word	0x17a
	.long	0xb21
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF189
	.byte	0x7
	.word	0x17b
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF190
	.byte	0x7
	.word	0x17e
	.long	0xb32
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF191
	.byte	0x7
	.word	0x17f
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.long	0xa85
	.uleb128 0x7
	.byte	0x2
	.long	0xa79
	.uleb128 0x12
	.long	0x9ac
	.long	0xb21
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb16
	.uleb128 0x12
	.long	0x952
	.long	0xb32
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xb27
	.uleb128 0xc
	.long	.LASF192
	.byte	0x7
	.word	0x184
	.long	0xb0b
	.uleb128 0x10
	.long	.LASF193
	.byte	0x1
	.byte	0x7
	.word	0x186
	.long	0xb61
	.uleb128 0x11
	.long	.LASF194
	.byte	0x7
	.word	0x19c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.long	.LASF195
	.byte	0x7
	.word	0x19e
	.long	0xb44
	.uleb128 0x10
	.long	.LASF196
	.byte	0x16
	.byte	0x7
	.word	0x1a0
	.long	0xc20
	.uleb128 0x11
	.long	.LASF197
	.byte	0x7
	.word	0x1a1
	.long	0xc25
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.long	.LASF167
	.byte	0x7
	.word	0x1a8
	.long	0x9a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.long	.LASF198
	.byte	0x7
	.word	0x1ae
	.long	0xc36
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF168
	.byte	0x7
	.word	0x1b0
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.long	.LASF199
	.byte	0x7
	.word	0x1b1
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF200
	.byte	0x7
	.word	0x1b3
	.long	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.long	.LASF201
	.byte	0x7
	.word	0x1b4
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF202
	.byte	0x7
	.word	0x1b7
	.long	0xc58
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.long	.LASF203
	.byte	0x7
	.word	0x1b8
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF204
	.byte	0x7
	.word	0x1ba
	.long	0xc74
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x11
	.long	.LASF205
	.byte	0x7
	.word	0x1bb
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.long	0xb6d
	.uleb128 0x7
	.byte	0x2
	.long	0xb61
	.uleb128 0x12
	.long	0x557
	.long	0xc36
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc2b
	.uleb128 0x12
	.long	0x6a8
	.long	0xc47
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc3c
	.uleb128 0x12
	.long	0x812
	.long	0xc58
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc4d
	.uleb128 0x12
	.long	0xc6f
	.long	0xc69
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x95e
	.uleb128 0xf
	.long	0xc69
	.uleb128 0x7
	.byte	0x2
	.long	0xc5e
	.uleb128 0xc
	.long	.LASF206
	.byte	0x7
	.word	0x1c1
	.long	0xc20
	.uleb128 0x15
	.string	"KDB"
	.byte	0x8
	.byte	0x3b
	.long	0xc7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CDB"
	.byte	0x8
	.byte	0x3c
	.long	0xb38
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"KCB"
	.byte	0x8
	.byte	0x3d
	.long	0xb61
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CCB"
	.byte	0x8
	.byte	0x3e
	.long	0xa79
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x17
	.long	.LASF213
	.byte	0x1
	.byte	0x43
	.long	0x70
	.long	.LLST0
	.uleb128 0x18
	.long	.LASF207
	.byte	0x1
	.byte	0x44
	.long	0x4c
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF208
	.byte	0x1
	.byte	0x45
	.long	0x5e
	.long	.LLST2
	.byte	0
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL6
	.long	.LVL8
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL10
	.long	.LVL12
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL10
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL15
	.long	.LVL18
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL18
	.long	.LFE61
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL6
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE61
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB61
	.long	.LFE61
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF195:
	.string	"OsEE_KCB"
.LASF129:
	.string	"p_trigger_cb"
.LASF143:
	.string	"OSEE_ACTION_CALLBACK"
.LASF58:
	.string	"E_OS_MISSINGEND"
.LASF60:
	.string	"E_OS_STACKFAULT"
.LASF133:
	.string	"trigger_queue"
.LASF192:
	.string	"OsEE_CDB"
.LASF183:
	.string	"OsEE_CDB_tag"
.LASF33:
	.string	"OSEE_TASK_READY_STACKED"
.LASF168:
	.string	"tdb_array_size"
.LASF44:
	.string	"EventMaskType"
.LASF23:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF102:
	.string	"OsEE_RQ"
.LASF99:
	.string	"dispatch_prio"
.LASF158:
	.string	"p_trigger_db"
.LASF179:
	.string	"s_isr_all_cnt"
.LASF0:
	.string	"unsigned int"
.LASF156:
	.string	"OsEE_TriggerDB"
.LASF185:
	.string	"p_idle_hook"
.LASF39:
	.string	"TickType"
.LASF187:
	.string	"p_sys_counter_db"
.LASF104:
	.string	"OsEE_byte"
.LASF56:
	.string	"E_OS_SERVICEID"
.LASF113:
	.string	"OsEE_MDB_tag"
.LASF146:
	.string	"mask"
.LASF151:
	.string	"OsEE_TriggerCB_tag"
.LASF200:
	.string	"p_res_ptr_array"
.LASF152:
	.string	"when"
.LASF194:
	.string	"dummy"
.LASF53:
	.string	"E_OS_RESOURCE"
.LASF101:
	.string	"OsEE_SN"
.LASF115:
	.string	"mtx_prio"
.LASF81:
	.string	"p_tos"
.LASF17:
	.string	"OsEE_event_mask"
.LASF41:
	.string	"ticksperbase"
.LASF155:
	.string	"OsEE_TriggerCB"
.LASF52:
	.string	"E_OS_NOFUNC"
.LASF213:
	.string	"microsecondsInterval"
.LASF29:
	.string	"OsEE_task_type_tag"
.LASF153:
	.string	"active"
.LASF82:
	.string	"OsEE_SCB"
.LASF124:
	.string	"event_mask"
.LASF186:
	.string	"p_idle_task"
.LASF16:
	.string	"OsEE_tick_type"
.LASF8:
	.string	"uint32_t"
.LASF140:
	.string	"OSEE_ACTION_TASK"
.LASF27:
	.string	"OsEE_task_type"
.LASF98:
	.string	"ready_prio"
.LASF161:
	.string	"OsEE_autostart_trigger_tag"
.LASF86:
	.string	"OsEE_SDB"
.LASF105:
	.string	"OSEE_KERNEL_STOPPED"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"TaskType"
.LASF45:
	.string	"MemSize"
.LASF87:
	.string	"OsEE_HDB_tag"
.LASF137:
	.string	"p_counter_cb"
.LASF134:
	.string	"value"
.LASF97:
	.string	"task_func"
.LASF38:
	.string	"TaskStateType"
.LASF47:
	.string	"E_OK"
.LASF198:
	.string	"p_sn_array"
.LASF120:
	.string	"current_prio"
.LASF193:
	.string	"OsEE_KCB_tag"
.LASF171:
	.string	"p_curr"
.LASF127:
	.string	"OsEE_TriggerQ"
.LASF142:
	.string	"OSEE_ACTION_COUNTER"
.LASF32:
	.string	"OSEE_TASK_READY"
.LASF95:
	.string	"p_tcb"
.LASF204:
	.string	"p_alarm_ptr_array"
.LASF173:
	.string	"p_stk_sn"
.LASF15:
	.string	"OsEE_mem_size"
.LASF74:
	.string	"E_OS_SYS_ACT"
.LASF40:
	.string	"maxallowedvalue"
.LASF159:
	.string	"increment"
.LASF130:
	.string	"p_counter_db"
.LASF202:
	.string	"p_counter_ptr_array"
.LASF50:
	.string	"E_OS_ID"
.LASF43:
	.string	"AlarmBaseType"
.LASF109:
	.string	"OsEE_kernel_status"
.LASF93:
	.string	"p_tdb"
.LASF68:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF103:
	.string	"OsEE_kernel_cb"
.LASF51:
	.string	"E_OS_LIMIT"
.LASF191:
	.string	"autostart_trigger_array_size"
.LASF18:
	.string	"AppModeType"
.LASF28:
	.string	"TaskExecutionType"
.LASF175:
	.string	"app_mode"
.LASF177:
	.string	"prev_s_isr_all_status"
.LASF69:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF210:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika/src/ee_atmega_timer1ctc.c"
.LASF106:
	.string	"OSEE_KERNEL_STARTING"
.LASF110:
	.string	"OsEE_MCB_tag"
.LASF165:
	.string	"OsEE_AlarmDB"
.LASF5:
	.string	"uint8_t"
.LASF121:
	.string	"status"
.LASF149:
	.string	"type"
.LASF22:
	.string	"TaskFunc"
.LASF112:
	.string	"locked"
.LASF79:
	.string	"OsEE_CTX_tag"
.LASF83:
	.string	"OsEE_SDB_tag"
.LASF65:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF61:
	.string	"E_OS_PARAM_POINTER"
.LASF150:
	.string	"OsEE_action"
.LASF157:
	.string	"OsEE_autostart_trigger_info_tag"
.LASF1:
	.string	"long long int"
.LASF46:
	.string	"OsEE_status_type_tag"
.LASF75:
	.string	"OsEE_status_type"
.LASF205:
	.string	"alarm_array_size"
.LASF114:
	.string	"p_mcb"
.LASF135:
	.string	"OsEE_CounterCB"
.LASF208:
	.string	"timer1CompareValue"
.LASF13:
	.string	"OsEE_bool"
.LASF148:
	.string	"param"
.LASF125:
	.string	"OsEE_TCB"
.LASF169:
	.string	"OsEE_autostart_tdb"
.LASF26:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF36:
	.string	"OSEE_TASK_CHAINED"
.LASF138:
	.string	"info"
.LASF203:
	.string	"counter_array_size"
.LASF174:
	.string	"os_status"
.LASF184:
	.string	"p_ccb"
.LASF201:
	.string	"res_array_size"
.LASF67:
	.string	"E_OS_SPINLOCK"
.LASF73:
	.string	"E_OS_SYS_STACK"
.LASF91:
	.string	"OsEE_SN_tag"
.LASF11:
	.string	"OSEE_FALSE"
.LASF2:
	.string	"long double"
.LASF6:
	.string	"uint16_t"
.LASF126:
	.string	"OsEE_TDB"
.LASF160:
	.string	"OsEE_autostart_trigger_info"
.LASF167:
	.string	"p_tdb_ptr_array"
.LASF181:
	.string	"d_isr_all_cnt"
.LASF118:
	.string	"OsEE_TCB_tag"
.LASF12:
	.string	"OSEE_TRUE"
.LASF34:
	.string	"OSEE_TASK_WAITING"
.LASF141:
	.string	"OSEE_ACTION_EVENT"
.LASF21:
	.string	"TaskActivation"
.LASF31:
	.string	"OSEE_TASK_SUSPENDED"
.LASF96:
	.string	"task_type"
.LASF163:
	.string	"trigger_array_size"
.LASF7:
	.string	"long int"
.LASF123:
	.string	"wait_mask"
.LASF139:
	.string	"OsEE_CounterDB"
.LASF147:
	.string	"OsEE_action_tag"
.LASF136:
	.string	"OsEE_CounterDB_tag"
.LASF154:
	.string	"cycle"
.LASF92:
	.string	"p_next"
.LASF100:
	.string	"max_num_of_act"
.LASF162:
	.string	"p_trigger_ptr_array"
.LASF20:
	.string	"TaskPrio"
.LASF77:
	.string	"p_ctx"
.LASF131:
	.string	"action"
.LASF62:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF30:
	.string	"OsEE_task_status_tag"
.LASF128:
	.string	"OsEE_TriggerDB_tag"
.LASF14:
	.string	"OsEE_reg"
.LASF76:
	.string	"StatusType"
.LASF188:
	.string	"p_autostart_tdb_array"
.LASF66:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF197:
	.string	"p_kcb"
.LASF145:
	.string	"OsEE_action_param"
.LASF55:
	.string	"E_OS_VALUE"
.LASF64:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF199:
	.string	"sn_array_size"
.LASF35:
	.string	"OSEE_TASK_RUNNING"
.LASF176:
	.string	"last_error"
.LASF164:
	.string	"OsEE_autostart_trigger"
.LASF144:
	.string	"OsEE_action_type"
.LASF9:
	.string	"long unsigned int"
.LASF178:
	.string	"prev_s_isr_os_status"
.LASF116:
	.string	"OsEE_MCB"
.LASF190:
	.string	"p_autostart_trigger_array"
.LASF57:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF59:
	.string	"E_OS_DISABLEDINT"
.LASF180:
	.string	"s_isr_os_cnt"
.LASF72:
	.string	"E_OS_SYS_TASK"
.LASF206:
	.string	"OsEE_KDB"
.LASF4:
	.string	"unsigned char"
.LASF80:
	.string	"OsEE_SCB_tag"
.LASF49:
	.string	"E_OS_CALLEVEL"
.LASF48:
	.string	"E_OS_ACCESS"
.LASF37:
	.string	"OsEE_task_status"
.LASF207:
	.string	"timer1Prescaler"
.LASF54:
	.string	"E_OS_STATE"
.LASF117:
	.string	"OsEE_MDB"
.LASF108:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF24:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF189:
	.string	"autostart_tdb_array_size"
.LASF90:
	.string	"OsEE_HDB"
.LASF42:
	.string	"mincycle"
.LASF63:
	.string	"E_OS_PROTECTION_TIME"
.LASF107:
	.string	"OSEE_KERNEL_STARTED"
.LASF209:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF111:
	.string	"prev_prio"
.LASF212:
	.string	"OsEE_atmega_startTimer1"
.LASF25:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF182:
	.string	"OsEE_CCB"
.LASF211:
	.string	"/home/user/lab-osek/OSEK-GroupProject/erika"
.LASF3:
	.string	"signed char"
.LASF170:
	.string	"OsEE_CCB_tag"
.LASF122:
	.string	"p_first_mtx"
.LASF94:
	.string	"OsEE_TDB_tag"
.LASF89:
	.string	"p_scb"
.LASF132:
	.string	"OsEE_CounterCB_tag"
.LASF70:
	.string	"E_OS_CORE"
.LASF85:
	.string	"stack_size"
.LASF119:
	.string	"current_num_of_act"
.LASF196:
	.string	"OsEE_KDB_tag"
.LASF172:
	.string	"p_free_sn"
.LASF78:
	.string	"OsEE_CTX"
.LASF166:
	.string	"OsEE_autostart_tdb_tag"
.LASF71:
	.string	"E_OS_SYS_INIT"
.LASF84:
	.string	"p_bos"
.LASF88:
	.string	"p_sdb"
	.ident	"GCC: (GNU) 7.3.0"
