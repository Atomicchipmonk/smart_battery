

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
#include "config.h"


#define LOG_BUFFER_SIZE 1024


char battery_id[9] = {'D','E','F','A','U','L','T','\0'};
#define BATTERY_ID_CONFIG_FILE "config/IDCONFIG.txt"

char server_name[65] = {'D','E','F','A','U','L','T','.','n','e','t','\0'};
#define SERVER_NAME_CONFIG_FILE "config/SERVRCFG.txt"

char battery_ip[16] = {'1','9','2','.','1','6','8','.','1','.','111','\0'};
IPAddress ip_addr(192, 168, 1, 111);
#define BATTERY_IP_CONFIG_FILE "config/IPADDCFG.txt"

char battery_mac[18] = {'0','1','-','2','3','-','4','5','-','6','7','-','8','9','-','A','B','\0'};
byte mac_addr[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
#define BATTERY_MAC_CONFIG_FILE "config/MACADCFG.txt"




float heater_temp_celcius = 0;
float battery_temp_celcius = 0;
float solar_input_voltage = 0.0;
float battery_input_voltage = 0.0;
float battery_percent_charged = 0;
float solar_input_current = 0.0;
float battery_current = 0.0;

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


typedef enum {
  SAFE = 0,
  CHARGING_SAFE = 1,
  CHARGING = 2,
  DISCHARGING = 3,
} battery_state_enum;


//SAFE Defines
#define SAFE_TEMP_LOW -15.0
#define SAFE_TEMP_HIGH 55.0
#define SAFE_SOLAR_OVERVOLTAGE 48.0
#define SAFE_BATTERY_OVERVOLTAGE 60.0
#define SAFE_SOLAR_OVERCURRENT 6000.0
#define SAFE_BATTERY_OVERCURRENT 4000.0
#define SAFE_BATTERY_LOW 0.3
#define SAFE_TIMER 10

#define NOMINAL_TEMP_LOW -12.0
#define NOMINAL_TEMP_HIGH 52.0
#define NOMINAL_SOLAR_OVERVOLTAGE 46.0
#define NOMINAL_BATTERY_OVERVOLTAGE 54.0
#define NOMINAL_SOLAR_OVERCURRENT 6000.0
#define NOMINAL_BATTERY_OVERCURRENT 4000.0
#define NOMINAL_BATTERY_LOW 0.5

#define CHARGING_BATTERY_HIGH 0.95

#define DISCHARGE_BATTERY_LOW 0.8



uint32_t state_counter = 0;
battery_state_enum system_state = CHARGING_SAFE;
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
  pinMode(PWR_48V_ENABLE_PIN, OUTPUT);
  pinMode(PWR_ROCKBLOX_ENABLE_PIN, OUTPUT);

  //Set SD Card input
  pinMode(SD_CARD_INSERTED, INPUT_PULLUP);

  //Set up Thermistors
  pinMode(THERMISTOR_PIN_HEATER, INPUT);
  pinMode(THERMISTOR_PIN_BATTERY, INPUT);

  //Start Charging from the 48v Battery
  digitalWrite(PWR_48V_ENABLE_PIN, HIGH);

  //Turn 3.3V rail on
  digitalWrite(VPIN, HIGH);

  

  
  //Setup LTC
  Wire.begin();
  setup_ltc4151();

  //TODO currently if the rtc is not found it halts
  rtc_available = initialize_rtc();
  last_rotation = get_time();

  sd_available = digitalRead(SD_CARD_INSERTED);

  if (sd_available){
    if (!SD.begin(SD_CHIP_SELECT)) {
      if(Serial){
        Serial.println("ERR: SD Card not initialized");
      }
      
      sd_initialized = 0;
    } else {
      sd_initialized = 1;
      SD.mkdir("/stored");
      SD.mkdir("/live");
      SD.mkdir("/stor_db");
      SD.mkdir("/live_db");
      SD.mkdir("/config");

      if(Serial){
        Serial.println("Initializing configs");
      }
      int8_t config_rc = 0;
      //Go read configuration from files, or write those files if they dont exist
      config_rc = read_config_file(battery_id, BATTERY_ID_CONFIG_FILE, sizeof(battery_id));
      config_rc = read_config_file(server_name, SERVER_NAME_CONFIG_FILE, sizeof(server_name));
      config_rc = read_config_file(battery_ip, BATTERY_IP_CONFIG_FILE, sizeof(battery_ip));
      config_rc = read_config_file(battery_mac, BATTERY_MAC_CONFIG_FILE, sizeof(battery_mac));

      if(Serial){
        Serial.println("Parsing configs");
      }
   
      process_ip_address(battery_ip, &ip_addr);
      process_mac_address(battery_mac, mac_addr);

      //TLS Key (Eventually)

      rotate_sd_file_name(last_rotation);

    }
  }
  

  Ethernet.init(ETHERNET_CHIP_SELECT);
  ethernet_available = initialize_ethernet(mac_addr, &ip_addr);

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


  poll_power();
  poll_solar();

  solar_input_voltage = get_solar_voltage();
  battery_input_voltage = get_power_voltage();
  battery_percent_charged = translate_charge(battery_input_voltage);
  
  solar_input_current = get_solar_current();
  battery_current = get_power_current();

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



  //Transition based on the new data
  switch(system_state){
        case SAFE: 
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
          if(heater_temp_celcius > NOMINAL_TEMP_LOW && \
                  heater_temp_celcius <  NOMINAL_TEMP_HIGH && \
                  battery_temp_celcius > NOMINAL_TEMP_LOW && \
                  battery_temp_celcius < NOMINAL_TEMP_HIGH && \
                  solar_input_voltage < NOMINAL_SOLAR_OVERVOLTAGE && \
                  battery_input_voltage < NOMINAL_BATTERY_OVERVOLTAGE && \
                  solar_input_current < NOMINAL_SOLAR_OVERCURRENT && \
                  battery_current < NOMINAL_BATTERY_OVERCURRENT && \
                  battery_percent_charged < NOMINAL_BATTERY_LOW && \
                  state_counter > SAFE_TIMER){
            system_state = CHARGING_SAFE;
            state_counter = 0;
          } else if (heater_temp_celcius > NOMINAL_TEMP_LOW && \
                  heater_temp_celcius < NOMINAL_TEMP_HIGH && \
                  battery_temp_celcius > NOMINAL_TEMP_LOW && \
                  battery_temp_celcius < NOMINAL_TEMP_HIGH && \
                  solar_input_voltage < NOMINAL_SOLAR_OVERVOLTAGE && \
                  battery_input_voltage < NOMINAL_BATTERY_OVERVOLTAGE && \
                  solar_input_current < NOMINAL_SOLAR_OVERCURRENT && \
                  battery_current < NOMINAL_BATTERY_OVERCURRENT && \
                  state_counter > SAFE_TIMER){
            system_state = DISCHARGING;
            state_counter = 0;
          } 
          
          break;
        case CHARGING_SAFE:
          //Transition in -> SAFE
          //Transition out -> SAFE, Charging
            //Battery > 50% -> Charging
            //Break Limits (except 30% SOC) -> SAFE
          if(heater_temp_celcius < SAFE_TEMP_LOW || \
                  heater_temp_celcius > SAFE_TEMP_HIGH || \
                  battery_temp_celcius < SAFE_TEMP_LOW || \
                  battery_temp_celcius > SAFE_TEMP_HIGH || \
                  solar_input_voltage > SAFE_SOLAR_OVERVOLTAGE || \
                  battery_input_voltage > SAFE_BATTERY_OVERVOLTAGE || \
                  solar_input_current > SAFE_SOLAR_OVERCURRENT || \
                  battery_current > SAFE_BATTERY_OVERCURRENT){
            system_state = SAFE;
            state_counter = 0;
          }
          else if(battery_percent_charged > NOMINAL_BATTERY_LOW){
            system_state = CHARGING;
            state_counter = 0;
          }
          break;
        case CHARGING: 
          //Transition in -> on boot, discharging, Charging SAFE
            //Battery < 90%
          //Transition out -> SAFE and Low Power SAFE, Discharging
            //Break Limits -> SAFE
            //Battery > 95% -> Discharge
          if(heater_temp_celcius < SAFE_TEMP_LOW || \
                  heater_temp_celcius > SAFE_TEMP_HIGH || \
                  battery_temp_celcius < SAFE_TEMP_LOW || \
                  battery_temp_celcius > SAFE_TEMP_HIGH || \
                  solar_input_voltage > SAFE_SOLAR_OVERVOLTAGE || \
                  battery_input_voltage > SAFE_BATTERY_OVERVOLTAGE || \
                  solar_input_current > SAFE_SOLAR_OVERCURRENT || \
                  battery_current > SAFE_BATTERY_OVERCURRENT || \
                  battery_percent_charged < SAFE_BATTERY_LOW){
            system_state = SAFE;
            state_counter = 0;
          } else if (battery_percent_charged > CHARGING_BATTERY_HIGH){
            system_state = DISCHARGING;
            state_counter = 0;
          }
          break;
        case DISCHARGING:
          //Transition in -> from SAFE, from Charging
            //Battery > 95%
          //Transition out -> all SAFE, Charging
            //Break limits - > SAFE
            //Battery < 90% -> Charging
          if(heater_temp_celcius < SAFE_TEMP_LOW || \
                  heater_temp_celcius > SAFE_TEMP_HIGH || \
                  battery_temp_celcius < SAFE_TEMP_LOW || \
                  battery_temp_celcius > SAFE_TEMP_HIGH || \
                  solar_input_voltage > SAFE_SOLAR_OVERVOLTAGE || \
                  battery_input_voltage > SAFE_BATTERY_OVERVOLTAGE || \
                  solar_input_current > SAFE_SOLAR_OVERCURRENT || \
                  battery_current > SAFE_BATTERY_OVERCURRENT || \
                  battery_percent_charged < SAFE_BATTERY_LOW){
            system_state = SAFE;
            state_counter = 0;
          } else if (battery_percent_charged < DISCHARGE_BATTERY_LOW){
            system_state = CHARGING;
            state_counter = 0;
          }
          break;
        default: 
          system_state = SAFE;
          state_counter = 0;
          break;
  }

  state_counter++;

  //Update/Reinforce relays
  switch(system_state){
        case SAFE: 
          //Solar open circuit, output open circuit, heater open circuit
          set_latching_relay(CHARGE_RELAY_OFF_PIN);
          set_latching_relay(OUTPUT_RELAY_OFF_PIN);
          set_relay_off(HEATER_RELAY_PIN);
          break;
        case CHARGING_SAFE: 
          //Charging SAFE
              //Solar closed circuit, output open circuit, heater circuit as needed
                //Internal state logic - Temp < 0c turn on heater, turn off solar
          set_latching_relay(OUTPUT_RELAY_OFF_PIN);
          if(heater_temp_celcius < 0 || battery_temp_celcius < 0){
            set_relay_on(HEATER_RELAY_PIN);
            set_latching_relay(CHARGE_RELAY_OFF_PIN);
          } else {
            set_relay_off(HEATER_RELAY_PIN);
            set_latching_relay(CHARGE_RELAY_ON_PIN);
          }
          break;
        case CHARGING: 
          //Charging
          //Solar closed circuit, output closed circuit, heater circuit as needed
            //Internal state logic - Temp < 0c turn on heater, turn off Solar
          set_latching_relay(OUTPUT_RELAY_ON_PIN);
          if(heater_temp_celcius < 0 || battery_temp_celcius < 0){
            set_relay_on(HEATER_RELAY_PIN);
            set_latching_relay(CHARGE_RELAY_OFF_PIN);
          } else {
            set_relay_off(HEATER_RELAY_PIN);
            set_latching_relay(CHARGE_RELAY_ON_PIN);
          }
          break;
        case DISCHARGING:
          //Discharging
            //Solar open circuit, output closed circuit, heater open circuit
          set_latching_relay(CHARGE_RELAY_OFF_PIN);
          set_latching_relay(OUTPUT_RELAY_ON_PIN);
          set_relay_off(HEATER_RELAY_PIN);
          break;
        default:
          break;
  }

    

  //Time based
  //Iridium, midnight and noon, only if ethernet is not available
  //NTP at midnight and noon, requires ethernet to be available
  //File rollover at midnight

  //3.3v feather_battery Charging
  //if feather_battery < 30%
  //Set FBCharge state, set 48v charge on

  //  //Start Charging from the 48v Battery
  //digitalWrite(PWR_48V_ENABLE_PIN, HIGH);

  //if feather_battery > 70%
  //Unset FBCharge state, turn 48v charge off





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
      state_counter,
      loop_start_time,
      log_msg,
      LOG_BUFFER_SIZE);


  int32_t rc = log_message(log_msg, server_name, system_state, &sd_available, &sd_initialized);

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
