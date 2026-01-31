/*
 * encoder.h
 *
 *  Created on: Jan 28, 2026
 *      Author: bojos
 */

/*
 *
 * IMPORTANT: ENCODER PINS A, B, SW NEED TO BE PUT IN GPIO PULL-UP MODE (otherwise the encoder will read floating garbage values)
 */

#ifndef INC_ENCODER_H_
#define INC_ENCODER_H_

#include <stdint.h>
#include <stdbool.h>

#define BUTTON_DEBOUNCE_MS 50

typedef enum {
    ENCODER_DIR_CW = 1,
    ENCODER_DIR_CCW = -1,
    ENCODER_DIR_NONE = 0
} encoder_direction_t;


typedef struct {
	int8_t index;
    int32_t position;
    encoder_direction_t last_dir;
    uint8_t state;
    bool button_pressed;
    bool button_changed;
    uint32_t last_button_time;

    unsigned long port_A;
    unsigned long pin_A;
    unsigned long port_B;
    unsigned long pin_B;
    unsigned long port_SW;
    unsigned long pin_SW;
} encoder_t;


void encoder_init(encoder_t* enc, int32_t index);

int8_t encoder_update(encoder_t* enc);

void encoder_update_button(encoder_t* enc);

int32_t encoder_get_position(encoder_t* enc);

void encoder_set_position(encoder_t* enc, int32_t pos);

bool encoder_button_pressed(encoder_t* enc);

#endif /* INC_ENCODER_H_ */
