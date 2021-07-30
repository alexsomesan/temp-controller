#include <Arduino.h>
#include <Wire.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <U8g2lib.h>
#include <string.h>

U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);

#define RELAY_PIN 11

#define FIRST_ROW 26
#define SECOND_ROW 58

#define DEFAULT_SET_POINT 30
#define DEFAULT_HIST      1

// Data wire is plugged into port 2 on the Arduino
#define ONE_WIRE_BUS 12

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);
DeviceAddress thermometer;

void setup() {
    pinMode(RELAY_PIN, OUTPUT);
    pinMode(LED_BUILTIN, OUTPUT);
    digitalWrite(RELAY_PIN, LOW);

    u8g2.begin();
    u8g2.setFont(u8g2_font_logisoso20_tr);	// choose a suitable font

    sensors.begin();
    if (sensors.getDeviceCount() < 1 || !sensors.getAddress(thermometer, 0)) {
        u8g2.clearBuffer();
        u8g2.drawStr(0, FIRST_ROW, "Sensor");
        u8g2.drawStr(0, SECOND_ROW, "missing");
        u8g2.sendBuffer();
        while(1);
    }
}

void loop() {
    char bufNow[10];
    char bufSet[10];
    static float lastTemp = 0.0;
    static float setTemp = DEFAULT_SET_POINT;
    bool doUpdate = false;
    static bool active = false;
    
    sensors.requestTemperatures();
    float nowTemp = sensors.getTempC(thermometer);

    doUpdate = nowTemp != lastTemp;

    if (doUpdate) {
        lastTemp = nowTemp; 
        dtostrf(nowTemp, 3, 1, bufNow);
        dtostrf(setTemp, 3, 1, bufSet);

        u8g2.clearBuffer();
        
        // first row
        if (active) { 
            u8g2.
        } else {
            u8g2.noInverse();
        }
        uint8_t hLen = u8g2.getStrWidth("SOLL");
        u8g2.drawStr((64 - hLen) / 2, FIRST_ROW, "IST");
        u8g2.drawStr((64 - hLen) / 2 + 64, FIRST_ROW, "SOLL");

        // second row
        uint8_t sLen = u8g2.getStrWidth(bufSet);
        uint8_t nLen = u8g2.getStrWidth(bufNow);
        u8g2.drawStr((64 - nLen) / 2, SECOND_ROW, bufNow);
        u8g2.drawStr((64 - sLen) / 2 + 64, SECOND_ROW, bufSet);

        u8g2.drawHVLine(64, 0, 64, 1);
        
        u8g2.sendBuffer();
    }

    if (nowTemp >= DEFAULT_SET_POINT + DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, HIGH);
        active = true;
    } 
    if (nowTemp <= DEFAULT_SET_POINT - DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, LOW);
        active = false;
    }
}
