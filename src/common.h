#ifndef clox_common_h
#define clox_common_h

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifndef DEBUG_PRINT_CODE
#define DEBUG_PRINT_CODE
#endif

#ifndef DEBUG_STRESS_GC
#define DEBUG_STRESS_GC
#endif

#ifndef DEBUG_LOG_GC
#define DEBUG_LOG_GC
#endif

#ifndef DEBUG_TRACE_EXECUTION
#define DEBUG_TRACE_EXECUTION
#endif

#define UINT8_COUNT (UINT8_MAX + 1)

#endif

// Undefine debug flags if not in debug mode
#ifdef NDEBUG
#undef DEBUG_PRINT_CODE
#undef DEBUG_STRESS_GC
#undef DEBUG_TRACE_EXECUTION
#undef DEBUG_LOG_GC
#endif
