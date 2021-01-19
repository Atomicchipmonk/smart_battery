

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "debug.h"
#include "pin_selection.h"

#include <SD.h>
//#include <avr/power.h>
#include "RTClib.h"


#include "relays.h"
#include "power_readings.h"
#include "log.h"
#include "time.h"
#include "thermistor.c"
//#include "sleep.h"


#define LOG_BUFFER_SIZE 1024
 
uint8_t counter = 0;
uint8_t system_state = 0;

void setup(void) {
  
  if(debug){
    Serial.begin(9600);
  }
  

  //analogReference(5);
  pinMode(LED_BUILTIN, OUTPUT);

  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);

  initialize_rtc();
  
  
  if (!SD.begin(SD_CHIP_SELECT)) {
    return;
  }


}
 
void loop(void) {

  //im alive
  digitalWrite(LED_BUILTIN, HIGH);

  //get time
  DateTime timeNow = get_time();


  //get data
  float heater_temp_celcius = get_temperature(THERMISTOR_PIN_HEATER);
  float battery_temp_celcius = get_temperature(THERMISTOR_PIN_BATTERY);

  float solar_input_voltage = get_voltage(VOLTAGE_SENSE_SOLAR_PIN);
  float battery_input_voltage = get_voltage(VOLTAGE_SENSE_BATTERY_PIN);
  float battery_percent_charged = translate_charge(battery_input_voltage);
  
  float solar_input_current = get_current(CURRENT_SENSE_SOLAR_ADDR);
  float battery_current = get_current(CURRENT_SENSE_BATTERY_ADDR);

  //get relays
  int8_t heater_relay = get_heater_relay();
  int8_t charge_relay = get_charge_relay();
  int8_t output_relay = get_output_relay();


  //do relay logic
  //Set power mode (charging, operations, low power)
  //Set heater mode (on, off)
  //Set iridium mode (sending, not sending)

  //log data
  int8_t log_rc = 0;
  char log_msg[LOG_BUFFER_SIZE] = "JSON eventually: Temperature ";
  create_influx_json(heater_temp_celcius,
      battery_temp_celcius,
      solar_input_voltage,
      battery_input_voltage,
      battery_percent_charged,
      solar_input_current,
      battery_current,
      heater_relay,
      charge_relay,
      output_relay,
      system_state,
      timeNow,
      log_msg,
      LOG_BUFFER_SIZE);

  log_rc = log_message(log_msg);

  //report logging via LED
  //one blink for each logging method unable to be reached
  for (int8_t i = 0; i < log_rc; i++){
    blink_led();
  }


  //fast rotation if debugging
  if(debug){
    counter++;

    if(counter > 5){
      rotate_sd_file(timeNow);
      counter = 0;
    }
  } 

  //rotate every 24 hours

  //Save power during production
  if(!debug){
    //for usb host timing
    delay(1000);

    //Setup ISR
    //pciSetup(SLEEP_WAKE_PIN);

    //Turn everything off
    //power_off();

  } else {
    //for usb host timing
    delay(1000);
  }
  

  
}