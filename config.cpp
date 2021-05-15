

#include <SD.h>
#include <Ethernet.h>





int8_t read_config_file(char config_str[], const char* file_name, uint32_t size){
    File IDFile = SD.open(file_name, FILE_READ);
      // if the file is available, read from it:
      if (IDFile) {
        memset(config_str, 0, sizeof(config_str));
        int32_t file_size = IDFile.size();
        int32_t chars_read = IDFile.read(config_str, size);
        if(chars_read < 1) {
          memset(config_str, 0, sizeof(config_str));
          if (sizeof(config_str) > 3){
            config_str[0] = 'E';
            config_str[1] = 'R';
            config_str[2] = 'R';
            config_str[3] = '\0';
          }
          //Error - file exists, but nothing was read in
          if(Serial){
              Serial.print("ERR: ");
              Serial.print(file_name);
              Serial.println(" is empty. removing file and rebooting");
            }
          IDFile.close();
          SD.remove(file_name);
          return -1;
        } else if (file_size > size) {
          bool new_line_detected = false;
          for(int n = 0; n < chars_read; n++){
            if (config_str[n] == '\n' || config_str[n] == '\r' || new_line_detected) {
              config_str[n] = '\0';
              new_line_detected = true;
            }
          }
          config_str[size-1] = '\0';
          //File was read, buffer was not large enough, so it was truncated
          if(Serial){
              Serial.print("CONFIG ");
              Serial.print(file_name);
              Serial.print(" TRUNCATED: ");
              Serial.println(config_str);
          }
          IDFile.close();
          return 2;
        } else {
          //Search for newlines, only accept the first line
          bool new_line_detected = false;
          for(int n = 0; n < chars_read; n++){
            if (config_str[n] == '\n' || config_str[n] == '\r' || new_line_detected) {
              config_str[n] = '\0';
              new_line_detected = true;
            }
          }
          //Always terminate the char str
          config_str[chars_read-1] = '\0';
          if(Serial){
              Serial.print("CONFIG ");
              Serial.print(file_name);
              Serial.print(": ");
              Serial.println(config_str);
          }
          IDFile.close();
          return 1;
        }
      } else {
        //Set default battery ID
        IDFile = SD.open(file_name, FILE_WRITE);
        if(IDFile){
          IDFile.print(config_str);
          IDFile.close();
          if(Serial){
              Serial.print("CONFIG ");
              Serial.print(file_name);
              Serial.print(" DEFAULTING: ");
              Serial.println(config_str);
          }
          return 3;
        } else {
          if(Serial){
            Serial.println("ERR: Unable to write config to sd card");
          }
          return 0;
        }
      }
    //should never get here
    return 0;
}

int8_t process_ip_address(const char config_str[], IPAddress* resulting_ip_addr){
    bool result = resulting_ip_addr->fromString(config_str);
    if (result == 0){
        if(Serial){
          Serial.print("Using Default IP: ");
          Serial.println(*resulting_ip_addr);
        }
        return 0;
    } else {
        if(Serial){
          Serial.print("Using IP from SD Card: ");
          Serial.println(*resulting_ip_addr);
        }
        return 1;
    }
}

int8_t process_mac_address(const char config_str[], byte resulting_mac_addr[]){
    uint32_t safe_byte_mac_address[6] = {0,0,0,0,0,0};

    int32_t scan_result = sscanf(config_str, "%02X-%02X-%02X-%02X-%02X-%02X", &safe_byte_mac_address[0], &safe_byte_mac_address[1], &safe_byte_mac_address[2], &safe_byte_mac_address[3], &safe_byte_mac_address[4], &safe_byte_mac_address[5]);
    
    if( scan_result != 6 ){
        if(Serial){
          Serial.print("Using default MAC: ");
          for(int i = 0; i < 6; i++){
            Serial.print(resulting_mac_addr[i], HEX);
            Serial.print(" ");
          }
          Serial.println("");
        }
        return 0;
    } else {
        if(Serial){
          Serial.print("Using MAC from SD card: ");
          for(int i = 0; i < 6; i++){
            if(Serial){
            Serial.print(safe_byte_mac_address[i], HEX);
            Serial.print(" ");
            }
            resulting_mac_addr[i] = (byte) safe_byte_mac_address[i];
          }
          Serial.println("");
        }
        return 1;
    }
    
}