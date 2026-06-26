#include <iostream>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

using namespace std;

class LED
{
  protected:
    gpio_num_t pin;

  public:
    LED(gpio_num_t pin) : pin(pin)
    {
      gpio_set_direction(pin, GPIO_MODE_OUTPUT);
      cout << "LED initialized at pin " << pin << " as Output mode" << endl;
    }

    void turnOn()
    {
      cout << "Turning on LED at pin " << pin << endl;
      gpio_set_level(pin, 1);
    }

    void turnOff()
    {
      cout << "Turning off LED at pin " << pin << endl;
      gpio_set_level(pin, 0);
    }
};

class  BlinkingLED : public LED
{
  private:
    int blinkInterval;

  public:
    BlinkingLED(gpio_num_t pin, int interval) : LED(pin), blinkInterval(interval) {}

    void startBlinking()
    {
      while (true)
      {
        turnOn();
        vTaskDelay(blinkInterval / portTICK_PERIOD_MS);
        turnOff();
        vTaskDelay(blinkInterval / portTICK_PERIOD_MS);
      }
    }
};

extern "C" void app_main()
{
  BlinkingLED led(GPIO_NUM_21, 500); // Blink every 500 milliseconds

  while (true)
  {
    led.startBlinking();
  }
}
