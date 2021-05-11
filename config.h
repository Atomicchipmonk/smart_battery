
#ifndef CONFIGCPP_H
#define CONFIGCPP_H

int8_t read_config_file(char config_str[], const char* file_name, uint32_t size);

int8_t process_ip_address(const char config_str[], IPAddress* resulting_ip_addr);

int8_t process_mac_address(const char config_str[], byte resulting_mac_addr[]);

#endif