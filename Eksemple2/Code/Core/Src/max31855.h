/*
 * SRC_MAX31855_H_
 *
 *  Created on: Oct 22, 2020
 *      Author: gert
 */

#ifndef SRC_MAX31855_H_
#define SRC_MAX31855_H_

#include "stm32l0xx_hal.h"
#include "pins.h"

void max31855_init(void);			 // Initialize the max31855 module
uint16_t max31855_readWriteByte(uint16_t TxData);
uint16_t max31855_readbits_II(int sensor);
float max31855_readTemp(int sensor);

#endif /* SRC_MAX31855_H_*/
