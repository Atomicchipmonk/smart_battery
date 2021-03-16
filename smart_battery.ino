

// Thermistor Example #3 from the Adafruit Learning System guide on Thermistors 
// https://learn.adafruit.com/thermistor/overview by Limor Fried, Adafruit Industries
// MIT License - please keep attribution and consider buying parts from Adafruit
 

#include <stdint.h>

#include "RTClib.h"
#include <SD.h>
#include <Ethernet.h>

#include "debug.h"
#include "pin_selection.h"
#include "thermistor.c"
#include "log.h"
#include "relays.h"
#include "power_readings.h"
#include "time.h"





        

#define LOG_BUFFER_SIZE 1024


char battery_id[9] = {'D','E','F','A','U','L','T','\0'};
#define BATTERY_ID_CONFIG_FILE "IDCONFIG.txt"

float heater_temp_celcius = 0;
float battery_temp_celcius = 0;
float solar_input_voltage = 0;
float battery_input_voltage = 0;
float battery_percent_charged = 0;
float solar_input_current = 0;
float battery_current = 0;

int8_t heater_relay = 0;
int8_t charge_relay = 0;
int8_t output_relay = 0;

int8_t serial_available = 0;
int8_t sd_available = 0;
int8_t sd_initialized = 0;
int8_t rtc_available = 0;
int8_t ethernet_available = 0;
int8_t ntp_available = 0;
int8_t iridium_available = 0;

uint8_t counter = 0;
uint8_t system_state = 0;
DateTime last_rotation;


 
void setup(void) {
  Serial.begin(9600);

  if(Serial){
    serial_available = 1;
  } else {
    serial_available = 0;
  }

  //If in debug mode, wait for serial to come up, otherwise just roll with it if you got it
  if (debug){
    while (!Serial){
      delay(100);
    }
    Serial.println("In debug mode: loaded and running");
  }
 

  analogReference(AR_DEFAULT);

  pinMode(BLINK_LED, OUTPUT);
  pinMode(VPIN, OUTPUT);
  //Set up relay pins
  pinMode(HEATER_RELAY_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_ON_PIN, OUTPUT);
  pinMode(CHARGE_RELAY_OFF_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_ON_PIN, OUTPUT);
  pinMode(OUTPUT_RELAY_OFF_PIN, OUTPUT);

  //Set SD Card input
  pinMode(SD_CARD_INSERTED, INPUT_PULLUP);

  //Set up Thermistors
  pinMode(THERMISTOR_PIN_HEATER, INPUT);
  pinMode(THERMISTOR_PIN_BATTERY, INPUT);

  //Turn 3.3V rail on
  digitalWrite(VPIN, HIGH);

  //TODO currently if the rtc is not found it halts
  rtc_available = initialize_rtc();
  last_rotation = get_time();

  sd_available = digitalRead(SD_CARD_INSERTED);

  if (sd_available){
    if (!SD.begin(SD_CHIP_SELECT)) {
      Serial.println("ERR: SD Card not initialized");
      sd_initialized = 0;
    } else {
      sd_initialized = 1;
      SD.mkdir("/stored");
      SD.mkdir("/live");
      SD.mkdir("/stor_db");
      SD.mkdir("/live_db");

      //Go read configuration from files, or write those files if they dont exist
      //Battery Id

      File IDFile = SD.open(BATTERY_ID_CONFIG_FILE, FILE_READ);
      // if the file is available, write to it:
      if (IDFile) {
        memset(&battery_id, 0, sizeof(battery_id));
        int32_t chars_read = IDFile.read(battery_id, 8);
        if(chars_read < 1) {
          memset(&battery_id, 0, sizeof(battery_id));
          battery_id[0] = 'E';
          battery_id[0] = 'R';
          battery_id[0] = 'R';
          battery_id[0] = '\0';
        } else if (chars_read > 8) {
          battery_id[8] = '\0';
        } else {
          if (battery_id[chars_read - 1] == '\n') {
            battery_id[chars_read - 1] = '\0';
          } else {
            battery_id[chars_read] = '\0';
          }
        }
        IDFile.close();
      } else {
        IDFile = SD.open(BATTERY_ID_CONFIG_FILE, FILE_WRITE);
        if(IDFile){
          IDFile.print(battery_id);
          IDFile.close();
        } else {
          if(Serial){
            Serial.println("ERR: Unable to write ID to sd card");
          }
        }
      }

      
      //Server Endpoint
      //TLS Key
      rotate_sd_file_name(last_rotation);

    }
  }
  

  Ethernet.init(ETHERNET_CHIP_SELECT);
  ethernet_available = initialize_ethernet();

  digitalWrite(VPIN, LOW);

}
 
void loop(void) {



  //first turn 3.3v peripheral rail on
  digitalWrite(VPIN, HIGH);
  delay(1000);

  if(Serial){
    serial_available = 1;
  } else {
    serial_available = 0;
  }

  if (Ethernet.linkStatus() == Unknown || Ethernet.linkStatus() == LinkOFF) {
    ethernet_available = 0;
  }
  else if (Ethernet.linkStatus() == LinkON) {
    ethernet_available = 1;
  }

  sd_available = digitalRead(SD_CARD_INSERTED);
  
  rtc_available = initialize_rtc();

  DateTime loop_start_time = get_time();

  //im alive
  digitalWrite(BLINK_LED, HIGH);
  

  //Set next timer (always do this first)

  
  
  heater_temp_celcius = get_temperature(THERMISTOR_PIN_HEATER);
  battery_temp_celcius = get_temperature(THERMISTOR_PIN_BATTERY);

  solar_input_voltage = .2;
  battery_input_voltage = .3;
  battery_percent_charged = translate_charge(battery_input_voltage);
  
  solar_input_current = get_current(CURRENT_SENSE_SOLAR_ADDR);
  battery_current = get_current(CURRENT_SENSE_BATTERY_ADDR);

  //get relays
  heater_relay = get_heater_relay();
  charge_relay = get_charge_relay();
  output_relay = get_output_relay();

  //State machine logic goes here

  //Modes
  //SAFE
  //Charging SAFE
  //Charging
  //Discharging

  // SAFE
  //Solar open circuit, output open circuit, heater open circuit
  //Transition in -> breaking a limit, from all
    //Temp < -15c
    //Temp > 55c
    //VOLTAGE_SENSE_SOLAR_ADDR > 30?
    //VOLTAGE_SENSE_BATTERY_ADDR > 60?
    //CURRENT_SENSE_SOLAR_ADDR > ??
    //CURRENT_SENSE_BATTERY_ADDR > ??
    //Battery < 30%
  //Transition out 
    //-> Charging SAFE
      //Battery < 30%
      //Temp > -15c
      //Temp < 45c
      //VOLTAGE_SENSE_SOLAR_ADDR > 28?
      //VOLTAGE_SENSE_BATTERY_ADDR > 54?
      //CURRENT_SENSE_SOLAR_ADDR > ??
      //CURRENT_SENSE_BATTERY_ADDR > ??
      //time weighted backoff scheme (with counter)
    //-> To Discharging
      //Temp > -15c
      //Temp < 45c
      //VOLTAGE_SENSE_SOLAR_ADDR > 28?
      //VOLTAGE_SENSE_BATTERY_ADDR > 54?
      //CURRENT_SENSE_SOLAR_ADDR > ??
      //CURRENT_SENSE_BATTERY_ADDR > ??
      //time weighted backoff scheme (with counter)

  //Charging SAFE
  //Solar closed circuit, output open circuit, heater circuit as needed
    //Internal state logic - Temp < 0c turn on heater
  //Transition in -> SAFE
  //Transition out -> SAFE, Charging
    //Battery > 50% -> Charging
    //Break Limits (except 30% SOC) -> SAFE

  //Nominal states

  //Discharging
  //Solar open circuit, output closed circuit, heater open circuit
  //Transition in -> from SAFE, from Charging
    //Battery > 95%
  //Transition out -> all SAFE, Charging
    //Break limits - > SAFE
    //Battery < 90% -> Charging
    

  //Charging
  //Solar closed circuit, output closed circuit, heater circuit as needed
    //Internal state logic - Temp < 0c turn on heater, turn off Solar
  //Transition in -> on boot, discharging, Charging SAFE
    //Battery < 90%
  //Transition out -> SAFE and Low Power SAFE, Discharging
    //Break Limits -> SAFE
    //Battery > 95% -> Discharge
    



  //Time based

  //Iridium, midnight and noon, only if ethernet is not available
  
  //NTP at midnight and noon, if ethernet is available

  //File rollover at midnight



  int8_t log_rc = 0;
  char log_msg[LOG_BUFFER_SIZE] = "DEFAULT MESSAGE";
  
  create_influx_json(
      battery_id,
      serial_available,
      sd_available,
      sd_initialized,
      rtc_available,
      ethernet_available,
      ntp_available,
      iridium_available,
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


  int32_t rc = log_message(log_msg, system_state);

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


  time_t ntp_time = 0;
  //fast rotation for debugging
  if(debug){
    if(loop_start_time.minute() != last_rotation.minute()){
      rotate_sd_file_name(loop_start_time);
      
      memcpy(&last_rotation, &loop_start_time, sizeof(DateTime));

      ntp_time = getNtpTime();
      if (ntp_time != 0){
        set_time(DateTime(ntp_time));
        ntp_available = 1;
      } else {
        ntp_available = 0;
      }
      
    }    
  } else {
    if(loop_start_time.day() != last_rotation.day()){
      rotate_sd_file_name(loop_start_time);
      memcpy(&last_rotation, &loop_start_time, sizeof(DateTime));

      ntp_time = getNtpTime();
      if (ntp_time != 0){
        set_time(DateTime(ntp_time));
        ntp_available = 1;
      } else {
        ntp_available = 0;
      }
    }
  }

  digitalWrite(VPIN, LOW);
  digitalWrite(BLINK_LED, LOW);


  //Turn everything off

  delay(5000);
}