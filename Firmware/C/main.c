#include "stm32f042.h"
#include "serial.h"
#include "spi.h"

int main()
{
	initUART(9600);  	

	unsigned char* text = "Hello World!";

	while(1)
	{	
		WriteCom(sizeof(text), text);
	} 
	return 0;
}








