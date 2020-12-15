#ifndef POWERC_H
#define POWERC_H


#include <stdint.h>

float get_voltage(uint8_t pin);
float translate_charge(float input_voltage);
float get_current(uint8_t pin);

#endif