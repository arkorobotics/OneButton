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

        VID = 0xDEAD,
        PID = 0xCAFE,

        /*
         * IN and OUT are always with respect to the host. You as a device transmit on an IN
         * endpoint and receive on an OUT endpoint. Define how big your reports are here. 64-bytes
         * is the maximum allowed.
         *
         * Report id #1 is for reports TO the host (IN direction)
         * Report id #2 is for reports FROM the host (OUT direction)
         */

        IN_ENDPOINT_MAX_PACKET_SIZE = 12,   // 1 byte report id + 11-byte report
        OUT_ENDPOINT_MAX_PACKET_SIZE = 10,  // 1 byte report id + 9-byte report

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

        // keep the LED lit if a report was received in the last 500ms

        led[LED_PIN].setState(!MillisecondTimer::hasTimedOut(_receivedReportTime,500));


        // if we're configured and it's been a second since the last time
        // then send a report to the host

        if(_deviceConfigured && MillisecondTimer::hasTimedOut(_lastTransmitTime,1000)) {

          // there's a race here in which the device could become unconfigured. a real program
          // should check the return value from usb.sendReport() before assuming that any
          // data was actually sent

          // note that the report data is always prefixed with the report ID, for the stm32plus
          // custom HID implementation report id #1 is for the IN direction (to host).

          usb.sendReport("\x01Hello World",12);
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

      if(endpointIndex==1 && size==10 && memcmp(data,"\x02stm32plus",size)==0)
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

const uint8_t KeyboardReportDescriptor[63] = {
  0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
  0x09, 0x06,                    // USAGE (Keyboard)
  0xa1, 0x01,                    // COLLECTION (Application)
  0x75, 0x01,                    //   REPORT_SIZE (1)
  0x95, 0x08,                    //   REPORT_COUNT (8)
  0x05, 0x07,                    //   USAGE_PAGE (Keyboard)(Key Codes)
  0x19, 0xe0,                    //   USAGE_MINIMUM (Keyboard LeftControl)(224)
  0x29, 0xe7,                    //   USAGE_MAXIMUM (Keyboard Right GUI)(231)
  0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
  0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
  0x81, 0x02,                    //   INPUT (Data,Var,Abs) ; Modifier byte
  0x95, 0x01,                    //   REPORT_COUNT (1)
  0x75, 0x08,                    //   REPORT_SIZE (8)
  0x81, 0x03,                    //   INPUT (Cnst,Var,Abs) ; Reserved byte
  0x95, 0x05,                    //   REPORT_COUNT (5)
  0x75, 0x01,                    //   REPORT_SIZE (1)
  0x05, 0x08,                    //   USAGE_PAGE (LEDs)
  0x19, 0x01,                    //   USAGE_MINIMUM (Num Lock)
  0x29, 0x05,                    //   USAGE_MAXIMUM (Kana)
  0x91, 0x02,                    //   OUTPUT (Data,Var,Abs) ; LED report
  0x95, 0x01,                    //   REPORT_COUNT (1)
  0x75, 0x03,                    //   REPORT_SIZE (3)
  0x91, 0x03,                    //   OUTPUT (Cnst,Var,Abs) ; LED report padding
  0x95, 0x06,                    //   REPORT_COUNT (6)
  0x75, 0x08,                    //   REPORT_SIZE (8)
  0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
  0x25, 0x65,                    //   LOGICAL_MAXIMUM (101)
  0x05, 0x07,                    //   USAGE_PAGE (Keyboard)(Key Codes)
  0x19, 0x00,                    //   USAGE_MINIMUM (Reserved (no event indicated))(0)
  0x29, 0x65,                    //   USAGE_MAXIMUM (Keyboard Application)(101)
  0x81, 0x00,                    //   INPUT (Data,Ary,Abs)
  0xc0                           // END_COLLECTION
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
