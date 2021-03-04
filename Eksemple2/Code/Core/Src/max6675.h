/*
 * max6675.h
 *
 *  Created on: Oct 22, 2020
 *      Author: gert
 */

#ifndef SRC_MAX6675_H_
#define SRC_MAX6675_H_

#include "stm32l0xx_hal.h"
#include "pins.h"

void max6675_init(void);			 // Initialize the max6675 module
uint16_t max6675_readWriteByte(uint16_t TxData);
uint16_t max6675_readbits_II(int sensor);
float max6675_readTemp(int sensor);

#endif /* SRC_MAX6675_H_ */
