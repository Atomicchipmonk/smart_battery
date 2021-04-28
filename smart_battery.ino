

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "RTClib.h"
#include <SD.h>
#include <Ethernet.h>
#include <Wire.h>

#include "debug.h"
#include "pin_selection.h"
#include "thermistor.c"
#include "log.h"
#include "relays.h"
#include "power_readings.h"
#include "time.h"


#define LOG_BUFFER_SIZE 1024


uint8_t counter = 0;
uint8_t system_state = 0;
DateTime last_rotation;


 
void setup(void) {
  Serial.begin(9/600);
  Wire.begin();
  
  setup_ltc4151();
  //If in debug mode, wait for serial to come up, otherwise just roll with it if you got it
  if (debug){
    while (!Serial){
      delay(100);
    }
  } else {
    Serial.end();
  }
 


  analogReference(AR_DEFAULT);

  pinMode(BLINK_LED, OUTPUT);
  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);


  //TODO currently if the rtc is not found it halts
  initialize_rtc();
  last_rotation = get_time();


  if (!SD.begin(SD_CHIP_SELECT)) {
    if (Serial) Serial.println("ERR: SD Card not initialized");
  } else {
    SD.mkdir("/stored");
    SD.mkdir("/live");
    SD.mkdir("/stor_db");
    SD.mkdir("/live_db");

    //Go read configuration from files, or write those files if they dont exist
    //Battery Id
    //Server Endpoint
    //TLS Key
  }

  
  rotate_sd_file(last_rotation);


  Ethernet.init(ETHERNET_CHIP_SELECT);
  initialize_ethernet();

}
 
void loop(void) {

  DateTime loop_start_time = get_time();

  //im alive
  digitalWrite(BLINK_LED, HIGH);

  //Set next timer (always do this first)

  //get data
  float heater_temp_celcius = get_temperature(THERMISTOR_PIN_HEATER);
  float battery_temp_celcius = get_temperature(THERMISTOR_PIN_BATTERY);

  poll_solar();
  poll_power();
  float solar_input_voltage = get_solar_voltage();
  float battery_input_voltage = get_power_voltage();
  float battery_percent_charged = translate_charge(battery_input_voltage);
  
  float solar_input_current = get_solar_current();
  float battery_current = get_power_current();

  //get relays
  int8_t heater_relay = get_heater_relay();
  int8_t charge_relay = get_charge_relay();
  int8_t output_relay = get_output_relay();



  int8_t log_rc = 0;
  char log_msg[LOG_BUFFER_SIZE] = "DEFAULT MESSAGE";

  //figure out how to deal with live (chicken/egg problem)
  
  create_influx_json(
      BATTERY_ID,
      true,
      heater_temp_celcius,
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
      loop_start_time,
      log_msg,
      LOG_BUFFER_SIZE);

  int32_t rc = log_message(log_msg);

/* Uncomment if you want to hear/see some latching action

    set_latching_relay(CHARGE_RELAY_ON_PIN);
    delay(500);
    set_latching_relay(CHARGE_RELAY_OFF_PIN);
    delay(100);
    set_latching_relay(OUTPUT_RELAY_ON_PIN);
    delay(500);
    set_latching_relay(OUTPUT_RELAY_OFF_PIN);
    delay(100);
    set_relay_on(HEATER_RELAY_PIN);
    delay(500);
    set_relay_off(HEATER_RELAY_PIN);
*/

  for (int32_t i = 0; i < rc; i++){
    blink_led();
  }


  time_t ntp_time;
  //fast rotation if debugging
  if(debug){
    if(loop_start_time.minute() != last_rotation.minute()){
      rotate_sd_file(loop_start_time);
      memcpy(&last_rotation, &loop_start_time, sizeof(DateTime));

      ntp_time = getNtpTime();
      if (ntp_time != 0){
        set_time(DateTime(ntp_time));
      }
      
    }    
  } else {
    if(loop_start_time.day() != last_rotation.day()){
      rotate_sd_file(loop_start_time);
      memcpy(&last_rotation, &loop_start_time, sizeof(DateTime));

      ntp_time = getNtpTime();
      if (ntp_time != 0){
        set_time(DateTime(ntp_time));
      }
    }
  }

  digitalWrite(BLINK_LED, LOW);


  //Turn everything off

  delay(5000);
}
