

#include <SD.h>
#include <Ethernet.h>





int8_t read_config_file(char config_str[], const char* file_name, uint32_t size){
    File IDFile = SD.open(file_name, FILE_READ);
      // if the file is available, read from it:
      if (IDFile) {
        memset(&config_str, 0, sizeof(config_str));
        int32_t chars_read = IDFile.read(config_str, size);
        if(chars_read < 1) {
          memset(&config_str, 0, sizeof(config_str));
          if (sizeof(config_str) > 3){
            config_str[0] = 'E';
            config_str[1] = 'R';
            config_str[2] = 'R';
            config_str[3] = '\0';
          }
          //Error - file exists, but nothing was read in
          return 0;
        } else if (chars_read > size) {
          config_str[size] = '\0';
          //File was read, buffer was large enough
          return 1;
        } else {
          if (config_str[chars_read - 1] == '\n') {
            config_str[chars_read - 1] = '\0';
          } else {
            config_str[chars_read] = '\0';
          }
          //File was read, truncated
          return 3;
        }
        IDFile.close();
        return 1;
      } else {
        //Set default battery ID
        IDFile = SD.open(file_name, FILE_WRITE);
        if(IDFile){
          IDFile.print(config_str);
          IDFile.close();
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
        return 0;
    } else {
        return 1;
    }
}

int8_t process_mac_address(const char config_str[], byte resulting_mac_addr[]){
    if(sscanf(config_str, "%hhu-%hhu-%hhu-%hhu-%hhu-%hhu", resulting_mac_addr, \
                resulting_mac_addr+1, \
                resulting_mac_addr+2, \
                resulting_mac_addr+3, \
                resulting_mac_addr+4, \
                resulting_mac_addr+5 ) != 6 ){
        return 0;
    } else {
        return 1;
    }
    
}