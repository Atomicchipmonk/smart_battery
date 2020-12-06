
#include <stdint.h>
#include "Arduino.h"
#include "debug.h"

//Set Latching Relay
int32_t set_latching_relay(int32_t relay_pin){
  digitalWrite(relay_pin, HIGH);
  delay(15);
  digitalWrite(relay_pin, LOW);
}

int32_t set_relay_on(int32_t relay_pin){    
  digitalWrite(relay_pin, HIGH);
}

int32_t set_relay_off(int32_t relay_pin){
    digitalWrite(relay_pin, LOW);
}