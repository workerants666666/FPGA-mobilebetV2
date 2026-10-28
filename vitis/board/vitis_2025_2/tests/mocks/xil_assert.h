#ifndef TEST_XIL_ASSERT_H
#define TEST_XIL_ASSERT_H

/* An unexpected driver assertion fails the test instead of hanging the host. */
void mock_assert_fail(const char *condition, const char *file, int line);
#define Xil_AssertVoid(condition) do { \
    if (!(condition)) { mock_assert_fail(#condition, __FILE__, __LINE__); return; } \
} while (0)
#define Xil_AssertNonvoid(condition) do { \
    if (!(condition)) { mock_assert_fail(#condition, __FILE__, __LINE__); return 0U; } \
} while (0)

#endif
