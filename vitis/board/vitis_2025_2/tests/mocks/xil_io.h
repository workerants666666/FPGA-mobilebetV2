#ifndef TEST_XIL_IO_H
#define TEST_XIL_IO_H

#include "xil_types.h"

/* Link the real driver code to a bounded, observable fake hardware bus. */
void Xil_Out32(UINTPTR address, u32 value);
u32 Xil_In32(UINTPTR address);

#endif
