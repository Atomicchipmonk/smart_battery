
#include "RTClib.h"
#include <stdint.h>



RTC_PCF8523 rtc;

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
}

uint8_t set_time(DateTime newTime){
  rtc.adjust(newTime);
}

uint8_t set_repeating_alarm(uint8_t rate_in_minutes){
  rtc.deconfigureAllTimers();
  rtc.enableCountdownTimer(PCF8523_FrequencyMinute, rate_in_minutes, PCF8523_LowPulse6x64Hz);
}

DateTime get_time(){
  return rtc.now();
}

String format_time(DateTime time){
    return String(time.unixtime());
}