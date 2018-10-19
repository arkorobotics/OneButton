/*

One Button
----------

By: Arko

Base Libraries: Andy Brown - https://github.com/andysworkshop/stm32plus

*/

#include "config/stm32plus.h"
#include "config/usb/device/device.h"
#include "config/spi.h"
#include "config/dma.h"
#include "config/timing.h"

#include "usb_hid_keys.h"


using namespace stm32plus;


class OneButton {

  protected:

    /*
     * Definition for the LED. Change to suit your board.
     */

    enum { 
      KEY_IN_PIN = 6,
      KEY_OUT_PIN = 5
    };

    typedef GpioA<DefaultDigitalInputFeature<KEY_IN_PIN>> ButtonInPort;
    typedef GpioA<DefaultDigitalOutputFeature<KEY_OUT_PIN>> ButtonOutPort;


    uint8_t led_bytes[24];

    uint8_t dataToSend[289];

    uint32_t estop = 1;

    uint8_t colorsweep = 0;

    /*
     * The constants in this structure are used to customize the HID to your
     * requirements.
     */

    struct UsbHidKeyboard {

      enum {

        /*
         * USB Vendor and Product ID. Unfortunately commercial users will probably have to pay
         * the license fee to get an official VID and 64K PIDs with it. For testing and hacking
         * you can just do some research to find an unused VID and use it as you wish.
         */

        VID = 0xCAFE,
        PID = 0x1CFB,



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
     * Member variables
     */

    volatile bool _deviceConfigured;
    volatile uint32_t _receivedReportTime;
    volatile uint32_t _lastTransmitTime;

    volatile uint8_t _debounce = 0;

  public:
    
    /*
    * Declare the USB custom HID object. This will initialise pins but won't
    * power up the device yet.
    */

    UsbMouse<UsbHidKeyboard> usb;


    void run() {

      /*
       * Set up the default values for the member variables
       */

      _deviceConfigured=false;
      _receivedReportTime=UINT32_MAX-1000;
      _lastTransmitTime=0;


      // SPI DMA - WS8212 Single NZR Communication Mode
      //
      typedef Spi1<> SPISender;

      SPISender::Parameters senderParams;

      senderParams.spi_mode = SPI_Mode_Master;
      senderParams.spi_baudRatePrescaler = SPI_BaudRatePrescaler_4;

      SPISender sender(senderParams);

      Spi1TxDmaChannel<SpiDmaWriterFeature<Spi1PeripheralTraits,DMA_Priority_Medium> > dmaSender;


      /*
       * Declare the One Button Key port
       */

      ButtonOutPort keyout;
      keyout[KEY_OUT_PIN].reset();
      keyout.setState(0);

      ButtonInPort keyin;
      keyin[KEY_IN_PIN].reset();

      MillisecondTimer::delay(1000);



      /*
       * Subscribe to all the events
       */

      usb.UsbRxEventSender.insertSubscriber(UsbRxEventSourceSlot::bind(this,&OneButton::onReceive));
      usb.UsbTxCompleteEventSender.insertSubscriber(UsbTxCompleteEventSourceSlot::bind(this,&OneButton::onTransmitComplete));
      usb.UsbStatusEventSender.insertSubscriber(UsbStatusEventSourceSlot::bind(this,&OneButton::onStatusChange));

      /*
       * Start the peripheral. This will pull up the DP line which is the trigger for the host
       * to start enumeration of this device
       */

      usb.start();

      uint8_t wiggle = 0;

      // Main Loop
      for(;;)
      {

        if(wiggle != 0)
        {
          // Initialize USB Key Report
          uint8_t usb_key_report[8] = {0, 0, 0, 0, 0, 0, 0, 0};

          // CTRL + F12
          usb_key_report[0] = 0;
          usb_key_report[1] = 10;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(10);

          sendendreport();

          MillisecondTimer::delay(10);

          // CTRL + F12
          usb_key_report[0] = 0;
          usb_key_report[1] = -10;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(10);
        }

        if(keyin.read()==0 && _debounce == 0)
        {
          wiggle = ~wiggle;

          /*
          // TYPE 'firefox'
          uint8_t keystring[] = "firefox";
          sendstring(keystring, sizeof(keystring));
          MillisecondTimer::delay(20);

          // Wait for search results
          MillisecondTimer::delay(500);

          // ENTER
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_ENTER;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(12000);
          sendendreport();

          // TYPE 'star'
          uint8_t h_string[] = "star";
          sendstring(h_string, sizeof(h_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // SPACE
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_SPACE;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'wars'
          uint8_t t_string[] = "wars";
          sendstring(t_string, sizeof(t_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // SPACE
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_SPACE;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'soundtrack'
          uint8_t p_string[] = "soundtrack";
          sendstring(p_string, sizeof(p_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // SPACE
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_SPACE;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'marshal'
          uint8_t mar_string[] = "marshal";
          sendstring(mar_string, sizeof(mar_string));
          MillisecondTimer::delay(50);
          sendendreport();
          MillisecondTimer::delay(100);

          // TYPE 'l'
          uint8_t ll_string[] = "l";
          sendstring(ll_string, sizeof(ll_string));
          MillisecondTimer::delay(50);
          sendendreport();
          MillisecondTimer::delay(500);

          // TAB
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_TAB;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();
          MillisecondTimer::delay(500);

          // TAB
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_TAB;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();
          MillisecondTimer::delay(500);


          // ENTER
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_ENTER;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(50);
          sendendreport();
          MillisecondTimer::delay(1000);

          // -----------------

          // CTRL + F12
          usb_key_report[0] = KEY_MOD_LCTRL;
          usb_key_report[2] = KEY_F12;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          
          // Wait for search box
          MillisecondTimer::delay(500);

          // TYPE 'terminal'
          uint8_t ter_string[] = "terminal";
          sendstring(ter_string, sizeof(ter_string));
          MillisecondTimer::delay(20);
          sendendreport();
          // Wait for search results
          MillisecondTimer::delay(1500);

          // ENTER
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_ENTER;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();
          MillisecondTimer::delay(2500);

          // TYPE 'telnet'
          uint8_t tel_string[] = "telnet";
          sendstring(tel_string, sizeof(tel_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // SPACE
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_SPACE;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'towel'
          uint8_t towel_string[] = "towel";
          sendstring(towel_string, sizeof(towel_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // DOT
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_DOT;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'blinkenlights'
          uint8_t blink_string[] = "blinkenlights";
          sendstring(blink_string, sizeof(blink_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // DOT
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_DOT;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();

          // TYPE 'nl'
          uint8_t nl_string[] = "nl";
          sendstring(nl_string, sizeof(nl_string));
          MillisecondTimer::delay(20);
          sendendreport();

          // ENTER
          usb_key_report[0] = 0;
          usb_key_report[2] = KEY_ENTER;
          usb.sendReport(usb_key_report,sizeof(usb_key_report));
          MillisecondTimer::delay(20);
          sendendreport();
          MillisecondTimer::delay(500);
          */

          //0xF00 - High
          //0xFC0 - Low

          uint32_t led_bytes_idx = 0;
          uint32_t color_g = wiggle;
          uint32_t color_r = ~wiggle;
          uint32_t color_b = 0;

          for(led_bytes_idx = 0; led_bytes_idx < 24; led_bytes_idx++)
          {
            if(led_bytes_idx % 3 == 0)
            {
              led_bytes[led_bytes_idx] = color_g;
            }
            if(led_bytes_idx % 3 == 1)
            {
              led_bytes[led_bytes_idx] = color_r;
            }
            if(led_bytes_idx % 3 == 2)
            {
              led_bytes[led_bytes_idx] = color_b;
            }
          }
          
          colorsweep++;
          
          uint16_t led_bit_high = 0xFE0;
          uint16_t led_bit_low = 0xF00;

          uint16_t led_bit_1 = 0;
          uint16_t led_bit_2 = 0;

          uint32_t data_idx = 0;

          for(int a=0; a<24; a++)
          {
            uint8_t led_byte = led_bytes[a];

            for(int b=0; b<8; b=b+2)
            {
              if( ((led_byte >> b) & 0x01) == 1)
              {
                led_bit_1 = led_bit_high;
              }
              else
              {
                led_bit_1 = led_bit_low;
              }

              if( ((led_byte >> (b+1)) & 0x01) == 1)
              {
                led_bit_2 = led_bit_high;
              }
              else
              {
                led_bit_2 = led_bit_low;
              }

              dataToSend[data_idx]   = (uint8_t)(0xFF & (uint16_t)(led_bit_1 >> 4));
              dataToSend[data_idx+1] = ((uint8_t)(0x0F & led_bit_1) << 4) | (uint8_t)(0x0F & (uint16_t)(led_bit_2 >> 8));
              dataToSend[data_idx+2] = (uint8_t)(0xFF & (uint16_t)(led_bit_2));

              data_idx = data_idx + 3;
            }
          }

          dataToSend[288] = 0;

          // SPI DMA Output to WS8212
          sender.setNss(false);

          dmaSender.beginWrite(dataToSend,sizeof(dataToSend));

          _debounce = 1;

          MillisecondTimer::delay(200);

        }
        else
        {
          // SPI DMA Output to WS8212
          sender.setNss(false);

          dmaSender.beginWrite(dataToSend,sizeof(dataToSend));
        }

        if(keyin.read() == 1)
        {
          _debounce = 0;
        }

        sender.waitForIdle();
        sender.setNss(true);

        MillisecondTimer::delay(1);

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

    uint8_t reverseBits(uint8_t byte_in)
    {
      uint8_t byte = byte_in;
      uint8_t byte_out = 0;
      uint8_t bit = 0;

      for(int idx=1; idx<=8; idx++)
      { 
        bit = byte & 0x01;
        byte = byte >> 1;
        byte_out = byte_out << 1; 
        if(bit==1)
        {
          byte_out = byte_out + 1;
        }
      }

      return byte_out;
    }


    void sendstring(uint8_t* straddress, uint8_t length)
    {
      for(uint8_t i=0; i < length; i++)
      {
        uint8_t _sendchar = straddress[i] - (uint8_t)(0x5D);

        // Send Key Hit
        uint8_t usb_report[8] = {0, 0, _sendchar, 0, 0, 0, 0, 0};

        usb.sendReport(usb_report,sizeof(usb_report));

        MillisecondTimer::delay(20);
      }
    }

    void sendendreport()
    {
      // Last Key Report must be all zeros
      uint8_t usb_end_report[8] = {0, 0, 0, 0, 0, 0, 0, 0};
      usb.sendReport(usb_end_report,sizeof(usb_end_report));
      MillisecondTimer::delay(20);
    }
};


/*
 * These are the USB device strings in the format required for a USB string descriptor.
 * To change these to suit your device you need only change the unicode string in the
 * last line of each definition to suit your device. Then count up the bytes required for
 * the complete descriptor and go back and insert that byte count in the array declaration
 * in the configuration class.
 */

const uint8_t OneButton::UsbHidKeyboard::ManufacturerString[sizeof(OneButton::UsbHidKeyboard::ManufacturerString)]={
  sizeof(OneButton::UsbHidKeyboard::ManufacturerString),
  USB_DESC_TYPE_STRING,
  'O',0,'N',0,'E',0,' ',0,'B',0,'U',0,'T',0,'T',0,'O',0,'N',0
};

const uint8_t OneButton::UsbHidKeyboard::ProductString[sizeof(OneButton::UsbHidKeyboard::ProductString)]={
  sizeof(OneButton::UsbHidKeyboard::ProductString),
  USB_DESC_TYPE_STRING,
  'O',0,'N',0,'E',0,' ',0,'B',0,'U',0,'T',0,'T',0,'O',0,'N',0
};

const uint8_t OneButton::UsbHidKeyboard::SerialString[sizeof(OneButton::UsbHidKeyboard::SerialString)]={
  sizeof(OneButton::UsbHidKeyboard::SerialString),
  USB_DESC_TYPE_STRING,
  '1',0,'.',0,'0',0,'.',0,'0',0
};

const uint8_t OneButton::UsbHidKeyboard::ConfigurationString[sizeof(OneButton::UsbHidKeyboard::ConfigurationString)]={
  sizeof(OneButton::UsbHidKeyboard::ConfigurationString),
  USB_DESC_TYPE_STRING,
  'c',0,'f',0,'g',0
};

const uint8_t OneButton::UsbHidKeyboard::InterfaceString[sizeof(OneButton::UsbHidKeyboard::InterfaceString)]={
  sizeof(OneButton::UsbHidKeyboard::InterfaceString),
  USB_DESC_TYPE_STRING,
  'i',0,'t',0,'f',0
};

/*
 * Main entry point
 */

int main() {

  Nvic::initialise();

  // set up SysTick at 1ms resolution
  MillisecondTimer::initialise();

  OneButton onebutton;
  onebutton.run();

  // not reached
  return 0;
}
