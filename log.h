
#ifndef LOGCPP_H
#define LOGCPP_H

#include "RTClib.h"


int8_t create_influx_json(float heater_temp_celcius, \
      float battery_temp_celcius, \
      float solar_input_voltage, \
      float battery_input_voltage, \
      float battery_percent_charged, \
      float solar_input_current, \
      float battery_current, \
      int8_t heater_relay, \
      int8_t charge_relay, \
      int8_t output_relay, \
      int8_t system_state, \
      DateTime time, \
      char* buffer, \
      uint16_t buffer_size);
uint8_t log_message(char* log_msg);
uint8_t write_to_ethernet(char* log_msg);
uint8_t write_to_serial(char* log_msg);
uint8_t write_to_sd_card(char* log_msg, bool has_internet);
uint8_t rotate_sd_file(DateTime timeNow);



 void showTime(DateTime t);

#endif