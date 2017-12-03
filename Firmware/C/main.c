// ONE BUTTON
// By: Arko

#include "stm32f0xx.h"
#include "systick.h"
#include "usbd_cdc_core.h"
#include "usbd_usr.h"

USB_CORE_HANDLE  USB_Device_dev ;

int main(void)
{
	// Hardware Initialization
	systick_init();
	
	// Remap PA11-12 to PA9-10 for USB
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGCOMPEN;	
	SYSCFG->CFGR1 |= SYSCFG_CFGR1_PA11_PA12_RMP;
		
	USBD_Init(&USB_Device_dev,
            &USR_desc, 
            &USBD_CDC_cb, 
            &USR_cb);
	
	while(1)
	{
		// Loopy things
	}
}
