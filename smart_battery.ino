

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "debug.h"
#include "pin_selection.h"

#include "RTClib.h"

#include <SD.h>
#include <SPI.h>
#include "relays.h"
#include "power_readings.h"
#include "log.h"
#include "time.h"
#include "thermistor.c"
//#include "sleep.h"


#define LOG_BUFFER_SIZE 1024
 
uint8_t counter = 0;
uint8_t system_state = 0;

File myFile;
File dataFile;

void setup(void) {
  
  if(debug){
    Serial.begin(9600);
  }
  
  pinMode(BLINK_LED, OUTPUT);

  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);

  initialize_rtc();
  /*
  
  if (initialize_sd_card(timeNow) != 0){
    Serial.println("Card failed, or not present");
    while(1);
  }*/

/*
  if (!SD.begin(SD_CHIP_SELECT)) {
    while(1);
    // don't do anything more:
  }
  DateTime timeNow = get_time();
  rotate_sd_file(timeNow);


*/
}
 
void loop(void) {

  //im alive
  digitalWrite(LED_BUILTIN, HIGH);

  //get time
  //DateTime timeNow = get_time();


  //get data
  float heater_temp_celcius = get_temperature(THERMISTOR_PIN_HEATER);
  float battery_temp_celcius = get_temperature(THERMISTOR_PIN_BATTERY);

  float solar_input_voltage = get_voltage(VOLTAGE_SENSE_SOLAR_ADDR);
  float battery_input_voltage = get_voltage(VOLTAGE_SENSE_BATTERY_ADDR);
  float battery_percent_charged = translate_charge(battery_input_voltage);
  
  float solar_input_current = get_current(CURRENT_SENSE_SOLAR_ADDR);
  float battery_current = get_current(CURRENT_SENSE_BATTERY_ADDR);

  //get relay state
  int8_t heater_relay = get_heater_relay();
  int8_t charge_relay = get_charge_relay();
  int8_t output_relay = get_output_relay();


  

  //do relay logic
  //Set power mode (charging, operations, low power)
  //Set heater mode (on, off)
  //Set iridium mode (sending, not sending)

  if (counter % 2) {
    set_latching_relay(CHARGE_RELAY_ON_PIN);
    set_latching_relay(OUTPUT_RELAY_ON_PIN);
    set_relay_on(HEATER_RELAY_PIN);
  } else {
    set_latching_relay(CHARGE_RELAY_OFF_PIN);
    set_latching_relay(OUTPUT_RELAY_OFF_PIN);
    set_relay_off(HEATER_RELAY_PIN);
  }



  //log data
  int8_t log_rc = 0;
  char log_msg[LOG_BUFFER_SIZE] = "default";


  //log_rc = log_message(log_msg);





  //report logging via LED
  //one blink for each logging method unable to be reached
  for (int8_t i = 0; i < log_rc; i++){
    blink_led();
  }


  //fast rotation if debugging
  if(debug){
    counter++;

    if(counter > 5){
      //rotate_sd_file(timeNow);
      counter = 0;
    }
  } 

  //rotate every 24 hours

  //Save power during production
  if(!debug){
    //for usb host timing
    delay(1000);

    //Setup ISR
    //Only for 32u4
    //pciSetup(SLEEP_WAKE_PIN);

    //Turn everything off
    //power_off();

  } else {
    //for usb host timing
    delay(1000);
  }
  

  
}