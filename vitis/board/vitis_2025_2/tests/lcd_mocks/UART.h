#include "host_bsp.h"
int UART_Intr_Init(struct HostUart *uart, int *gic, uintptr_t base, unsigned baud, unsigned irq);
int UART_Print(const char *format, ...);
