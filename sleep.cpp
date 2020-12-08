
#include <avr/sleep.h>
#include "Arduino.h"
#include "pin_selection.h"

void pciSetup(byte pin)
 {
        pinMode(SLEEP_WAKE_PIN, INPUT_PULLUP);
        *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
        PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
        PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
 }
     
    // Use one Routine to handle each group
     
ISR (PCINT0_vect) // handle pin change interrupt for D8 to D13 here
  {    
         if(digitalRead(SLEEP_WAKE_PIN) == LOW){
          sleep_disable();
          digitalWrite(OUTPUT_RELAY_ON_PIN, HIGH);
          delay(1500);
          digitalWrite(OUTPUT_RELAY_ON_PIN, LOW);

          digitalWrite(OUTPUT_RELAY_OFF_PIN, HIGH);
          delay(1500);
          digitalWrite(OUTPUT_RELAY_OFF_PIN, LOW);

          delay(15000);
          

          digitalWrite(OUTPUT_RELAY_ON_PIN, HIGH);
          delay(1500);
          digitalWrite(OUTPUT_RELAY_ON_PIN, LOW);

          digitalWrite(OUTPUT_RELAY_OFF_PIN, HIGH);
          delay(1500);
          digitalWrite(OUTPUT_RELAY_OFF_PIN, LOW);
         }
  }

  void power_off(){

    digitalWrite(LED_BUILTIN, LOW);
    Serial.end();

    // disable ADC
    ADCSRA = 0;  
    
    set_sleep_mode (SLEEP_MODE_PWR_DOWN);  
    sleep_enable();


/*
    // Do not interrupt before we go to sleep, or the
    // ISR will detach interrupts and we won't wake.
    noInterrupts ();
    
    // will be called when pin D2 goes low  
    attachInterrupt (LED_BUILTIN, toggleLed, FALLING);
    EIFR = bit (INTF0);  // clear flag for interrupt 0
    
    // turn off brown-out enable in software
    // BODS must be set to one and BODSE must be set to zero within four clock cycles
    ///MCUCR = bit (BODS) | bit (BODSE);
    // The BODS bit is automatically cleared after three clock cycles
    ///MCUCR = bit (BODS); 
    
    // We are guaranteed that the sleep_cpu call will be done
    // as the processor executes the next instruction after
    // interrupts are turned on.
    interrupts ();  // one cycle

    */
    sleep_cpu ();   // one cycle
  }