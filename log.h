
#ifndef LOGCPP_H
#define LOGCPP_H

int8_t create_influx_json(char batter_id[], \
      bool live, \
      float heater_temp_celcius, \
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
uint32_t log_message(String log_msg);
uint32_t write_to_ethernet(String log_msg);
uint32_t write_to_serial(String log_msg);
uint32_t write_to_sd_card(String log_msg, bool has_internet);
uint8_t rotate_sd_file(DateTime timeNow);
uint32_t initialize_ethernet();

#endif