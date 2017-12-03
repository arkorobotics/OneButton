/*
 * f042_bob.h - hardware setup for STM32F042F6
 * 06-11-15 E. Brombaugh
 */

#ifndef __f042_bob__
#define __f042_bob__

#include "stm32f0xx.h"

// this enables the internal USP pullup
#define INTERNAL_PULLUP

typedef enum 
{
  COM1 = 0,
  COM2 = 1
} COM_TypeDef;   

#define COMn                             1

#define EVAL_COM1                        USART2
#define EVAL_COM1_CLK                    RCC_APB1Periph_USART2

#define EVAL_COM1_TX_PIN                 GPIO_Pin_2
#define EVAL_COM1_TX_GPIO_PORT           GPIOA
#define EVAL_COM1_TX_GPIO_CLK            RCC_AHBPeriph_GPIOA
#define EVAL_COM1_TX_SOURCE              GPIO_PinSource2
#define EVAL_COM1_TX_AF                  GPIO_AF_1

#define EVAL_COM1_RX_PIN                 GPIO_Pin_3
#define EVAL_COM1_RX_GPIO_PORT           GPIOA
#define EVAL_COM1_RX_GPIO_CLK            RCC_AHBPeriph_GPIOA
#define EVAL_COM1_RX_SOURCE              GPIO_PinSource3
#define EVAL_COM1_RX_AF                  GPIO_AF_1

#define EVAL_COM1_CTS_PIN                GPIO_Pin_0
#define EVAL_COM1_CTS_GPIO_PORT          GPIOA
#define EVAL_COM1_CTS_GPIO_CLK           RCC_AHBPeriph_GPIOA
#define EVAL_COM1_CTS_SOURCE             GPIO_PinSource0
#define EVAL_COM1_CTS_AF                 GPIO_AF_1

#define EVAL_COM1_RTS_PIN                GPIO_Pin_1
#define EVAL_COM1_RTS_GPIO_PORT          GPIOA
#define EVAL_COM1_RTS_GPIO_CLK           RCC_AHBPeriph_GPIOA
#define EVAL_COM1_RTS_SOURCE             GPIO_PinSource1
#define EVAL_COM1_RTS_AF                 GPIO_AF_1
   
#define EVAL_COM1_IRQn                   USART2_IRQn

void STM_EVAL_COMInit(COM_TypeDef COM, USART_InitTypeDef* USART_InitStruct);

#endif
