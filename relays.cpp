
#include <stdint.h>
#include "Arduino.h"
#include "debug.h"
#include "pin_selection.h"


int8_t RELAY_heater_relay = LOW;
int8_t RELAY_charge_relay = LOW;
int8_t RELAY_output_relay = LOW;



int8_t get_heater_relay(){
  return RELAY_heater_relay;
}

int8_t get_charge_relay(){
  return RELAY_charge_relay;
}

int8_t get_output_relay(){
  return RELAY_output_relay;
}

//Set Latching Relay
int8_t set_latching_relay(uint8_t relay_pin){
  digitalWrite(relay_pin, HIGH);
  delay(15);
  digitalWrite(relay_pin, LOW);

  switch (relay_pin){
    case CHARGE_RELAY_ON_PIN:
      RELAY_charge_relay = HIGH;
      break;
    case CHARGE_RELAY_OFF_PIN:
      RELAY_charge_relay = LOW;
      break;
    case OUTPUT_RELAY_ON_PIN:
      RELAY_output_relay = HIGH;
      break;
    case OUTPUT_RELAY_OFF_PIN:
      RELAY_output_relay = LOW;
      break;
    default:
      return 1;
  }
  
  return 0;
}

//set non-latching relay on
int8_t set_relay_on(uint8_t relay_pin){    
  digitalWrite(relay_pin, HIGH);
  switch (relay_pin){
    case HEATER_RELAY_PIN:
      RELAY_heater_relay = HIGH;
      break;
    default:
      return 1;    
  }

  return 0;
}

//set non-latching relay off
int8_t set_relay_off(uint8_t relay_pin){
  digitalWrite(relay_pin, LOW);
  switch (relay_pin){
    case HEATER_RELAY_PIN:
      RELAY_heater_relay = LOW;
      break;
    default:
      return 1;    
  }

  return 0;
}

//toggle blink led
int8_t blink_led(){
  digitalWrite(BLINK_LED, !digitalRead(BLINK_LED));
  delay(100);
  digitalWrite(BLINK_LED, !digitalRead(BLINK_LED));
  delay(100);
  return 0;
}