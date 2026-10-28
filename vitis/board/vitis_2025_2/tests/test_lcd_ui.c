/* Host regression of the real mess.c and extracted, unchanged LCD renderer.
 * Mocks only replace storage, timer/inference, and LCD cache flush. */
#include "host_bsp.h"
#include "mess.h"
#include "sd_io.h"
#include <sys/stat.h>
#include <errno.h>
#include <setjmp.h>
#ifdef _WIN32
#include <windows.h>
#include <direct.h>
#else
#include <sys/mman.h>
#include <unistd.h>
#endif

#define FRAME_BYTES (LCD_W * LCD_H * 3U)
#define IMAGE_BYTES (224U * 224U * 3U)
#define BMP_BYTES (54U + IMAGE_BYTES)
static uint8_t framebuffer[FRAME_BYTES + 128U];
uint8_t *Buffptr = framebuffer + 64U;
TouchData touch_Data[5];
uint8_t touch_start_flag;
uint8_t touch_one_flag;
struct HostUart UartPs1 = { XIL_COMPONENT_IS_READY };
unsigned long draw_calls, out_of_bounds;
static unsigned checks;
static unsigned refreshes;
static unsigned inference_calls;
static unsigned writes;
static unsigned stats;
static unsigned init_calls;
static int fail_write, fail_init, fail_stat, fail_mkdir, all_names_exist;
static short mock_scores[6] = {-90, -80, -70, -60, -50, -40};
static XTime tick;
static char last_filename[128];
static uint8_t image[IMAGE_BYTES];

/* Compile the exact real firmware entry/control loop in this test translation
 * unit. Only its name changes; device functions below provide deterministic
 * events so the infinite loop can be stopped after complete iterations. */
#define main firmware_entry
#include "../app_src/src/main.c"
#undef main

int Intc, IicPs0, IicPs1;
static jmp_buf main_exit;
static int main_active;
static unsigned main_frame, previous_contact;
static unsigned main_scenario;
static unsigned detector_runs, light_ons, light_offs, shown_frames;
static unsigned light_fail;
int SCU_Init(void) { return XST_SUCCESS; }
int UART_Intr_Init(struct HostUart *uart, int *gic, uintptr_t base, unsigned baud, unsigned irq)
{ (void)uart; (void)gic; (void)base; (void)baud; (void)irq; return XST_SUCCESS; }
int UART_Print(const char *format, ...) { (void)format; return 0; }
int IIC_Init(int *iic, uintptr_t base, unsigned rate)
{ (void)iic; (void)base; (void)rate; return XST_SUCCESS; }
int IIC_Itr_Init(int *iic, uintptr_t base, unsigned rate)
{ return IIC_Init(iic, base, rate); }
int LCD_Init(void) { return XST_SUCCESS; }
int LCD_Touch_Init(void) { return XST_SUCCESS; }
int OV5640_Init(void) { return main_scenario == 2U ? XST_FAILURE : XST_SUCCESS; }
int OV5640_ShowFrame(void) { ++shown_frames; return XST_SUCCESS; }
int OV5640_Light_Turn_On(void) { ++light_ons; return light_fail ? XST_FAILURE : XST_SUCCESS; }
int OV5640_Light_Turn_Off(void) { ++light_offs; return XST_SUCCESS; }
const uint8_t *OV5640_GetRawFrame(void) { return image; }
int CameraDetection_Init(CameraDetection *detector)
{
    memset(detector, 0, sizeof(*detector));
    detector->ready = main_scenario != 1U;
    return detector->ready ? XST_SUCCESS : XST_FAILURE;
}
int CameraDetection_Run(CameraDetection *detector)
{
    ++detector_runs;
    detector->result_index = 3;
    detector->elapsed_us = 654321U;
    return main_scenario == 3U ? XST_FAILURE : XST_SUCCESS;
}
void usleep(unsigned int delay)
{
    if (main_active && delay == 33000U && ++main_frame >= 24U) longjmp(main_exit, 1);
}
void Check_Touch(void)
{
    unsigned contact = 0U;
    unsigned x = CAMERA_UI_BUTTON_X + 2U;
    unsigned y = CAMERA_UI_DETECT_Y + 2U;
    /* Hold detect across five iterations, release, then hold light, release,
     * hold save, release, and press light again. Calls from the post-action
     * flush observe the same physical contact and never invent a new edge. */
    if (main_frame < 5U) contact = 1U;
    else if (main_frame >= 7U && main_frame < 11U) { contact = 1U; y = CAMERA_UI_LIGHT_Y + 2U; }
    else if (main_frame >= 13U && main_frame < 17U) { contact = 1U; x = CAMERA_UI_SAVE_X + 2U; y = CAMERA_UI_SAVE_Y + 2U; }
    else if (main_frame >= 19U && main_frame < 23U) { contact = 1U; y = CAMERA_UI_LIGHT_Y + 2U; }
    touch_start_flag = (uint8_t)contact;
    touch_one_flag = (uint8_t)(contact && !previous_contact);
    previous_contact = contact;
#if LCD_FLIP_DISPLAY
    touch_Data[0].x = LCD_W - 1U - x;
    touch_Data[0].y = LCD_H - 1U - y;
#else
    touch_Data[0].x = x;
    touch_Data[0].y = y;
#endif
}

#define CHECK(expr) do { ++checks; if (!(expr)) { \
    fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #expr); exit(1); \
} } while (0)

int xil_printf(const char *format, ...) { (void)format; return 0; }
void LCD_Refresh(void) { ++refreshes; }
void XTime_GetTime(XTime *value) { *value = tick; tick += 123456U; }
void inference_q(short *input, NetParam_q *param, short *output, int classes)
{
    (void)input; (void)param;
    CHECK(classes == 6);
    memcpy(output, mock_scores, sizeof(mock_scores));
    ++inference_calls;
}
int SD_Init(void) { ++init_calls; return fail_init ? XST_FAILURE : XST_SUCCESS; }
FRESULT f_mkdir(const char *path)
{
    if (fail_mkdir) return FR_DISK_ERR;
#ifdef _WIN32
    int rc = _mkdir(path);
#else
    int rc = mkdir(path, 0700);
#endif
    return rc == 0 ? FR_OK : (errno == EEXIST ? FR_EXIST : FR_DISK_ERR);
}
FRESULT f_stat(const char *path, FILINFO *info)
{
    struct stat entry;
    ++stats;
    if (fail_stat) return FR_DISK_ERR;
    if (all_names_exist) return FR_OK;
    if (stat(path, &entry) != 0) return errno == ENOENT ? FR_NO_FILE : FR_DISK_ERR;
    if (info != NULL) { info->fsize = (uint32_t)entry.st_size; info->fattrib = 0U; }
    return FR_OK;
}
int SD_Transfer_write(char *filename, u32 address, u32 length)
{
    const uint8_t *data = (const uint8_t *)(uintptr_t)address;
    FILE *file;
    ++writes;
    CHECK(length == BMP_BYTES);
    CHECK(address == HW_SAMPLE_BUFFER_ADDR);
    CHECK(strlen(filename) < sizeof(last_filename));
    strcpy(last_filename, filename);
    if (fail_write) return XST_FAILURE;
    /* The mock refuses any overwrite even if the application forgot f_stat. */
    struct stat existing;
    CHECK(stat(filename, &existing) != 0);
    file = fopen(filename, "wb");
    CHECK(file != NULL);
    CHECK(fwrite(data, 1U, length, file) == length);
    CHECK(fclose(file) == 0);
    return XST_SUCCESS;
}

static uint32_t le32(const uint8_t *bytes)
{
    return bytes[0] | ((uint32_t)bytes[1] << 8U) |
            ((uint32_t)bytes[2] << 16U) | ((uint32_t)bytes[3] << 24U);
}
static void verify_bmp(const char *filename)
{
    uint8_t *bmp = malloc(BMP_BYTES);
    FILE *file = fopen(filename, "rb");
    CHECK(file != NULL && bmp != NULL);
    CHECK(fread(bmp, 1U, BMP_BYTES, file) == BMP_BYTES);
    CHECK(fgetc(file) == EOF);
    CHECK(fclose(file) == 0);
    CHECK(bmp[0] == 'B' && bmp[1] == 'M');
    CHECK(le32(bmp + 2U) == BMP_BYTES);
    CHECK(le32(bmp + 10U) == 54U);
    CHECK(le32(bmp + 14U) == 40U);
    CHECK(le32(bmp + 18U) == 224U);
    CHECK((int32_t)le32(bmp + 22U) == -224);
    CHECK(bmp[26] == 1U && bmp[27] == 0U);
    CHECK(bmp[28] == 24U && bmp[29] == 0U);
    CHECK(le32(bmp + 30U) == 0U);
    CHECK(le32(bmp + 34U) == IMAGE_BYTES);
    CHECK(memcmp(bmp + 54U, image, IMAGE_BYTES) == 0);
    free(bmp);
}
static void write_guard_file(const char *name)
{
    FILE *file = fopen(name, "wb");
    CHECK(file != NULL);
    CHECK(fwrite("PRESERVE", 1U, 8U, file) == 8U);
    CHECK(fclose(file) == 0);
}
static void check_guard_file(const char *name)
{
    char data[9] = {0};
    FILE *file = fopen(name, "rb");
    CHECK(file != NULL);
    CHECK(fread(data, 1U, 8U, file) == 8U);
    CHECK(fgetc(file) == EOF);
    CHECK(strcmp(data, "PRESERVE") == 0);
    CHECK(fclose(file) == 0);
}
static void prepare_snapshot(void)
{
#ifdef _WIN32
    void *buffer = VirtualAlloc((void *)HW_SAMPLE_BUFFER_ADDR,
            BMP_BYTES, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
#else
    void *buffer = mmap((void *)HW_SAMPLE_BUFFER_ADDR, BMP_BYTES,
            PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
#endif
    CHECK(buffer == (void *)HW_SAMPLE_BUFFER_ADDR);
    for (unsigned i = 0U; i < IMAGE_BYTES; ++i) image[i] = (uint8_t)(i * 37U + i / 673U);
}
static void test_save(int restart)
{
    prepare_snapshot();
    if (restart) {
        CHECK(Camera_Sample(image) == 1);
        CHECK(strcmp(last_filename, "Test/IMG00005.BMP") == 0);
        verify_bmp(last_filename);
        check_guard_file("Test/IMG00001.BMP");
        check_guard_file("Test/IMG00003.BMP");
        printf("PASS restart: existing IMG00001..00004 preserved, IMG00005 saved; %u checks\n", checks);
        return;
    }
    CHECK(f_mkdir("Test") == FR_OK);
    write_guard_file("Test/IMG00001.BMP");
    CHECK(Camera_Sample(NULL) == -1);
    CHECK(writes == 0U && init_calls == 0U);
    fail_init = 1; CHECK(Camera_Sample(image) == -1); fail_init = 0;
    CHECK(writes == 0U);
    fail_mkdir = 1; CHECK(Camera_Sample(image) == -1); fail_mkdir = 0;
    CHECK(writes == 0U);
    fail_stat = 1; CHECK(Camera_Sample(image) == -1); fail_stat = 0;
    CHECK(writes == 0U);
    CHECK(Camera_Sample(image) == 1);
    CHECK(strcmp(last_filename, "Test/IMG00002.BMP") == 0);
    verify_bmp(last_filename);
    check_guard_file("Test/IMG00001.BMP");
    fail_write = 1;
    CHECK(Camera_Sample(image) == -1);
    CHECK(strcmp(last_filename, "Test/IMG00003.BMP") == 0);
    fail_write = 0;
    /* A partial file can survive failed media I/O. Never overwrite it. */
    write_guard_file("Test/IMG00003.BMP");
    CHECK(Camera_Sample(image) == 2);
    CHECK(strcmp(last_filename, "Test/IMG00004.BMP") == 0);
    verify_bmp(last_filename);
    check_guard_file("Test/IMG00003.BMP");
    CHECK(writes == 3U && stats >= 5U);
}
static void set_touch(int x, int y)
{
    CHECK(x >= 0 && x < LCD_W && y >= 0 && y < LCD_H);
#if LCD_FLIP_DISPLAY
    touch_Data[0].x = LCD_W - 1U - (uint16_t)x;
    touch_Data[0].y = LCD_H - 1U - (uint16_t)y;
#else
    touch_Data[0].x = (uint16_t)x;
    touch_Data[0].y = (uint16_t)y;
#endif
}
static void test_button(unsigned x, unsigned y, unsigned width, unsigned len, unsigned font)
{
    unsigned w = width * font / 2U;
    unsigned h = font * ((len + width - 1U) / width);
    touch_start_flag = 1U; touch_one_flag = 1U;
    /* Check every pixel of the hit region, including all half-open edges. */
    for (int py = (int)y - 1; py <= (int)(y + h); ++py) {
        for (int px = (int)x - 1; px <= (int)(x + w); ++px) {
            set_touch(px, py);
            int expected = px >= (int)x && px < (int)(x + w) && py >= (int)y && py < (int)(y + h);
            CHECK(Check_Botten(x, y, width, len, font) == expected);
            CHECK(touch_start_flag == 1U && touch_one_flag == 1U);
        }
    }
    set_touch(x, y);
    touch_start_flag = 0U;
    CHECK(Check_Botten(x, y, width, len, font) == 0U);
    touch_start_flag = 1U;
    CHECK(Check_Botten(x, y, 0U, len, font) == 0U);
    CHECK(Check_Botten(x, y, width, 0U, font) == 0U);
    CHECK(Check_Botten(x, y, width, len, 0U) == 0U);
    touch_Data[0].x = LCD_W;
    CHECK(Check_Botten(x, y, width, len, font) == 0U);
    touch_Data[0].x = 0U; touch_Data[0].y = LCD_H;
    CHECK(Check_Botten(x, y, width, len, font) == 0U);
}
static void test_detection(void)
{
    short input[3U * 224U * 224U];
    short output[6];
    NetParam_q param;
    u32 elapsed = 999U;
    unsigned long draws_before = draw_calls;
    CHECK(Detecting(NULL, &param, NULL, 1, output, 0, &elapsed) == -1 && elapsed == 0U);
    CHECK(Detecting(input, NULL, NULL, 1, output, 0, &elapsed) == -1);
    CHECK(Detecting(input, &param, NULL, 0, output, 0, &elapsed) == -1);
    CHECK(Detecting(input, &param, NULL, 1, NULL, 0, &elapsed) == -1);
    for (int class_id = 0; class_id < 6; ++class_id) {
        for (int i = 0; i < 6; ++i) mock_scores[i] = -30000;
        mock_scores[class_id] = -20000;
        CHECK(Detecting(input, &param, NULL, 1, output, 0, &elapsed) == class_id);
        CHECK(elapsed == 123456U);
    }
    for (int i = 0; i < 6; ++i) mock_scores[i] = -32768;
    CHECK(Detecting(input, &param, NULL, 1, output, 0, NULL) == 0);
    CHECK(inference_calls == 7U);
    CHECK(draw_calls == draws_before); /* Model execution never paints the page. */
}
static void fake_leaf(void)
{
    /* Procedural camera stand-in; this is never represented as a board capture. */
    for (unsigned y = 0; y < 224U; ++y) for (unsigned x = 0; x < 224U; ++x) {
        int dx = (int)x - 110, dy = (int)y - 111;
        int inside = dx * dx * 3 + dy * dy < 10000;
        unsigned noise = (x * 73U + y * 31U) % 13U;
        uint8_t *p = image + (y * 224U + x) * 3U;
        p[0] = inside ? 32U + noise : 60U + noise;
        p[1] = inside ? 110U + noise + y / 7U : 71U + noise;
        p[2] = inside ? 45U + noise : 77U + noise;
        if (inside && (abs(dx - dy / 4) < 2 || abs(dx + dy / 2 - 20) < 2)) {
            p[0] += 15U; p[1] += 38U; p[2] += 25U;
        }
        if (inside && ((dx + 24) * (dx + 24) + (dy - 25) * (dy - 25) < 45 ||
                (dx - 27) * (dx - 27) + (dy + 30) * (dy + 30) < 70)) {
            p[0] = 35U; p[1] = 57U; p[2] = 102U;
        }
    }
}
static void save_frame(const char *filename)
{
    FILE *file = fopen(filename, "wb");
    CHECK(file != NULL);
    CHECK(fwrite(Buffptr, 1U, FRAME_BYTES, file) == FRAME_BYTES);
    CHECK(fclose(file) == 0);
    for (unsigned i = 0; i < 64U; ++i) {
        CHECK(framebuffer[i] == 0xA5U);
        CHECK(framebuffer[FRAME_BYTES + 64U + i] == 0xA5U);
    }
}
static void test_ui(void)
{
    CameraUIState state = {.camera_ready = 1U, .detector_ready = 1U,
            .light_on = 0U, .busy = CAMERA_UI_IDLE, .error = 0U,
            .result_index = -1, .elapsed_us = 0U, .saved_count = 0U,
            .message = "Tap DETECT, LIGHT or SAVE IMAGE"};
    uint8_t *preview = malloc(448U * 448U * 3U);
    CHECK(preview != NULL);
    memset(framebuffer, 0xA5, sizeof(framebuffer));
    unsigned before = refreshes;
    CameraUI_Draw(NULL);
    CHECK(refreshes == before);
    fake_leaf();
    CameraUI_Draw(&state);
    LCD_ShowPicture(image, CAMERA_UI_PREVIEW_X, CAMERA_UI_PREVIEW_Y, 224U, 224U, 2U);
    save_frame("idle.bgr");
    /* A result/button update must leave every camera-preview pixel untouched. */
    unsigned n = 0U;
    for (unsigned y = CAMERA_UI_PREVIEW_Y; y < CAMERA_UI_PREVIEW_Y + 448U; ++y)
        for (unsigned x = CAMERA_UI_PREVIEW_X; x < CAMERA_UI_PREVIEW_X + 448U; ++x) {
#if LCD_FLIP_DISPLAY
            unsigned p = ((LCD_H - 1U - y) * LCD_W + LCD_W - 1U - x) * 3U;
#else
            unsigned p = (y * LCD_W + x) * 3U;
#endif
            memcpy(preview + n, Buffptr + p, 3U); n += 3U;
        }
    state.result_index = 2; state.elapsed_us = 1245678U;
    state.saved_count = 12U; state.light_on = 1U;
    state.message = "Saved: Test/IMG00012.BMP";
    CameraUI_Draw(&state);
    save_frame("result.bgr");
    n = 0U;
    for (unsigned y = CAMERA_UI_PREVIEW_Y; y < CAMERA_UI_PREVIEW_Y + 448U; ++y)
        for (unsigned x = CAMERA_UI_PREVIEW_X; x < CAMERA_UI_PREVIEW_X + 448U; ++x) {
#if LCD_FLIP_DISPLAY
            unsigned p = ((LCD_H - 1U - y) * LCD_W + LCD_W - 1U - x) * 3U;
#else
            unsigned p = (y * LCD_W + x) * 3U;
#endif
            CHECK(memcmp(preview + n, Buffptr + p, 3U) == 0); n += 3U;
        }
    state.busy = CAMERA_UI_DETECTING; state.message = "Detecting; please wait...";
    CameraUI_Draw(&state); save_frame("detecting.bgr");
    state.busy = CAMERA_UI_SAVING; state.message = "Saving image to SD card...";
    CameraUI_Draw(&state); save_frame("saving.bgr");
    state.busy = CAMERA_UI_IDLE; state.error = 1U;
    state.message = "Save failed; check SD card";
    CameraUI_Draw(&state); save_frame("save_error.bgr");
    state.camera_ready = 0U; state.detector_ready = 0U;
    state.result_index = -1; state.message = "Camera unavailable; check connection";
    CameraUI_Draw(&state); save_frame("offline.bgr");
    state.camera_ready = 1U;
    state.message = "Model unavailable; preview/save available";
    CameraUI_Draw(&state);
    LCD_ShowPicture(image, CAMERA_UI_PREVIEW_X, CAMERA_UI_PREVIEW_Y, 224U, 224U, 2U);
    save_frame("no_model.bgr");
    /* Every class name, 99,999 saved files, and a two-line message fit the screen. */
    state.detector_ready = 1U; state.saved_count = 99999U;
    for (int k = 0; k < 6; ++k) {
        state.result_index = k;
        state.message = "123456789012345678901234567890123456789012345678\n123456789012345678901234567890123456789012345678";
        CameraUI_Draw(&state);
    }
    CHECK(out_of_bounds == 0U);
    CHECK(refreshes == before + 13U);
    free(preview);
}
static void test_main(void)
{
    for (volatile unsigned scenario = 0U; scenario < 5U; ++scenario) {
        unsigned before_write = writes;
        main_scenario = scenario;
        main_frame = previous_contact = 0U;
        detector_runs = light_ons = light_offs = shown_frames = 0U;
        light_fail = scenario == 4U;
        fail_write = 1; /* Saving feedback path without adding a real test BMP. */
        main_active = 1;
        if (setjmp(main_exit) == 0) (void)firmware_entry();
        main_active = 0;
        CHECK(main_frame == 24U);
        CHECK(detector_runs == ((scenario == 1U || scenario == 2U) ? 0U : 1U));
        if (scenario == 2U) {
            CHECK(shown_frames == 0U && light_ons == 0U && light_offs == 0U);
            CHECK(writes == before_write);
        } else {
            CHECK(shown_frames == 25U); /* One startup frame before model load. */
            CHECK(writes == before_write + 1U); /* Holding SAVE never repeats. */
            if (light_fail) CHECK(light_ons == 2U && light_offs == 1U);
            else CHECK(light_ons == 1U && light_offs == 2U);
        }
    }
    fail_write = 0;
}
int main(int argc, char **argv)
{
    if (argc > 1 && strcmp(argv[1], "--restart") == 0) { test_save(1); return 0; }
    if (argc > 1 && strcmp(argv[1], "--full") == 0) {
        prepare_snapshot();
        all_names_exist = 1;
        CHECK(Camera_Sample(image) == -1);
        CHECK(stats == 99999U && writes == 0U);
        CHECK(Camera_Sample(image) == -1);
        CHECK(stats == 99999U && writes == 0U);
        printf("PASS full directory: all 99,999 names preserved, no wrap/overwrite; %u checks\n", checks);
        return 0;
    }
    test_button(CAMERA_UI_BUTTON_X, CAMERA_UI_DETECT_Y, CAMERA_UI_DETECT_WIDTH,
            CAMERA_UI_DETECT_LENGTH, CAMERA_UI_DETECT_FONT);
    test_button(CAMERA_UI_BUTTON_X, CAMERA_UI_LIGHT_Y, CAMERA_UI_SMALL_WIDTH,
            CAMERA_UI_SMALL_LENGTH, CAMERA_UI_SMALL_FONT);
    test_button(CAMERA_UI_SAVE_X, CAMERA_UI_SAVE_Y, CAMERA_UI_SMALL_WIDTH,
            CAMERA_UI_SMALL_LENGTH, CAMERA_UI_SMALL_FONT);
    test_detection();
    test_save(0);
    test_ui();
    test_main();
    printf("PASS LCD_FLIP_DISPLAY=%d: %u checks, %lu pixel writes, zero clipping/out-of-bounds\n",
            LCD_FLIP_DISPLAY, checks, draw_calls);
    return 0;
}
