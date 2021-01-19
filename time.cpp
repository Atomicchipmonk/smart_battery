
#include "RTClib.h"
#include <stdint.h>



RTC_PCF8523 rtc;
bool rtc_available = false;

uint8_t initialize_rtc(){

  if (! rtc.begin()) {
    return 1;
  }

  if (! rtc.initialized() || rtc.lostPower()) {
    // When time needs to be set on a new device, or after a power loss, the
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));

    rtc.start();
  }
  rtc.deconfigureAllTimers();
  
  //rtc.writeSqwPinMode(PCF8523_SquareWave1HZ);
  rtc.enableCountdownTimer(PCF8523_FrequencySecond, 20, PCF8523_LowPulse14x64Hz);

  rtc_available = true;
  return 0;
}

uint8_t set_time(DateTime newTime){
  rtc.adjust(newTime);
  return 0;
}

uint8_t set_repeating_alarm(uint8_t rate_in_minutes){
  rtc.deconfigureAllTimers();
  rtc.enableCountdownTimer(PCF8523_FrequencyMinute, rate_in_minutes, PCF8523_LowPulse6x64Hz);
  return 0;
}

DateTime get_time(){
  if (rtc_available){
    return rtc.now();
  } else {
    return DateTime(F(__DATE__), F(__TIME__));
  }
  
}