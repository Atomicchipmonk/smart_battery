
#ifndef LOGCPP_H
#define LOGCPP_H

#include "RTClib.h"

uint8_t log_message(String log_msg);
uint8_t write_to_ethernet(String log_msg);
uint8_t write_to_serial(String log_msg);
uint8_t write_to_sd_card(String log_msg, bool has_internet);
uint8_t rotate_sd_file(DateTime timeNow);


 void showTime(DateTime t);

#endif