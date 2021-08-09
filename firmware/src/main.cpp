#include <Arduino.h>
#include <Wire.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <U8g2lib.h>
#include <EEPROM.h>
#include <string.h>
#include <OneButton.h>

U8X8_SSD1306_128X64_NONAME_HW_I2C disp;

#define RELAY_PIN 11
#define BUT_UP    5
#define BUT_DOWN  6

#define FIRST_ROW 26
#define SECOND_ROW 58

#define DEFAULT_SET_POINT 4
#define DEFAULT_HIST      1
#define EEPROM_SAVE_DELAY 3000
#define TEMP_SENSE_DELAY 3000

// Data wire is plugged into port 2 on the Arduino
#define ONE_WIRE_BUS 12

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

OneButton upButton = OneButton(
  BUT_UP,  // Input pin for the button
  true,        // Button is active LOW
  true         // Enable internal pull-up resistor
);

OneButton downButton = OneButton(
  BUT_DOWN,  // Input pin for the button
  true,        // Button is active LOW
  true         // Enable internal pull-up resistor
);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);
DeviceAddress thermometer;


typedef union flTemp {
    float value;
    uint8_t bytes;
} floatTemp;

floatTemp setTemp;
bool doUpdate = false;
unsigned long lastButton = ULONG_MAX;
unsigned long lastSense = 0;


static void handleUpClick() {
        setTemp.value += 0.5;
        doUpdate = true;
        lastButton = millis();
}
static void handleDownClick() {
        setTemp.value -= 0.5;
        doUpdate = true;
        lastButton = millis();
}

void setup() {
    setTemp.value = DEFAULT_SET_POINT;
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

    EEPROM.begin();
    (&setTemp.bytes)[0] = EEPROM.read(0);
    (&setTemp.bytes)[1] = EEPROM.read(1);
    (&setTemp.bytes)[2] = EEPROM.read(2);
    (&setTemp.bytes)[3] = EEPROM.read(3);
    if (setTemp.value == NAN || setTemp.value > 50.0 || setTemp.value < -50.0) {
        setTemp.value = DEFAULT_SET_POINT;
    }

    upButton.attachClick(handleUpClick);
    downButton.attachClick(handleDownClick);
}

void loop() {
    char bufNow[10];
    char bufSet[10];
    static float lastTemp = 0.0;
    static int dRows = disp.getRows();
    static int dCols = disp.getCols();
    static bool active = false;
    static float nowTemp = 0;

    if (millis() - TEMP_SENSE_DELAY > lastSense) {
        lastSense = millis();
        sensors.requestTemperatures();
        nowTemp = sensors.getTempC(thermometer);
        doUpdate = doUpdate || (nowTemp != lastTemp);
    }

    upButton.tick();
    downButton.tick();

    if (nowTemp >= setTemp.value + DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, HIGH);
        active = true;
        doUpdate = true;
    }

    if (nowTemp <= setTemp.value - DEFAULT_HIST) {
        digitalWrite(RELAY_PIN, LOW);
        active = false;
        doUpdate = true;
    }

    if (doUpdate) {
        doUpdate = false;
        lastTemp = nowTemp; 
        dtostrf(nowTemp, 3, 1, bufNow);
        dtostrf(setTemp.value, 3, 1, bufSet);

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

    if (millis() - EEPROM_SAVE_DELAY > lastButton ) {
        lastButton = ULONG_MAX; // suspend until next button press
        EEPROM.update(0, (&setTemp.bytes)[0]);
        EEPROM.update(1, (&setTemp.bytes)[1]);
        EEPROM.update(2, (&setTemp.bytes)[2]);
        EEPROM.update(3, (&setTemp.bytes)[3]);
    }
}
