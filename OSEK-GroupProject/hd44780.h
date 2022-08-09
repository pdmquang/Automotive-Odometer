/*
 * hd44780.h
 *
 *  Created on: 26 Sep 2020
 *      Author:
 */

#ifndef HD44780_HBAK_
#define HD44780_HBAK_

//User configuration for LCD row and column
#define LCD_COLS		(16)
#define LCD_ROWS		(2)

//User configuration for Arduino PIN number
//Not used - indicate using 0xff
#define RS				(7)
#define RW				(0xff)
#define EN				(12)
#define D4				(11)
#define D5				(10)
#define D6				(9)
#define D7				(8)      // for all other devices
#define BL				(0xff)
#define BLLEVEL			(0xff)


//LCD Internal configuration

	// type of data being sent through ioread()/iowrite()
	//    IOcmd  - read/write an 8 bit status/command to/from display
	//    IOdata - read/writes 8 bits of data to/from display
	// IOcmd4bit - write D4-d7 cmd bits to display using a single EN strobe
	//             8 bit host interfaces can treat this same as IOcmd
enum iotype {HD44780_IOcmd, HD44780_IOdata, HD44780_IOcmd4bit};

#define HIGHZ 					(0xfe) // value is not critical but it cannot be the same as LOW or HIGH, or 0xff


	// default execute times in us for clear/home and instructions/data
	// The hd44780 spec uses 1520 and 37 in table 6 page 24
	// note: the spec does not specify the time for Clear display
	// 38us is used vs 37 as 37 had issues on VERY fast processors that could
	// send data to the LCD that fast.
	// these can be overridden using setExecTimes(chUs, insUs)
#define HD44780_CHEXECTIME 		(2000) // time in us for clear&home
#define HD44780_INSEXECTIME 	(38)
#define T_CHEXECTIME			(HD44780_CHEXECTIME*1000/62)	//~31746
#define T_INSEXECTIME			(HD44780_INSEXECTIME*1000/62)	//~603

	// API return values
	// 0 means successful, less than zero means unsuccessful
#define RV_ENOERR				(0)				// no error. Do not change!
#define RV_EIO					(-1)			// i/o operation failed (generic/default error)
#define RV_EINVAL				(-2)			// invalid argument/parameter
#define RV_ENOTSUP				(-3)			// not supported
#define RV_ENXIO				(-4)			// no such device or address
#define RV_EMSGSIZE				(-5)			// Message/data too long
#define RV_EBUSY				(-6)			// device is unexpectedly BUSY

	// commands
#define HD44780_CLEARDISPLAY	(0x01)
#define HD44780_RETURNHOME		(0x02)
#define HD44780_ENTRYMODESET	(0x04)
#define HD44780_DISPLAYCONTROL 	(0x08)
#define HD44780_CURDISPSHIFT 	(0x10)
#define HD44780_FUNCTIONSET		(0x20)
#define HD44780_SETCGRAMADDR	(0x40)
#define HD44780_SETDDRAMADDR 	(0x80)

	// flags for entry mode set;
#define HD44780_ENTRYLEFT2RIGHT	(0x02)
#define HD44780_ENTRYAUTOSHIFT 	(0x01)

	// flags for display on/off control;
#define HD44780_DISPLAYON		(0x04)
//#define HD44780_DISPLAYOFF = 0x00;
#define HD44780_CURSORON		(0x02)
#define HD44780_CURSOROFF		(0x00)
#define HD44780_BLINKON			(0x01)
#define HD44780_BLINKOFF		(0x00)

	// flags for cursor/display shift;
#define HD44780_DISPLAYMOVE		(0x08)
#define HD44780_CURSORMOVE		(0x00)
#define HD44780_MOVERIGHT		(0x04)
#define HD44780_MOVELEFT		(0x00)

	// flags for function set;
#define HD44780_8BITMODE		(0x10)
#define HD44780_4BITMODE		(0x00)
#define HD44780_2LINE			(0x08)
#define HD44780_1LINE			(0x00)
#define HD44780_5x10DOTS		(0x04)
#define HD44780_5x8DOTS			(0x00)




#endif /* HD44780_HBAK_ */
