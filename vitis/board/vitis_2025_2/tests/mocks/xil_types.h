#ifndef TEST_XIL_TYPES_H
#define TEST_XIL_TYPES_H

#include <stddef.h>
#include <stdint.h>

/* Keep u32 at 32 bits on the host; MMIO addresses must retain host pointer width. */
typedef uint32_t u32;
typedef uintptr_t UINTPTR;
#define XIL_COMPONENT_IS_READY 0x11111111U

#endif
