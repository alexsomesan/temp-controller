#include <Arduino.h>
#include <Wire.h>
#include <OneWire.h>
#include <DallasTemperature.h>
// #include <U8g2lib.h>
#include <U8x8lib.h>
#include <string.h>

U8X8_SSD1306_128X64_NONAME_HW_I2C disp;

#define RELAY_PIN 11

#define FIRST_ROW 26
#define SECOND_ROW 58

#define DEFAULT_SET_POINT 4
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

    disp.begin();
    disp.setFont(u8x8_font_courB18_2x3_r);
    disp.clear();

    sensors.begin();
    if (sensors.getDeviceCount() < 1 || !sensors.getAddress(thermometer, 0)) {
        disp.clear();
        disp.drawString(0, 0, "Sensor");
        disp.drawString(0, 3, "missing");
        while(1);
    }
}

void loop() {
    char bufNow[10];
    char bufSet[10];
    static float lastTemp = 0.0;
    static float setTemp = DEFAULT_SET_POINT;
    static int dRows = disp.getRows();
    static int dCols = disp.getCols();
    bool doUpdate = false;
    static bool active = false;
    
    sensors.requestTemperatures();
    float nowTemp = sensors.getTempC(thermometer);

    doUpdate = nowTemp != lastTemp;

    if (nowTemp >= DEFAULT_SET_POINT + DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, HIGH);
        active = true;
        doUpdate = true;
    } 
    if (nowTemp <= DEFAULT_SET_POINT - DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, LOW);
        active = false;
        doUpdate = true;
    }

    if (doUpdate) {
        lastTemp = nowTemp; 
        dtostrf(nowTemp, 3, 1, bufNow);
        dtostrf(setTemp, 3, 1, bufSet);

        // // first row
        disp.drawString(0, 0, "NOW");
        if (active) {
            disp.inverse();
        } else {
            disp.noInverse();
        }
        disp.drawString(dCols / 2, 0, bufNow);

        // // second row
        disp.noInverse();
        disp.drawString(0, dRows/2, "SET");
        disp.drawString(dCols / 2, dRows/2, bufSet);
    }
}
