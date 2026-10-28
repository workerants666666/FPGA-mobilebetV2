#ifndef LCD_HOST_BSP_H
#define LCD_HOST_BSP_H
/* The test keeps application/rendering code real and replaces only BSP I/O. */
#define __COMMON_H
#define TRASH_HW_CONFIG_H
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uintptr_t UINTPTR;
typedef uint64_t XTime;
typedef struct { int unused; } NetParam_q;
#define XST_SUCCESS 0
#define XST_FAILURE 1
#define COUNTS_PER_SECOND 1000000U
#define HW_SAMPLE_BUFFER_ADDR ((uintptr_t)0x12500000U)
#define XIL_COMPONENT_IS_READY 1
#define HW_UART1_BASEADDR 0U
#define HW_UART1_INTR_ID 0U
#define HW_IIC0_BASEADDR 0U
#define HW_IIC1_BASEADDR 0U
extern struct HostUart { int IsReady; } UartPs1;
extern int Intc, IicPs0, IicPs1;
int SCU_Init(void);
void usleep(unsigned int delay);
int xil_printf(const char *format, ...);
void XTime_GetTime(XTime *value);
void inference_q(short *in, NetParam_q *net_param, short *out, int classes);
#endif
