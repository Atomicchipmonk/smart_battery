
#ifndef RELAYSC_H
#define RELAYSC_H

#include <stdint.h>


int8_t get_heater_relay();
int8_t get_charge_relay();
int8_t get_output_relay();
int8_t get_relay_pin(uint8_t relay_pin);
int8_t set_latching_relay(uint8_t relay_pin);
int8_t set_relay_on(uint8_t relay_pin);
int8_t set_relay_off(uint8_t relay_pin);
int8_t blink_led();


#endif