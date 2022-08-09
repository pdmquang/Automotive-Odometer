	.file	"hd44780.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.hd44780_setRowOffsets,"ax",@progbits
.global	hd44780_setRowOffsets
	.type	hd44780_setRowOffsets, @function
hd44780_setRowOffsets:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(_rowOffsets)
	ldi r31,hi8(_rowOffsets)
	st Z,r24
	std Z+1,r22
	std Z+2,r20
	std Z+3,r18
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	hd44780_setRowOffsets, .-hd44780_setRowOffsets
	.section	.text.hd44780_markStart,"ax",@progbits
.global	hd44780_markStart
	.type	hd44780_markStart, @function
hd44780_markStart:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	call micros
	sts _startTime,r22
	sts _startTime+1,r23
	sts _startTime+2,r24
	sts _startTime+3,r25
	sts _execTime,r12
	sts _execTime+1,r13
	sts _execTime+2,r14
	sts _execTime+3,r15
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	hd44780_markStart, .-hd44780_markStart
	.section	.text.waitReady,"ax",@progbits
.global	waitReady
	.type	waitReady, @function
waitReady:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	waitReady, .-waitReady
	.section	.text.pwaitReady,"ax",@progbits
.global	pwaitReady
	.type	pwaitReady, @function
pwaitReady:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	pwaitReady, .-pwaitReady
	.section	.text.rwaitReady,"ax",@progbits
.global	rwaitReady
	.type	rwaitReady, @function
rwaitReady:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	rwaitReady, .-rwaitReady
	.section	.text.hd44780_lineWrap,"ax",@progbits
.global	hd44780_lineWrap
	.type	hd44780_lineWrap, @function
hd44780_lineWrap:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaymode
	sbrs r24,1
	rjmp .L8
	ldi r24,lo8(1)
	sts _wraplines,r24
	ldi r25,0
	ldi r24,0
	ret
.L8:
	ldi r24,lo8(-3)
	ldi r25,lo8(-1)
/* epilogue start */
	ret
	.size	hd44780_lineWrap, .-hd44780_lineWrap
	.section	.text.hd44780_noLineWrap,"ax",@progbits
.global	hd44780_noLineWrap
	.type	hd44780_noLineWrap, @function
hd44780_noLineWrap:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts _wraplines,__zero_reg__
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	hd44780_noLineWrap, .-hd44780_noLineWrap
	.section	.text.hd44780_setExecTimes,"ax",@progbits
.global	hd44780_setExecTimes
	.type	hd44780_setExecTimes, @function
hd44780_setExecTimes:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts _chExecTime,r22
	sts _chExecTime+1,r23
	sts _chExecTime+2,r24
	sts _chExecTime+3,r25
	sts _insExecTime,r18
	sts _insExecTime+1,r19
	sts _insExecTime+2,r20
	sts _insExecTime+3,r21
/* epilogue start */
	ret
	.size	hd44780_setExecTimes, .-hd44780_setExecTimes
	.section	.text.hd44780_blinkLED,"ax",@progbits
.global	hd44780_blinkLED
	.type	hd44780_blinkLED, @function
hd44780_blinkLED:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call pinMode
	ldi r29,0
	ldi r28,0
.L13:
	cp r28,r16
	cpc r29,r17
	brge .L12
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call digitalWrite
	ldi r22,lo8(100)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	ldi r22,0
	ldi r24,lo8(13)
	call digitalWrite
	ldi r22,lo8(-6)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	adiw r28,1
	rjmp .L13
.L12:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	hd44780_blinkLED, .-hd44780_blinkLED
	.section	.text.hd44780_fatalError,"ax",@progbits
.global	hd44780_fatalError
	.type	hd44780_fatalError, @function
hd44780_fatalError:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24
	sbrs r25,7
	rjmp .L16
	neg r29
	neg r28
	sbc r29,__zero_reg__
.L16:
	movw r24,r28
	call hd44780_blinkLED
	ldi r22,lo8(-36)
	ldi r23,lo8(5)
	ldi r24,0
	ldi r25,0
	call delay
	rjmp .L16
	.size	hd44780_fatalError, .-hd44780_fatalError
	.section	.text.hd44780_pinIO,"ax",@progbits
.global	hd44780_pinIO
	.type	hd44780_pinIO, @function
hd44780_pinIO:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(7)
	sts _rs,r24
	ldi r24,lo8(12)
	sts _en,r24
	ldi r24,lo8(-1)
	sts _rw,r24
	ldi r25,lo8(11)
	sts _d4,r25
	ldi r25,lo8(10)
	sts _d5,r25
	ldi r25,lo8(9)
	sts _d6,r25
	ldi r25,lo8(8)
	sts _d7,r25
	sts _bl,r24
	sts _blLevel,r24
/* epilogue start */
	ret
	.size	hd44780_pinIO, .-hd44780_pinIO
	.section	.text.ioread,"ax",@progbits
.global	ioread
	.type	ioread, @function
ioread:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r18,_rw
	cpi r18,lo8(-1)
	brne .+2
	rjmp .L30
	movw r28,r24
	ldi r22,0
	lds r24,_d4
	call pinMode
	ldi r22,0
	lds r24,_d5
	call pinMode
	ldi r22,0
	lds r24,_d6
	call pinMode
	ldi r22,0
	lds r24,_d7
	call pinMode
	ldi r22,lo8(1)
	sbiw r28,1
	breq .L32
	ldi r22,0
.L32:
	lds r24,_rs
	call digitalWrite
	ldi r22,lo8(1)
	lds r24,_rw
	call digitalWrite
	ldi r22,lo8(1)
	lds r24,_en
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	lds r24,_d4
	call digitalRead
	ldi r28,lo8(16)
	sbiw r24,1
	breq .L22
	ldi r28,0
.L22:
	lds r24,_d5
	call digitalRead
	sbiw r24,1
	brne .L23
	ori r28,lo8(32)
.L23:
	lds r24,_d6
	call digitalRead
	sbiw r24,1
	brne .L24
	ori r28,lo8(64)
.L24:
	lds r24,_d7
	call digitalRead
	sbiw r24,1
	brne .L25
	ori r28,lo8(-128)
.L25:
	ldi r22,0
	lds r24,_en
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	ldi r22,lo8(1)
	lds r24,_en
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	lds r24,_d4
	call digitalRead
	sbiw r24,1
	brne .L26
	ori r28,lo8(1)
.L26:
	lds r24,_d5
	call digitalRead
	sbiw r24,1
	brne .L27
	ori r28,lo8(2)
.L27:
	lds r24,_d6
	call digitalRead
	sbiw r24,1
	brne .L28
	ori r28,lo8(4)
.L28:
	lds r24,_d7
	call digitalRead
	sbiw r24,1
	brne .L29
	ori r28,lo8(8)
.L29:
	ldi r22,0
	lds r24,_en
	call digitalWrite
	ldi r22,lo8(1)
	lds r24,_d4
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d5
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d6
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d7
	call pinMode
	ldi r22,0
	lds r24,_rw
	call digitalWrite
	mov r24,r28
	ldi r25,0
.L18:
/* epilogue start */
	pop r29
	pop r28
	ret
.L30:
	ldi r24,lo8(-3)
	ldi r25,lo8(-1)
	rjmp .L18
	.size	ioread, .-ioread
	.section	.text.hd44780_status,"ax",@progbits
.global	hd44780_status
	.type	hd44780_status, @function
hd44780_status:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	ldi r24,0
	jmp ioread
	.size	hd44780_status, .-hd44780_status
	.section	.text.hd44780_read,"ax",@progbits
.global	hd44780_read
	.type	hd44780_read, @function
hd44780_read:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(1)
	ldi r25,0
	call ioread
	movw r28,r24
	lds r22,_insExecTime
	lds r23,_insExecTime+1
	lds r24,_insExecTime+2
	lds r25,_insExecTime+3
	call hd44780_markStart
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	hd44780_read, .-hd44780_read
	.section	.text.iosetBacklight,"ax",@progbits
.global	iosetBacklight
	.type	iosetBacklight, @function
iosetBacklight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r22,r24
	lds r24,_bl
	cpi r24,lo8(-1)
	breq .L45
	lds r25,_blLevel
	cpi r25,lo8(-2)
	brne .L37
	tst r22
	breq .L38
	ldi r22,0
.L52:
	call pinMode
.L53:
	ldi r25,0
	ldi r24,0
	ret
.L38:
	ldi r22,lo8(1)
	rjmp .L52
.L37:
	cpi r24,lo8(3)
	breq .L39
	ldi r18,lo8(-5)
	add r18,r24
	cpi r18,lo8(2)
	brlo .L39
	ldi r18,lo8(-9)
	add r18,r24
	cpi r18,lo8(3)
	brsh .L40
.L39:
	ldi r23,0
	cpi r25,lo8(1)
	brne .L41
.L55:
	call analogWrite
	rjmp .L53
.L41:
	ldi r18,lo8(-1)
	ldi r19,0
	movw r20,r18
	sub r20,r22
	sbc r21,r23
	movw r22,r20
	rjmp .L55
.L40:
	tst r22
	breq .L42
	cpi r25,lo8(1)
	brne .L44
.L43:
	ldi r22,lo8(1)
.L54:
	call digitalWrite
	rjmp .L53
.L42:
	tst r25
	breq .L43
.L44:
	ldi r22,0
	rjmp .L54
.L45:
	ldi r24,lo8(-3)
	ldi r25,lo8(-1)
/* epilogue start */
	ret
	.size	iosetBacklight, .-iosetBacklight
	.section	.text.hd44780_backlight,"ax",@progbits
.global	hd44780_backlight
	.type	hd44780_backlight, @function
hd44780_backlight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)
	jmp iosetBacklight
	.size	hd44780_backlight, .-hd44780_backlight
	.section	.text.hd44780_noBacklight,"ax",@progbits
.global	hd44780_noBacklight
	.type	hd44780_noBacklight, @function
hd44780_noBacklight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	jmp iosetBacklight
	.size	hd44780_noBacklight, .-hd44780_noBacklight
	.section	.text.write4bits,"ax",@progbits
.global	write4bits
	.type	write4bits, @function
write4bits:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	lds r24,_d4
	ldi r22,lo8(1)
	sbrs r28,0
	ldi r22,0
.L66:
	call digitalWrite
	lds r24,_d5
	ldi r22,lo8(1)
	sbrs r28,1
	ldi r22,0
.L67:
	call digitalWrite
	lds r24,_d6
	ldi r22,lo8(1)
	sbrs r28,2
	ldi r22,0
.L68:
	call digitalWrite
	lds r24,_d7
	ldi r22,lo8(1)
	sbrs r28,3
	ldi r22,0
.L69:
/* epilogue start */
	pop r28
	jmp digitalWrite
	.size	write4bits, .-write4bits
	.section	.text.pulseEnable,"ax",@progbits
.global	pulseEnable
	.type	pulseEnable, @function
pulseEnable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	lds r24,_en
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	ldi r22,0
	lds r24,_en
	jmp digitalWrite
	.size	pulseEnable, .-pulseEnable
	.section	.text.iowrite,"ax",@progbits
.global	iowrite
	.type	iowrite, @function
iowrite:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r16,r24
	mov r28,r22
	lds r24,_rs
	ldi r22,lo8(1)
	cpi r16,1
	cpc r17,__zero_reg__
	breq .L78
	ldi r22,0
.L78:
	call digitalWrite
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call write4bits
	call pulseEnable
	cpi r16,2
	cpc r17,__zero_reg__
	breq .L74
	mov r24,r28
	andi r24,lo8(15)
	call write4bits
	call pulseEnable
.L74:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	pop r28
	pop r17
	pop r16
	ret
	.size	iowrite, .-iowrite
	.section	.text.hd44780_command,"ax",@progbits
.global	hd44780_command
	.type	hd44780_command, @function
hd44780_command:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r28,r24
	mov r22,r24
	ldi r25,0
	ldi r24,0
	call iowrite
	movw r16,r24
	subi r28,lo8(-(-1))
	cpi r28,lo8(2)
	brsh .L80
	sts _curcol,__zero_reg__
	sts _currow,__zero_reg__
	lds r22,_chExecTime
	lds r23,_chExecTime+1
	lds r24,_chExecTime+2
	lds r25,_chExecTime+3
.L82:
	call hd44780_markStart
	movw r24,r16
/* epilogue start */
	pop r28
	pop r17
	pop r16
	ret
.L80:
	lds r22,_insExecTime
	lds r23,_insExecTime+1
	lds r24,_insExecTime+2
	lds r25,_insExecTime+3
	rjmp .L82
	.size	hd44780_command, .-hd44780_command
	.section	.text.hd44780_clear,"ax",@progbits
.global	hd44780_clear
	.type	hd44780_clear, @function
hd44780_clear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(1)
	jmp hd44780_command
	.size	hd44780_clear, .-hd44780_clear
	.section	.text.hd44780_home,"ax",@progbits
.global	hd44780_home
	.type	hd44780_home, @function
hd44780_home:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(2)
	jmp hd44780_command
	.size	hd44780_home, .-hd44780_home
	.section	.text.hd44780_setCursor,"ax",@progbits
.global	hd44780_setCursor
	.type	hd44780_setCursor, @function
hd44780_setCursor:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,_rows
	cp r22,r25
	brlo .L86
	ldi r22,lo8(-1)
	add r22,r25
.L86:
	lds r18,_wraplines
	tst r18
	breq .L87
	lds r18,_cols
.L88:
	cp r24,r18
	brlo .L89
	sub r24,r18
	subi r22,lo8(-(1))
	cp r22,r25
	brlo .L88
	ldi r22,0
	rjmp .L88
.L89:
	sts _curcol,r24
	sts _currow,r22
.L87:
	mov r30,r22
	ldi r31,0
	subi r30,lo8(-(_rowOffsets))
	sbci r31,hi8(-(_rowOffsets))
	ld r25,Z
	add r24,r25
	ori r24,lo8(-128)
	jmp hd44780_command
	.size	hd44780_setCursor, .-hd44780_setCursor
	.section	.text.hd44780_noDisplay,"ax",@progbits
.global	hd44780_noDisplay
	.type	hd44780_noDisplay, @function
hd44780_noDisplay:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	andi r24,lo8(-5)
	sts _displaycontrol,r24
	ori r24,lo8(8)
	jmp hd44780_command
	.size	hd44780_noDisplay, .-hd44780_noDisplay
	.section	.text.hd44780_off,"ax",@progbits
.global	hd44780_off
	.type	hd44780_off, @function
hd44780_off:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call hd44780_noBacklight
	jmp hd44780_noDisplay
	.size	hd44780_off, .-hd44780_off
	.section	.text.hd44780_display,"ax",@progbits
.global	hd44780_display
	.type	hd44780_display, @function
hd44780_display:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	mov r25,r24
	ori r25,lo8(4)
	sts _displaycontrol,r25
	ori r24,lo8(12)
	jmp hd44780_command
	.size	hd44780_display, .-hd44780_display
	.section	.text.hd44780_on,"ax",@progbits
.global	hd44780_on
	.type	hd44780_on, @function
hd44780_on:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call hd44780_display
	movw r28,r24
	call hd44780_backlight
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	hd44780_on, .-hd44780_on
	.section	.text.hd44780_noCursor,"ax",@progbits
.global	hd44780_noCursor
	.type	hd44780_noCursor, @function
hd44780_noCursor:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	andi r24,lo8(-3)
	sts _displaycontrol,r24
	ori r24,lo8(8)
	jmp hd44780_command
	.size	hd44780_noCursor, .-hd44780_noCursor
	.section	.text.hd44780_cursor,"ax",@progbits
.global	hd44780_cursor
	.type	hd44780_cursor, @function
hd44780_cursor:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	mov r25,r24
	ori r25,lo8(2)
	sts _displaycontrol,r25
	ori r24,lo8(10)
	jmp hd44780_command
	.size	hd44780_cursor, .-hd44780_cursor
	.section	.text.hd44780_noBlink,"ax",@progbits
.global	hd44780_noBlink
	.type	hd44780_noBlink, @function
hd44780_noBlink:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	andi r24,lo8(-2)
	sts _displaycontrol,r24
	ori r24,lo8(8)
	jmp hd44780_command
	.size	hd44780_noBlink, .-hd44780_noBlink
	.section	.text.hd44780_blink,"ax",@progbits
.global	hd44780_blink
	.type	hd44780_blink, @function
hd44780_blink:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaycontrol
	mov r25,r24
	ori r25,lo8(1)
	sts _displaycontrol,r25
	ori r24,lo8(9)
	jmp hd44780_command
	.size	hd44780_blink, .-hd44780_blink
	.section	.text.hd44780_scrollDisplayLeft,"ax",@progbits
.global	hd44780_scrollDisplayLeft
	.type	hd44780_scrollDisplayLeft, @function
hd44780_scrollDisplayLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(24)
	jmp hd44780_command
	.size	hd44780_scrollDisplayLeft, .-hd44780_scrollDisplayLeft
	.section	.text.hd44780_scrollDisplayRight,"ax",@progbits
.global	hd44780_scrollDisplayRight
	.type	hd44780_scrollDisplayRight, @function
hd44780_scrollDisplayRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(28)
	jmp hd44780_command
	.size	hd44780_scrollDisplayRight, .-hd44780_scrollDisplayRight
	.section	.text.hd44780_leftToRight,"ax",@progbits
.global	hd44780_leftToRight
	.type	hd44780_leftToRight, @function
hd44780_leftToRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaymode
	mov r25,r24
	ori r25,lo8(2)
	sts _displaymode,r25
	ori r24,lo8(6)
	jmp hd44780_command
	.size	hd44780_leftToRight, .-hd44780_leftToRight
	.section	.text.hd44780_rightToLeft,"ax",@progbits
.global	hd44780_rightToLeft
	.type	hd44780_rightToLeft, @function
hd44780_rightToLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaymode
	andi r24,lo8(-3)
	sts _displaymode,r24
	ori r24,lo8(4)
	jmp hd44780_command
	.size	hd44780_rightToLeft, .-hd44780_rightToLeft
	.section	.text.hd44780_moveCursorRight,"ax",@progbits
.global	hd44780_moveCursorRight
	.type	hd44780_moveCursorRight, @function
hd44780_moveCursorRight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(20)
	jmp hd44780_command
	.size	hd44780_moveCursorRight, .-hd44780_moveCursorRight
	.section	.text.hd44780_moveCursorLeft,"ax",@progbits
.global	hd44780_moveCursorLeft
	.type	hd44780_moveCursorLeft, @function
hd44780_moveCursorLeft:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(16)
	jmp hd44780_command
	.size	hd44780_moveCursorLeft, .-hd44780_moveCursorLeft
	.section	.text.hd44780_autoscroll,"ax",@progbits
.global	hd44780_autoscroll
	.type	hd44780_autoscroll, @function
hd44780_autoscroll:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaymode
	mov r25,r24
	ori r25,lo8(1)
	sts _displaymode,r25
	ori r24,lo8(5)
	jmp hd44780_command
	.size	hd44780_autoscroll, .-hd44780_autoscroll
	.section	.text.hd44780_noAutoscroll,"ax",@progbits
.global	hd44780_noAutoscroll
	.type	hd44780_noAutoscroll, @function
hd44780_noAutoscroll:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,_displaymode
	andi r24,lo8(-2)
	sts _displaymode,r24
	ori r24,lo8(4)
	jmp hd44780_command
	.size	hd44780_noAutoscroll, .-hd44780_noAutoscroll
	.section	.text.hd44780_rwrite,"ax",@progbits
.global	hd44780_rwrite
	.type	hd44780_rwrite, @function
hd44780_rwrite:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r22,r24
	ldi r24,lo8(1)
	ldi r25,0
	call iowrite
	movw r28,r24
	lds r22,_insExecTime
	lds r23,_insExecTime+1
	lds r24,_insExecTime+2
	lds r25,_insExecTime+3
	call hd44780_markStart
	ldi r24,lo8(1)
	ldi r25,0
	or r28,r29
	breq .L111
	ldi r25,0
	ldi r24,0
.L111:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	hd44780_rwrite, .-hd44780_rwrite
	.section	.text.hd44780_createChar,"ax",@progbits
.global	hd44780_createChar
	.type	hd44780_createChar, @function
hd44780_createChar:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r22
	mov r28,r24
	andi r28,lo8(7)
	call hd44780_status
	movw r16,r24
	andi r16,127
	clr r17
	sbrc r25,7
	ldi r16,0
.L116:
	ldi r18,lo8(8)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	ori r24,lo8(64)
	call hd44780_command
	sbiw r24,0
	brne .L115
	movw r28,r14
	ldi r24,8
	add r14,r24
	adc r15,__zero_reg__
.L118:
	ld r24,Y+
	call hd44780_rwrite
	sbiw r24,1
	brne .L120
	cp r28,r14
	cpc r29,r15
	brne .L118
	ldi r22,0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	jmp hd44780_setCursor
.L120:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L115:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	hd44780_createChar, .-hd44780_createChar
	.section	.text.hd44780_pcreateChar,"ax",@progbits
.global	hd44780_pcreateChar
	.type	hd44780_pcreateChar, @function
hd44780_pcreateChar:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r20,r22
	movw r26,r28
	adiw r26,1
	ldi r19,0
	ldi r18,0
	movw r22,r26
.L123:
	movw r30,r20
	add r30,r18
	adc r31,r19
/* #APP */
 ;  726 "/home/user/lab-osek/OSEK-GroupProject/hd44780.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	st X+,r30
	subi r18,-1
	sbci r19,-1
	cpi r18,8
	cpc r19,__zero_reg__
	brne .L123
	call hd44780_createChar
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	hd44780_pcreateChar, .-hd44780_pcreateChar
	.section	.text.hd44780_write,"ax",@progbits
.global	hd44780_write
	.type	hd44780_write, @function
hd44780_write:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call hd44780_rwrite
	movw r28,r24
	lds r24,_wraplines
	tst r24
	breq .L125
	lds r24,_curcol
	subi r24,lo8(-(1))
	sts _curcol,r24
	lds r25,_cols
	cp r24,r25
	brlo .L125
	sts _curcol,__zero_reg__
	lds r24,_currow
	subi r24,lo8(-(1))
	sts _currow,r24
	lds r25,_rows
	cp r24,r25
	brlo .L129
	sts _currow,__zero_reg__
.L129:
	lds r22,_currow
	ldi r24,0
	call hd44780_setCursor
.L125:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	hd44780_write, .-hd44780_write
	.section	.text.hd44780_print,"ax",@progbits
.global	hd44780_print
	.type	hd44780_print, @function
hd44780_print:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r16,r30
	sub r16,r24
	sbc r17,r25
	ldi r29,0
	ldi r28,0
.L131:
	cp r28,r16
	cpc r29,r17
	brsh .L130
	movw r30,r14
	add r30,r28
	adc r31,r29
	ld r24,Z
	call hd44780_write
	add r28,r24
	adc r29,r25
	or r24,r25
	breq .L130
	lds r24,_wraplines
	cpse r24,__zero_reg__
	rjmp .L131
	lds r24,_cols
	cp r24,r28
	cpc __zero_reg__,r29
	breq .+2
	brsh .L131
.L130:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	hd44780_print, .-hd44780_print
	.section	.text.hd44780_printf,"ax",@progbits
.global	hd44780_printf
	.type	hd44780_printf, @function
hd44780_printf:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 32 */
/* stack size = 38 */
.L__stack_usage = 38
	movw r18,r28
	subi r18,-41
	sbci r19,-1
	movw r30,r18
	ld r20,Z+
	ld r21,Z+
	movw r18,r30
	ldi r22,lo8(32)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call vsnprintf
	movw r14,r24
	ldi r17,0
	ldi r16,0
.L138:
	cp r16,r14
	cpc r17,r15
	brsh .L137
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r16
	adc r31,r17
	ld r24,Z
	call hd44780_write
	add r16,r24
	adc r17,r25
	or r24,r25
	breq .L137
	lds r24,_wraplines
	cpse r24,__zero_reg__
	rjmp .L138
	lds r24,_cols
	cp r24,r16
	cpc __zero_reg__,r17
	breq .+2
	brsh .L138
.L137:
	movw r24,r16
/* epilogue start */
	adiw r28,32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	hd44780_printf, .-hd44780_printf
	.section	.text.blPinTest,"ax",@progbits
.global	blPinTest
	.type	blPinTest, @function
blPinTest:
	push r16
	push r17
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r28,r24
	ldi r22,0
	call digitalWrite
	ldi r22,0
	mov r24,r28
	call pinMode
	ldi r22,lo8(1)
	mov r24,r28
	call pinMode
	ldi r22,lo8(1)
	mov r24,r28
	call digitalWrite
	ldi r24,lo8(5)
	ldi r25,0
	call delayMicroseconds
	mov r24,r28
	call digitalRead
	movw r16,r24
	ldi r22,0
	mov r24,r28
	call digitalWrite
	ldi r22,0
	mov r24,r28
	call pinMode
	ldi r24,lo8(1)
	ldi r25,0
	cpi r16,1
	cpc r17,__zero_reg__
	brne .L145
	ldi r25,0
	ldi r24,0
.L145:
	neg r25
	neg r24
	sbc r25,__zero_reg__
/* epilogue start */
	pop r28
	pop r17
	pop r16
	ret
	.size	blPinTest, .-blPinTest
	.section	.text.ioinit,"ax",@progbits
.global	ioinit
	.type	ioinit, @function
ioinit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call hd44780_pinIO
	ldi r22,lo8(1)
	lds r24,_rs
	call pinMode
	lds r24,_rw
	cpi r24,lo8(-1)
	breq .L147
	ldi r22,lo8(1)
	call pinMode
	ldi r22,0
	lds r24,_rw
	call digitalWrite
.L147:
	ldi r22,lo8(1)
	lds r24,_en
	call pinMode
	ldi r22,0
	lds r24,_en
	call digitalWrite
	ldi r22,lo8(1)
	lds r24,_d4
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d5
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d6
	call pinMode
	ldi r22,lo8(1)
	lds r24,_d7
	call pinMode
	lds r24,_bl
	cpi r24,lo8(-1)
	breq .L148
	lds r25,_blLevel
	cpi r25,lo8(1)
	brne .L150
	ldi r25,0
	call blPinTest
	or r24,r25
	breq .L150
	ldi r24,lo8(-2)
	sts _blLevel,r24
.L150:
	ldi r22,lo8(1)
	lds r24,_bl
	call pinMode
.L148:
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	ioinit, .-ioinit
	.section	.text.hd44780_begin,"ax",@progbits
.global	hd44780_begin
	.type	hd44780_begin, @function
hd44780_begin:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r17,r22
	mov r16,r20
	mov r25,r22
	cpi r22,lo8(5)
	brlo .L162
	ldi r25,lo8(4)
.L162:
	lds r18,_rowOffsets
	cpse r18,__zero_reg__
	rjmp .L163
	lds r18,_rowOffsets+1
	cpse r18,__zero_reg__
	rjmp .L163
	lds r18,_rowOffsets+2
	cpse r18,__zero_reg__
	rjmp .L163
	lds r18,_rowOffsets+3
	tst r18
	breq .L164
.L163:
	lds r18,_cols
	tst r18
	breq .L165
	cp r18,r24
	breq .L165
.L164:
	sts _rowOffsets,__zero_reg__
	ldi r18,lo8(64)
	sts _rowOffsets+1,r18
	sts _rowOffsets+2,r24
	add r18,r24
	sts _rowOffsets+3,r18
.L165:
	sts _rows,r25
	sts _cols,r24
	ldi r22,lo8(100)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	sts _displayfunction,__zero_reg__
	call ioinit
	movw r28,r24
	or r24,r25
	breq .+2
	rjmp .L161
	lds r24,_rows
	cpi r24,lo8(2)
	brlo .L167
	lds r24,_displayfunction
	ori r24,lo8(8)
	sts _displayfunction,r24
.L167:
	tst r16
	breq .L168
	cpi r17,lo8(1)
	brne .L168
	lds r24,_displayfunction
	ori r24,lo8(4)
	sts _displayfunction,r24
.L168:
	ldi r22,lo8(48)
	ldi r24,lo8(2)
	ldi r25,0
	call iowrite
	ldi r22,lo8(5)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	ldi r22,lo8(48)
	ldi r24,lo8(2)
	ldi r25,0
	call iowrite
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	ldi r22,lo8(48)
	ldi r24,lo8(2)
	ldi r25,0
	call iowrite
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
	lds r24,_displayfunction
	sbrc r24,4
	rjmp .L169
	ldi r22,lo8(32)
	ldi r24,lo8(2)
	ldi r25,0
	call iowrite
.L169:
	lds r24,_displayfunction
	ori r24,lo8(32)
	call hd44780_command
	ldi r24,lo8(4)
	sts _displaycontrol,r24
	call hd44780_display
	call hd44780_clear
	ldi r24,lo8(2)
	sts _displaymode,r24
	ldi r24,lo8(6)
	call hd44780_command
	movw r28,r24
	call hd44780_backlight
.L161:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	hd44780_begin, .-hd44780_begin
	.section	.text.hd44780_init,"ax",@progbits
.global	hd44780_init
	.type	hd44780_init, @function
hd44780_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,_cols
	cpse r25,__zero_reg__
	rjmp .L180
	sts _cols,r24
.L180:
	lds r24,_rows
	cpse r24,__zero_reg__
	rjmp .L181
	sts _rows,r22
.L181:
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	ldi r26,0
	ldi r27,0
	sts _chExecTime,r24
	sts _chExecTime+1,r25
	sts _chExecTime+2,r26
	sts _chExecTime+3,r27
	ldi r24,lo8(38)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	sts _insExecTime,r24
	sts _insExecTime+1,r25
	sts _insExecTime+2,r26
	sts _insExecTime+3,r27
	sts _rowOffsets,__zero_reg__
	sts _rowOffsets+1,__zero_reg__
	sts _rowOffsets+2,__zero_reg__
	sts _rowOffsets+3,__zero_reg__
	sts _wraplines,__zero_reg__
	ldi r22,0
	ldi r23,0
	movw r24,r22
	call hd44780_markStart
	ldi r20,0
	lds r22,_rows
	lds r24,_cols
	jmp hd44780_begin
	.size	hd44780_init, .-hd44780_init
.global	_blLevel
	.section	.bss._blLevel,"aw",@nobits
	.type	_blLevel, @object
	.size	_blLevel, 1
_blLevel:
	.zero	1
.global	_bl
	.section	.bss._bl,"aw",@nobits
	.type	_bl, @object
	.size	_bl, 1
_bl:
	.zero	1
.global	_d7
	.section	.bss._d7,"aw",@nobits
	.type	_d7, @object
	.size	_d7, 1
_d7:
	.zero	1
.global	_d6
	.section	.bss._d6,"aw",@nobits
	.type	_d6, @object
	.size	_d6, 1
_d6:
	.zero	1
.global	_d5
	.section	.bss._d5,"aw",@nobits
	.type	_d5, @object
	.size	_d5, 1
_d5:
	.zero	1
.global	_d4
	.section	.bss._d4,"aw",@nobits
	.type	_d4, @object
	.size	_d4, 1
_d4:
	.zero	1
.global	_en
	.section	.bss._en,"aw",@nobits
	.type	_en, @object
	.size	_en, 1
_en:
	.zero	1
.global	_rw
	.section	.bss._rw,"aw",@nobits
	.type	_rw, @object
	.size	_rw, 1
_rw:
	.zero	1
.global	_rs
	.section	.bss._rs,"aw",@nobits
	.type	_rs, @object
	.size	_rs, 1
_rs:
	.zero	1
.global	_execTime
	.section	.bss._execTime,"aw",@nobits
	.type	_execTime, @object
	.size	_execTime, 4
_execTime:
	.zero	4
.global	_startTime
	.section	.bss._startTime,"aw",@nobits
	.type	_startTime, @object
	.size	_startTime, 4
_startTime:
	.zero	4
.global	_insExecTime
	.section	.bss._insExecTime,"aw",@nobits
	.type	_insExecTime, @object
	.size	_insExecTime, 4
_insExecTime:
	.zero	4
.global	_chExecTime
	.section	.bss._chExecTime,"aw",@nobits
	.type	_chExecTime, @object
	.size	_chExecTime, 4
_chExecTime:
	.zero	4
.global	_wraplines
	.section	.bss._wraplines,"aw",@nobits
	.type	_wraplines, @object
	.size	_wraplines, 1
_wraplines:
	.zero	1
.global	_currow
	.section	.bss._currow,"aw",@nobits
	.type	_currow, @object
	.size	_currow, 1
_currow:
	.zero	1
.global	_curcol
	.section	.bss._curcol,"aw",@nobits
	.type	_curcol, @object
	.size	_curcol, 1
_curcol:
	.zero	1
.global	_rowOffsets
	.section	.bss._rowOffsets,"aw",@nobits
	.type	_rowOffsets, @object
	.size	_rowOffsets, 4
_rowOffsets:
	.zero	4
.global	_rows
	.section	.bss._rows,"aw",@nobits
	.type	_rows, @object
	.size	_rows, 1
_rows:
	.zero	1
.global	_cols
	.section	.bss._cols,"aw",@nobits
	.type	_cols, @object
	.size	_cols, 1
_cols:
	.zero	1
.global	_displaymode
	.section	.bss._displaymode,"aw",@nobits
	.type	_displaymode, @object
	.size	_displaymode, 1
_displaymode:
	.zero	1
.global	_displaycontrol
	.section	.bss._displaycontrol,"aw",@nobits
	.type	_displaycontrol, @object
	.size	_displaycontrol, 1
_displaycontrol:
	.zero	1
.global	_displayfunction
	.section	.bss._displayfunction,"aw",@nobits
	.type	_displayfunction, @object
	.size	_displayfunction, 1
_displayfunction:
	.zero	1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_clear_bss
