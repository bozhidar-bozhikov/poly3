/*
 * midi.h
 *
 *  Created on: Oct 27, 2025
 *      Author: bojos
 */
#ifndef INC_MIDI_H_
#define INC_MIDI_H_

#include "main.h"
#include "stm32f4xx_hal.h"

// choose a port for MIDI
extern UART_HandleTypeDef huart3;
#define MIDI_UART_PORT huart3

#define MIDI_NOTE_ON  0x90

void MIDI_Play_Spectrum(void);
void MIDI_NoteOn(uint8_t channel, uint8_t note, uint8_t velocity);

#endif /* INC_MIDI_H_ */
