# C++ OOP LED Blinking Inheritance Example for ESP32 / Shrike Fi (FreeRTOS)

##  Overview

This project demonstrates how to use Object-Oriented Programming (OOP) in Embedded C++ using **Inheritance** on ESP32 / Shrike Fi platforms.

### The example separates responsibilities into classes:

LED (Parent/Base Class)
Handles GPIO configuration and basic LED operations such as turning ON and OFF.
BlinkingLED (Child/Derived Class)
Inherits from LED and adds dynamic LED blinking using a user-defined delay in milliseconds.

### The implementation uses FreeRTOS delay (vTaskDelay) for non-blocking timing.

#### Features
C++ OOP support for Embedded Systems
Demonstrates Inheritance
GPIO abstraction using classes
Dynamic LED blink interval (user configurable)
Uses FreeRTOS delay
Compatible with:
ESP32
Shrike Fi


### OOP Structure
1. **Parent Class → LED**

    Responsible for:

    GPIO pin configuration
    Setting pin direction as output
    Turning LED ON
    Turning LED OFF

    Methods
    turnOn()
    turnOff()


2. **Child Class → BlinkingLED**

    Inherits from LED.

    Responsible for:

    Accepting user-defined delay in milliseconds
    Performing continuous LED blinking
    Using FreeRTOS scheduling
    Additional Method
    startBlinking()

#### How Inheritance Works
**Parent Object**
LED led(GPIO_NUM_21);

Creates a normal LED object with basic control.

**Child Object**
BlinkingLED led(GPIO_NUM_21, 500);

Creates a blinking LED object.

      Class Relationship
              LED
              │
              │ (Inheritance)
              ▼
        BlinkingLED

BlinkingLED inherits all functionality from LED and extends it with blinking behavior.


#### Constructor flow:

      BlinkingLED()
            ↓
          LED()
            ↓
      GPIO Configuration
            ↓
      Blink Logic Starts


#### Build and Flash
Using ESP-IDF:

```idf.py build```
```idf.py flash```
```idf.py monitor```

#### Expected Output
LED initialized at pin 21 as Output mode
Turning on LED at pin 21
Turning off LED at pin 21
Turning on LED at pin 21
Turning off LED at pin 21
....
