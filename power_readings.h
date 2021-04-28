#ifndef POWERC_H
#define POWERC_H


#include <stdint.h>

void setup_ltc4151();
void poll_power();
void poll_solar();
float get_power_voltage();
float get_solar_voltage();
float get_power_current();
float get_solar_current();
float translate_charge(float input_voltage);

#endif
