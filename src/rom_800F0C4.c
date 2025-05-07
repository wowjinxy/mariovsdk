#include "gba/gba.h"
#include "global.h"
#include "sprites.h"

u32 setup_sprite_gfx_tiles_vram_0800F0C4(const void *src, u16 *arg1, u16 *vramOffset, u16 size)
{
    u32 ret;

    DmaCopy32(3, src, OBJ_VRAM0 + *vramOffset, size);
    *vramOffset += size;
    ret = *arg1 + (size >> 5);
    *arg1 = ret;
    return (u16)ret;
}

void sub_0800F104(u8 *arg0, u8 arg1, u8 arg2, u16 *arg3, int unused1, int unused2, u8 arg4)
{
    u8 i;

    arg1 += 40;
    for (i = 0; i < 6; i++)
    {
        DmaCopy32(3, &gUnknown_082EC748, &gOamBuffer[*arg3], sizeof(struct OamData));
        gOamBuffer[*arg3].x = arg1 - i * 8;
        gOamBuffer[*arg3].y = arg2;
        gOamBuffer[*arg3].tileNum = arg0[i] * 2 + gUnknown_03001B30.unk4;
        gOamBuffer[*arg3].paletteNum = arg4;
        *arg3 += 1;
    }
}
