//SD card and INFLUXDB logging

#include "debug.h"

#include "Arduino.h"
#include <SPI.h>
#include <SD.h>
#include "RTClib.h"

#include "log.h"

String create_influx_json(float heater_temp){
  return "1234";
}


uint8_t log_message(String log_msg){
  uint8_t rc = 0;

  rc += write_to_serial(log_msg);
  rc += write_to_ethernet(log_msg);
  rc += write_to_sd_card(log_msg, true);

  return rc;  
}

uint8_t write_to_ethernet(String log_msg){
  return 1;
}


uint8_t write_to_serial(String log_msg){
    if(Serial){
      Serial.println(log_msg);
      return 0;
    } else {
      return 1;
    }
}

uint8_t write_to_sd_card(String log_msg, bool has_internet){

  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  File dataFile; 

  if(has_internet){
    dataFile = SD.open("live_down/datalog.txt", FILE_WRITE);  
  } else {
    dataFile = SD.open("stored/datalog.txt", FILE_WRITE);
  }

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

 uint8_t rotate_sd_file(DateTime timeNow){
  uint8_t rc = 1;

  //char buf1[20];
  //sprintf(buf1, "%02d:%02d:%02d-%02d/%02d/%02d",  hour(timeNow), minute(timeNow), second(timeNow), day(timeNow), month(timeNow), year(timeNow));
  Serial.println(timeNow.unixtime());

  showTime(timeNow);

  if (SD.exists("live_down/datalog.txt")) {
    //SD.copy("live_down/datalog.txt", "live_down/rotated.txt");
    rc = 0;
  } 

  if (SD.exists("stored/datalog.txt")) {
    //SD.copy("stored/datalog.txt", "stored/rotated.txt");
    rc = 0;
  }

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

