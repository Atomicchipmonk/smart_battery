
//Battery ID - CHANGE PER BUILD
#define BATTERY_ID "0"

//Blink LED
#define BLINK_LED 8

//3.3v enable rail
#define VPIN 13

//Thermistor pins
#define THERMISTOR_PIN_HEATER A0
#define THERMISTOR_PIN_BATTERY A1

//Voltage sense pins
#define VOLTAGE_SENSE_SOLAR_PIN A2
#define VOLTAGE_SENSE_BATTERY_PIN A3

//Current sense address
#define CURRENT_SENSE_SOLAR_ADDR 0xFE
#define CURRENT_SENSE_BATTERY_ADDR 0xFF

//Digital output
#define HEATER_RELAY_PIN 12
#define CHARGE_RELAY_ON_PIN 11
#define CHARGE_RELAY_OFF_PIN 5
#define OUTPUT_RELAY_ON_PIN 6
#define OUTPUT_RELAY_OFF_PIN 9

//SD Chip Select
#define SD_CHIP_SELECT 4

//IP ADDRESSES
#define ETHERNET_CHIP_SELECT 10 
#define BATTERY_IP_ADDRESS 169.254.2.55
#define INFLUX_DB_IP_ADDRESS granolamatt.duckdns.org:1210