/*
 * adc.c
 *
 *  Created on: Sep 21, 2024
 *      Author: Vishnu
 */

#include <adc.h>

volatile uint32_t adc_data[3];
volatile uint16_t dma2_status;


void adc_init(void){

	/* Enable Clock */
	RCC -> AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	RCC -> AHB1ENR |= RCC_AHB1ENR_DMA2EN;
	RCC -> APB1ENR |= RCC_APB1ENR_TIM2EN;
	RCC -> APB2ENR |= RCC_APB2ENR_ADC1EN;
	RCC -> APB2ENR |= RCC_APB2ENR_ADC2EN;
	RCC -> APB2ENR |= RCC_APB2ENR_ADC3EN;

	/* Set PA1, PA2, PA3, as Analog port */
	GPIOA -> MODER |= (GPIO_MODER_MODER1_0) | (GPIO_MODER_MODER1_1);
	GPIOA -> MODER |= (GPIO_MODER_MODER2_0) | (GPIO_MODER_MODER2_1);
	GPIOA -> MODER |= (GPIO_MODER_MODER3_0) | (GPIO_MODER_MODER3_1);

	/* Configure ADC */
	//ADC1
	ADC1 -> SQR3 |= (0X01);  // Select Ch 1
	ADC1 -> CR2 |= (ADC_CR2_EXTEN_1);  // Enable External trigger
	ADC1 -> CR2 &= ~(ADC_CR2_EXTEN_0);
	ADC1 -> CR2 &= ~( (ADC_CR2_EXTSEL_0) | (ADC_CR2_EXTSEL_3));  // Select TIM2 TRGO event
	ADC1 -> CR2 |= (ADC_CR2_EXTSEL_1) | (ADC_CR2_EXTSEL_2);
	ADC1 -> CR2 |= (ADC_CR2_ADON);  //Enable ADC1

	//ADC2
	ADC2 -> SQR3 |= (0X02);  // Select Ch 2
	ADC2 -> CR2 |= (ADC_CR2_ADON);  //Enable ADC1

	//ADC3
	ADC3 -> SQR3 |= (0X03);  // Select Ch 3
	ADC3 -> CR2 |= (ADC_CR2_ADON);  //Enable ADC1



	/* Config DMA2 */
	DMA2_Stream0 -> CR &= ~(DMA_SxCR_EN);  //Disable DMA
	while(( (DMA2_Stream0 -> CR) & (DMA_SxCR_EN) )){}  // Wait till stream is disable

	//Select Ch0
	DMA2_Stream0 -> CR &= ~( (DMA_SxCR_CHSEL_0) | (DMA_SxCR_CHSEL_1) | (DMA_SxCR_CHSEL_2) );
	DMA2_Stream0 -> CR |= (DMA_SxCR_PL_0) | (DMA_SxCR_PL_1); // Set very high Priority level

	DMA2_Stream0 -> CR &= ~(DMA_SxCR_MSIZE_0);  //Set MSize 32-bit
	DMA2_Stream0 -> CR |= (DMA_SxCR_MSIZE_1);

	DMA2_Stream0 -> CR &= ~(DMA_SxCR_PSIZE_0);  //Set PSize 32-bit
	DMA2_Stream0 -> CR |= (DMA_SxCR_PSIZE_1);

	DMA2_Stream0 -> CR |= (DMA_SxCR_MINC);  //Enable Memory Inc
	DMA2_Stream0 -> CR |= (DMA_SxCR_CIRC);  //Enable circular mode
	DMA2_Stream0 -> CR &= ~( (DMA_SxCR_DIR_0) | (DMA_SxCR_DIR_1));  //Set transfer direction
	DMA2_Stream0 -> NDTR = 3;  //Set no.of data register
	DMA2_Stream0 -> PAR = (uint32_t) (&(ADC -> CDR));  //Set Peri Address
	DMA2_Stream0 -> M0AR = (uint32_t) (&adc_data);  //Set Mem Address

	// Enable DMA transfer complete interrupt
	DMA2_Stream0 -> CR |= DMA_SxCR_TCIE;  // Enable transfer complete interrupt
	// Enable DMA interrupt in NVIC
	NVIC_EnableIRQ(DMA2_Stream0_IRQn);

	/* CONFIG TIMER FOR TRIGGER */

	TIM2 -> PSC = (8400 - 1);  // Set prescaler for 10000Hz timer frequency
	TIM2 -> ARR = (100-1);  // Set auto reload value

	TIM2 -> CR2 &= ~((TIM_CR2_MMS_0) | (TIM_CR2_MMS_2));  // Select update event for TRGO
	TIM2 -> CR2 |= (TIM_CR2_MMS_1);

	/* Triple ADC mode */
	ADC -> CCR |= (ADC_CCR_DDS);  //Set Contin DMA Request
	ADC -> CCR |= (ADC_CCR_DMA_0);  //Set DMA Mode
	ADC -> CCR |= (0x0016); // Enable Dual Mode


}


void adc_start(void){

	DMA2_Stream0 -> CR |= (DMA_SxCR_EN); // Enable DMA
	TIM2 -> CR1 |= ( TIM_CR1_CEN);  // Enable TIM2

}

// Interrupt Service Routine for DMA2 Stream 0
void DMA2_Stream0_IRQHandler(void) {
    // Check for DMA transfer complete interrupt flag
    if(DMA2->LISR & DMA_LISR_TCIF0) {
        // Clear the interrupt flag
        DMA2->LIFCR |= DMA_LIFCR_CTCIF0;

        dma2_status = 1;


    }
}













