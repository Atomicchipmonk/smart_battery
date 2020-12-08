

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "debug.h"
#include "pin_selection.h"

#include <SD.h>
#include <avr/power.h>
#include "RTClib.h"

#include "log.h"
#include "time.h"
#include "thermistor.c"
#include "sleep.h"


        
RTC_PCF8523 rtc;
 
void setup(void) {
  
  if(debug){
    Serial.begin(9600);
  }
  

  analogReference(5);
  pinMode(LED_BUILTIN, OUTPUT);

  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  //pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);

  initialize_rtc(rtc);
  
  
  if (!SD.begin(SD_CHIP_SELECT)) {
    return 1;
  }


  

}
uint32_t counter = 0;
 
void loop(void) {

  //im alive
  digitalWrite(LED_BUILTIN, HIGH);
  //pinMode(SLEEP_WAKE_PIN, OUTPUT);
  

  //get time
  DateTime timeNow = rtc.now();


  //get data
  float celcius_average = get_temperature(THERMISTOR_PIN_HEATER);
  String log_msg = "JSON eventually: Temperature ";
  log_msg += String(celcius_average);
  log_msg += " *C";


  //log data
  int32_t rc = log_message(log_msg);

  //report logging
  for (int32_t i = 0; i < rc; i++){
    digitalWrite(LED_BUILTIN, LOW);
    delay(100);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(100);
  }


  counter++;

  if(counter > 5){
    rotate_sd_file(timeNow);
    counter = 0;
  }


  //Save power during production
  if(!debug){
    //Setup ISR
    pciSetup(SLEEP_WAKE_PIN);
    //Turn everything off
    power_off();
  }
  

  //for timing
  delay(1000);
}