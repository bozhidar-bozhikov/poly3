/*
 * midi.c
 *
 *  Created on: Oct 27, 2025
 *      Author: bojos
 */
#include "midi.h"
#include "debug.h"

// Send MIDI Note On/Off message
void MIDI_NoteOn(uint8_t channel, uint8_t note, uint8_t velocity)
{
	uint8_t msg[3] = {
	        0x90 | (channel & 0x0F),
	        note & 0x7F,
	        velocity & 0x7F
	    };

    HAL_UART_Transmit(&MIDI_UART_PORT, msg, 3, 10);
}

void MIDI_Play_Spectrum(void) {
	debug_printf("Starting new scale at tick: %lu\n\r", HAL_GetTick());

	// Play a chromatic scale starting on middle C (60)
	for (int channel = 0; channel < 6; channel++) {
		MIDI_NoteOn(channel, 60, 127);
		HAL_Delay(100);

		MIDI_NoteOn(channel, 60, 0);
		HAL_Delay(100);
	}
}
