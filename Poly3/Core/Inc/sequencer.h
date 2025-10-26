/*
 * sequencer.h
 *
 *  Created on: Oct 21, 2025
 *      Author: bojos
 */
#include <stdint.h>
#include "stm32f4xx_hal.h"

#ifndef INC_SEQUENCER_H_
#define INC_SEQUENCER_H_

/* choose a hardware UART port to use. */
#define MIDI_OUT_UART_PORT huart2
extern UART_HandleTypeDef MIDI_OUT_UART_PORT;
//extern UART_HandleTypeDef MIDI_IN_UART_PORT; //TODO: add external clock
//extern UART_HandleTypeDef USB_IN_UART_PORT;

/* choose a timer to use with the sequencer */
#define SEQUENCER_TIM htim2;
extern TIM_HandleTypeDef SEQUENCER_TIM;

//QueueHandle_t midiOutQueue;
//SemaphoreHandle_t midiTxSemaphore;

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

typedef enum {
	PPS_1 = 1,
	PPQ_2 = 2,
	PPQ_24 = 24,
	PPQ_48 = 48
} PPQN_t;

typedef struct {
    ClockSource_t source;
    uint32_t bpm;              // For internal clock
    uint32_t tickCounter;      // Master tick counter
    PPQN_t ppqn;     // Divider for MIDI clock (24 PPQN -> 96 PPQN)
    volatile uint8_t running;  // Clock running flag
} ClockSystem_t;

extern ClockSystem_t g_clock;

typedef struct {
	uint8_t note;
	uint8_t velocity;
	uint8_t channel;
} SequencerVertex_t;

typedef struct {
	int32_t n;
	SequencerVertex_t *vertices[];

} SequencerShape_t;

typedef struct {
	SequencerEngine_t engine;
	SequencerShape_t *shapes[4];
} SequencerPattern_t;

extern SequencerPattern_t g_sequencer_pattern;

#define MIDI_NOTE_OFF       0x80
#define MIDI_NOTE_ON        0x90
#define MIDI_TIMING_CLOCK   0xF8
#define MIDI_START          0xFA
#define MIDI_CONTINUE       0xFB
#define MIDI_STOP           0xFC

void Sequencer_Init();
const SequencerPattern_t getDefaultSequencer();

void addShape(int32_t n, int32_t index);
void removeShape(int32_t index);


#endif /* INC_SEQUENCER_H_ */
