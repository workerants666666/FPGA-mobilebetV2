/* Windows binary-I/O frontend to the verified upstream libfdt 1.8.1 DLL.
 * Implements ordinary overlay application through public libfdt APIs.
 * It never modifies input files. Unlike utilfdt_read/write in the supplied
 * native package, all file streams are explicitly opened with rb/wb.
 */
#include <errno.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libfdt.h>

struct blob { void *data; size_t size; };

static int failure(const char *operation, const char *name, int code)
{
    fprintf(stderr, "%s: %s: %s\n", operation, name, fdt_strerror(code));
    return 1;
}

static int read_blob(const char *name, struct blob *blob)
{
    FILE *stream = fopen(name, "rb");
    long size;
    int code;
    if (!stream) { perror(name); return 1; }
    if (fseek(stream, 0, SEEK_END) || (size = ftell(stream)) < 0 ||
        size > INT_MAX || fseek(stream, 0, SEEK_SET)) {
        fprintf(stderr, "Cannot measure input: %s\n", name);
        fclose(stream); return 1;
    }
    blob->size = (size_t)size;
    if (blob->size < sizeof(struct fdt_header)) {
        fprintf(stderr, "Input is shorter than an FDT header: %s\n", name);
        fclose(stream); return 1;
    }
    blob->data = malloc(blob->size);
    if (!blob->data) { fclose(stream); return 1; }
    if (fread(blob->data, 1, blob->size, stream) != blob->size) {
        fprintf(stderr, "Short binary read: %s\n", name);
        fclose(stream); free(blob->data); blob->data = NULL; return 1;
    }
    fclose(stream);
    code = fdt_check_full(blob->data, blob->size);
    if (code) {
        free(blob->data); blob->data = NULL;
        return failure("Invalid complete input FDT", name, code);
    }
    return 0;
}

static int same_path(const char *a, const char *b)
{
    char *absolute_a = _fullpath(NULL, a, 0);
    char *absolute_b = _fullpath(NULL, b, 0);
    int same;
    if (!absolute_a || !absolute_b) {
        free(absolute_a); free(absolute_b);
        return 1; /* Refuse uncertain output aliases. */
    }
    same = _stricmp(absolute_a, absolute_b) == 0;
    free(absolute_a); free(absolute_b);
    return same;
}

static int apply_overlay(struct blob *base, const char *name)
{
    struct blob overlay = {NULL, 0};
    size_t capacity;
    unsigned attempt;
    if (read_blob(name, &overlay)) return 1;
    capacity = (size_t)fdt_totalsize(base->data) + overlay.size + 65536;
    for (attempt = 0; attempt < 16 && capacity <= INT_MAX; ++attempt) {
        void *next = malloc(capacity);
        void *overlay_copy = malloc(overlay.size);
        int code;
        if (!next || !overlay_copy) {
            free(next); free(overlay_copy); free(overlay.data); return 1;
        }
        memcpy(overlay_copy, overlay.data, overlay.size);
        code = fdt_open_into(base->data, next, (int)capacity);
        if (!code) code = fdt_overlay_apply(next, overlay_copy);
        free(overlay_copy);
        if (!code) {
            free(base->data);
            base->data = next; base->size = capacity;
            free(overlay.data); return 0;
        }
        free(next);
        if (code != -FDT_ERR_NOSPACE) {
            free(overlay.data); return failure("Overlay apply failed", name, code);
        }
        /* libfdt can modify both arguments on failure. Retry from originals. */
        capacity += 65536;
    }
    free(overlay.data);
    fprintf(stderr, "Overlay exceeds bounded working buffer growth: %s\n", name);
    return 1;
}

int main(int argc, char **argv)
{
    const char *input = NULL, *output = NULL;
    struct blob base = {NULL, 0};
    char **overlays = calloc((size_t)argc, sizeof(*overlays));
    int count = 0, i, code;
    FILE *stream;
    size_t output_size, input_size;
    if (!overlays) return 1;
    for (i = 1; i < argc; ++i) {
        if (!strcmp(argv[i], "-V") || !strcmp(argv[i], "--version")) {
            puts("fdtoverlay_binary 1.0 (libfdt 1.8.1; explicit Windows rb/wb I/O)");
            free(overlays); return 0;
        } else if (!strcmp(argv[i], "-i") && i + 1 < argc) input = argv[++i];
        else if (!strcmp(argv[i], "-o") && i + 1 < argc) output = argv[++i];
        else if (argv[i][0] != '-') overlays[count++] = argv[i];
        else {
            fprintf(stderr, "Unsupported option: %s\n", argv[i]);
            free(overlays); return 1;
        }
    }
    if (!input || !output || !count) {
        fputs("Usage: fdtoverlay_binary -i base.dtb -o NEW-output.dtb overlay.dtbo [...]\n", stderr);
        free(overlays); return 1;
    }
    if (same_path(input, output)) {
        fputs("Output must not overwrite the base input\n", stderr);
        free(overlays); return 1;
    }
    for (i = 0; i < count; ++i) if (same_path(overlays[i], output)) {
        fputs("Output must not overwrite an overlay input\n", stderr);
        free(overlays); return 1;
    }
    if (read_blob(input, &base)) { free(overlays); return 1; }
    input_size = base.size;
    for (i = 0; i < count; ++i) if (apply_overlay(&base, overlays[i])) {
        free(base.data); free(overlays); return 1;
    }
    code = fdt_pack(base.data);
    output_size = fdt_totalsize(base.data);
    if (!code) code = fdt_check_full(base.data, output_size);
    if (code) {
        free(base.data); free(overlays);
        return failure("Invalid final FDT", output, code);
    }
    stream = fopen(output, "wb");
    if (!stream) { perror(output); free(base.data); free(overlays); return 1; }
    code = fwrite(base.data, 1, output_size, stream) != output_size;
    if (fclose(stream)) code = 1;
    free(base.data); free(overlays);
    if (code) { fprintf(stderr, "Binary write failed: %s\n", output); return 1; }
    printf("Applied %d overlay(s); read %zu complete base bytes, wrote %zu binary bytes\n",
           count, input_size, output_size);
    return 0;
}
