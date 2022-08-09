	.file	"task.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__floatsisf
.global	__mulsf3
.global	__divsf3
.global	__addsf3
.global	__fixsfsi
.global	__nesf2
	.section	.text.FuncMileageTask,"ax",@progbits
.global	FuncMileageTask
	.type	FuncMileageTask, @function
FuncMileageTask:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
.L3:
	ldi r24,lo8(3)
	ldi r25,0
	call WaitEvent
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call GetEvent
	ldd r24,Y+1
	sbrs r24,0
	rjmp .L2
	sts decimal+1,__zero_reg__
	sts decimal,__zero_reg__
	sts mileage+1,__zero_reg__
	sts mileage,__zero_reg__
	sts hour+1,__zero_reg__
	sts hour,__zero_reg__
	sts min+1,__zero_reg__
	sts min,__zero_reg__
	sts sec+1,__zero_reg__
	sts sec,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(3)
	call SetEvent
.L2:
	ldd r24,Y+1
	sbrs r24,1
	rjmp .L3
	ldi r24,lo8(19)
	call analogRead
	sts adc+1,r25
	sts adc,r24
	call GetActiveApplicationMode
	lds r22,adc
	lds r23,adc+1
	cpse r24,__zero_reg__
	rjmp .L4
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	lds r18,adc2kph
	lds r19,adc2kph+1
	lds r20,adc2kph+2
	lds r21,adc2kph+3
.L18:
	call __mulsf3
	sts speed,r22
	sts speed+1,r23
	sts speed+2,r24
	sts speed+3,r25
	lds r12,speed
	lds r13,speed+1
	lds r14,speed+2
	lds r15,speed+3
	lds r22,decimal
	lds r23,decimal+1
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	movw r8,r22
	movw r10,r24
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	movw r24,r14
	movw r22,r12
	call __divsf3
	movw r18,r22
	movw r20,r24
	movw r24,r10
	movw r22,r8
	call __addsf3
	call __fixsfsi
	sts decimal+1,r23
	sts decimal,r22
	cpi r22,-24
	ldi r18,3
	cpc r23,r18
	brlt .L6
	lds r18,mileage
	lds r19,mileage+1
	subi r18,-1
	sbci r19,-1
	sts mileage+1,r19
	sts mileage,r18
	subi r22,-24
	sbci r23,3
	sts decimal+1,r23
	sts decimal,r22
.L6:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __nesf2
	tst r24
	breq .L8
	lds r24,sec
	lds r25,sec+1
	adiw r24,1
	cpi r24,60
	cpc r25,__zero_reg__
	brge .L9
	sts sec+1,r25
	sts sec,r24
.L8:
	ldi r24,lo8(2)
	ldi r25,0
	call ClearEvent
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(3)
	call SetEvent
	rjmp .L3
.L4:
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	lds r18,adc2mph
	lds r19,adc2mph+1
	lds r20,adc2mph+2
	lds r21,adc2mph+3
	rjmp .L18
.L9:
	sts sec+1,__zero_reg__
	sts sec,__zero_reg__
	lds r24,min
	lds r25,min+1
	adiw r24,1
	cpi r24,60
	cpc r25,__zero_reg__
	brge .L11
	sts min+1,r25
	sts min,r24
	rjmp .L8
.L11:
	sts min+1,__zero_reg__
	sts min,__zero_reg__
	lds r24,hour
	lds r25,hour+1
	adiw r24,1
	sts hour+1,r25
	sts hour,r24
	rjmp .L8
	.size	FuncMileageTask, .-FuncMileageTask
	.section	.rodata.FuncDisplayTask.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%02d:%02d:%02d"
.LC1:
	.string	"%03dkph"
.LC2:
	.string	"%04d.%01dkm"
.LC3:
	.string	"%03dmph"
.LC4:
	.string	"%04d.%01dmi"
	.section	.text.FuncDisplayTask,"ax",@progbits
.global	FuncDisplayTask
	.type	FuncDisplayTask, @function
FuncDisplayTask:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r16,lo8(.LC0)
	ldi r17,hi8(.LC0)
	ldi r24,lo8(.LC3)
	mov r6,r24
	ldi r24,hi8(.LC3)
	mov r7,r24
	ldi r25,lo8(100)
	mov r14,r25
	mov r15,__zero_reg__
	ldi r18,lo8(.LC4)
	mov r12,r18
	ldi r18,hi8(.LC4)
	mov r13,r18
	ldi r19,lo8(.LC1)
	mov r10,r19
	ldi r19,hi8(.LC1)
	mov r11,r19
	ldi r20,lo8(.LC2)
	mov r8,r20
	ldi r20,hi8(.LC2)
	mov r9,r20
.L20:
	ldi r24,lo8(1)
	ldi r25,0
	call WaitEvent
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(3)
	call GetEvent
	ldd r24,Y+1
	sbrs r24,0
	rjmp .L20
	call GetActiveApplicationMode
	ldi r22,0
	cpse r24,__zero_reg__
	rjmp .L21
	ldi r24,lo8(8)
	call hd44780_setCursor
	lds r24,sec+1
	push r24
	lds r24,sec
	push r24
	lds r24,min+1
	push r24
	lds r24,min
	push r24
	lds r24,hour+1
	push r24
	lds r24,hour
	push r24
	push r17
	push r16
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,0
	call hd44780_setCursor
	lds r22,speed
	lds r23,speed+1
	lds r24,speed+2
	lds r25,speed+3
	call __fixsfsi
	push r23
	push r22
	push r11
	push r10
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,lo8(8)
	call hd44780_setCursor
	lds r24,decimal
	lds r25,decimal+1
	movw r22,r14
	call __divmodhi4
	push r23
	push r22
	lds r24,mileage+1
	push r24
	lds r24,mileage
	push r24
	push r9
	push r8
.L26:
	call hd44780_printf
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	rjmp .L20
.L21:
	ldi r24,lo8(8)
	call hd44780_setCursor
	lds r24,sec+1
	push r24
	lds r24,sec
	push r24
	lds r24,min+1
	push r24
	lds r24,min
	push r24
	lds r24,hour+1
	push r24
	lds r24,hour
	push r24
	push r17
	push r16
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,0
	call hd44780_setCursor
	lds r22,speed
	lds r23,speed+1
	lds r24,speed+2
	lds r25,speed+3
	call __fixsfsi
	push r23
	push r22
	push r7
	push r6
	call hd44780_printf
	ldi r22,lo8(1)
	ldi r24,lo8(8)
	call hd44780_setCursor
	lds r24,decimal
	lds r25,decimal+1
	movw r22,r14
	call __divmodhi4
	push r23
	push r22
	lds r24,mileage+1
	push r24
	lds r24,mileage
	push r24
	push r13
	push r12
	rjmp .L26
	.size	FuncDisplayTask, .-FuncDisplayTask
	.section	.text.ButtonISR,"ax",@progbits
.global	ButtonISR
	.type	ButtonISR, @function
ButtonISR:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(2)
	jmp SetEvent
	.size	ButtonISR, .-ButtonISR
.global	sec
	.section	.bss.sec,"aw",@nobits
	.type	sec, @object
	.size	sec, 2
sec:
	.zero	2
.global	min
	.section	.bss.min,"aw",@nobits
	.type	min, @object
	.size	min, 2
min:
	.zero	2
.global	hour
	.section	.bss.hour,"aw",@nobits
	.type	hour, @object
	.size	hour, 2
hour:
	.zero	2
.global	mileage
	.section	.bss.mileage,"aw",@nobits
	.type	mileage, @object
	.size	mileage, 2
mileage:
	.zero	2
.global	decimal
	.section	.bss.decimal,"aw",@nobits
	.type	decimal, @object
	.size	decimal, 2
decimal:
	.zero	2
.global	adc2mph
	.section	.data.adc2mph,"aw",@progbits
	.type	adc2mph, @object
	.size	adc2mph, 4
adc2mph:
	.byte	-29
	.byte	-91
	.byte	27
	.byte	62
.global	adc2kph
	.section	.data.adc2kph,"aw",@progbits
	.type	adc2kph, @object
	.size	adc2kph, 4
adc2kph:
	.byte	72
	.byte	-31
	.byte	122
	.byte	62
.global	speed
	.section	.bss.speed,"aw",@nobits
	.type	speed, @object
	.size	speed, 4
speed:
	.zero	4
.global	adc
	.section	.bss.adc,"aw",@nobits
	.type	adc, @object
	.size	adc, 2
adc:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
