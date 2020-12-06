

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "debug.h"
#include "pin_selection.h"
#include "thermistor.c"
#include <SD.h>
#include "log.h"

        

 
void setup(void) {
  Serial.begin(9600);
  analogReference(5);
  pinMode(LED_BUILTIN, OUTPUT);


  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);


  if (!SD.begin(SD_CHIP_SELECT)) {
    return 1;
  }

}
 
void loop(void) {

  //im alive
  digitalWrite(LED_BUILTIN, HIGH);

  //Set next timer (always do this first)

  float celcius_average = get_temperature(THERMISTOR_PIN_HEATER);
  String log_msg = "JSON eventually: Temperature ";
  log_msg += String(celcius_average);
  log_msg += " *C";

  int32_t rc = log_message(log_msg);

    digitalWrite(CHARGE_RELAY_ON_PIN, HIGH);
    delay(15);
    digitalWrite(CHARGE_RELAY_ON_PIN, LOW);
  
  for (int32_t i = 0; i < rc; i++){
    digitalWrite(LED_BUILTIN, LOW);
    delay(100);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(100);
  }

  digitalWrite(LED_BUILTIN, LOW);


  //just some general turning on and off relays
  digitalWrite(CHARGE_RELAY_OFF_PIN, HIGH);
  delay(15);
  digitalWrite(CHARGE_RELAY_OFF_PIN, LOW);

  digitalWrite(OUTPUT_RELAY_ON_PIN, HIGH);
    delay(15);
    digitalWrite(OUTPUT_RELAY_ON_PIN, LOW);

  delay(1000);

  digitalWrite(OUTPUT_RELAY_OFF_PIN, HIGH);
  delay(15);
  digitalWrite(OUTPUT_RELAY_OFF_PIN, LOW);


  //Turn everything off

  delay(1000);
}