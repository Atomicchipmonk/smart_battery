  
  
#include <stdint.h>

float get_voltage(uint8_t pin){
  return 23.2;
}

float translate_charge(float input_voltage){
  return .85;
}

float get_current(uint8_t pin){
  return .45;
}