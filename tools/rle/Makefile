CC ?= gcc

CFLAGS = -Wall -Wextra -Werror -std=c11 -O2

.PHONY: all clean

SRCS = rle.c

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

all: rle$(EXE)
	@:

rle$(EXE): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) rle rle.exe

