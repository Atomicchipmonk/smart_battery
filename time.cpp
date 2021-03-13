
#include "RTClib.h"
#include <Ethernet.h>
#include <stdint.h>

#include <time.h>



//This whole file is messy with interplay between smart_battery.ino, here, and hardware


RTC_PCF8523 rtc;
RTC_Micros rtc_emu;
bool TIME_rtc_available = false;

// NTP Servers:
IPAddress timeServer(132, 163, 96, 1); // time-a.timefreq.bldrdoc.gov
// IPAddress timeServer(132, 163, 4, 102); // time-b.timefreq.bldrdoc.gov
// IPAddress timeServer(132, 163, 4, 103); // time-c.timefreq.bldrdoc.gov



EthernetUDP Udp;
unsigned int localPort = 8888;  // local port to listen for UDP packets


uint8_t initialize_rtc(){

  if (! rtc.begin()) {
    return 0;
  }

  if (! rtc.initialized() || rtc.lostPower()) {
    // When time needs to be set on a new device, or after a power loss, the
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));

    rtc.start();
  }
  rtc.deconfigureAllTimers();
  
  rtc.writeSqwPinMode(PCF8523_SquareWave1HZ);
  //rtc.enableCountdownTimer(PCF8523_FrequencySecond, 20, PCF8523_LowPulse14x64Hz);

  TIME_rtc_available = true;
  return 1;
}

uint8_t set_time(DateTime newTime){
  if (TIME_rtc_available){
    rtc.adjust(newTime);
    return 0;
  } else {
    rtc_emu.adjust(newTime);
    return 0;
  }

  return 1;
}

uint8_t set_repeating_alarm(uint8_t rate_in_minutes){
  if (TIME_rtc_available){
    rtc.deconfigureAllTimers();
    rtc.enableCountdownTimer(PCF8523_FrequencyMinute, rate_in_minutes, PCF8523_LowPulse6x64Hz);
    return 0;
  } else {
    return 1;
  }
  
}

DateTime get_time(){
  if (TIME_rtc_available){
    return rtc.now();
  } else {
    return rtc_emu.now();
  }
  
}



const int NTP_PACKET_SIZE = 48; // NTP time is in the first 48 bytes of message
byte packetBuffer[NTP_PACKET_SIZE]; //buffer to hold incoming & outgoing packets


// send an NTP request to the time server at the given address
void sendNTPpacket(IPAddress &address)
{
  // set all bytes in the buffer to 0
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  // Initialize values needed to form NTP request
  // (see URL above for details on the packets)
  packetBuffer[0] = 0b11100011;   // LI, Version, Mode
  packetBuffer[1] = 0;     // Stratum, or type of clock
  packetBuffer[2] = 6;     // Polling Interval
  packetBuffer[3] = 0xEC;  // Peer Clock Precision
  // 8 bytes of zero for Root Delay & Root Dispersion
  packetBuffer[12]  = 49;
  packetBuffer[13]  = 0x4E;
  packetBuffer[14]  = 49;
  packetBuffer[15]  = 52;
  // all NTP fields have been given values, now
  // you can send a packet requesting a timestamp:                 
  Udp.beginPacket(address, 123); //NTP requests are to port 123
  Udp.write(packetBuffer, NTP_PACKET_SIZE);
  Udp.endPacket();
}

time_t getNtpTime()
{
  Udp.begin(localPort);
  while (Udp.parsePacket() > 0) ; // discard any previously received packets
  if(Serial){
    Serial.println("Transmit NTP Request");
  }
  
  sendNTPpacket(timeServer);
  uint32_t beginWait = millis();
  while (millis() - beginWait < 1500) {
    int size = Udp.parsePacket();
    if (size >= NTP_PACKET_SIZE) {
      Serial.println("Receive NTP Response");
      Udp.read(packetBuffer, NTP_PACKET_SIZE);  // read packet into the buffer
      unsigned long secsSince1900;
      // convert four bytes starting at location 40 to a long integer
      secsSince1900 =  (unsigned long)packetBuffer[40] << 24;
      secsSince1900 |= (unsigned long)packetBuffer[41] << 16;
      secsSince1900 |= (unsigned long)packetBuffer[42] << 8;
      secsSince1900 |= (unsigned long)packetBuffer[43];
      return secsSince1900 - 2208988800UL;
    }
  }
  Udp.stop();
  Serial.println("No NTP Response :-(");
  return 0; // return 0 if unable to get the time
}

