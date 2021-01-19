//SD card and INFLUXDB logging

#include "debug.h"

#include "Arduino.h"
#include <SPI.h>
#include <SD.h>
#include "RTClib.h"

#include "log.h"


char current_sd_file_live_down[64] = "/live/defaultl.txt";
char current_sd_file_stored[64] = "/stored/defaults.txt";

int8_t create_influx_json(float heater_temp_celcius,
      float battery_temp_celcius,
      float solar_input_voltage,
      float battery_input_voltage,
      float battery_percent_charged,
      float solar_input_current,
      float battery_current,
      int8_t heater_relay,
      int8_t charge_relay,
      int8_t output_relay,
      int8_t system_state,
      DateTime time, 
      char* buffer,
      uint16_t buffer_size){


        //dtostrf(f, 2, 2, &str[strlen(str)]);

  //this doesnt work, requires additional compiler linking for floats in printf. If this did work though, it would be great!
  int8_t ret = snprintf(buffer, buffer_size, "INFLUX JSON: %f %f %f %f %f %f %d %d %d %d", 
      battery_temp_celcius, \
      solar_input_voltage, \
      battery_input_voltage, \
      battery_percent_charged, \
      solar_input_current, \
      battery_current, \
      heater_relay, \
      charge_relay, \
      output_relay, \
      system_state);


  if (ret < 0) {
    return EXIT_FAILURE;
  }
  if (ret >= buffer_size) {
      // Result was truncated - resize the buffer and retry.
  }

  return ret;
}


uint32_t log_message(String log_msg){
  int32_t rc = 0;

  rc += write_to_serial(log_msg);
  rc += write_to_ethernet(log_msg);
  rc += write_to_sd_card(log_msg, true);

  return rc;  
}

uint32_t write_to_ethernet(String log_msg){
  return 1;
}


uint32_t write_to_serial(String log_msg){
    if(Serial){
      Serial.println(log_msg);
      return 0;
    } else {
      return 1;
    }
}

uint32_t write_to_sd_card(String log_msg, bool has_internet){

  File dataFile;
   if(has_internet){
     dataFile = SD.open(current_sd_file_live_down, FILE_WRITE);
   } else {
     dataFile = SD.open(current_sd_file_stored, FILE_WRITE);
   }

  // if the file is available, write to it:
  if (dataFile) {
    dataFile.println(log_msg);
    dataFile.close();
    return 0;
  }
  // if the file isn't open, pop up an error:
  else {
    if(Serial){
      Serial.println("unable to write to sd card");
    }
    return 1;
  }
 }

uint8_t rotate_sd_file(DateTime timeNow){
  uint8_t rc = 0;

  if(debug){
    snprintf(current_sd_file_live_down, 64, "/live_db/db%02d%02d%02d.txt", timeNow.hour(), timeNow.minute(), timeNow.second());
    snprintf(current_sd_file_stored, 64, "/stored_db/db%02d%02d%02d.txt", timeNow.hour(), timeNow.minute(), timeNow.second());
  } else {
    snprintf(current_sd_file_live_down, 64, "/live/%04d%02d%02d.txt", timeNow.year(), timeNow.month(), timeNow.day());
    snprintf(current_sd_file_stored, 64, "/stored/%04d%02d%02d.txt", timeNow.year(), timeNow.month(), timeNow.day());
  }

  if(Serial){
    Serial.println(current_sd_file_live_down);
    Serial.println(current_sd_file_stored);
  }
  
  return rc;
 }
