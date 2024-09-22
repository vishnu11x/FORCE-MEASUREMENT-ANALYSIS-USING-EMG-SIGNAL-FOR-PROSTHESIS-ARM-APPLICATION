/*
 * clock.c
 *
 *  Created on: Feb 23, 2024
 *      Author: vishnu
 */

#include "clock.h"

#define PLL_M      0x08
#define PLL_N      0x0150
#define PLL_P      0x02
#define PLL_Q      0x07
//-----------------------------------------------------------------------------------------------

/* FUNCTION DEFINITION */

/* Set system clock to 168Hz */
void clock_max_config(void){

	RCC -> CR |= ( 1U << 16);  // Enable HSE oscillator
	while( ( (RCC -> CR) & ( 1U << 17 ) ) == 0){}  // Wait till HSE oscillator is stable

	RCC -> CFGR &= ~( 1U << 7);  // Set prescaler for AHB (divide by 1)

	RCC -> CFGR |= ( 1U << 10); // Set prescaler for APB1 (divided by 4)
	RCC -> CFGR &= ~( 1U << 11);
	RCC -> CFGR |= ( 1U << 12);

	RCC -> CFGR &= ~( 1U << 13); // Set prescaler for APB2 (divided by 2)
	RCC -> CFGR &= ~( 1U << 14);
	RCC -> CFGR |= ( 1U << 15);

	/* Config PLL */
	RCC -> PLLCFGR = (PLL_M) | ( PLL_N << 6 ) | (((PLL_P >>1 )-1) << 16) | ( 1U << 22 ) | ( PLL_Q << 24 );

	RCC -> CR |= ( 1U << 24);  // Enable PLL

	FLASH -> ACR |= ( 1U << 0);  // Set flash latency to 5 wait state
	FLASH -> ACR &= ~( 1U << 1);
	FLASH -> ACR |= ( 1U << 2);

	RCC -> CFGR &= ~( 1U << 0);  // Select PLL as system clock
	RCC -> CFGR |= ( 1U << 1);

	while(!((RCC -> CFGR) & ( 0x02 << 2))){}




}

