#include "max6675.h"
#include "stdbool.h"

extern SPI_HandleTypeDef hspi1;

void max6675_init(void){

}


volatile void SelSensor(int sensor_cs, bool select) {
	switch (sensor_cs) {
	case 0: {
	  if (select)
		HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_RESET);
	  else
  	    HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_SET);
	  } break;
	case 1: {
	  if (select)
		HAL_GPIO_WritePin(CS2_GPIO_Port, CS2_Pin, GPIO_PIN_RESET);
	  else
  	    HAL_GPIO_WritePin(CS2_GPIO_Port, CS2_Pin, GPIO_PIN_SET);
	  } break;
	case 2: {
	  if (select)
		HAL_GPIO_WritePin(CS3_GPIO_Port, CS3_Pin, GPIO_PIN_RESET);
	  else
  	    HAL_GPIO_WritePin(CS3_GPIO_Port, CS3_Pin, GPIO_PIN_SET);
	  } break;
	case 3: {
	  if (select)
		HAL_GPIO_WritePin(CS4_GPIO_Port, CS4_Pin, GPIO_PIN_RESET);
	  else
  	    HAL_GPIO_WritePin(CS4_GPIO_Port, CS4_Pin, GPIO_PIN_SET);
	  } break;

	}
}

volatile uint16_t max6675_readbits(int device){
	uint8_t val[2];
	uint16_t outval=0xffff;
	uint16_t TempInt;
    SelSensor(device,true);
    //HAL_SPI_Receive(&hspi1, &val, 2, 0xffff);
    HAL_SPI_TransmitReceive(&hspi1,&outval, &val[0], 2, 0xffff);
	SelSensor(device,false);
  if (val[1] & 0X04)  {
    val[1] = 0; //No thermocouple detected
    printf("No thermocouple 2\n detected");
  }
  else {
	TempInt=val[0];
	TempInt=(TempInt<<8) | val[1];
	TempInt>>=3; // Remove D0, 1, 2 bits
  }
	return TempInt;
}

float max6675_readTemp(int sensor){
  uint16_t tempint;
  float temp;

  tempint=max6675_readbits(sensor);
  temp=tempint*1023.75/4095;
  return temp;
}
