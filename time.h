
#ifndef TIMECPP_H
#define TIMECPP_H

#include "RTClib.h"
#include <stdint.h>



uint8_t initialize_rtc(RTC_PCF8523 rtc);
uint8_t set_time(RTC_PCF8523 rtc, DateTime newTime);
uint8_t set_repeating_alarm(RTC_PCF8523 rtc, uint8_t rate_in_minutes);
DateTime get_time(RTC_PCF8523 rtc);
String format_time(DateTime time);

#endif