/*
 * midi.h
 *
 *  Created on: Oct 27, 2025
 *      Author: bojos
 */

#ifndef INC_MIDI_H_
#define INC_MIDI_H_


#include "main.h"

/* choose a Hardware UART port to use. */
#define MIDI_UART_PORT huart2
extern UART_HandleTypeDef MIDI_UART_PORT;

void MIDI_Init(void);
void MIDI_NoteOn(uint8_t channel, uint8_t note, uint8_t velocity);
void MIDI_NoteOff(uint8_t channel, uint8_t note);
void MIDI_Test(void);

#endif /* INC_MIDI_H_ */
