#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

void sub_080069E8() {
	gUnknown_03000924 = arena_allocate(0x438);
}

void sub_08006A00() {
	gUnknown_03000924 = 0;
}
