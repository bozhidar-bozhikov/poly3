/*
 * midi.c
 *
 *  Created on: Oct 27, 2025
 *      Author: bojos
 */

#include "midi.h"
#include "st7789.h"

void MIDI_Init() {
	if (MIDI_UART_PORT.Instance != NULL && MIDI_UART_PORT.gState == HAL_UART_STATE_READY) {
		// UART is initialized - turn LED ON
		HAL_GPIO_WritePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin, GPIO_PIN_SET);
		HAL_Delay(2000); // Keep it on for 2 seconds
	} else {
		// UART not initialized - blink LED rapidly (SOS pattern)
		for (int i = 0; i < 10; i++) {
			HAL_GPIO_TogglePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin);
			HAL_Delay(100);
		}
	}

	HAL_GPIO_WritePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin, GPIO_PIN_RESET);

	MIDI_Test();
}

void MIDI_NoteOn(uint8_t channel, uint8_t note, uint8_t velocity) {
	uint8_t msg[3];
	msg[0] = 0x90 | (channel & 0x0F);
	msg[1] = note & 0x7F;
	msg[2] = velocity & 0x7F;
	HAL_UART_Transmit(&MIDI_UART_PORT, msg, 3, 100);
}

void MIDI_NoteOff(uint8_t channel, uint8_t note) {
	uint8_t msg[3];
	msg[0] = 0x80 | (channel & 0x0F);
	msg[1] = note & 0x7F;
	msg[2] = 0x00;
	HAL_UART_Transmit(&MIDI_UART_PORT, msg, 3, 100);
}

void MIDI_Test(void) {
    uint8_t channel = 0;
    uint8_t note = 36;
    uint8_t velocity = 100;
    HAL_Delay(1000);
    for (int i = 0; i < 5; i++) {
    			HAL_GPIO_TogglePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin);
    			HAL_Delay(100);
    		}

    while (1) {
        // Toggle LED to show we're running
        HAL_GPIO_TogglePin(MIDI_LED_GPIO_Port, MIDI_LED_Pin);

        // Send Note On
        uint8_t noteOn[3] = { 0x90 | channel, note, velocity };
        HAL_UART_Transmit(&MIDI_UART_PORT, noteOn, 3, 100);  // Changed from &huart2

        HAL_Delay(200); // Note duration

        // Send Note Off
        uint8_t noteOff[3] = { 0x80 | channel, note, 0 };
        HAL_UART_Transmit(&MIDI_UART_PORT, noteOff, 3, 100);  // Changed from &huart2

        HAL_Delay(50); // Gap between notes

        // Increment note
        note++;
        if (note > 84) {
            note = 36;
            channel++;
            if (channel > 15) {
                channel = 0;
                HAL_Delay(1000);
            }
        }
    }
}
