
#ifndef TIMECPP_H
#define TIMECPP_H

#include "RTClib.h"
#include <stdint.h>



uint8_t initialize_rtc();
uint8_t set_time(DateTime newTime);
uint8_t set_repeating_alarm(uint8_t rate_in_minutes);
DateTime get_time();

#endif