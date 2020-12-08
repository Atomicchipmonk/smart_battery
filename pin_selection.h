

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
#define CHARGE_RELAY_ON_PIN 10
#define CHARGE_RELAY_OFF_PIN 5 //Was 11, changed to 5 due to PCINT7 interrupt
#define OUTPUT_RELAY_ON_PIN 6
#define OUTPUT_RELAY_OFF_PIN 9

//Sleep Wake pins
#define SLEEP_WAKE_PIN 11

//Iridium pins
#define IRIDIUM_RX_PIN A4 //Potentially should be RX (0)
#define IRIDIUM_TX_PIN A5 //Potentially should be TX (1)
#define IRIDIUM_SLEEP_PIN 5 //This is overloaded

//Eth Chip Select
#define ETH_CHIP_SELECT -1 //TBD, need to see if we can overload

//SD Chip Select
#define SD_CHIP_SELECT 4 //pin isnt brought out, internal to adalogger

//IP ADDRESSES
#define BATTERY_IP_ADDRESS 169.254.2.55
#define INFLUX_DB_IP_ADDRESS TBD