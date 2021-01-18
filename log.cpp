//SD card and INFLUXDB logging

#include "debug.h"

#include "pin_selection.h"
#include "Arduino.h"
#include <SPI.h>
#include <SD.h>
#include "RTClib.h"

#include "log.h"

char current_sd_file_live_down[64] = "default.live.txt";
char current_sd_file_stored[64] = "default.stored.txt";



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
      char buffer[],
      uint16_t buffer_size){


 
  int8_t ret = snprintf(buffer, buffer_size, "battery,batt_id=%d heater_on=%d,charge_on=%d,output_on=%d,system_state=%d", 
      BATTERY_ID, \
      heater_relay, \
      charge_relay, \
      output_relay, \
      system_state);

/*strcpy(&buffer[strlen(buffer)], ",heater_temp=");
      dtostrf(heater_temp_celcius, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",bat_temp=");
      dtostrf(battery_temp_celcius, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",solar_v=");
      dtostrf(solar_input_voltage, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",bat_v=");
      dtostrf(battery_input_voltage, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",bat_charged=");
      dtostrf(battery_percent_charged, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",solar_cur=");
      dtostrf(solar_input_current, 3, 3, &buffer[strlen(buffer)]);
      strcpy(&buffer[strlen(buffer)], ",bat_cur=");
      dtostrf(battery_current, 3, 3, &buffer[strlen(buffer)]);
*/
      snprintf(&buffer[strlen(buffer)], buffer_size - strlen(buffer), " %lu", time.unixtime());
      


  if (ret < 0) {
    return EXIT_FAILURE;
  }
  if (ret >= buffer_size) {
      // Result was truncated - resize the buffer and retry.
  }
}


uint8_t log_message(char* log_msg){
  uint8_t rc = 0;

  rc += write_to_serial(log_msg);
  rc += write_to_ethernet(log_msg);
  //rc += write_to_sd_card(log_msg, true);

    // if the file is available, write to it:




  return rc;  
}

uint8_t write_to_ethernet(char* log_msg){
  return 1;
}


uint8_t write_to_serial(char log_msg[]){
  if(Serial){
    Serial.println(log_msg);
    return 0;
  } else {
    return 1;
  }
}

uint8_t write_to_sd_card(char log_msg[], bool has_internet){

  


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
  uint8_t rc = 1;

  //char buf1[20];
  //sprintf(buf1, "%02d:%02d:%02d-%02d/%02d/%02d",  hour(timeNow), minute(timeNow), second(timeNow), day(timeNow), month(timeNow), year(timeNow));
  //Serial.println(timeNow.unixtime());
  //String time = String(timeNow.unixtime(), DEC);

  //showTime(timeNow);

    //open and close previous files so that you know there are no stray open files.
    /*File live_dataFile; 

    live_dataFile = SD.open(current_sd_file_live_down, FILE_READ);  
    if (live_dataFile) {
      live_dataFile.close();
    }

    File stored_dataFile; 
    stored_dataFile = SD.open(current_sd_file_stored, FILE_READ);
    if (stored_dataFile){
      stored_dataFile.close();
    }*/



    snprintf(current_sd_file_live_down, 64, "/%lu.live.txt", timeNow.unixtime());
    snprintf(current_sd_file_stored, 64, "/%lu.stored.txt", timeNow.unixtime());
    if(Serial){
      Serial.println(current_sd_file_live_down);
      Serial.println(current_sd_file_stored);
    }
    

  rc = 0;
  
  return rc;
 }

 void showTime(DateTime now)
{
     Serial.print(now.year(), DEC);
    Serial.print('/');
    Serial.print(now.month(), DEC);
    Serial.print('/');
    Serial.print(now.day(), DEC);
    Serial.print(" ");
    Serial.print(now.hour(), DEC);
    Serial.print(':');
    Serial.print(now.minute(), DEC);
    Serial.print(':');
    Serial.print(now.second(), DEC);
    Serial.println();

    Serial.print(" since midnight 1/1/1970 = ");
    Serial.print(now.unixtime());
    Serial.print("s = ");
    Serial.print(now.unixtime() / 86400L);
    Serial.println("d");
}

