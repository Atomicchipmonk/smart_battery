
#include <stdint.h>
#include "debug.h"


// resistance at 25 degrees C
#define THERMISTORNOMINAL 10000      
// temp. for nominal resistance (almost always 25 C)
#define TEMPERATURENOMINAL 25   
// how many samples to take and average, more takes longer
// but is more 'smooth'
#define NUMSAMPLES 5
// The beta coefficient of the thermistor (usually 3000-4000)
#define BCOEFFICIENT 3950
// the value of the 'other' resistor
#define SERIESRESISTOR 10000

int32_t samples[NUMSAMPLES];

float get_temperature(int32_t pin){
  uint8_t i = 0;
  float analog_average = 0;
  float thermistor_average = 0;
  float celcius_average = 0;
 
  // take N samples in a row, with a slight delay
  for (i=0; i< NUMSAMPLES; i++) {
   samples[i] = analogRead(pin);
   delay(10);
  }

  // average all the samples out
  analog_average = 0;
  for (i=0; i< NUMSAMPLES; i++) {
     analog_average += samples[i];
  }
  analog_average /= NUMSAMPLES;
 

  
  // convert the value to resistance
  thermistor_average = SERIESRESISTOR / (1023 / analog_average - 1);

  
  celcius_average = thermistor_average / THERMISTORNOMINAL;     // (R/Ro)
  celcius_average = log(celcius_average);                  // ln(R/Ro)
  celcius_average /= BCOEFFICIENT;                   // 1/B * ln(R/Ro)
  celcius_average += 1.0 / (TEMPERATURENOMINAL + 273.15); // + (1/To)
  celcius_average = 1.0 / celcius_average;                 // Invert
  celcius_average -= 273.15;                         // convert absolute temp to C
  
  /*if(debug){
    Serial.print("Average analog reading "); 
    Serial.println(analog_average);
    Serial.print("Thermistor resistance "); 
    Serial.println(thermistor_average);
    Serial.print("Temperature "); 
    Serial.print(celcius_average);
    Serial.println(" *C");
  }*/
  return celcius_average;
}
