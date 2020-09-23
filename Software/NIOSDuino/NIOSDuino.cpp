
#include <Arduino.h>
#include <SPIFlash.h>

SPIFlash flash (39,0xEF40);

const char * Pins[] = {
    "A0_P", "A0_N", "A1_P", "A1_N", "A2_P", "A2_N", "A3_P", "A3_N", "A4_P", "A4_N", "A5_P", "A5_N", 
    "B0_P", "B0_N", "B1_P", "B1_N", "B2_P", "B2_N", "B3_P", "B3_N", "B4_P", "B4_N", "B5_P", "B5_N", 
    "SMB_ALERT", "SMB_SDA", "SMB_SCL", "HSO", "HSRST", "HSI", "LS16", "LS17", "LS18"
};

void setup() {
    Serial.begin(9600); //Set Baudrate with "New Processor"
    pinMode(33, OUTPUT);
    for (int i = 0; i <= 32; i++) {
        pinMode(i, INPUT);
    }
}

void loop() {
    bool error = false;
    
    if(flash.initialize()) Serial.println("Flash OK");
    else
    {
        Serial.println("Error: Flash not responding");
        error = true;
    }
    
    for(int i = 0; i < 32; i++)
    {
        pinMode(i, OUTPUT);
        digitalWrite(i, LOW);
        if(!digitalRead(i+1))
        {
            Serial.print("ERROR: Short circuit between IO ");
            Serial.print(Pins[i]);
            Serial.print(" and ");
            Serial.print(Pins[i+1]);
            Serial.println("!");
            error = true;
        }
        pinMode(i, INPUT);
    }
    
    if (!error) {
        digitalWrite(33, HIGH);
        delay(1000);
        digitalWrite(33, LOW);
        delay(1000);
    }
    else {
        delay(2000);
    }
}
