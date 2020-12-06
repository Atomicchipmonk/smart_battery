//SD card and INFLUXDB logging

#include "debug.h"

#include "Arduino.h"
#include <SPI.h>
#include <SD.h>

#include "log.h"

String create_influx_json(float heater_temp){
  return "1234";
}


uint32_t log_message(String log_msg){
  int32_t rc = 0;

  rc += write_to_serial(log_msg);
  rc += write_to_ethernet(log_msg);
  rc += write_to_sd_card(log_msg);

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

uint32_t write_to_sd_card(String log_msg){

  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  File dataFile = SD.open("datalog.txt", FILE_WRITE);

  // if the file is available, write to it:
  if (dataFile) {
    dataFile.println(log_msg);
    dataFile.close();
    return 0;
  }
  // if the file isn't open, pop up an error:
  else {
    return 1;
  }

 }