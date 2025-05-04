CC ?= gcc

CFLAGS = -Wall -Wextra -Werror -std=c11 -O2
CFLAGS += -Wno-error -g -fsanitize=address -Wno-sign-compare

.PHONY: all clean

SRCS = gbacomp.c

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

all: gbacomp$(EXE)
	@:

gbacomp$(EXE): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) gbacomp gbacomp.exe

