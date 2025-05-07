#include "gba/gba.h"
#include "global.h"
#include "sprites.h"


void setup_tutorial_button_display_0806CFB0(u16 *vramTileNum, u16 *vramOffset)
{
    u16 i;

    gUnknown_03001D70.currentDemoInputFrame = 0;
    gUnknown_03001D70.unk94 = 0;
    gUnknown_03001D70.someCounter = 0;
    gUnknown_03001D70.unk96 = 0;
    gUnknown_03001D70.unk98 = 0;
    gUnknown_03001D70.unkA0 = 0;

    for (i = 0; i < 0x15; i++) {
        gUnknown_03001D70.somePosition[i] = (gUnknown_030019AC->unk20 >> 8) + 0x10;
    }
    
	gUnknown_03001D70.unk86 = (((s32)gUnknown_030019AC->unk20) >> 8) + 0x10;
	gUnknown_03001D70.unk8A = (((s32)gUnknown_030019AC->unk20) >> 8) + 0x10;
	gUnknown_03001D70.unk8C = (((s32)gUnknown_030019AC->unk20) >> 8) + 0x10;
	gUnknown_03001D70.unk9C = -1;

	gUnknown_03001D70.vramTileOffsets[0]  = *vramTileNum;
	gUnknown_03001D70.vramTileOffsets[1]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F241C, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[2]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F3350, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[3]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2648, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[4]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2AA0, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[5]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2EF8, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[6]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F357C, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[7]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2874, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[8]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2CCC, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[9]  = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F3124, vramTileNum, vramOffset, 0x200);
	gUnknown_03001D70.vramTileOffsets[10] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2014, vramTileNum, vramOffset, 0x80);
	gUnknown_03001D70.vramTileOffsets[11] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F20C0, vramTileNum, vramOffset, 0x80);
	gUnknown_03001D70.vramTileOffsets[12] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F216C, vramTileNum, vramOffset, 0x80);
	gUnknown_03001D70.vramTileOffsets[13] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2218, vramTileNum, vramOffset, 0x80);
	gUnknown_03001D70.vramTileOffsets[14] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F22C4, vramTileNum, vramOffset, 0x80);
	gUnknown_03001D70.vramTileOffsets[15] = setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F2370, vramTileNum, vramOffset, 0x80);
	setup_sprite_gfx_tiles_vram_0800F0C4(&gUnknown_082F37A8, vramTileNum, vramOffset, 0x20);
	gUnknown_03001D70.vramTileOffsetDpad = gUnknown_03001D70.vramTileOffsets[0];
	gUnknown_03001D70.InputDisplayOAMDpad = (struct OamData *)&gUnknown_082F2414;
	
	gUnknown_03001D70.vramTileOffsetABtn = gUnknown_03001D70.vramTileOffsets[9];
	gUnknown_03001D70.InputDisplayOAMABtn = (struct OamData *)&gUnknown_082F200C;
	
	gUnknown_03001D70.vramTileOffsetBBtn = gUnknown_03001D70.vramTileOffsets[12];
	gUnknown_03001D70.InputDisplayOAMBBtn = (struct OamData *)&gUnknown_082F2210;  
	
	gUnknown_03001E20[0] = 0;
	gUnknown_03001E20[1] = 0;
	gUnknown_03001E20[2] = 0;
	gUnknown_03001E20[3] = 0;
	gUnknown_03001E20[4] = 0;
	gUnknown_03001E20[5] = 0;
}
