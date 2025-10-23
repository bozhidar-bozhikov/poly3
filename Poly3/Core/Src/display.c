/*
 * display.c
 *
 *  Created on: Oct 23, 2025
 *      Author: bojos
 */

#include "display.h"
#include "st7789.h"

void Display_Init(void)
{
	ST7789_Init();

	//TODO: add start up animation before launch
	Display_Main();
}

void Display_Main(void) {
	//TODO: replace with bitmap
	ST7789_Fill_Color(BLACK);
	ST7789_DrawFilledCircle(CIRCLE_CENTER_X, CIRCLE_CENTER_Y, CIRCLE_RADIUS, GRAY);
	ST7789_DrawFilledCircle(CIRCLE_CENTER_X, CIRCLE_CENTER_Y, CIRCLE_RADIUS - 2, BLACK);
}


