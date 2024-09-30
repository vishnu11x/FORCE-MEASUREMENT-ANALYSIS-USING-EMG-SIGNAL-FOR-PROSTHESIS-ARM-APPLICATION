/*
 * uart.h
 *
 *  Created on: Sep 30, 2024
 *      Author: Vishnu
 */

#ifndef UART_H_
#define UART_H_

#include <stdint.h>
#include <stm32f4xx.h>

void uart_init(void);
void uart_single_write(char ch);
void uart_string_write(char *str);


#endif /* UART_H_ */
