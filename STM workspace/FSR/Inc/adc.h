/*
 * adc.h
 *
 *  Created on: Sep 21, 2024
 *      Author: Vishnu
 */

#ifndef ADC_H_
#define ADC_H_


#include <stdint.h>
#include <stm32f4xx.h>  // Library for STM32f407
#include <stm32f4xx_hal.h>

extern volatile uint32_t dma2_status;
extern volatile uint32_t adc_data;

void adc_init(void);
void adc_start(void);
void adc_read(void);
void DMA2_Stream0_IRQHandler(void);

#endif /* ADC_H_ */
