/*
 * Exercise the canonical sd_io.c through public APIs. FatFs fault injection
 * models full cards, truncated files, seek errors, and failed final flushes.
 * The mock deliberately never dereferences 32-bit board addresses on a
 * 64-bit host. Failed-weight tests stop before conversion, and verify that
 * unread data never replaces the caller's sentinel values.
 */
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sd_io.h"

static FRESULT open_result, seek_result, transfer_result, close_result;
static int open_calls, seek_calls, read_calls, write_calls, close_calls;
static int short_transfer, fail_allocation, free_calls, checks;

#define CHECK(condition) do { \
    ++checks; if (!(condition)) { \
        fprintf(stderr, "FAIL line %d: %s\n", __LINE__, #condition); \
        exit(1); \
    } \
} while (0)

void *audit_malloc(size_t size)
{
    return fail_allocation ? NULL : malloc(size);
}
void audit_free(void *pointer)
{
    ++free_calls;
    free(pointer);
}
int xil_printf(const char *format, ...) { (void)format; return 0; }
FRESULT f_mount(FATFS *fs, const char *path, unsigned char option)
{
    (void)fs; (void)path; (void)option; return FR_OK;
}
FRESULT f_open(FIL *file, const char *path, unsigned char mode)
{
    (void)file; (void)path; (void)mode; ++open_calls; return open_result;
}
FRESULT f_lseek(FIL *file, uint32_t offset)
{
    (void)file; (void)offset; ++seek_calls; return seek_result;
}
FRESULT f_read(FIL *file, void *buffer, UINT length, UINT *count)
{
    (void)file; (void)buffer; ++read_calls;
    *count = short_transfer ? length - 1U : length;
    return transfer_result;
}
FRESULT f_write(FIL *file, const void *buffer, UINT length, UINT *count)
{
    (void)file; (void)buffer; ++write_calls;
    *count = short_transfer ? length - 1U : length;
    return transfer_result;
}
FRESULT f_close(FIL *file)
{
    (void)file; ++close_calls; return close_result;
}
static void reset(void)
{
    open_result = seek_result = transfer_result = close_result = FR_OK;
    open_calls = seek_calls = read_calls = write_calls = close_calls = 0;
    short_transfer = fail_allocation = free_calls = 0;
}
int main(void)
{
    int status;
    short output[2] = {1234, -4321};
    for (int writing = 0; writing <= 1; ++writing) {
        int (*transfer)(char *, u32, u32) = writing ?
                SD_Transfer_write : SD_Transfer_read;
        reset();
        CHECK(transfer(NULL, 0x1000U, 8U) == XST_INVALID_PARAM);
        CHECK(transfer("test", 0U, 8U) == XST_INVALID_PARAM);
        CHECK(open_calls == 0);
        reset(); open_result = FR_NO_FILE;
        CHECK(transfer("test", 0x1000U, 8U) == XST_FAILURE);
        CHECK(open_calls == 1 && close_calls == 0 && seek_calls == 0);
        reset(); seek_result = FR_DISK_ERR;
        CHECK(transfer("test", 0x1000U, 8U) == XST_FAILURE);
        CHECK(close_calls == 1 && read_calls == 0 && write_calls == 0);
        reset(); transfer_result = FR_DISK_ERR;
        CHECK(transfer("test", 0x1000U, 8U) == XST_FAILURE);
        CHECK(close_calls == 1);
        reset(); short_transfer = 1;
        CHECK(transfer("test", 0x1000U, 8U) == XST_FAILURE);
        CHECK(close_calls == 1);
        reset(); close_result = FR_DISK_ERR;
        CHECK(transfer("test", 0x1000U, 8U) == XST_FAILURE);
        CHECK(close_calls == 1);
        reset();
        CHECK(transfer("test", 0x1000U, 8U) == XST_SUCCESS);
        CHECK(close_calls == 1);
        CHECK(writing ? write_calls == 1 : read_calls == 1);
    }
    reset();
    CHECK(read_param_q(NULL, 2, "test") == XST_INVALID_PARAM);
    CHECK(read_param_q(output, 0, "test") == XST_INVALID_PARAM);
    CHECK(read_param_q(output, -1, "test") == XST_INVALID_PARAM);
    CHECK(read_param_q(output, 2, NULL) == XST_INVALID_PARAM);
    CHECK(open_calls == 0);
    reset(); fail_allocation = 1;
    CHECK(read_param_q(output, 2, "test") == XST_FAILURE);
    CHECK(open_calls == 0 && free_calls == 0);
    reset(); short_transfer = 1;
    status = read_param_q(output, 2, "test");
    CHECK(status == XST_FAILURE);
    CHECK(output[0] == 1234 && output[1] == -4321);
    CHECK(close_calls == 1 && free_calls == 1);
    reset(); open_result = FR_NO_FILE;
    CHECK(read_param_q(output, 2, "test") == XST_FAILURE);
    CHECK(output[0] == 1234 && output[1] == -4321);
    CHECK(close_calls == 0 && free_calls == 1);
    printf("PASS: %d SD I/O and failed-weight-load assertions\n", checks);
    return 0;
}
