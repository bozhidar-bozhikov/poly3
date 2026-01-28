/*
 * sequencer.c
 *
 *  Created on: Oct 21, 2025
 *      Author: bojos
 */

#include <stdio.h>
#include <stdlib.h>
#include <sequencer.h>

SequencerPattern_t g_sequencer_pattern;

ClockSystem_t g_clock = {
    .source = CLOCK_SOURCE_INTERNAL,
    .bpm = 120,
    .tickCounter = 0,
    .ppqn = PPQ_24,
    .running = 0
};

void Sequencer_Init() {
	g_sequencer_pattern = getDefaultSequencer();

	addShape(3, 0); //TODO: remove
	addShape(4, 1);
}

const SequencerPattern_t getDefaultSequencer() {
	SequencerPattern_t p = {
		.engine = SEQUENCER_POLYRHYTHM,
		.shapes = {}
	};
	return p;
}

/**
 * @brief A private method that allocates memory and returns a pointer to the allocated new shape
 * @param n -> Number of sides.
 * @return Pointer to the new shape, allocated in memory.
 */
static SequencerShape_t* createShape(int32_t n) {
    if (n <= 0) return NULL;

    size_t total_size = sizeof(SequencerShape_t) +
                       n * sizeof(SequencerVertex_t*) +
                       n * sizeof(SequencerVertex_t);

    SequencerShape_t *shape = malloc(total_size);
    if (!shape) return NULL;

    shape->n = n;
    SequencerVertex_t *vertices = (SequencerVertex_t*)(shape->vertices + n);
    for (int32_t i = 0; i < n; i++) {
        shape->vertices[i] = &vertices[i];
        // Initialize vertex data here
    }

    return shape;
}

/**
 * @brief A private method that frees allocated memory of a shape.
 *  * @param Pointer to the shape to be destroyed.
 * @return none
 **/
static void destroyShape(SequencerShape_t *shape) {
    free(shape);
}

/*
 * @brief Create new shape and add it to the pattern
 * @param n -> Number of sides.
 * @param index -> Index of shape in pattern shape array [0..3]
 * @return none
 */
void addShape(int32_t n, int32_t index) {
	if (g_sequencer_pattern.shapes[index] != NULL)
		removeShape(index);

	g_sequencer_pattern.shapes[index] = createShape(n);
}

/*
 * @brief Removes shape from pattern and frees memory.
 * @param index -> Index of shape in pattern shape array [0..3]
 */
void removeShape(int32_t index) {
	destroyShape(g_sequencer_pattern.shapes[index]);
	g_sequencer_pattern.shapes[index] = NULL;
}
