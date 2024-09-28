/*
 * uart2.c
 *
 *  Created on: Feb 28, 2024
 *      Author: vishnu
 */

#include <uart2.h>

//----------------------------------------------------------------------------------------------

/* FUNCTION DEFINTION */

void uart2_init(void){
/*Clock access enabled for GPIOA */
  RCC->AHB1ENR |= ( 1U << 0);

  /*PA2 set to alternate function mode */
  GPIOA->MODER |= ( 1U << 5);
  GPIOA->MODER &= ~( 1U << 4);

  /* PA2 set to AF7 */
  /*GPIOA->AFR[0] is the low register*/
  GPIOA->AFR[0] |= (1U << 8) | (1U << 9) | (1U << 10);
  GPIOA->AFR[0] &= ~(1U << 11);

  /* Bit 17 USART2EN: USART2 clock enable */
   /* 1: USART2 clock enabled */
   RCC->APB1ENR |= (1U<<17);

     /* USART Baud Rate */
   USART2->BRR =0x01117;

   /* Bit 3 TE: Transmitter enable */
   /* 1: Transmitter is enabled */
    USART2->CR1 |= (1U << 3);

    /* Bit 12 M: Word length */
    /* 0: 1 Start bit, 8 Data bits, n Stop bit */
    USART2->CR1 &= ~(1U << 12);

    /* Bits 13:12 STOP: STOP bit */
    /* 00: 1 Stop bit */
    USART2->CR2 &= ~(1U << 12);
    USART2->CR2 &= ~(1U << 13);

   /* Bit 13 UE: USART enable */
   /* 1: USART enabled */
   USART2->CR1 |= (1U << 13);

}

/* Write a character to UART2 */
void uart2_single_write (char ch)
{
    /* wait until Tx buffer empty */
    while (!(USART2->SR & (1U << 7))) {}
    USART2->DR = ch;
}

//-----------------------------------------------------------------------------------------------
/* Write a string to UART2 */
void uart2_string_write(char *str)
{
 while (*str)
   {
       // Wait until transmit data register (TDR) is empty
       while (!(USART2->SR & (1U << 7)));

       // Transmit string
       USART2->DR = *str++;
   }
}
