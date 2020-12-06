
#ifndef LOGCPP_H
#define LOGCPP_H

uint32_t log_message(String log_msg);
uint32_t write_to_ethernet(String log_msg);
uint32_t write_to_serial(String log_msg);
uint32_t write_to_sd_card(String log_msg);


#endif