#ifndef AUDIT_FF_H
#define AUDIT_FF_H
#include <stdint.h>
typedef unsigned int UINT;
typedef struct { int unused; } FATFS;
typedef struct { int unused; } FIL;
typedef enum { FR_OK = 0, FR_DISK_ERR = 1, FR_NO_FILE = 4 } FRESULT;
#define FA_READ 1U
#define FA_WRITE 2U
#define FA_CREATE_ALWAYS 8U
FRESULT f_mount(FATFS *, const char *, unsigned char);
FRESULT f_open(FIL *, const char *, unsigned char);
FRESULT f_lseek(FIL *, uint32_t);
FRESULT f_read(FIL *, void *, UINT, UINT *);
FRESULT f_write(FIL *, const void *, UINT, UINT *);
FRESULT f_close(FIL *);
#endif
