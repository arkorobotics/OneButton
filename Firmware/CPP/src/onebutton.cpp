/*

One Button
----------

By: Arko

Base Libraries: Andy Brown - https://github.com/andysworkshop/stm32plus

*/

#include "config/stm32plus.h"
#include "config/usb/device/device.h"
#include "config/timing.h"

using namespace stm32plus;


class UsbDeviceCustomHid {

  protected:

    /*
     * Definition for the LED. Change to suit your board.
     */

    enum { LED_PIN = 1 };
    typedef GpioB<DefaultDigitalOutputFeature<LED_PIN>> LedPort;


    /*
     * The constants in this structure are used to customise the HID to your
     * requirements.
     */

    struct MyHidConfiguration {

      enum {

        /*
         * USB Vendor and Product ID. Unfortunately commercial users will probably have to pay
         * the license fee to get an official VID and 64K PIDs with it. For testing and hacking
         * you can just do some research to find an unused VID and use it as you wish.
         */

        VID = 0xCAFE,
        PID = 0xDEAD,

        /*
         * IN and OUT are always with respect to the host. You as a device transmit on an IN
         * endpoint and receive on an OUT endpoint. Define how big your reports are here. 64-bytes
         * is the maximum allowed.
         *
         * Report id #1 is for reports TO the host (IN direction)
         * Report id #2 is for reports FROM the host (OUT direction)
         */

        IN_ENDPOINT_MAX_PACKET_SIZE = 9,   // 1 byte report id + 8-byte report
        OUT_ENDPOINT_MAX_PACKET_SIZE = 2,  // 1 byte report id + 1-byte report

        /*
         * The number of milliamps that our device will use. The maximum you can specify is 510.
         */

        MILLIAMPS = 500,

        /*
         * Additional configuration flags for the device. The available options that can be
         * or'd together are UsbConfigurationFlags::SELF_POWERED and
         * UsbConfigurationFlags::REMOTE_WAKEUP.
         */

        CONFIGURATION_FLAGS = 0,      // we want power from the bus

        /*
         * The language identifier for our strings
         */

        LANGUAGE_ID = 0x0409    // US English.
      };

      /*
       * USB devices support a number of Unicode strings that are used to show information
       * about the device such as the manufacturer, product, serial number and some other
       * stuff that's not usually as visible to the user. You need to define all 5 of them
       * here with the correct byte length. Look ahead to where these are defined to see
       * what the byte lengths will be and then come back here and set them accordingly.
       */

      static const uint8_t ManufacturerString[32];
      static const uint8_t ProductString[22];
      static const uint8_t SerialString[12];
      static const uint8_t ConfigurationString[8];
      static const uint8_t InterfaceString[8];
    };


    /*
     * Member variables for this demo
     */

    volatile bool _deviceConfigured;
    volatile uint32_t _receivedReportTime;
    volatile uint32_t _lastTransmitTime;

  public:

    void run() {

      /*
       * Set up the default values for the member variables
       */

      _deviceConfigured=false;
      _receivedReportTime=UINT32_MAX-1000;
      _lastTransmitTime=0;

      /*
       * Declare the LED port and turn off the LED
       */

      LedPort led;
      led[LED_PIN].reset();

      /*
       * Declare the USB custom HID object. This will initialise pins but won't
       * power up the device yet.
       */

      UsbKeyboard<MyHidConfiguration> usb;


      /*
       * Subscribe to all the events
       */

      usb.UsbRxEventSender.insertSubscriber(UsbRxEventSourceSlot::bind(this,&UsbDeviceCustomHid::onReceive));
      usb.UsbTxCompleteEventSender.insertSubscriber(UsbTxCompleteEventSourceSlot::bind(this,&UsbDeviceCustomHid::onTransmitComplete));
      usb.UsbStatusEventSender.insertSubscriber(UsbStatusEventSourceSlot::bind(this,&UsbDeviceCustomHid::onStatusChange));

      /*
       * Start the peripheral. This will pull up the DP line which is the trigger for the host
       * to start enumeration of this device
       */

      usb.start();

      /*
       * Go into an infinite loop running the demo
       */

      for(;;) {

        // if we're configured and it's been a second since the last time
        // then send a report to the host

        if(_deviceConfigured && MillisecondTimer::hasTimedOut(_lastTransmitTime,1000)) {

          // there's a race here in which the device could become unconfigured. a real program
          // should check the return value from usb.sendReport() before assuming that any
          // data was actually sent

          // note that the report data is always prefixed with the report ID, for the stm32plus
          // custom HID implementation report id #1 is for the IN direction (to host).
          uint8_t usb_key_report[8] = {2, 0, 4, 0, 0, 0, 0, 0};
          usb.sendReport(usb_key_report,8);

          _lastTransmitTime=MillisecondTimer::millis();
        }
      }
    }


    /*
     * Data received from the host
     */

    void onReceive(uint8_t endpointIndex,const uint16_t *data,uint16_t size) {

      // note that the report data is always prefixed with the report id, which is
      // 0x02 in the stm32plus custom HID implementation for reports OUT from the host

      if(endpointIndex==1 && size==2 && memcmp(data,"\x02\x01",size)==0)
        _receivedReportTime=MillisecondTimer::millis();
    }


    /*
     * Finished sending data to the host
     */

    void onTransmitComplete(uint8_t /* endpointIndex */,uint16_t /* size */) {
      // ACK received from the host
    }


    /*
     * Device status change event
     */

    void onStatusChange(UsbStatusType newStatus) {

      switch(newStatus) {

        case UsbStatusType::STATE_CONFIGURED:
        _deviceConfigured=true;
        _lastTransmitTime=MillisecondTimer::millis()+5000;    // 5 second delay before starting to send
        break;

        case UsbStatusType::STATE_DEFAULT:
        case UsbStatusType::STATE_ADDRESSED:
        case UsbStatusType::STATE_SUSPENDED:
          _deviceConfigured=false;
          break;

        default:
          break;
      }
    }
};


/*
 * These are the USB device strings in the format required for a USB string descriptor.
 * To change these to suit your device you need only change the unicode string in the
 * last line of each definition to suit your device. Then count up the bytes required for
 * the complete descriptor and go back and insert that byte count in the array declaration
 * in the configuration class.
 */

const uint8_t UsbDeviceCustomHid::MyHidConfiguration::ManufacturerString[sizeof(UsbDeviceCustomHid::MyHidConfiguration::ManufacturerString)]={
  sizeof(UsbDeviceCustomHid::MyHidConfiguration::ManufacturerString),
  USB_DESC_TYPE_STRING,
  'O',0,'N',0,'E',0,' ',0,'B',0,'U',0,'T',0,'T',0,'O',0,'N',0
};

const uint8_t UsbDeviceCustomHid::MyHidConfiguration::ProductString[sizeof(UsbDeviceCustomHid::MyHidConfiguration::ProductString)]={
  sizeof(UsbDeviceCustomHid::MyHidConfiguration::ProductString),
  USB_DESC_TYPE_STRING,
  'O',0,'N',0,'E',0,' ',0,'B',0,'U',0,'T',0,'T',0,'O',0,'N',0
};

const uint8_t UsbDeviceCustomHid::MyHidConfiguration::SerialString[sizeof(UsbDeviceCustomHid::MyHidConfiguration::SerialString)]={
  sizeof(UsbDeviceCustomHid::MyHidConfiguration::SerialString),
  USB_DESC_TYPE_STRING,
  '1',0,'.',0,'0',0,'.',0,'0',0
};

const uint8_t UsbDeviceCustomHid::MyHidConfiguration::ConfigurationString[sizeof(UsbDeviceCustomHid::MyHidConfiguration::ConfigurationString)]={
  sizeof(UsbDeviceCustomHid::MyHidConfiguration::ConfigurationString),
  USB_DESC_TYPE_STRING,
  'c',0,'f',0,'g',0
};

const uint8_t UsbDeviceCustomHid::MyHidConfiguration::InterfaceString[sizeof(UsbDeviceCustomHid::MyHidConfiguration::InterfaceString)]={
  sizeof(UsbDeviceCustomHid::MyHidConfiguration::InterfaceString),
  USB_DESC_TYPE_STRING,
  'i',0,'t',0,'f',0
};

/*
 * Main entry point
 */

int main() {

  // set up SysTick at 1ms resolution
  MillisecondTimer::initialise();

  UsbDeviceCustomHid hid;
  hid.run();

  // not reached
  return 0;
}
