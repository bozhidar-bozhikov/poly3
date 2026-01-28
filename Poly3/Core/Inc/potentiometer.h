/*
 * potentiometer.h
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

#ifndef INC_POTENTIOMETER_H_
#define INC_POTENTIOMETER_H_

#include <stdint.h>
#include <stdbool.h>

#ifdef DEBUG
#include "debug.h"
#endif

typedef enum {
	POT_LOG, // A taper
	POT_LINEAR // B taper
} pot_taper_t;

typedef struct {
	ADC_HandleTypeDef *hadc;
	uint32_t channel;
	int8_t index;
	pot_taper_t taper;

	uint16_t raw_value;
	uint16_t filtered_value;
	uint8_t midi_value; //might remove

	uint16_t deadzone; //noise-filtering to prevent small change detection
	bool value_changed;
} potentiometer_t;

void pot_init(potentiometer_t *pot, ADC_HandleTypeDef *hadc, uint32_t channel, int8_t index, pot_taper_t taper);

//read and update pot value, return true if value has changed
bool pot_update(potentiometer_t *pot);

uint16_t pot_get_raw_value(potentiometer_t *pot); //0 - 4095
uint8_t pot_get_MIDI_value(potentiometer_t *pot); //0 - 127
float pot_get_normalized(potentiometer_t *pot); //0.0 - 1.0
uint16_t pot_get_range(potentiometer_t *pot, uint16_t min, uint16_t max);

void pot_set_deadzone(potentiometer_t *pot, uint16_t deadzone);

#endif /* INC_POTENTIOMETER_H_ */
