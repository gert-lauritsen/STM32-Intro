/*
 * Comunication.c
 *
 *  Created on: May 26, 2020
 *      Author: gert
 */
#include "Communication.h"
#include "Pins.h"

/*-----------------------------------------------------------------------------------------------------------
 * Komunikation module lavet til L1xx.
 * Denne unit er skrevet til Uart1
 * HUSK
 * DMA skal være cirkulær
 * PA12 er Direction
 -----------------------------------------------------------------------------------------------------------*/
extern UART_HandleTypeDef huart1;
extern DMA_HandleTypeDef hdma_usart1_rx;

#define DMA_RX_BUFFER_SIZE          64
uint8_t DMA_RX_Buffer[DMA_RX_BUFFER_SIZE];
uint8_t USART_txBuff[RxBuffSize];
uint8_t Uart_RxBuffer[DMA_RX_BUFFER_SIZE];

uint8_t DMA_RX_Tail=0;
uint8_t DMA_RX_Head=0;
int NRxReceived;

void initCom1() {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, GPIO_PIN_RESET);
	HAL_UART_Receive_DMA(&huart1, &DMA_RX_Buffer[0], DMA_RX_BUFFER_SIZE);
	hdma_usart1_rx.Instance->CCR &= ~DMA_CCR_HTIE; // disable uart half rx interrupt
	__HAL_UART_CLEAR_IDLEFLAG(&huart1);            //sørg for at flaget er clearet
	__HAL_UART_ENABLE_IT(&huart1, UART_IT_IDLE);   // enable idle line interrupt
}

uint8_t crc8(const unsigned char* data_p, unsigned char length) {
	uint8_t x = 0;
	while (length--) {
		x ^= *data_p++;
	}
	return x;
}

void TxRawframe(uint8_t *data, uint8_t frametype, int Datasize) {
	HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, GPIO_PIN_SET);
	USART_txBuff[0] = 0x02;
	USART_txBuff[1] = Datasize + HeaderSize;   //Data length
	USART_txBuff[2] = frametype;
	memcpy(&USART_txBuff[3], data, Datasize);
	USART_txBuff[USART_txBuff[1]] = crc8(&USART_txBuff[0],
			Datasize + HeaderSize); //CRC
	HAL_UART_Transmit(&huart1, &USART_txBuff[0], USART_txBuff[1] + 1, 0xFFFF);
	HAL_GPIO_WritePin(DIR_GPIO_Port, DIR_Pin, GPIO_PIN_RESET);
}

//-----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------
//RX
//----------------------------------------------------------------------------------------------

static void Uart_Handler(volatile Rxbuff *uart, uint8_t *DataBuf, int Ndata) {
	for (int i = 0; i < Ndata; i++) {
		switch (uart->RxState) {
		case 0: {
			if (*DataBuf == 0x02) {
				uart->RxState = 1;
				uart->pRx = 0;
				uart->Rxbuffer[uart->pRx++] = *DataBuf;
			}
		}
			break;
		case 1: { //venter p� header
			uart->Rxbuffer[uart->pRx++] = *DataBuf;
			if (uart->pRx == HeaderSize) {
				uart->RxState = 2;
			}
		}
			break;
		case 2: { //venter p� resten af frame
			uart->Rxbuffer[uart->pRx++] = *DataBuf;
			if (uart->pRx == uart->Rxbuffer[1]) { //==length
				uart->RxReady = 1; //decode frame
				uart->RxState = 0;
			}
		}
			break;
		}
		DataBuf++;
	}
}


void USART_IrqHandler(UART_HandleTypeDef *huart, DMA_HandleTypeDef *hdma) {
	if (huart->Instance->ISR & UART_FLAG_IDLE) // if Idle flag is set
	{
		__HAL_UART_CLEAR_IDLEFLAG(huart);
		volatile uint32_t tmp; // Must be volatile to prevent optimizations
		tmp = huart->Instance->ISR; // Read status register
		tmp = huart->Instance->RDR; // Read data register
		DMA_RX_Head = DMA_RX_BUFFER_SIZE -__HAL_DMA_GET_COUNTER(hdma);
		if (DMA_RX_Head>DMA_RX_Tail) {
		  memcpy(&Uart_RxBuffer[0], &DMA_RX_Buffer[DMA_RX_Tail], DMA_RX_Head-DMA_RX_Tail);
		  NRxReceived=DMA_RX_Head-DMA_RX_Tail;
		}
		else {
			memcpy(&Uart_RxBuffer[0], &DMA_RX_Buffer[DMA_RX_Tail], DMA_RX_BUFFER_SIZE-DMA_RX_Tail);
			memcpy(&Uart_RxBuffer[DMA_RX_BUFFER_SIZE-DMA_RX_Tail], &DMA_RX_Buffer[0], DMA_RX_Head);
			NRxReceived=(DMA_RX_BUFFER_SIZE-DMA_RX_Tail)+DMA_RX_Head;
		}
		DMA_RX_Tail=DMA_RX_Head;
		Uart_Handler(&UART1_buff,&Uart_RxBuffer[0],NRxReceived);
		//HAL_UART_Receive_DMA(&huart1, &DMA_RX_Buffer[0], DMA_RX_BUFFER_SIZE);
	}
}
