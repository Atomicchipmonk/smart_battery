#include <Wire.h>
#include "LTC4151.h"

LTC4151 sensor2;
LTC4151 sensor;
float solar_voltage = 0;
float power_voltage = 0;
float solar_current = 0;
float power_current = 0;  
  
#include <stdint.h>

void setup_ltc4151(void)
{
    
    sensor.init(LTC4151::H, LTC4151::L);
    sensor2.init(LTC4151::L, LTC4151::L);
}

void poll_solar() {
  byte error;
  Wire.beginTransmission(0x6f);
  error = Wire.endTransmission();
  if (error == 0) {
    solar_current = sensor2.getLoadCurrent(0.02);
    solar_voltage = sensor2.getInputVoltage();
//    Serial.print("Sensor2 ");
//    Serial.print(sensor2.getLoadCurrent(0.1));
//    Serial.print(" ");
//    Serial.print(sensor2.getSnapshotLoadCurrent(0.1));
//    Serial.print(" ");    
//    Serial.print(sensor2.getInputVoltage());    
//    Serial.print(" ");
//    Serial.print(sensor2.getSnapshotInputVoltage());    
//    Serial.print(" ");
//    Serial.print(sensor2.getADCInVoltage());
//    Serial.print(" ");
//    Serial.print(sensor2.getSnapshotADCInVoltage());
//    Serial.print(" ");
//    Serial.println();
  } else {
    solar_current = -1;
    solar_voltage = -1;  
  }
}

void poll_power() {
  byte error;
  // sensor 0x66 and 0x67
  // sensor2 0x66 and 0x6f
  // check for sensor
  Wire.beginTransmission(0x6c);
  error = Wire.endTransmission();
  if (error == 0) {
    power_current = sensor.getLoadCurrent(0.02);
    power_voltage = sensor.getInputVoltage();
//    Serial.print("Sensor ");
//    Serial.print(sensor.getLoadCurrent(0.1));
//    Serial.print(" ");
//    Serial.print(sensor.getSnapshotLoadCurrent(0.1));
//    Serial.print(" ");    
//    Serial.print(sensor.getInputVoltage());    
//    Serial.print(" ");
//    Serial.print(sensor.getSnapshotInputVoltage());    
//    Serial.print(" ");
//    Serial.print(sensor.getADCInVoltage());
//    Serial.print(" ");
//    Serial.print(sensor.getSnapshotADCInVoltage());
//    Serial.print(" ");
//    Serial.println();
  } else {
    power_current = -1;
    power_voltage = -1;
  }  
}

float get_power_voltage(){
  return power_voltage;
}

float get_solar_voltage(){
  return solar_voltage;
}

float translate_charge(float input_voltage){
  return .85;
}

float get_power_current(){
  return power_current;
}

float get_solar_current(){
  return solar_current;
}
