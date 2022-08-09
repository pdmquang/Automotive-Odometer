	.file	"code.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata.idle_hook.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Test Failed!!!, line:160 \r\n"
	.section	.text.idle_hook,"ax",@progbits
.global	idle_hook
	.type	idle_hook, @function
idle_hook:
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	in r24,__SP_L__
	in r25,__SP_L__+1
	std Y+2,r25
	std Y+1,r24
	lds r24,main_sp
	lds r25,main_sp+1
	or r24,r25
	brne .L2
	ldd r24,Y+1
	ldd r25,Y+2
	sts main_sp+1,r25
	sts main_sp,r24
.L3:
/* #APP */
 ;  163 "/home/user/lab-osek/OSEK-GroupProject/code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L6
	call _Z14serialEventRunv
.L6:
/* #APP */
 ;  167 "/home/user/lab-osek/OSEK-GroupProject/code.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L2:
	lds r18,main_sp
	lds r19,main_sp+1
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	breq .L3
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call digitalWrite
/* #APP */
 ;  160 "/home/user/lab-osek/OSEK-GroupProject/code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call serial_print
	ldi r16,lo8(gs(_Z14serialEventRunv))
	ldi r17,hi8(gs(_Z14serialEventRunv))
.L4:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L4
	call _Z14serialEventRunv
	rjmp .L4
	.size	idle_hook, .-idle_hook
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	setup, .-setup
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	lds r24,startupmode
	call StartOS
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	main, .-main
	.section	.rodata.lcd_animation.str1.1,"aMS",@progbits,1
.LC1:
	.string	"WELCOME"
.LC2:
	.string	"STARTING"
	.section	.text.lcd_animation,"ax",@progbits
.global	lcd_animation
	.type	lcd_animation, @function
lcd_animation:
	push r14
	push r15
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r28,0
	ldi r24,lo8(.LC1)
	mov r14,r24
	ldi r24,hi8(.LC1)
	mov r15,r24
	ldi r16,lo8(.LC2)
	ldi r17,hi8(.LC2)
.L15:
	ldi r22,0
	mov r24,r28
	call hd44780_setCursor
	push r15
	push r14
	call hd44780_printf
	ldi r22,lo8(1)
	mov r24,r28
	call hd44780_setCursor
	push r17
	push r16
	call hd44780_printf
	ldi r22,lo8(48)
	ldi r23,lo8(117)
	ldi r24,0
	ldi r25,0
	call delay
	call hd44780_clear
	subi r28,lo8(-(1))
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r28,lo8(16)
	brne .L15
/* epilogue start */
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	lcd_animation, .-lcd_animation
	.section	.rodata.check_mode.str1.1,"aMS",@progbits,1
.LC3:
	.string	"UNIT SET TO:"
.LC4:
	.string	"KILOMETERS"
.LC5:
	.string	"MILES"
	.section	.text.check_mode,"ax",@progbits
.global	check_mode
	.type	check_mode, @function
check_mode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(2)
	call digitalRead
	or r24,r25
	brne .L18
	ldi r24,lo8(1)
	sts startupmode,r24
.L19:
	lds r24,startupmode
	cpse r24,__zero_reg__
	rjmp .L20
	ldi r22,0
	call hd44780_setCursor
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,0
	call hd44780_setCursor
	ldi r24,lo8(.LC4)
	ldi r25,hi8(.LC4)
.L22:
	push r25
	push r24
	call hd44780_printf
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L21:
	ldi r22,lo8(64)
	ldi r23,lo8(13)
	ldi r24,lo8(3)
	ldi r25,0
	call delay
	jmp hd44780_clear
.L18:
	sts startupmode,__zero_reg__
	rjmp .L19
.L20:
	cpi r24,lo8(1)
	brne .L21
	ldi r22,0
	ldi r24,0
	call hd44780_setCursor
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	push r25
	push r24
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,0
	call hd44780_setCursor
	ldi r24,lo8(.LC5)
	ldi r25,hi8(.LC5)
	rjmp .L22
	.size	check_mode, .-check_mode
	.section	.rodata.StartupHook.str1.1,"aMS",@progbits,1
.LC6:
	.string	"TEAM8"
	.section	.text.StartupHook,"ax",@progbits
.global	StartupHook
	.type	StartupHook, @function
StartupHook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call pinMode
	ldi r22,0
	ldi r24,lo8(13)
	call digitalWrite
	ldi r22,0
	ldi r24,lo8(19)
	call pinMode
	ldi r22,0
	ldi r24,lo8(2)
	call pinMode
	ldi r20,0
	ldi r22,lo8(2)
	ldi r24,lo8(16)
	call hd44780_init
	call lcd_animation
	call check_mode
	ldi r22,0
	ldi r24,0
	call hd44780_setCursor
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	push r25
	push r24
	call hd44780_printf
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	sbi 0x1d,0
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	jmp _ZN14HardwareSerial5beginEmh
	.size	StartupHook, .-StartupHook
.global	main_sp
	.section	.bss.main_sp,"aw",@nobits
	.type	main_sp, @object
	.size	main_sp, 2
main_sp:
	.zero	2
.global	startupmode
	.section	.bss.startupmode,"aw",@nobits
	.type	startupmode, @object
	.size	startupmode, 1
startupmode:
	.zero	1
.global	old_sp
	.section	.bss.old_sp,"aw",@nobits
	.type	old_sp, @object
	.size	old_sp, 2
old_sp:
	.zero	2
.global	stk_wrong
	.section	.bss.stk_wrong,"aw",@nobits
	.type	stk_wrong, @object
	.size	stk_wrong, 1
stk_wrong:
	.zero	1
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
