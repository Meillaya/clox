CC := gcc
CFLAGS := -Wall -Wextra -std=c2x -pedantic
TARGET := clox

# Debug vs Release builds
DEBUG ?= 1
ifeq ($(DEBUG), 1)
    CFLAGS += -g -O0 -DDEBUG_PRINT_CODE -DDEBUG_TRACE_EXECUTION -DDEBUG_STRESS_GC -DDEBUG_LOG_GC
else
    CFLAGS += -O2 -DNDEBUG
endif

# Find all source files
SRCS := $(shell find src -name '*.c')

# Generate object file names
OBJS := $(SRCS:.c=.o)

# Find all include directories
INCLUDE_DIRS := $(shell find src -type d)
CFLAGS += $(addprefix -I,$(INCLUDE_DIRS))

.PHONY: all clean debug release install uninstall

all: $(TARGET)

debug:
	$(MAKE) DEBUG=1

release:
	$(MAKE) DEBUG=0

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

install: $(TARGET)
	mkdir -p $(DESTDIR)/usr/local/bin
	cp $(TARGET) $(DESTDIR)/usr/local/bin/

uninstall:
	rm -f $(DESTDIR)/usr/local/bin/$(TARGET)
