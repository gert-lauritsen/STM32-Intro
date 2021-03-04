#include "max31855.h"
#include "stdbool.h"

extern SPI_HandleTypeDef hspi1;
bool Short2Gnd;
bool Short2Vcc;
bool OpenCircuit;
bool Fault;
int16_t InternalTemp;
float TempInternal;
void max31855_init(void){

}


volatile void SelSensor2(int sensor_cs, bool select) {
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

volatile float max31855_readbits(int device){
  uint8_t val[4];
//  uint16_t outval=0xffffffff;
  int16_t t1;
  uint16_t t2;
  float sensorTemp;
  SelSensor2(device,true);
  HAL_SPI_Receive(&hspi1,val, sizeof(val), 0xffff);
  SelSensor2(device,false);
  Short2Gnd=(val[3] & 0x0002)>0;
  Short2Vcc=(val[3] & 0x0004)>0;
  OpenCircuit=(val[3] & 0x0001)>0;
  Fault=(val[1] & 0x0001)>0;

  t2=val[0];
  t2=(t2<<8) | val[1];
  sensorTemp=(t2>>2) *0.25;

  t1=val[2];
  t1=(t1<<8) +val[3];
  t1&=0xfff0;
  TempInternal=(t1/16)*0.0625;

  if (OpenCircuit || Short2Gnd || Short2Vcc || Fault) {
	 //fejl
  }
	return sensorTemp;
}

float max31855_readTemp(int sensor){
  float temp;
  temp=max31855_readbits(sensor);
  return temp;
}
