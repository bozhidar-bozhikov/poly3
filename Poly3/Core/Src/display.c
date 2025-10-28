/*
 * display.c
 *
 *  Created on: Oct 23, 2025
 *      Author: bojos
 */

#include <stdint.h>
#include "display.h"
#include "st7789.h"
#include "sequencer.h"

//4 arrays vseki ima po n tochki
//array s 4 elementa, vseki koito e array s n elementa??

static SequencerShape_t *shapes[4];

void Display_Init() {
	ST7789_Init();
	HAL_GPIO_TogglePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin);

	shapes[0] = g_sequencer_pattern.shapes[0];
	shapes[1] = g_sequencer_pattern.shapes[1];
	shapes[2] = g_sequencer_pattern.shapes[2];
	shapes[3] = g_sequencer_pattern.shapes[3];

	//TODO: add start up animation before launch
	Display_Main();

	DrawShapes();
}

void Display_Main() {
	//TODO idea: replace with bitmap?
	ST7789_Fill_Color(BLACK);
	ST7789_DrawCircle(CIRCLE_CENTER_X, CIRCLE_CENTER_Y, CIRCLE_RADIUS, GRAY);
}

void DrawShapes() {
	Display_Main();
	DrawShape(0);
	DrawShape(1);
	DrawShape(2);
	DrawShape(3);
}

void DrawShape(int32_t index) { //TODO: optimize
	Polar polars[shapes[index]->n];
	float phi = 360.0f / shapes[index]->n;

	for (int32_t i = 0; i < shapes[index]->n; i++) {
		Polar p = (Polar){ .r = CIRCLE_RADIUS, .phi = i * phi };
		polars[i] = p;
	}

	Point points[shapes[index]->n];

	for (int32_t i = 0; i < shapes[index]->n; i++) {
		Point p = polarToCartesian(polars[i].r, polars[i].phi);
		p.x += CIRCLE_CENTER_X;
		p.y += CIRCLE_CENTER_Y;
		points[i] = p;

		ST7789_DrawCircle(p.x, p.y, 3, getColorForIndex(index));
	}

	for (int32_t i = 0; i < shapes[index]->n; i++) {
		Point a = points[i];
		Point b = points[(i + 1) % shapes[index]->n];

		ST7789_DrawLine(a.x, a.y, b.x, b.y, getColorForIndex(index));
	}
}

uint16_t getColorForIndex(int32_t index) {
	uint16_t color;
	switch (index) {
		case 0:
			color = RED;
			break;
		case 1:
			color = YELLOW;
			break;
		case 2:
			color = GREEN;
			break;
		case 3:
			color = BLUE;
			break;
		default: color = BLACK;
			break;
	}
	return color;
}
