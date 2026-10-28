#ifndef LCD_HOST_LCD_H
#define LCD_HOST_LCD_H
#include "host_bsp.h"
#define LCD_W 800
#define LCD_H 480
#define BYTES_PIXEL 3
#ifndef LCD_FLIP_DISPLAY
#define LCD_FLIP_DISPLAY 1
#endif
#define Font_12 12
#define Font_16 16
#define Font_24 24
#define Font_32 32
#define POINT_RED 0x00FF0000
#define POINT_GREEN 0x0000FF00
#define POINT_BLUE 0x000000FF
typedef struct { uint16_t x, y; } TouchData;
extern TouchData touch_Data[5];
extern uint8_t touch_start_flag;
extern uint8_t touch_one_flag;
extern uint8_t *Buffptr;
void LCD_Clear(uint32_t color);
void LCD_DrawPoint(uint16_t x, uint16_t y, uint32_t color);
void LCD_ShowChar(char chr, uint16_t x, uint16_t y, uint8_t font, uint32_t color);
void LCD_CleanArea(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint32_t color);
void LCD_Print(uint16_t x, uint16_t y, uint8_t font, uint32_t bg, uint32_t color, const char *format, ...);
void LCD_ShowPicture(const uint8_t *image, uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint8_t scale);
void LCD_Refresh(void);
int LCD_Init(void);
int LCD_Touch_Init(void);
void Check_Touch(void);
uint32_t Gen_Color(uint32_t red, uint32_t green, uint32_t blue);
#endif
