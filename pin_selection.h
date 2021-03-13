
//Battery ID - CHANGE PER BUILD
#define BATTERY_ID "0"

//Blink LED
#define BLINK_LED 8

//Thermistor pins
#define THERMISTOR_PIN_HEATER A0        //THHTR
#define THERMISTOR_PIN_BATTERY A1       //THBAT

//Iridium Pins
#define ROCKBLOX_IRIDIUM_RX A2          //RBRX
#define ROCKBLOX_IRIDUIM_TX A3          //RBTX

//Power Enable Pins
#define PWR_48V_ENABLE_PIN A4           //48VEN
#define PWR_ROCKBLOX_ENABLE_PIN A5      //RBEN

//Current sense address
#define CURRENT_SENSE_SOLAR_ADDR 0xFE
#define CURRENT_SENSE_BATTERY_ADDR 0xFF


//3.3v enable rail
#define VPIN 13                         //VPIN

//Digital output
#define HEATER_RELAY_PIN 12             //HTEN
#define CHARGE_RELAY_ON_PIN 11          //SSET
#define OUTPUT_RELAY_OFF_PIN 9          //PUSET
#define OUTPUT_RELAY_ON_PIN 6           //PSET
#define CHARGE_RELAY_OFF_PIN 5          //SUSET

//IP ADDRESSES
#define ETHERNET_CHIP_SELECT 10         //ENCS
#define BATTERY_IP_ADDRESS 169.254.2.55
#define INFLUX_DB_IP_ADDRESS granolamatt.duckdns.org:1210

//SD Card
#define SD_CHIP_SELECT 4                //internal
#define SD_CARD_INSERTED 7              //internal

