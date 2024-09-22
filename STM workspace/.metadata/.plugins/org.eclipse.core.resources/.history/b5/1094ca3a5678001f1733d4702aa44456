/*
 * delayms.c
 *
 *  Created on: Feb 10, 2024
 *      Author: vishnu
 */

#include "delayms.h"



//-----------------------------------------------------------------------------------------

// To create delay in ms
void delayms(int delay){

	RCC -> APB1ENR |= (TIM5EN);
	TIM5 -> PSC = (8400 - 1);  // Set prescaler for 10000Hz timer frequency
	TIM5 -> ARR = (10-1);  // Set auto reload value
	TIM5 -> CNT = 0;  // Clear Counter
	TIM5 -> CR1 |= ( 1U << 0);  // Enable TIMER 5

	for (int i = 0; i < delay; i++) {

		while(!(TIM5 -> SR & (1U << 0))){}
		TIM5 -> SR &= ~(1U << 0);

	}

	TIM5 -> CR1 &= ~( 1U << 0);  // Disable TIMER 5

}
