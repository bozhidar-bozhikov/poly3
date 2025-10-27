/*
 * display.h
 *
 *  Created on: Oct 23, 2025
 *      Author: bojos
 */
#include <stdint.h>
#include <math.h>
#include "st7789.h"
#include "sequencer.h"

#ifndef INC_DISPLAY_H_
#define INC_DISPLAY_H_

#define CIRCLE_CENTER_X 120
#define CIRCLE_CENTER_Y 120
#define CIRCLE_RADIUS 113

typedef struct
{
    int32_t x;
    int32_t y;
} Point;

typedef struct
{
    int32_t r;
    int32_t phi;
} Polar;

void Display_Init(void);
void Display_Main(void);
void DrawShape(int32_t index);
void DrawShapes(void);

static inline Point polarToCartesian(int32_t r, float phi) {
	Point p;
	p.x = r * cos(phi * M_PI / 180);
	p.y = r * sin(phi * M_PI / 180);
	return p;
}

static inline Polar cartesianToPolar(int32_t x, int32_t y) {
	Polar p;
	p.r = sqrt(x*x + y*y);
	p.phi = atan2(y, x);
	return p;
}

uint16_t getColorForIndex(int32_t index);

#endif /* INC_DISPLAY_H_ */
