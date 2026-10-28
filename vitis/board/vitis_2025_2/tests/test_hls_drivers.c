/* Host regression tests for the actual application-owned HLS driver C files.
 * Only the BSP MMIO/type/assert boundary is mocked. No FPGA is accessed.
 */
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "xconv.h"
#include "xfc.h"
#include "xpwdwconv.h"
#include "xshortcut.h"
#include "hw_config.h"

_Static_assert(sizeof(u32) == 4, "The register data bus must remain 32-bit");
_Static_assert(sizeof(UINTPTR) > 4, "Run with a native 64-bit host compiler");

static unsigned int check_count;
#define CHECK(condition) do { \
    ++check_count; \
    if (!(condition)) { \
        fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #condition); \
        exit(EXIT_FAILURE); \
    } \
} while (0)

enum { WORD_COUNT = 64, AP_CTRL = 0, IER = 2, ISR = 3 };
static struct {
    UINTPTR base;
    u32 words[WORD_COUNT];
    UINTPTR last_write_address;
    u32 last_write_value;
    unsigned int reads;
    unsigned int writes;
} bus;

/* These are synthetic bus addresses, deliberately above 4 GiB. A truncated
 * address fails the bus bounds check, without dereferencing an invalid pointer.
 */
#define TEST_BASE ((UINTPTR)UINT64_C(0x143c00000))

static void reset_bus(UINTPTR base)
{
    memset(&bus, 0, sizeof(bus));
    bus.base = base;
}

static size_t word_index(UINTPTR address)
{
    CHECK(address >= bus.base);
    CHECK(address - bus.base < sizeof(bus.words));
    CHECK((address & (UINTPTR)3U) == 0U);
    return (size_t)((address - bus.base) / sizeof(u32));
}

void Xil_Out32(UINTPTR address, u32 value)
{
    size_t index = word_index(address);
    bus.last_write_address = address;
    bus.last_write_value = value;
    ++bus.writes;
    if (index == AP_CTRL) {
        /* HLS ap_start/auto_restart are writable; done/idle/ready are status. */
        bus.words[index] = (bus.words[index] & ~0x81U) | (value & 0x81U);
    } else if (index == ISR) {
        /* HLS interrupt status is toggle-on-write, not ordinary RAM. */
        bus.words[index] ^= value;
    } else {
        bus.words[index] = value;
    }
}

u32 Xil_In32(UINTPTR address)
{
    size_t index = word_index(address);
    u32 value = bus.words[index];
    ++bus.reads;
    if (index == AP_CTRL) {
        bus.words[index] &= ~0x02U; /* ap_done is clear-on-read. */
    }
    return value;
}

void mock_assert_fail(const char *condition, const char *file, int line)
{
    fprintf(stderr, "Unexpected driver assertion %s:%d: %s\n", file, line, condition);
    exit(EXIT_FAILURE);
}

/* All four APIs share this HLS control interface. Exercise each actual public
 * API through its own compiled implementation, including failure readiness.
 */
#define TEST_INIT_AND_CONTROL(Prefix, Type, address) do { \
    Type instance; \
    Type##_Config config = { (address) }; \
    reset_bus(address); \
    memset(&instance, 0, sizeof(instance)); \
    CHECK(Prefix##_Initialize(NULL, address) == XST_INVALID_PARAM); \
    CHECK(Prefix##_CfgInitialize(NULL, &config) == XST_INVALID_PARAM); \
    instance.IsReady = XIL_COMPONENT_IS_READY; \
    CHECK(Prefix##_CfgInitialize(&instance, NULL) == XST_INVALID_PARAM); \
    CHECK(instance.IsReady == 0U); \
    instance.IsReady = XIL_COMPONENT_IS_READY; \
    config.Ctrl_BaseAddress = 0U; \
    CHECK(Prefix##_CfgInitialize(&instance, &config) == XST_INVALID_PARAM); \
    CHECK(instance.IsReady == 0U); \
    instance.IsReady = XIL_COMPONENT_IS_READY; \
    config.Ctrl_BaseAddress = (address) + 1U; \
    CHECK(Prefix##_CfgInitialize(&instance, &config) == XST_INVALID_PARAM); \
    CHECK(instance.IsReady == 0U); \
    instance.IsReady = XIL_COMPONENT_IS_READY; \
    CHECK(Prefix##_Initialize(&instance, 0U) == XST_INVALID_PARAM); \
    CHECK(instance.IsReady == 0U); \
    instance.IsReady = XIL_COMPONENT_IS_READY; \
    CHECK(Prefix##_Initialize(&instance, (address) + 2U) == XST_INVALID_PARAM); \
    CHECK(instance.IsReady == 0U); \
    CHECK(bus.reads == 0U && bus.writes == 0U); \
    config.Ctrl_BaseAddress = (address); \
    CHECK(Prefix##_CfgInitialize(&instance, &config) == XST_SUCCESS); \
    CHECK(instance.Ctrl_BaseAddress == (address)); \
    CHECK(instance.IsReady == XIL_COMPONENT_IS_READY); \
    CHECK(Prefix##_Initialize(&instance, address) == XST_SUCCESS); \
    CHECK(instance.Ctrl_BaseAddress == (address)); \
    CHECK(instance.IsReady == XIL_COMPONENT_IS_READY); \
    CHECK(bus.reads == 0U && bus.writes == 0U); \
    bus.words[AP_CTRL] = 0x8EU; \
    Prefix##_Start(&instance); \
    CHECK(bus.last_write_address == (address)); \
    CHECK(bus.last_write_value == 0x81U); \
    CHECK(bus.words[AP_CTRL] == 0x8DU); \
    CHECK(Prefix##_IsIdle(&instance) == 1U); \
    CHECK(Prefix##_IsReady(&instance) == 0U); \
    bus.words[AP_CTRL] = 0x0EU; \
    CHECK(Prefix##_IsDone(&instance) == 1U); \
    CHECK(Prefix##_IsDone(&instance) == 0U); \
    CHECK(Prefix##_IsIdle(&instance) == 1U); \
    CHECK(Prefix##_IsReady(&instance) == 1U); \
    Prefix##_Start(&instance); \
    CHECK(bus.last_write_value == 0x01U); \
    CHECK(bus.words[AP_CTRL] == 0x0DU); \
    Prefix##_EnableAutoRestart(&instance); \
    CHECK(bus.last_write_value == 0x80U); \
    CHECK((bus.words[AP_CTRL] & 0x80U) == 0x80U); \
    Prefix##_DisableAutoRestart(&instance); \
    CHECK((bus.words[AP_CTRL] & 0x80U) == 0U); \
    CHECK((bus.words[AP_CTRL] & 0x0CU) == 0x0CU); \
    bus.words[IER] = 0x01U; \
    Prefix##_InterruptEnable(&instance, 0x02U); \
    CHECK(Prefix##_InterruptGetEnabled(&instance) == 0x03U); \
    Prefix##_InterruptDisable(&instance, 0x01U); \
    CHECK(Prefix##_InterruptGetEnabled(&instance) == 0x02U); \
    bus.words[ISR] = 0x03U; \
    Prefix##_InterruptClear(&instance, 0x01U); \
    CHECK(Prefix##_InterruptGetStatus(&instance) == 0x02U); \
} while (0)

static void test_driver_control(void)
{
    TEST_INIT_AND_CONTROL(XConv, XConv, TEST_BASE);
    TEST_INIT_AND_CONTROL(XFc, XFc, TEST_BASE + 0x10000U);
    TEST_INIT_AND_CONTROL(XPwdwconv, XPwdwconv, TEST_BASE + 0x20000U);
    TEST_INIT_AND_CONTROL(XShortcut, XShortcut, TEST_BASE + 0x30000U);
    puts("PASS all four drivers: invalid initialization, 64-bit addresses, HLS control/IRQ semantics");
}

static void test_data_registers(void)
{
    XConv conv;
    XFc fc;
    XPwdwconv pwdw;
    XShortcut shortcut;

    reset_bus(TEST_BASE);
    CHECK(XConv_Initialize(&conv, bus.base) == XST_SUCCESS);
    bus.words[0x14U / 4U] = 0xA5A5A5A5U;
    XConv_Set_in1_V(&conv, 0xF1234567U);
    CHECK(bus.last_write_address == TEST_BASE + 0x10U);
    CHECK(bus.words[0x10U / 4U] == 0xF1234567U);
    CHECK(bus.words[0x14U / 4U] == 0xA5A5A5A5U);
    CHECK(XConv_Get_in1_V(&conv) == 0xF1234567U);
    XConv_Set_out_V(&conv, 0x89ABCDEFU);
    CHECK(bus.words[0x38U / 4U] == 0x89ABCDEFU);
    CHECK(XConv_Get_out_V(&conv) == 0x89ABCDEFU);

    reset_bus(TEST_BASE + 0x10000U);
    CHECK(XFc_Initialize(&fc, bus.base) == XST_SUCCESS);
    XFc_Set_weight_V(&fc, 0xF7654321U);
    CHECK(bus.words[0x18U / 4U] == 0xF7654321U);
    CHECK(XFc_Get_weight_V(&fc) == 0xF7654321U);
    XFc_Set_out_V(&fc, 0x80000000U);
    CHECK(bus.words[0x28U / 4U] == 0x80000000U);
    CHECK(XFc_Get_out_V(&fc) == 0x80000000U);

    reset_bus(TEST_BASE + 0x20000U);
    CHECK(XPwdwconv_Initialize(&pwdw, bus.base) == XST_SUCCESS);
    XPwdwconv_Set_PBUS4_V(&pwdw, 0xF2345678U);
    CHECK(bus.words[0x28U / 4U] == 0xF2345678U);
    CHECK(XPwdwconv_Get_PBUS4_V(&pwdw) == 0xF2345678U);
    XPwdwconv_Set_ch_in(&pwdw, 960U);
    CHECK(bus.words[0x40U / 4U] == 960U);
    CHECK(XPwdwconv_Get_ch_in(&pwdw) == 960U);
    XPwdwconv_Set_mode(&pwdw, 1U);
    CHECK(bus.words[0x68U / 4U] == 1U);
    CHECK(XPwdwconv_Get_mode(&pwdw) == 1U);

    reset_bus(TEST_BASE + 0x30000U);
    CHECK(XShortcut_Initialize(&shortcut, bus.base) == XST_SUCCESS);
    XShortcut_Set_dest_V(&shortcut, 0xF3456789U);
    CHECK(bus.words[0x20U / 4U] == 0xF3456789U);
    CHECK(XShortcut_Get_dest_V(&shortcut) == 0xF3456789U);
    XShortcut_Set_length_r(&shortcut, 112U * 112U * 24U);
    CHECK(bus.words[0x28U / 4U] == 301056U);
    CHECK(XShortcut_Get_length_r(&shortcut) == 301056U);
    puts("PASS all four drivers: representative data registers and exact 32-bit transfers");
}

static void test_generated_hardware_config(void)
{
    /* These expected physical values describe the supplied legacy XSA. Compile
     * against the real generated SDT xparameters.h, never a copied legacy BSP.
     */
    CHECK(HW_UART1_BASEADDR == (UINTPTR)0xE0001000U);
    CHECK(HW_IIC0_BASEADDR == (UINTPTR)0xE0004000U);
    CHECK(HW_IIC1_BASEADDR == (UINTPTR)0xE0005000U);
    CHECK(HW_UART1_INTR_ID == 82U);
    CHECK(HW_IIC0_INTR_ID == 57U);
    CHECK(HW_IIC1_INTR_ID == 80U);
    CHECK(HW_GPIO_INTR_ID == 52U);
    CHECK(HW_SPI_INTR_ID(0x804032U) == 82U);
    CHECK(TRASH_CONV_BASEADDR == (UINTPTR)0x43C00000U);
    CHECK(TRASH_FC_BASEADDR == (UINTPTR)0x43C10000U);
    CHECK(TRASH_PWDWCONV_BASEADDR == (UINTPTR)0x43C20000U);
    CHECK(TRASH_SHORTCUT_BASEADDR == (UINTPTR)0x43C30000U);
    CHECK(HW_LCD_BUFFER_ADDR == (UINTPTR)0x12100000U);
    CHECK(HW_CAMERA_BUFFER_ADDR == (UINTPTR)0x12400000U);
    CHECK(HW_SAMPLE_BUFFER_ADDR == (UINTPTR)0x12500000U);
    puts("PASS generated BSP: physical peripheral labels, SDT SPI decoding and DDR offsets");
}

int main(void)
{
    CHECK(TEST_BASE > (UINTPTR)UINT32_MAX);
    printf("Native UINTPTR: %zu bits; synthetic MMIO base: 0x%" PRIxPTR "\n",
           sizeof(UINTPTR) * 8U, TEST_BASE);
    test_driver_control();
    test_data_registers();
    test_generated_hardware_config();
    printf("PASS %u checks using the real four application driver implementations\n", check_count);
    return EXIT_SUCCESS;
}
