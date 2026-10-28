#ifndef LCD_HOST_SD_IO_H
#define LCD_HOST_SD_IO_H
#include "host_bsp.h"
typedef int FRESULT;
typedef struct { unsigned char fattrib; uint32_t fsize; } FILINFO;
#define FR_OK 0
#define FR_DISK_ERR 1
#define FR_NO_FILE 4
#define FR_NO_PATH 5
#define FR_EXIST 8
#define AM_DIR 0x10
FRESULT f_mkdir(const char *path);
FRESULT f_stat(const char *path, FILINFO *info);
int SD_Init(void);
int SD_Transfer_write(char *filename, u32 address, u32 byte_length);
#endif
