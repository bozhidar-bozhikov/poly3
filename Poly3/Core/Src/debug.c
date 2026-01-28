/*
 * debug.c
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

#include "debug.h"
#include "main.h"
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

void debug_init(void)
{
    debug_printf("\n\r=== STM32 Poly3 MIDI Controller ===\n\r");
}

void debug_print(const char* msg)
{
    HAL_UART_Transmit(&DEBUG_UART_PORT, (uint8_t*)msg, strlen(msg), HAL_MAX_DELAY);
}

void debug_printf(const char* format, ...)
{
    char buffer[256];
    va_list args;
    va_start(args, format);
    vsnprintf(buffer, sizeof(buffer), format, args);
    va_end(args);

    HAL_UART_Transmit(&DEBUG_UART_PORT, (uint8_t*)buffer, strlen(buffer), HAL_MAX_DELAY);
}

