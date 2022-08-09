/*
 * hd44780.cpp
 *
 *  Created on: 26 Sep 2020
 *      Author:
 */

/* ERIKA Enterprise. */
#include "ee.h"


/* Arduino SDK. */
#include "Arduino.h"
#include <stdio.h>
#include "hd44780.h"


extern "C" {

//Public function for user to use
extern int hd44780_init(uint8_t cols, uint8_t rows, uint8_t dotsize);
extern int hd44780_setRowOffsets(int row0, int row1, int row2, int row3);
extern int hd44780_clear(void);
extern int hd44780_home(void);
extern int hd44780_setCursor(uint8_t col, uint8_t row);
extern int hd44780_noDisplay(void);
extern int hd44780_display(void);
extern int hd44780_noCursor(void);
extern int hd44780_cursor(void);
extern int hd44780_noBlink(void);
extern int hd44780_blink(void);
extern int hd44780_scrollDisplayLeft(void);
extern int hd44780_scrollDisplayRight(void);
extern int hd44780_leftToRight(void);
extern int hd44780_rightToLeft(void);
extern int hd44780_moveCursorRight(void);
extern int hd44780_moveCursorLeft(void);
extern int hd44780_autoscroll(void);
extern int hd44780_noAutoscroll(void);
extern int hd44780_createChar(uint8_t location, uint8_t charmap[]);
extern int hd44780_pcreateChar(uint8_t location, const uint8_t *charmap);
extern int hd44780_backlight(void);
extern int hd44780_noBacklight(void);
extern int hd44780_on (void);
extern int hd44780_off (void);
extern int hd44780_command(uint8_t value);
extern int hd44780_status(void);
extern int hd44780_read(void);
extern int hd44780_lineWrap(void);
extern int hd44780_noLineWrap(void);
extern size_t hd44780_print(char const * msg);
extern size_t hd44780_printf(const char *format, ...);
extern size_t hd44780_write(uint8_t value);



//Private function
int hd44780_begin(uint8_t cols, uint8_t rows, uint8_t dotsize);
void hd44780_pinIO(void);
int ioinit(void);
int ioread(iotype type);
int iowrite(iotype type, uint8_t value);
int iosetBacklight(uint8_t dimvalue);
void write4bits(uint8_t value);
void pulseEnable(void);
int blPinTest(int pin);
void waitReady(void);
void pwaitReady(int32_t offsetUs);
void rwaitReady(uint32_t _stime, uint32_t _etime);

void hd44780_setExecTimes(uint32_t chExecTimeUs, uint32_t insExecTimeUs);
size_t hd44780_rwrite(uint8_t value);
int hd44780_blinkLED(int blinks);
void hd44780_fatalError(int errcode);
void hd44780_markStart(uint32_t exectime);

//Local variables

uint8_t _displayfunction = HD44780_4BITMODE;
uint8_t _displaycontrol = 0;
uint8_t _displaymode = 0;
uint8_t _cols = 0;
uint8_t _rows = 0;
uint8_t _rowOffsets[4]; 	// memory address of start of each row/line
uint8_t _curcol;			// current LCD col if doing char & line processing
uint8_t _currow;			// current LCD row if doing char & line processing
uint8_t _wraplines=0;		// set to nonzero if wrapping long lines

uint32_t _chExecTime;		// time in Us of execution time for clear/home
uint32_t _insExecTime;		// time in Us of execution time for instructions or data
uint32_t _startTime;		// 'start' time of last thing sent to LCD (cmd or data)
uint32_t _execTime;			// execution time in Us of last thing sent to LCD (cmd or data)

// This function can be called at any time to re-initialize the LCD
// LCD rowoffset table values and the execution timings are preserved
//
// Note: default rows and cols is 16x2
int hd44780_init(uint8_t cols, uint8_t rows, uint8_t dotsize)
{
	if(!_cols)
		_cols = cols;
	if(!_rows)
		_rows = rows;

	hd44780_setExecTimes(HD44780_CHEXECTIME, HD44780_INSEXECTIME);
	// clear row offset addresses, will be set in begin()
	hd44780_setRowOffsets(0,0,0,0);

	hd44780_noLineWrap(); // no linewrap as default

	hd44780_markStart(0); // initialize last start time to 'now'

	return(hd44780_begin(_cols, _rows, HD44780_5x8DOTS));
}

//
// initialize the LCD
// Note: The hd44780 spec uses the term "line" whereas the
//  IDE LiquidCrystal library uses the term "row" so this
//  library (hd44780) will continue using the term "row"
//  rather than "line".
//  Other than name, they are the same.
//
// Returns 0 on success, non zero on initialization failure
//
int hd44780_begin(uint8_t cols, uint8_t rows, uint8_t dotsize)
{
	int rval = 0;

	/*
	 * Limit lines/rows to max in the row offset table
	 */
	if(rows > sizeof(_rowOffsets) / sizeof(_rowOffsets[0]))
		rows = sizeof(_rowOffsets) / sizeof(_rowOffsets[0]);

	/*
	 * create default row/line offset table of addresses for each row/line
	 * if not already set by user using setRowOffsets() before begin() is called.
	 *	OR
	 * if the user is changing the number of columns on the display since a previous
	 * initialization
	 *
	 * See here for further explanation of lcd memory addressing:
	 * http://web.alfredstate.edu/weimandn/lcd/lcd_addressing/lcd_addressing_index.html
	 * This default will handle:
	 * 40x2, 20x4, 20x2, 16x2, 16x1 (type 2), 16x4
	 * displays not supported by this:
	 * - 16x1 (type 1), This uses a discontigous memory for the single line
	 *   (This requires ugly mods to the library to make work)
	 * - 40x4 is dual 40x2 displays using dual E signals which is not suppo
	 *
	 * users can override this at any time by calling setRowOffsets(r0,r1,r2,r3)
	 */

	if((!_rowOffsets[0] && !_rowOffsets[1] && !_rowOffsets[2] && !_rowOffsets[3])
	 || (_cols && (_cols != cols)))
	{
		hd44780_setRowOffsets(0x00, 0x40, 0x00 + cols, 0x40 + cols);
	}


	/*
	 * Save rows/cols
	 */
	_rows = rows;
	_cols = cols;

	/*
	 * SEE PAGE 45/46 of Hitachi HD44780 spec FOR INITIALIZATION SPECIFICATION.
	 * according to datasheet,we need at least 40ms after power rises above 2.7V
	 * before sending commands.The Arduino AVR can turn on and start running way
	 * before 4.5V so we'll wait 100ms to add some additional margin
	 */

	delay(100);

	// default to 4 bit mode (can be overridded by i/o class library)
	_displayfunction = HD44780_4BITMODE;

	// call h/w i/o class init function
	if((rval = ioinit())) // intentional assignment
	{
		return(rval);
	}

	if (_rows > 1)
	{
		_displayfunction |= HD44780_2LINE;
	}

	// for some 1 line displays you can select a 10 pixel high font
	if ((dotsize != HD44780_5x8DOTS) && (rows == 1))
	{
		_displayfunction |= HD44780_5x10DOTS;
	}

	/*
	 * ========================================================================
	 * The init sequence below is shown in the hitachi HD44780 datasheet
	 * figures 23 & 24, pages 45 & 46
	 *
	 * NOTE:
	 * IMO, most explanations and comments about this sequence are wrong as the
	 * code authors don't really understand what it is actually doing.
	 * Adding to the confusion is that the hitachi HD44780 datasheet does
	 * a very poor job explaining this sequence.
	 * Also, adding to the confusion is the note about FunctionSet on page 27:
	 *  ----------------------------------------------------------------------
	 *	Note: Perform the function at the head of the program before executing
	 *	any instructions (except for the read busy flag and address instruction)
	 *	From this point, the function set instruction cannot be executed unless
	 *	the interface data length is changed.
	 *  ----------------------------------------------------------------------
	 *
	 * It isn't clear what information this note is trying to convey.
	 *
	 * It appears to be implying that FunctionSet must be done first and that it
	 * cannot be executed later unless the data length is changed.
	 * If that is what it saying...
	 * This is in direct conflict with the comand sequence in the
	 * Initialize by Instruction in figures 23 & 24, particulary in
	 * figure 23 as the 4th command sent will be a FunctionSet command
	 * setting data length to 8 bits as well as the prefered the N and F bits
	 * when the data length is guaranteed to already be 8 bits.
	 *
	 * But since sending a FunctionSet command with DL=1 along with setting N
	 * and F bits works when the display is already in 8 bit mode, my conclusion
	 * is that the note on page 27 is obviously incorrect and can be ignored.
	 *
	 * --
	 *
	 * When using 4 bit length mode, the LCD expects the nibbles on d4-d7 and
	 * expects the upper nibble of the 8 bits first.
	 * Therefore, when using 4 bit mode, it is critical that the host and
	 * the LCD are in sync on the nibbles.
	 *
	 * The command sequences in figures 23 and 24 are not simple retries and
	 * there is nothing magical about the timing.
	 * They are specifically chosen to ensure that after completion,
	 * the LCD is in the desired interface mode (8 bit or 4 bit).
	 * The two sequences start off with an identical 3 command sequence of
	 * FunctionSet commands which are used to reliably put the LCD into
	 * 8 bit length mode regardless of what mode or state the LCD happends
	 * to be in and regardless of whether the host is controlling all 8 data
	 * pin signals or just d4-d7.
	 * The only difference between the two sequences is that the 4 bit
	 * initializaion (figure 24) puts the LCD interface into 4 bit mode
	 * after the LCD is assured to be in 8 bit mode.
	 *
	 *
	 * Below is a detailed explanation of the hd44780 initalization sequence
	 *
	 * --- bperrybap
	 *
	 * The overall methodology is to carefully use a command sequence that can
	 * first reliably put the LCD back into 8 bit mode and then if using 4 bit
	 * mode, a command can be issued to put the LCD into 4 bit mode.
	 * This sequence is not reseting the display but rather re-initalizing the
	 * host interface mode (8 bit or 4 bit)
	 * It also ensures that a host that can only control data lines D4-D7 is
	 * able to reliably get into nibble sync with the LCD and put the LCD into
	 * 4 bit mode regardless of the what state the LCD is currently in.
	 *
	 * This special initailization command sequence is required beause there is
	 * no way to actully reset the LCD to its power up default state and
	 * there is no way of knowing if the LCD is currently in 4bit or 8bit mode.
	 * Even if the h/w inteface is 8 bits, the LCD could potentially be in
	 * 4 bit mode.
	 * Also, if the LCD is in 4 bit mode, the LCD could be in the middle of
	 * receiving nibbles. i.e. the system was reset after only a single
	 * nibble was sent to the LCD.
	 * When the LCD is in 4 bit mode and out of nibble sync with the host:
	 * 	the LCD has received the upper/1st nibble of a command/data byte and
	 *	is waiting for the lower/2nd nibble.
	 *	After the 2nd nibble is recieved, the LCD will go off and execute an
	 *	unknown command. This is why the firt delay is so long. The host has to
	 *  accomodate the longest possible command execution time.
	 *	The next two FunctionSet commands will be interpreted
	 *	as a single FunctionSet command by the LCD to put the display back into
	 *	8 bit mode.
	 *
	 * It appears that all delays specified in figures 23 & 24 are 2.7x the
	 * execution times in table 6. It appears that these values were chosen to
	 * accomodate LCDs that are running chips clocked slower than the 270kHz
	 * reference used in table 6
	 * A 2.7x factor would allow the Initialize by Instruction sequence to work
	 * with chips clocked down to 100Khz.
	 *
	 * In each of the 3 steps, EN is strobed once as the host will be
	 * treating the LCD h/w interface as if it is 8 bits wide regardless of
	 * whether the actual h/w interface to the LCD may only be 4 bits.
	 * d4-d7 signals on the hd44780 interface are set for
	 * a function set "goto 8bit mode" command.
	 * Also, d0-d3 signals on the physical hd44780 interface are either set to
	 * low, or not driven in the case of 4 bit only h/w host interfaces.
	 *
	 * Here is the command sequence shown seperately for each of 3 states the
	 * LCD can be in.
	 * This will demonstrate why there must be a command sequence
	 * of three "goto 8 bit mode" followed by one "goto to 4 bit mode" if
	 * using 4 bit mode.
	 *
	 * ========================================================================
	 * LCD in 8 BIT mode:
	 * =================
	 * 1) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		8bit host: LCD interprets command 0x30
	 *			since lower 4 bits will be low and read as zeros.
	 *		4bit host: LCD interprets command 0x3X
	 *			since lower 4 bits will be unpredictable
	 *			FUNCTION_SET & 8BIT are set, so it gets interpreted as a
	 *			"goto 8bit mode" and so this is essentially a NOP as the
 	 *			display is already 8 bit mode
	 *
	 * 2) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		8bit host: LCD interprets command 0x30
	 *			since lower 4 bits will be low and read as zeros.
	 *		4bit host: LCD interprets command 0x3X
	 *			since lower 4 bits will be unpredictable
	 *			FUNCTION_SET & 8BIT are set, so it gets interpreted as a
	 *			"goto 8bit mode" and so this is essentially a NOP as the
 	 *			display is already 8 bit mode
	 *
	 * 3) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		8bit host: LCD interprets command 0x30
	 *			since lower 4 bits will be low and read as zeros.
	 *		4bit host: LCD interprets command 0x3X
	 *			since lower 4 bits will be unpredictable
	 *			FUNCTION_SET & 8BIT are set, so it gets interpreted as a
	 *			"goto 8bit mode" and so this is essentially a NOP as the
 	 *			display is already 8 bit mode
	 *
	 * LCD in 4 bit mode and expecting upper/1st nibble:
	 * =================================================
	 * 1) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		LCD pulls in nibble as upper 4 bits of 8 bit command
	 *
	 * 2) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		LCD pulls in nibble as lower 4 bits to complete 8 bits of command
	 *		LCD interprets command 0x33.
	 *			the LCD sees a Goto 8bit mode command and changes to 8 bit mode.
	 *
	 * 3) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		LCD interprets command 0x30 on 8bit hosts since
	 *			 lower 4 bits will be low and read as zeros.
	 *		LCD interprets command 0x3X on 4 bit hosts since
	 *			 lower 4 bits will be unpredictable
	 *		since FUNCTION_SET & 8BIT are set, it gets interpreted as
	 *			 a "goto 8bit mode" and so
	 * 		this is essentially a NOP as the display is already 8 bit mode
	 *
	 * LCD in 4 bit mode and expecting lower/2nd nibble:
	 * (out of nibble sync with host)
	 * ========================================================================
	 * 1) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		LCD pulls in nibble as lower 4 bits to complete 8 bits of command
	 *		LCD interprets command with upper nibble (unknown) and lower
	 *		nibble 0x3
	 *		There is no telling what this command does as the upper nibble is
	 *		unknown. And THAT is why the first delay in the sequence must be so
	 *		long. It isn't that the the first "function set" takes that long it
	 *		is because there is no telling what command might now be executing
	 *		and BUSY cannot be used yet.
	 *		Therefore, the host must blind wait the worst case amount of time.
	 *		A 4.1ms delay appears to be 2.7x the worst case instruction
	 *		execution time (clear & home are 1.52ms) at a 270kHz LCD clock rate.
	 *		(4.1ms would accomodate a chip clocked at 100kHz instead of 270 kHz)
	 *
	 * 2) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		If LCD happened to go into 8BIT mode in step 1
	 *			LCD interprets this command as 0x30
	 *				since d0-d3 lower 4 bits will be read as zeros in 8 bit mode
	 *				This is essentially a NOP as the display is already in
	 *				8 bit mode
	 *
	 *		If LCD still in 4 bit mode,
	 *			then this is upper nibble of next command.
	 *
	 * 3) Set the upper 4 bits (d4-d7) of Functionset: FUNCTION_SET|8BIT = 0x3
	 *		If LCD happened to go into 8BIT mode in step 1
	 *			LCD interprets this command as 0x30
	 *				since d0-d3 lower 4 bits will be read as zeros in 8 bit mode
	 *				This is essentially a NOP as the display is already in
	 *				8 bit mode
	 *
	 *		If LCD still in 4 bit mode
	 *			LCD pulls in nibble as lower 4 bits to complete 8 bits of cmd
	 *			LCD interprets command 0x33.
	 *			the LCD sees a Goto 8bit mode command and changes to 8 bit mode.
	 *
	 *
	 * =======================================================================
	 * Once the display in 8 bit mode, if the interface is to be in 4 bit mode:
	 * =======================================================================
 	 * - Set the upper 4 bits of Functionset: with 8BIT clear
	 *	this puts the LCD in 4 bit and it now expects upper nibble
	 */


	/*
	 * Note:
	 * The initialization sequence below uses special hd44780 internal API
	 * 4 bit commands.
	 * Internal 4 bit commands are commands that are sent to the LCD using
	 * only a single strobe of EN even if the host h/w interface is 4 bit only.
	 * In other words it is indicating that only the upper 4 bits need to be
	 * sent to the display - so effectively the host must ensure that the
	 * upper four bits are placed on D4-d7 and that EN is stobed only once
	 * including if the host h/w interface is only 4 bits wide.
	 *
	 * 8bit only i/o interface libraries can ignore this as the bits for these
	 * special commands are in the proper d4-d7 bit locations so the full
	 * 8 bit byte can be presented to the LCD.
	 * i.e.
	 *  - 8 bit interfaces can treat 4bit commands the same as regular commands
	 *  - 4 bit only interfaces will send just the upper 4 bits (d4-d7)
	 *
	 * Additional Note:
	 *	The Initiatlization by Instruction figures 23 & 24 of the hitachi spec
	 *	seems to use delays that are 2.7x the specified instruction times based
	 *	on a 270khz clock from table 6
	 *  i.e. 4.1ms is 2.7x 1.52ms of clear/home commands
	 *	and 100us is 2.7x 37us for all the other instructions (cmd & data)
	 *  The delay values appear to be accomodating LCDs clocked down to 100kHz
	 *	rather than at the 270Khz reference.
	 *	This library will wait a little bit longer given the delay functions
	 *	used. However, since iowrite() honors execution times,
	 *  the delays here are in addition to the configured execution times
	 *	and technically should not be needed.
	 *  So if the application called setExecTimes() with excution
	 *  values prior to begin() those will be in addition to these
	 *  delays so everthing should work no matter how slow the LCD is.
	 *
	 * Note that delay() is used here vs delayMicroSeconds() as delay()
	 * on later versions of Arduino core code calls some scheduling functions
	 * to potentially allow other code to execute during this time period.
	 *
	 * delay() can be used because this code is never called from a constructor
	 */
	iowrite(HD44780_IOcmd4bit, HD44780_FUNCTIONSET|HD44780_8BITMODE);
	delay(5); // wait 5ms vs 4.1ms, some are slower than spec

	iowrite(HD44780_IOcmd4bit, HD44780_FUNCTIONSET|HD44780_8BITMODE);
	delay(1); // wait 1ms vs 100us

	iowrite(HD44780_IOcmd4bit, HD44780_FUNCTIONSET|HD44780_8BITMODE);
	delay(1); // wait 1ms vs 100us

	/*
	 * At this point the LCD is guaranteed to be in 8 bit mode
	 *
	 * If the interface needs to be put into 4 bit mode, the
	 * goto 4bit mode command is sent as another special internal
	 * "4bit" command because the 4bit only host talks 4 bits and the LCD
	 * isn't in 4 bit mode yet.
	 */
	if(!(_displayfunction & HD44780_8BITMODE))
		iowrite(HD44780_IOcmd4bit, HD44780_FUNCTIONSET|HD44780_4BITMODE);

	/*
	 * At this point the LCD is in 8 bit mode for 8 bit host interfaces,
	 * and in 4 bit mode for 4bit only host interfaces so we can
	 * now use the "normal" library command() & API interface functions
	 */

	// set # lines, font size, etc.
	hd44780_command(HD44780_FUNCTIONSET | _displayfunction);


	// turn the display on with no cursor or blinking default
	_displaycontrol = HD44780_DISPLAYON | HD44780_CURSOROFF | HD44780_BLINKOFF;
	hd44780_display();

	hd44780_clear(); // clear display

	// Initialize to default text direction (for romance languages)
	_displaymode = HD44780_ENTRYLEFT2RIGHT;
	// set the entry mode
	rval = hd44780_command(HD44780_ENTRYMODESET | _displaymode);

// FIXME
#ifdef LATER
	// quick check to see if BUSY is working on devices that support reads
	{
	int lcdstatus = status();
		if(lcdstatus >= 0)
		{
			// if BUSY bit is set then there is a problem
			if(lcdstatus &  0x80)
				return(RV_EBUSY);
		}
	}
#endif
	hd44780_backlight(); // turn on the backlight, if supported

	return(rval);
}



// setRowOffsets:
//
// Create a row/line offset table of addresses for each row/line
// See here for further explanation of lcd memory addressing:
// http://web.alfredstate.edu/weimandn/lcd/lcd_addressing/lcd_addressing_index.html
int hd44780_setRowOffsets(int row0, int row1, int row2, int row3)
{
	_rowOffsets[0] = row0;
	_rowOffsets[1] = row1;
	_rowOffsets[2] = row2;
	_rowOffsets[3] = row3;
	return(RV_ENOERR);
}

int hd44780_clear(void)
{
	return(hd44780_command(HD44780_CLEARDISPLAY));  // clear display, set cursor to 0,0
}

int hd44780_home(void)
{
	return(hd44780_command(HD44780_RETURNHOME));  // set cursor position to 0,0
}


int hd44780_setCursor(uint8_t col, uint8_t row)
{
	// while this could return RV_EINVAL for invalid parameters
	// it is going to adjust them to maintain compability with existing LiquidCrystal
	// library and to allow a back door way to set the ddram address - see below

	if ( row >= _rows )
	{
		// set to max line (rows/lines start at 0, _rows is 1 based)
		row = _rows-1;
	}
	/*
	 * if col is too large, it can't corrupt the command since
	 * SETDDRRAMADDR is bit 7 of the byte
	 * It is intionally not checked to allow allow:
	 * - positioning off the end of the visable line
	 * - if line 0 is used, it is a backdoor to do SETDDRAMADDR to any address
	 *
	 * NOTE:
	 * Things are handled differently if auto linewrap is enabled:
	 * position takes into consideration line wrapping.
	 * i.e. positioning to col 16, row 0  on a 16x2 display
	 * will position the cursor to col 0 row 1.
	 */

	if(_wraplines)
	{
		// wrap while requested col > toal cols
		while(col >= _cols)
		{
			col -= _cols;
			if(++row >= _rows)
				row = 0; // wrap back to top line
		}

		// save position
		_curcol = col;
		_currow = row;
	}

#ifdef later
	// in right to left mode the cursor position wil be incorrect.
	// however, things like home() and clear() will not work as expected either.
	// home() positions back to DDRAMADDR 0
	// clear() positions back to DDRAMADDR 0 and removes the right to left mode
	// It isn't clear how home() and clear() should be handled.
	// if they position to (0,0) then they have to expcility do it as well as
	// restore rightToLeft() mode when being used.
	//
	if(!(_displaymode & HD44780_ENTRYLEFT2RIGHT))
		return(hd44780_command(HD44780_SETDDRAMADDR | (_cols - col -1 + _rowOffsets[row])));
	else
#endif
		return(hd44780_command(HD44780_SETDDRAMADDR | (col + _rowOffsets[row])));
}

// turn off display pixels
int hd44780_noDisplay(void)
{
	_displaycontrol &= ~HD44780_DISPLAYON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}

// turn on display pixels
int hd44780_display(void)
{
	_displaycontrol |= HD44780_DISPLAYON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}

// Turns off underline cursor
int hd44780_noCursor(void)
{
	_displaycontrol &= ~HD44780_CURSORON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}
// Turn on underline cursor
int hd44780_cursor(void)
{
	_displaycontrol |= HD44780_CURSORON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}

// Turn on off the blinking cursor
int hd44780_noBlink(void)
{
	_displaycontrol &= ~HD44780_BLINKON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}

// Turn on the blinking cursor
int hd44780_blink(void)
{
	_displaycontrol |= HD44780_BLINKON;
	return(hd44780_command(HD44780_DISPLAYCONTROL | _displaycontrol));
}

// These API functions scroll/shift the display contents without changing the RAM
int hd44780_scrollDisplayLeft(void)
{
	return(hd44780_command(HD44780_CURDISPSHIFT | HD44780_DISPLAYMOVE | HD44780_MOVELEFT));
}
int hd44780_scrollDisplayRight(void)
{
	return(hd44780_command(HD44780_CURDISPSHIFT | HD44780_DISPLAYMOVE | HD44780_MOVERIGHT));
}

// This is for text that flows Left to Right
int hd44780_leftToRight(void)
{
	_displaymode |= HD44780_ENTRYLEFT2RIGHT;
	return(hd44780_command(HD44780_ENTRYMODESET | _displaymode));
}

// This is for text that flows Right to Left
int hd44780_rightToLeft(void)
{
	_displaymode &= ~HD44780_ENTRYLEFT2RIGHT;
	return(hd44780_command(HD44780_ENTRYMODESET | _displaymode));
}

// This moves the cursor one space to the right
int hd44780_moveCursorRight(void)
{
	return(hd44780_command(HD44780_CURDISPSHIFT | HD44780_CURSORMOVE | HD44780_MOVERIGHT));
}

// This moves the cursor one space to the left
int hd44780_moveCursorLeft(void)
{
	return(hd44780_command(HD44780_CURDISPSHIFT | HD44780_CURSORMOVE | HD44780_MOVELEFT));
}

// This will enable autoshifting display as new characters are written.
// If mode is left to right, shift is left
// if mode is right to left, shift is right
int hd44780_autoscroll(void)
{
	_displaymode |= HD44780_ENTRYAUTOSHIFT;
	return(hd44780_command(HD44780_ENTRYMODESET | _displaymode));
}

// This will disable autoshifting when new characters are written
int hd44780_noAutoscroll(void)
{
	_displaymode &= ~HD44780_ENTRYAUTOSHIFT;
	return(hd44780_command(HD44780_ENTRYMODESET | _displaymode));
}

// Allows filling in the first 8 CGRAM locations
// with custom characters
// note that it is not possible to support more than 8 locations
// since SETCGRAMADDR instruction is bit 6 and there no room
// for any more address bits.
// (location is bits 3-5 and data row is bits 0-2 of the instruction)
int hd44780_createChar(uint8_t location, uint8_t charmap[])
{
	int rval;
	int ddramaddr;

	location &= 0x7; // we only have 8 locations 0-7

	ddramaddr = hd44780_status(); // fetch status which includes ddram address

	if(ddramaddr < 0) // status() failed, so just set address to 0
		ddramaddr = 0;
	else
		ddramaddr &= 0x7f; // strip off BUSY bit

	rval = hd44780_command(HD44780_SETCGRAMADDR | (location << 3));
	if(rval)
		return(rval);
	for (int i=0; i<8; i++)
	{
		if(hd44780_rwrite(charmap[i]) != 1) // use raw write to avoid line processing
			return(RV_EIO);
	}

	// put LCD back into DDRAM mode so write() works
	return(hd44780_setCursor(ddramaddr , 0));
}

// special version of code to support wimpy AVR parts that can't directly access
// const data in flash like all the other processors
// Note that most other Arduino cores have adopted to support the
// AVR proprietary PROGMEM macros to be compatible with AVR specific code.
// Since the macro PROGMEM is defined when proprietary AVR progmem support is
// implememented (even on non AVR cores),
// this code will look for that macro to enable special code to deal with it.
// While at this time, this is only needed for AVR parts, it will work on
// non AVR parts that have implemented support for the proprietary
// AVR progmem crap.
//
#if defined (PROGMEM)
int hd44780_pcreateChar(uint8_t location, const uint8_t *charmap)
{
uint8_t buf[8];
	// fetch/read the full 8 byte glyph data into RAM
	for(int i= 0; i< 8; i++)
	{
		buf[i] = pgm_read_byte(charmap++);
	}
	// call the RAM based function to actually send it to the LCD
	return(hd44780_createChar(location, buf));
}
#else
int hd44780_pcreateChar(uint8_t location, const uint8_t *charmap)
{
	return(hd44780_createChar(location, (uint8_t *)charmap));
}

#endif

// turn on backlight at full intensity
int hd44780_backlight(void)
{
	return(iosetBacklight(-1)); // max brightness
}

// turn off backlight
int hd44780_noBacklight(void)
{
	return(iosetBacklight(0));
}

// turn on pixels and backlight
int hd44780_on (void)
{
int rval;

	rval = hd44780_display();
	hd44780_backlight(); // ignore any issues for backlight control
	return(rval);
}

// turn off pixels and backlight
int hd44780_off (void)
{
   hd44780_noBacklight(); // ignore any issues for backlight control
   return(hd44780_noDisplay());
}

// hd44780_command() - send hd44780 command byte to lcd
//
// Returns 0 on success, non zero if command failed
//
int hd44780_command(uint8_t value)
{
	int status;

	status = iowrite(HD44780_IOcmd, value);

	// executime time depends on command
	if((value == HD44780_CLEARDISPLAY) || (value == HD44780_RETURNHOME))
	{
		_curcol = 0;
		_currow = 0;
		hd44780_markStart(_chExecTime);
	}
	else
	{
		hd44780_markStart(_insExecTime);
	}

	return(status);
}

void hd44780_markStart(uint32_t exectime)
{
	_startTime = (uint32_t) micros();
	_execTime = exectime;
}

void waitReady(void)
{
	rwaitReady((_startTime), _execTime);


}

void pwaitReady(int32_t offsetUs)
{
	rwaitReady((_startTime+offsetUs), _execTime);}

//Arduino NOP = 62.5ns (0.0625us)
//
void rwaitReady(uint32_t _stime, uint32_t _etime)
{
//	uint32_t tick=0;
//	uint32_t tickmax = ((_etime * 1000)/63) + 1;

	//while(( ((uint32_t)micros()) - _stime) < _etime) {}
//	while (tick < tickmax)
//	{
//		tick++;
//	}
}



// status() - read status byte from LCD
// returns:
// 	success: 8 bit hd44780 status byte (busy flag & address)
//	failure: neagative value (error or read/status not supported by i/o subclass
int hd44780_status(void)
{
	int rvalue = ioread(HD44780_IOcmd);
	// markStart() is not called here as status reads do not
	// require any execution time.
	// setting the start time to now, which is 0, can potentially erase
	// the execution time of a previous command if status reads
	// are not supported therefore, just leave the previous start time.
	return(rvalue);
}

// read() - read a data byte from LCD
// returns:
// 	success: 8 bit value read
//	failure: neagative value (error or read not supported by i/o subclass
int hd44780_read(void)
{
int rvalue = ioread(HD44780_IOdata);
	// it apears that even though the read operation actually completed
	// when the data has been read, i.e. ioread() returns,
	// that the chip cannot take another instruction
	// until after the normal instruction execution time.
	// See Table 6 page 25 of Hitachi hd44780 datasheet
	hd44780_markStart(_insExecTime);
	return(rvalue);
}

//Set line wrap effect
int hd44780_lineWrap(void)
{
	if(_displaymode & HD44780_ENTRYLEFT2RIGHT)
	{
		_wraplines=1;
		return(RV_ENOERR);
	}
	else
	{
		return(RV_ENOTSUP);
	}
}

// disable automatic line wrapping
int hd44780_noLineWrap(void)
{
	_wraplines=0;
	return(RV_ENOERR);
};		// turn off automatic line wrapping

// set execution times for commmands to override defaults
void hd44780_setExecTimes(uint32_t chExecTimeUs, uint32_t insExecTimeUs)
{
	_chExecTime = chExecTimeUs;
	_insExecTime = insExecTimeUs;
}


// print function to print a string
size_t hd44780_print(char const * msg)
{
	//uint8_t buff[16];
    int len = strlen(msg);
    size_t n = 0;
//    while ((n < len) && (n < _cols)) {
      while (n < len) {
        int written = hd44780_write(msg[n]);
        n += written;
        if (!written) {
            // Some error, write() should write at least 1 byte before returning
            break;
        }

        if ((_wraplines==0)&&(n>= _cols))	//if no wraplines, then break writes
        {
        	break;
        }
    }
    return n;
}

size_t hd44780_printf(const char *format, ...)
{
    va_list arg;
    va_start(arg, format);
    char temp[32];

    size_t len = vsnprintf(temp, sizeof(temp), format, arg);
    va_end(arg);

    size_t n = 0;
    while (n < len)  		//
    {
        int written = hd44780_write(temp[n]);
        n += written;
        if (!written) {
            // Some error, write() should write at least 1 byte before returning
            break;
        }
        if ((_wraplines==0)&&(n>= _cols))	//if no wraplines, then break writes
        {
        	break;
        }
    }

    return n;
}


// write() - process data character byte to lcd
// returns number of bytes successfully written to device
// i.e. 1 if success or 0 if no character was processed (error)
size_t hd44780_write(uint8_t value)
{
	size_t rval;

	rval = hd44780_rwrite(value);

	if(_wraplines)
	{
		// currently only works for left to right mode
		if(++_curcol >= _cols)
		{
			_curcol = 0;
			_currow++;
			if(_currow >= _rows)
				_currow = 0;
			hd44780_setCursor(_curcol, _currow);
		}
	}
	return (rval);
}


// _write() - send raw data byte to lcd
// returns 1 if success or 0 if no byte was processed (error)
size_t hd44780_rwrite(uint8_t value)
{
int status = 1; //assume success

	if(iowrite(HD44780_IOdata, value))
		status = 0; // write was unsuccessful
	hd44780_markStart(_insExecTime);

	return status;
}

//============================================================================
// A couple of functions that really shouldn't be here.
// blinkLED() and fatalError()
//
// NOTE: I REALLY do not like having these functions here and they definitely
// do not belong in this class; HOWEVER.... blinking a built in LED in arduino
// is not as easy as it should be to ensure that works across many different
// cores and boards.
// Some cores didn't correclty define their LED_BUILTIN define, and some boards
// use use an active LOW LED.
// To make things simpler for the hd44780 examples and ensure consistency as
// well as making maintenance much easier,
// I held my nose and moved those two functions to here.
// -- bperrybap

// blinkLED() - blink builtin LED
// blinks a built in LED if there is one.
// returns zero if successful
//

// helper macros to turn on built in LED as some boards like the ESP8266 use
// active low LEDs

#if defined(ARDUINO_ARCH_ESP8266)
#define ledBuiltinOn() digitalWrite(LED_BUILTIN, LOW)
#define ledBuiltinOff() digitalWrite(LED_BUILTIN, HIGH)
#else
#define ledBuiltinOn() digitalWrite(LED_BUILTIN, HIGH)
#define ledBuiltinOff() digitalWrite(LED_BUILTIN, LOW)
#endif

int hd44780_blinkLED(int blinks)
{
#ifdef LED_BUILTIN
	pinMode(LED_BUILTIN, OUTPUT);
	// blink out error code
	for(int i = 0; i< blinks; i++)
	{
		ledBuiltinOn();
		delay(100);
		ledBuiltinOff();
		delay(250);
	}
	return(0);
#else
	// No built in LED, so do "nothing"
	if(blinks){} // "nop" if to eliminate warning, will be optimized out

	return(RV_ENOTSUP);
#endif
}

// fatalError() - loop & blink an error code
void hd44780_fatalError(int errcode)
{
	if(errcode < 0)
		errcode = -errcode;
	while(1)
	{
		hd44780_blinkLED(errcode);	// blink LED if possible
		delay(1500);		// using delay() ensures watchdogs don't trip
	}
}
//============================================================================


// ---------------------------------------------------------------------------
// Private Driver
// ---------------------------------------------------------------------------

// Arduino Pin information
uint8_t _rs;		// hd44780 RS arduino pin
uint8_t _rw;		// hd44780 RW arduino pin
uint8_t _en;		// hd44780 EN arduino pin
uint8_t _d4;		// hd44780 d4 arduino pin
uint8_t _d5;		// hd44780 d5 arduino pin
uint8_t _d6;		// hd44780 d6 arduino pin
uint8_t _d7;		// hd44780 d7 arduino pin
uint8_t _bl;		// arduino pin to control backlight
uint8_t _blLevel;	// backlight active control level HIGH/LOW
					// (HIGHZ is input mode for ON, LOW for off)

void hd44780_pinIO(void)
{
	_rs = RS;
	_en = EN;
	_rw = RW; // not used
	_d4 = D4;
	_d5 = D5;
	_d6 = D6;
	_d7 = D7;
	_bl = BL; // not used
	_blLevel = BLLEVEL; // not used
}

// HD44780
// ioinit() - initialize the h/w
int ioinit(void)
{
	// initialize Arduino pins used for hd44780 signals
	// NOTE:
	// _rw and _en pins are set to low even though they should
	// default to this from a an initial reset.
	// the reason is it is possible initilization is called without
	// without resetting the processor. In that case the state of the
	// bit in the port register would be unknown, so it is safest to set
	// to the desired state (LOW).
	hd44780_pinIO();

	pinMode(_rs, OUTPUT);

	if(_rw != 0xff)
	{
		pinMode(_rw, OUTPUT);
		// if r/w is used it be will set to be low,
		// it will only be turned hi during a read and
		// then set back to low. This offers a slight boost
		// for writes since normally reads are not done very often
		digitalWrite(_rw, LOW);
	}

	pinMode(_en, OUTPUT);
	digitalWrite(_en, LOW);

	pinMode(_d4, OUTPUT);
	pinMode(_d5, OUTPUT);
	pinMode(_d6, OUTPUT);
	pinMode(_d7, OUTPUT);

	if(_bl != 0xff)
	{
		// check for broken backlight circuit on LCDkeypads
		// and protect Arduino if it appears to be broken
		// code will do "safe" backlight control

		if((_blLevel == HIGH) && blPinTest(_bl))
			_blLevel = HIGHZ;

		pinMode(_bl, OUTPUT);
	}

	return(RV_ENOERR); // all is good
}


// ioread(type) - read a byte from LCD DDRAM
//
// returns:
// 	success:  8 bit value read
// 	failure: negative value: reading not supported
//
int ioread(iotype type)
{
	uint8_t data = 0;

	// check if r/w control supported
	if(_rw == 0xff)
		return(RV_ENOTSUP);

	waitReady();		// ensure previous instruction finished

	// put all the LCD data pins into input mode.
	pinMode(_d4, INPUT);
	pinMode(_d5, INPUT);
	pinMode(_d6, INPUT);
	pinMode(_d7, INPUT);

	// set RS based on type of read (data or status/cmd)
	if(type == HD44780_IOdata)
	{
		digitalWrite(_rs, HIGH); // RS high to access data reg
	}
	else
	{
		digitalWrite(_rs, LOW); // RS LOW to access status/cmd reg
	}

	// r/w  HIGH for reading
	digitalWrite(_rw, HIGH);

	// raise E to allow reading the data.
	digitalWrite(_en, HIGH);

	// allow for hd44780 tDDR (Data delay time) before reading data
	// this could be much shorter but this is portable for all CPUs.
	// and it will ensure that hd44780 PWEH timing is honored as well.
	delayMicroseconds(1);

	// read pins for d4-d7 into upper nibble of byte
	if(digitalRead(_d4) == HIGH)
		data |= (1 << 4);

	if(digitalRead(_d5) == HIGH)
		data |= (1 << 5);

	if(digitalRead(_d6) == HIGH)
		data |= (1 << 6);

	if(digitalRead(_d7) == HIGH)
		data |= (1 << 7);

	// lower E after reading nibble
	digitalWrite(_en, LOW);

	// allow for hd44780 1/2 of tcycE (Enable cycle time)
	// this could be much shorter but this is portable for all CPUs.
	delayMicroseconds(1);

	// raise E to allow reading the lower nibbly of the byte
	digitalWrite(_en, HIGH);

	// allow for hd44780 tDDR (Data delay time) before reading data
	// this could be shorter but this is portable for all CPUs.
	// and it will ensure that hd44780 PWEH timing is honored as well.
	delayMicroseconds(1);

	// read pins for d4-d7 into upper nibble of byte
	if(digitalRead(_d4) == HIGH)
		data |= (1 << 0);

	if(digitalRead(_d5) == HIGH)
		data |= (1 << 1);

	if(digitalRead(_d6) == HIGH)
		data |= (1 << 2);

	if(digitalRead(_d7) == HIGH)
		data |= (1 << 3);


	// lower E after reading nibble
	digitalWrite(_en, LOW);

	//
	// put all pins back into state for writing to LCD
	//

	// put all the LCD data pins into input mode.
	pinMode(_d4, OUTPUT);
	pinMode(_d5, OUTPUT);
	pinMode(_d6, OUTPUT);
	pinMode(_d7, OUTPUT);

	// r/w  LOW for Writing
	digitalWrite(_rw, LOW);

	return(data);
}


// iowrite(type, value) - send either a command or data byte to lcd
// returns zero on success, non zero on failure
int iowrite(iotype type, uint8_t value)
{
	if(type == HD44780_IOdata)
  		digitalWrite(_rs, HIGH);
	else
  		digitalWrite(_rs, LOW);

	// "4 bit commands" are special.
	// They are used only during initalization and
	// are used to reliably get the LCD and host in nibble sync
	// with each other and to get the LCD into 4 bit mode.
	// 8 bit host interfaces don't have to worry about this,
	// but 4 bit host interfaces must only send the upper nibble.

	// note:
	// waitReady() is explicitly called as late as possible *after* the Arduino
	// pins for the LCD control and data signals are set to allow
	// overhead of the digitalWrite() calls to be hidden under execution time.

	write4bits(value>>4);	// setup upper nibble d4-d7 lcd pins
	waitReady();			// ensure previous instruction finished
	pulseEnable();			// send upper nibble to LCD


	// send lower nibble if not a 4 bit command
	// (sends nibble for both data and "normal" commands)
	if (type != HD44780_IOcmd4bit )
	{
		write4bits((value & 0x0F));// setup lower nibble on d4-d7 lcd pins
		pulseEnable();				// send lower nibble to LCD
	}

	return(RV_ENOERR); // it never fails
}

// iosetBacklight() - set backlight brightness
// if dimming not supported, any non zero dimvalue turns backlight on
int iosetBacklight(uint8_t dimvalue)
{
	if (_bl == 0xff )
		return(RV_ENOTSUP); // no backlight pin so nothing to do

	// Check for HIGHZ active level which is used on LCDkeypads with broken backlight circuits
	// In HIGHZ active level, the output is is never driven high, instead the pin is put
	// into input mode to turn on the backlight.
	// To turn off the backlight, the pin is flipped to output mode.
	// because the pin is never set to HIGH, when the pin is set to output mode it will be LOW.

	if(_blLevel == HIGHZ)
	{
		if(dimvalue)
			pinMode(_bl, INPUT);
		else
			pinMode(_bl, OUTPUT);
		return(RV_ENOERR);
	}

	// Check if backlight pin has PWM support
	// The reason this has to be done is that Arduino analogWrite()
	// sets a pin to LOW if there is no PWM support and the PWM value is
	// less than half of maximum. This is not desired behavior.
	// The desired behavior is that if dimming is not supported, then the
	// output is full on until the PWM value is zero to indicate "off".
	// So we have to bypass the goofy code in analogWrite()
	// by detecting if the pin supports PWM and controlling the output manually
	// when no PWM is available.

	// NOTE: the ESP32 core does not have analogWrite() PWM support !
	// so on ESP32 core, all you get is on/off

	if(digitalPinHasPWM(_bl))
	{
		// set PWM signal appropriately for active level
		if(_blLevel == HIGH)
		{
			analogWrite(_bl, dimvalue);
		}
		else
		{
			analogWrite(_bl, 255 - dimvalue); // active low is inverse PWM
		}
	}

	// No PWM support on pin, so
	// dimvalue 0 is off, any other value is on
	else
	{
		if(((dimvalue) && (_blLevel == HIGH)) ||
			((dimvalue == 0) && (_blLevel == LOW)))
		{
			digitalWrite(_bl, HIGH);
		}
		else
		{
			digitalWrite(_bl, LOW);
		}
	}
	return(RV_ENOERR);
}

// ================================
// === internal class functions ===
// ================================

// write4bits() - set the 4 hd44780 data lines
void write4bits(uint8_t value)
{
	// write the bits on the LCD data lines but don't send the data
	if(value & 1)
		digitalWrite(_d4, HIGH);
	else
		digitalWrite(_d4, LOW);

	if(value & 2)
		digitalWrite(_d5, HIGH);
	else
		digitalWrite(_d5, LOW);

	if(value & 4)
		digitalWrite(_d6, HIGH);
	else
		digitalWrite(_d6, LOW);

	if(value & 8)
		digitalWrite(_d7, HIGH);
	else
		digitalWrite(_d7, LOW);
}

// pulseEnable() - toggle en to send data to hd44780 module
void pulseEnable(void)
{
	digitalWrite(_en, HIGH);
	delayMicroseconds(1);    // enable pulse must be >450ns
	digitalWrite(_en, LOW);
}

//
// Function to test a backlight pin
// Returns non-zero if test fails (bad circuit design)
int blPinTest(int pin)
{
int val;

	/*
	 * Check to see if there
	 * is a problem in the backlight circuit
	 * So far, the "broken" designs connected D10
	 * directly to the base of a NPN transistor,
	 * this will cause a short when D10 is set to HIGH
	 * as there is no current limiting resistor in the path
	 * between D10 to the base and the emitter to ground.
	 */

	/*
	 * Set the  pin to an input with pullup disabled.
	 * This should be safe on all shields.
	 * The reason for the digitalWrite() first is that
	 * only the newer Arduino cores disable the pullup
	 * when setting the pin to INPUT.
	 * On boards that have a pullup on the transistor base,
	 * this should cause the backlight to be on.
	 */
	digitalWrite(pin, LOW);
	pinMode(pin, INPUT);

	/*
	 * Set the backlight pin to an output.
	 * since the pullup was turned off above by
	 * setting the pin to input mode,
	 * it should drive the pin LOW which should
	 * be safe given the known design flaw.
	 */
	pinMode(pin, OUTPUT);

	/*
 	 * Set the backlight pin to HIGH
	 * NOTE: This is NOT a safe thing to do
	 * on the broken designs. The code will minimize
	 * the time this is done to prevent any potential damage.
	 */

	digitalWrite(pin, HIGH);


	/*
	 * Now read back the pin value to
	 * See if a short is pulling down the HIGH output.
	 */

	delayMicroseconds(5); // give some time for the signal to droop

	val = digitalRead(pin); // read the level on the pin

	/*
 	 * Restore the pin to a safe state
	 * Input with pullup turned off
	 */
	digitalWrite(pin, LOW);
	pinMode(pin, INPUT);

	/*
	 * If the level read back is not HIGH
	 * Then there is a problem because the pin is
	 * being driven HIGH by the AVR.
	 */
	if (val != HIGH)
		return(-1); // test failed
	else
		return(0); // all is ok.
}


}	/* extern "C" */



