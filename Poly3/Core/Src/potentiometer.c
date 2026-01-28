/*
 * potentiometer.c
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

#include <math.h>
#include <stdint.h>
#include <stdlib.h>

#include "potentiometer.h"
#include "main.h"

#ifdef DEBUG
#include "debug.h"
#endif

#define ADC_MAX_VALUE 4095
#define MIDI_MAX_VALUE 127
#define DEFAULT_DEADZONE 10
#define SMOOTHING_FACTOR 0.25f //0.0-1.0 - lower = more smoothing

static uint16_t get_filtered_value(uint16_t old_value, uint16_t new_value) {
	return (uint16_t)(SMOOTHING_FACTOR * new_value + (1 - SMOOTHING_FACTOR) * old_value);
}

static uint16_t apply_log_curve(uint16_t value)
{
    //logarithmic scaling: output = max * (10^(input/max) - 1) / 9
    float normalized = (float)value / ADC_MAX_VALUE;
    float log_value = (powf(10.0f, normalized) - 1.0f) / 9.0f;
    return (uint16_t)(log_value * ADC_MAX_VALUE);
}

void pot_init(potentiometer_t *pot, ADC_HandleTypeDef *adc_handle, uint32_t channel, int8_t index, pot_taper_t taper) {
	pot->hadc = adc_handle;
	pot->channel = channel;
	pot->index = index;
	pot->taper = taper;
	pot->deadzone = DEFAULT_DEADZONE;

	pot->raw_value = 0;
	pot->midi_value = 0;
	pot->filtered_value = 0;
	pot->value_changed = false;


#ifdef DEBUG
    const char* adc = (adc_handle->Instance == ADC1) ? "ADC1" :
                      (adc_handle->Instance == ADC2) ? "ADC2" :
                      (adc_handle->Instance == ADC3) ? "ADC3" : "Unknown";

    const char* taper_str = (taper == POT_LINEAR) ? "LINEAR" : "LOG";

    debug_printf("Potentiometer %d: %s CH%lu [%s]\n\r", index, adc, channel, taper_str);
#endif
}


// to reduce jitter, add a 100nF (0.1uF) capacitor between wiper and gnd
// or add a first-order LPF (https://electronics.stackexchange.com/questions/605027/potentiometer-adc-noise-varies-based-on-position-of-wiper)
// for a B100K pot to achieve a cutoff of 1.6kHz it needs a 1kΩ and 100nF LPF
bool pot_update(potentiometer_t *pot) {
	ADC_ChannelConfTypeDef sConfig = {0};
	sConfig.Channel = pot->channel;
	sConfig.Rank = 1;
	sConfig.SamplingTime = ADC_SAMPLETIME_84CYCLES;

	bool flag = false;

	if (HAL_ADC_ConfigChannel(pot->hadc, &sConfig) != HAL_OK) {
		return false;
	}

	HAL_ADC_Start(pot->hadc);

	if (HAL_ADC_PollForConversion(pot->hadc, 10) == HAL_OK) {
		uint16_t new_raw = HAL_ADC_GetValue(pot->hadc);

		//filter
		if (pot->raw_value == 0) {
			pot->filtered_value = new_raw;
		}
		else {
			pot->filtered_value = get_filtered_value(pot->filtered_value, new_raw);
		}

		pot->raw_value = new_raw;

		//apply log if applicable
		uint16_t processed_value = pot->filtered_value;
		if (pot->taper == POT_LOG) {
			processed_value = apply_log_curve(processed_value);
		}

		//convert to MIDI (0-127) from (0-4095)
		uint8_t new_midi = (uint8_t)((processed_value * MIDI_MAX_VALUE) / ADC_MAX_VALUE);

		//check for deadzone
		if (abs(pot->midi_value - new_midi) > (pot->deadzone / 32)) {
			pot->midi_value = new_midi;
			flag = true;

#ifdef DEBUG
			debug_printf("Pot %d: Raw=%d, MIDI=%d", pot->index, pot->raw_value, pot->midi_value);
#endif
		}
	}

	HAL_ADC_Stop(pot->hadc);
	pot->value_changed = flag;
	return flag;
}

uint16_t pot_get_raw_value(potentiometer_t *pot) {
	return pot->raw_value;
}

uint8_t pot_get_MIDI_value(potentiometer_t *pot) {
	return pot->midi_value;
}

float pot_get_normalized(potentiometer_t *pot) {
	return (float)pot->filtered_value / ADC_MAX_VALUE;
}

uint16_t pot_get_range(potentiometer_t *pot, uint16_t min, uint16_t max) {
	float normalized = pot_get_normalized(pot);
	return min + (uint16_t)(normalized * (max - min));
}

void pot_set_deadzone(potentiometer_t *pot, uint16_t deadzone) {
	pot->deadzone = deadzone;
}

