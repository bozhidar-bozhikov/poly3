/*
 * debug.h
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

#ifndef INC_DEBUG_H_
#define INC_DEBUG_H_

#include <stdint.h>
#include "main.h"
#include "stm32f4xx_hal.h"

// choose a port for debugging (on an stm32f46re it's uart2)
extern UART_HandleTypeDef huart2;
#define DEBUG_UART_PORT huart2

void debug_init(void);

void debug_print(const char* msg);
void debug_printf(const char* format, ...);

#endif /* INC_DEBUG_H_ */
