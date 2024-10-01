/*
 * uart.c
 *
 *  Created on: Sep 30, 2024
 *      Author: Vishnu
 */

#include <uart.h>

void uart_init(void){

	/* Enable Clock */
	RCC -> AHB1ENR |= RCC_AHB1ENR_GPIOCEN;  //Clock for GPIO C
	RCC -> APB1ENR |= RCC_APB1ENR_UART4EN;  //Clock for UART4

	/*Configure PC10*/
	GPIOC -> MODER &= ~(GPIO_MODER_MODER10_0);  // Set AF Mode - PC10
	GPIOC -> MODER |= (GPIO_MODER_MODER10_1);

	//Select AF8 for PC10
	GPIOC -> AFR[1] &= ~( (GPIO_AFRH_AFRH2_0) | (GPIO_AFRH_AFRH2_1) | (GPIO_AFRH_AFRH2_2) );
	GPIOC -> AFR[1] |= (GPIO_AFRH_AFRH2_3);

	//(Pclk + (baud rate / 2)) / baud rate
	UART4 -> BRR = 0x016D; // Set baud rate 115200
	UART4 -> CR1 |= (USART_CR1_TE);  // Enable transmitter
	UART4 -> CR1 |= USART_CR1_UE;  //Enable UART
}


/* Write a character to UART2 */
void uart_single_write (char ch)
{
    /* wait until Tx buffer empty */
    while (!(UART4->SR & (USART_SR_TXE))) {}
    UART4->DR = ch;
}

/* Write a string to UART2 */
void uart_string_write(char *str)
{
 while (*str)
   {
       // Wait until transmit data register (TDR) is empty
       while (!(UART4->SR & (USART_SR_TXE)));

       // Transmit string
       UART4->DR = *str++;
   }
}

