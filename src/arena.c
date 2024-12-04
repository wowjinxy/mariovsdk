/* Simple arena-based memory allocator */
#include "gba/gba.h"
#include "global.h"
#include "arena.h"

void arena_init(void *start, void *end)
{
    s32 i;

    gArena.startAddr = start;
    gArena.endAddr = end;
    gArena.totalSize = (u32)end - (u32)start;
    gArena.head = start;
    for (i = 0; i < 4; i++)
        gArena.savedHeads[i] = gArena.startAddr;
}

void *arena_allocate(u32 size)
{
    void *block = gArena.head;

    gArena.head += (size + 3) & ~3;
    if (gArena.head > gArena.endAddr)
        print_error_message("Heap overflow.\nWe are out of RAM!");
    return block;
}

void arena_save_head(s32 index)
{
    gArena.savedHeads[index] = gArena.head;
}

void arena_restore_head(s32 index)
{
    if (index == -1)
        gArena.head = gArena.startAddr;
    else
        gArena.head = gArena.savedHeads[index];
}

// TODO: this probably doesn't belong in this file

void sub_080348C8(const struct UnknownStruct10 *a, u32 b, u32 c, u32 d)
{
    gUnknown_03001770.unk0 = a;
    gUnknown_03001770.unk4 = b;
    gUnknown_03001770.unk8 = c;
    gUnknown_03001770.unkC = d;
    gUnknown_03001770.unk10 = &a->unk0[a->unk4];
    if (a->unkA == 4)
        gUnknown_03001770.unk14 = 2;
    else
        gUnknown_03001770.unk14 = 3;
    gUnknown_03001770.unk16 = (1 << gUnknown_03001770.unk14) - 1;
    gUnknown_03001770.unk15 = 0x40 >> (3 - gUnknown_03001770.unk14);
    gUnknown_03001770.unk18 = gUnknown_03001770.unk8;
    gUnknown_03001770.unk1C = arena_allocate(440);
    gUnknown_03001770.unk24 = 0;
    gUnknown_03001770.unk20 = 0;
    gUnknown_03001770.unk28 = 0x8000;
}

FILE_PAD
