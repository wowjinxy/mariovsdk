#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sound.h"

void e_world_from_menu_loop(void)
{
    u16 temp2 = 0;

    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    sub_080351E0();

    switch (gUnknown_03000288)
    {
    case 1:
        sub_08031D44(gUnknown_03000294, gUnknown_03000298, 0x14, 0);
        break;
    case 3:
    case 4:
    case 5:
         sub_08034CCC(gTextErasing, -0x7FFF, 0x14, -1, 2);
         break;
    }

    sub_08035108(&temp2);
    DmaCopy16(3, gOamBuffer, 0x7000000, 0x400);
}

void e_world_from_menu_init_callback(void)
{
    arena_restore_head(0);
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = 0;
    e_world_init_callback();
    sub_08006968(&gEWorldMenuData2);
    if (sub_0802A458() != 0)
        sub_0802F06C();
    if (get_current_bgm() != 10)
        play_bgm(10, 0x80, 1);
    gUnknown_0300028C = gUnknown_03000288 = 0;
    gUnknown_03000290 = 0;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
}

void e_world_from_menu_end(void)
{
}

FILE_PAD
