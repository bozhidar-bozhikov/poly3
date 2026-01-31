/*
 * encoder.c
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

#include "encoder.h"
#include "main.h"
#include <stdbool.h>

#include "debug.h"

#define BUTTON_DEBOUNCE_MS 50

void encoder_init(encoder_t *enc, int32_t index) {

#ifdef DEBUG
	debug_printf("Encoder %d created.\n\r", enc->index);
#endif

	enc->index = index;
	enc->position = 0;
	enc->last_dir = ENCODER_DIR_NONE;
	enc->state = 0;
	enc->button_pressed = false;
	enc->button_changed = false;
	enc->last_button_time = 0;

	switch (index) {
	case 1: {
		enc->port_A = ENC_1A_GPIO_Port;
		enc->pin_A = ENC_1A_Pin;
		enc->port_B = ENC_1B_GPIO_Port;
		enc->pin_B = ENC_1B_Pin;
		enc->port_SW = ENC_1SW_GPIO_Port;
		enc->pin_SW = ENC_1SW_Pin;
		break;
	}

	case 2: {
		enc->port_A = ENC_2A_GPIO_Port;
		enc->pin_A = ENC_2A_Pin;
		enc->port_B = ENC_2B_GPIO_Port;
		enc->pin_B = ENC_2B_Pin;
		enc->port_SW = ENC_2SW_GPIO_Port;
		enc->pin_SW = ENC_2SW_Pin;
		break;
	}

	default:
		debug_printf("ERROR There is no defined pinout for encoder with index %d.", index);
	}
}

// state machine for quadrature decoding
// returns: 1 = CW, -1 = CCW, 0 = no change/invalid
int8_t encoder_update(encoder_t *enc) {
	bool pin_a = HAL_GPIO_ReadPin(enc->port_A, enc->pin_A);
	bool pin_b = HAL_GPIO_ReadPin(enc->port_B, enc->pin_B);

	uint8_t current = (pin_b << 1) | pin_a;
	uint8_t combined = (enc->state << 2) | current;
	enc->state = current;

	// lookup table for state transitions
	// valid CW sequence: 00 -> 01 -> 11 -> 10 -> 00
	// valid CCW sequence: 00 -> 10 -> 11 -> 01 -> 00

	int8_t result = 0;

	switch (combined) {
	// clockwise transitions
	case 0b1000: // 10 -> 00
		result = 1;
		enc->last_dir = ENCODER_DIR_CW;
		enc->position++;
#ifdef DEBUG
		debug_printf("Encoder %d: %ld (CW)\n\r", enc->index, enc->position);
#endif
		break;

		// counterclockwise transitions
	case 0b0100: // 01 -> 00
		result = -1;
		enc->last_dir = ENCODER_DIR_CCW;
		enc->position--;
#ifdef DEBUG
		debug_printf("Encoder %d: %ld (CCW)\n\r", enc->index, enc->position);
#endif
		break;

	default:
		result = 0;
		break;
	}

	return result;
}

//evaluates button and changes state accordingly
void encoder_update_button(encoder_t *enc) {
	bool button_pin = HAL_GPIO_ReadPin(enc->port_SW, enc->pin_SW);
	uint32_t now = HAL_GetTick();

	//for debouncing
	if (now - enc->last_button_time > BUTTON_DEBOUNCE_MS) {
		bool new_state = !button_pin; // assuming active low

		if (new_state != enc->button_pressed) {
			enc->button_pressed = new_state;
			enc->last_button_time = now;

			if (new_state) { //button was just pressed
#ifdef DEBUG
				debug_printf("Encoder %d pressed! Position: %ld\n\r",
						enc->index, encoder_get_position(enc));
#endif
				enc->button_changed = true;
			}
		}
	}
}

int32_t encoder_get_position(encoder_t *enc) {
	return enc->position;
}

void encoder_set_position(encoder_t *enc, int32_t pos) {
	enc->position = pos;
}

bool encoder_button_pressed(encoder_t *enc) {
	if (enc->button_changed) {
		enc->button_changed = false;

		return true;
	}
	return false;
}
