/*
 * sequencer.h
 *
 *  Created on: Oct 21, 2025
 *      Author: bojos
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#ifndef INC_SEQUENCER_H_
#define INC_SEQUENCER_H_

#define SEQUENCER_UART_PORT huart2

typedef enum {
	SEQUENCER_POLYRHYTHM,
	SEQUENCER_POLYMETER,
	SEQUENCER_POLYTEMPO
} SequencerEngine_t;

typedef enum {
	CLOCK_SOURCE_INTERNAL,
	CLOCK_SOURCE_MIDI,
	CLOCK_SOURCE_USB,
	CLOCK_SOURCE_TRIG
} ClockSource_t;

#define PPQN 96 //MIDI clock is 24 PPQN, scale by 4

typedef struct {
    ClockSource_t source;
    uint32_t bpm;              // For internal clock
    uint32_t tickCounter;      // Master tick counter
    uint32_t midiClockDiv;     // Divider for MIDI clock (24 PPQN -> 96 PPQN)
    volatile uint8_t running;  // Clock running flag
} ClockSystem_t;

ClockSystem_t g_clock = {
    .source = CLOCK_SOURCE_INTERNAL,
    .bpm = 120,
    .tickCounter = 0,
    .midiClockDiv = 0,
    .running = 0
};

typedef struct {
	uint8_t note;
	uint8_t velocity;
	uint8_t channel;
} SequencerVertex_t;

typedef struct {
	SequencerVertex_t *vertecies;

} SequencerShape_t;

typedef struct {
	SequencerShape_t shapes[4];
} SequencerPattern_t;


#define MIDI_NOTE_OFF       0x80
#define MIDI_NOTE_ON        0x90
#define MIDI_TIMING_CLOCK   0xF8
#define MIDI_START          0xFA
#define MIDI_CONTINUE       0xFB
#define MIDI_STOP           0xFC

#endif /* INC_SEQUENCER_H_ */
