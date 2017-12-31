/*
 * This file is part of the TREZOR project, https://trezor.io/
 *
 * Copyright (C) 2014 Pavol Rusnak <stick@satoshilabs.com>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <string.h>
#include <libopencm3/usb/usbd.h>
#include <libopencm3/usb/hid.h>
#include <libopencm3/stm32/gpio.h>
#include "inc/bitmaps.h"
#include "inc/display.h"
#include "inc/setup.h"
#include "inc/usb.h"
#include "inc/util.h"


int main(void)
{
	setup();
	oledInit();
	usbInit();

	oledClear();
	oledDrawBitmap(42, 11, &bmp_logo64);
				
	while(1) {
		
		usb_poll();
		oledDrawBitmap(42, 11, &bmp_logo64);
		oledRefresh();
		
		if (!gpio_get(GPIOC, GPIO5)){
			oledDrawBitmap(10, 11, &bmp_logo64);
			oledSwipeRight();
			oledDrawBitmap(70, 11, &bmp_logo64);
			oledSwipeLeft();
		}
		
		if (!gpio_get(GPIOC, GPIO2)){
			oledInvert(0,0,128,64);
			delay(1000);
			oledRefresh();
		}
		oledClear();
	
	}

	return 0;
}
