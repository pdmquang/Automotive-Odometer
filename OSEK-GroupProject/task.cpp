/* ###*B*###
 * Erika Enterprise, version 3
 * 
 * Copyright (C) 2017 - 2019 Evidence s.r.l.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 * 
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * <www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 * 
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 * 
 * THIRD PARTIES' MATERIALS
 * 
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 * 
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 * 
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file	task.cpp
 *  \brief	User Tasks
 *
 *  This file contains the code of application task for Erika Enterprise.
 *
 *  \authors: Xian Zhi, Alex Goei, Haziq, Quang, Faris, Wilson
 *  \date: 31-03-21
 */

/* Faris - Circuit building & mileage clearing */
/* Quang - LCD display data printing & formatting */
/* Alex - Speed derivation from analog input */
/* Haziq - Distance clocking for mileage */
/* Wilson - Time clocking for mileage */
/* Xian Zhi - System config & event/mode implementation */

/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"

/* Hardware Pins */
#include "hwpins.h"
#include "hd44780.h"

extern "C" {

/* External Functions */
extern size_t hd44780_printf(const char *format, ...);
extern int hd44780_setCursor(uint8_t col, uint8_t row);

extern void interrupt_button(void);
extern void serial_print(char const * msg);

/* TASKs Declarations */
DeclareTask(MileageTask);
DeclareTask(DisplayTask);

/* ISR Declarations */
ISR2(ButtonISR);

/* EVENTs Declarations */
DeclareEvent(ClockMileage);
DeclareEvent(ClearMileage);
DeclareEvent(UpdateLCD);

/* Global Variables */
int adc = 0; 			/* analog input value */
float speed = 0; 		/* speed value */
float adc2kph = 0.245;	/* 251/1024 */
float adc2mph = 0.152;	/* 156/1024 */

int decimal = 0; 		/* mileage decimals */
int mileage = 0; 		/* mileage whole number */

int hour = 0; 			/* hours mileage */
int min = 0; 			/* minutes mileage */
int sec = 0; 			/* seconds mileage */

/*************************************************************
 *  \Function	MileageTask
 *  \brief		Configured & set to autostart in OIL.
 *              Task waits for 2 Events (ClockMileage & ClearMileage)
 *              It will then set Event to update LCD.
 *
 *************************************************************/
TASK(MileageTask)
{
	AppModeType currentAppMode;
	EventMaskType mask;

	while(1){
		WaitEvent(ClearMileage | ClockMileage);
		GetEvent(MileageTask, &mask);
		if((mask & ClearMileage) != 0){
			decimal = 0;			/* set distance values to zero */
			mileage = 0;
			hour = 0;				/* set time values to zero */
			min = 0;
			sec = 0;

			ClearEvent(ClearMileage);
			SetEvent(DisplayTask, UpdateLCD);
		}
		if((mask & ClockMileage) != 0){
			adc = analogRead(speedSensor); 	/* get ADC value from pin A5 */

			currentAppMode = GetActiveApplicationMode();
			/* appmode seems to not be passed or read correctly */
			if(currentAppMode == Kilometers){
				speed = adc * adc2kph;		/* derive kph from ADC value */
			}
			else{
				speed = adc * adc2mph;		/* derive mph from ADC value */
			}

			decimal += speed / 3.6; 			/* clock thousand-ths of speed in sec */
			if(decimal > 999){
				mileage++; 						/* clock whole number when thousand-th = 1000 */
				decimal -= 1000; 				/* reduce decimal by 1000 */
			}

			if(speed !=0){ 						/* only when moving, clock time */
				sec++;							/* increment seconds */
				if(sec > 59){
					sec = 0;					/* reset seconds when =60 */
					min++;						/* increment minutes */
					if(min > 59){
						min = 0;				/* reset minutes when =60 */
						hour++;					/* increment hours */
					}
				}
			}

			ClearEvent(ClockMileage);
			SetEvent(DisplayTask, UpdateLCD);
		}
	}
	TerminateTask();
}

/*************************************************************
 *  \Function	DisplayTask
 *  \brief		Configured & set to autostart in OIL.
 *              Task waits for UpdateLCD event.
 *              Task then prints data to LCD
 *
 *************************************************************/
TASK(DisplayTask)
{
	AppModeType currentAppMode;
	EventMaskType mask;

	while(1){
		WaitEvent(UpdateLCD);
		GetEvent(DisplayTask, &mask);
		if((mask & UpdateLCD) != 0){
			currentAppMode = GetActiveApplicationMode();				/* check app mode */
			/* appmode seems to not be passed or read correctly */
			if(currentAppMode == Kilometers){							/* print in kms */
				hd44780_setCursor(8,0);
				hd44780_printf("%02d:%02d:%02d", hour, min, sec);		/* display mileage time */
				hd44780_setCursor(0,1);
				hd44780_printf("%03dkph", (int)speed);					/* display speed */
				hd44780_setCursor(8,1);
				hd44780_printf("%04d.%01dkm", mileage, decimal/100);	/* display distance */
			}
			else{														/* print in miles */
				hd44780_setCursor(8,0);
				hd44780_printf("%02d:%02d:%02d", hour, min, sec);		/* display mileage time */
				hd44780_setCursor(0,1);
				hd44780_printf("%03dmph", (int)speed);					/* display speed */
				hd44780_setCursor(8,1);
				hd44780_printf("%04d.%01dmi", mileage, decimal/100);	/* display distance */
			}

			ClearEvent(UpdateLCD);
		}
	}
	TerminateTask();
}


/*************************************************************
 *  \Function	interrupt_button
 *  \brief		This function receives interrupt from Pin 2.
 *				Sets ClearMileage event
 *************************************************************/
ISR2(ButtonISR)
{
	SetEvent(MileageTask, ClearMileage);
}

}	/* extern "C" */
