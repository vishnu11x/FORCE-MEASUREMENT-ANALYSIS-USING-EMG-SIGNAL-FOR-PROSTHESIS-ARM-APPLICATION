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

extern volatile uint16_t dma2_status;
extern volatile uint32_t adc_data[3];


void adc_init(void);
void adc_start(void);
void process_adc_data(uint32_t data);
void DMA2_Stream0_IRQHandler(void);

#endif /* ADC_H_ */
