//SD card and INFLUXDB logging

#include "debug.h"

#include "Arduino.h"
#include <SPI.h>
#include <SD.h>
#include "RTClib.h"
#include <Ethernet.h>

#include "pin_selection.h"
#include "log.h"



// Enter a MAC address for your controller below.
// Newer Ethernet shields have a MAC address printed on a sticker on the shield
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };

//IPAddress server(192,168,1,238); //Hardcoded internal IP address for debug
char server[] = "granolamatt.net";    // Server address

// Set the static IP address to use if the DHCP fails to assign
IPAddress ip(192, 168, 1, 177);
IPAddress myDns(8, 8, 8, 8);

// Initialize the Ethernet client library
// Only used to post log messages
EthernetClient client;


char current_sd_file_live_down[64] = "/live/defaultl.txt";
char current_sd_file_stored[64] = "/stored/defaults.txt";

int8_t create_influx_json(char batter_id[],
      bool live,
      float heater_temp_celcius,
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

      int8_t live_int = 0;
      if (live){
        live_int = 1;
      }
      
  //this doesnt work, requires additional compiler linking for floats in printf. If this did work though, it would be great!
  int8_t ret = snprintf(buffer, buffer_size, "battery,id=%d,live=%d,dbg=%d htr_tmp=%.2f,bat_tmp=%.2f,solar_v=%.2f,bat_in_v=%.2f,solar_a=%.2f,bat_a=%.2f,htr_relay=%d,chrg_relay=%d,out_relay=%d,bat_pcnt=%.2f,state=%d %lu", 
      BATTERY_ID, \
      live_int, \
      debug, \
      heater_temp_celcius, \
      battery_temp_celcius, \
      solar_input_voltage, \
      battery_input_voltage, \
      solar_input_current, \
      battery_current, \
      heater_relay, \
      charge_relay, \
      output_relay, \
      battery_percent_charged, \
      system_state, \
      time.unixtime());


  if (ret < 0) {
    return ret;
  }
  if (ret >= buffer_size) {
      // Result was truncated - resize the buffer and retry.
  }

  return ret;
}


uint32_t log_message(String log_msg){
  int32_t rc = 0;
  int32_t has_internet = 0;

  rc += write_to_serial(log_msg);
  has_internet = write_to_ethernet(log_msg);
  rc += has_internet;
  rc += write_to_sd_card(log_msg, ! has_internet);

  return rc;  
}

uint32_t initialize_ethernet(){

  Ethernet.begin(mac, ip, myDns);

  if (Ethernet.hardwareStatus() == EthernetNoHardware) {
    if (Serial){
      Serial.println("ERR: Ethernet shield was not found");
    }
    return -1;
  }
  if (Ethernet.linkStatus() == LinkOFF) {
    if (Serial){
      Serial.println("ERR: No ethernet cable found");
    }
    return -2;
  }

  return 0;
}

uint32_t write_to_ethernet(String log_msg){
  int32_t rc = client.connect(server, 8086);
  if (rc) {
      client.println("POST /write?db=mydb&precision=s HTTP/1.1");
      client.println("Host:  blackmesa.com");
      client.println("User-Agent: Arduino/1.0");
      client.println("Connection: close");
      client.println("Content-Type: application/x-www-form-urlencoded;");
      client.print("Content-Length: ");
      client.println(log_msg.length());
      client.println();
      client.println(log_msg);
      rc = 0;
  } else {
    if(Serial){
      Serial.println("ERR: Influx POST failed");     
    }
    rc = 1;
  }
  client.stop();
  return rc;
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
      Serial.println("ERR: Unable to write to sd card");
    }
    return 1;
  }
 }

uint8_t rotate_sd_file(DateTime timeNow){
  uint8_t rc = 0;

  if(debug){
    snprintf(current_sd_file_live_down, 64, "/live_db/db%02d%02d%02d.txt", timeNow.hour(), timeNow.minute(), timeNow.second());
    snprintf(current_sd_file_stored, 64, "/stor_db/db%02d%02d%02d.txt", timeNow.hour(), timeNow.minute(), timeNow.second());
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
