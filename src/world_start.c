#include "gba/gba.h"
#include "global.h"
#include "arena.h"
/*
struct Struct2FC
{
	u8 unk0;
	u8 unk1;
	u8 filler2[3];
	u8 unk5;
	u8 unk6;
};

struct Struct300
{
	s32 unk0;
	u32 unk4;
	u16 unk8;
	u16 unkA;
	u16 unkC;
	u16 unkE;
	u32 unk10;
};

struct Struct304
{
	s32 unk0;
	u32 unk4;
	u16 unk8;
	u16 unkA;
	u16 unkC;
	u16 unkE;
};

extern struct UnknownStruct15 *gUnknown_030002F0;
extern u8 gUnknown_030002F4;
extern s16 gUnknown_030002F8;
extern struct Struct2FC *gUnknown_030002FC;
extern struct Struct300 *gUnknown_03000300;
extern struct Struct304 *gUnknown_03000304;

extern struct GraphicsConfig gWorldOneStartData;
extern struct GraphicsConfig *gWorldStartTable[];
extern struct GraphicsConfig *gWorldPlusStartTable[];

extern enum PaletteID gUnknown_080A8674[];
extern enum PaletteID gUnknown_080A868C[];
extern struct { u8 filler0; u8 unk1; } gUnknown_08251EC0;
extern struct { u8 filler0; u8 unk1; } gUnknown_0854301C;

void world_start_init_callback(void)
{
	struct GraphicsConfig *spC[4];
	void **r4;

	arena_restore_head(0);
	if (sub_08071FE4() != 11)
		sub_0807204C(11, 128, 1);
	r4 = &gUnknown_030002FC;
	*r4 = arena_allocate(16);
	gUnknown_03000BE0 = 0;
	spC[0] = NULL;
	spC[1] = NULL;
	//spC[2] = (gLevelType == 0 || gLevelType == 4) ? gWorldStartTable : gWorldPlusStartTable;
	if (gLevelType == 0 || gLevelType == 4)
	{
		spC[2] = gWorldStartTable[gCurrentWorld];
		spC[3] = gWorldStartTable[gCurrentWorld];
	}
	else
	{
		spC[2] = gWorldPlusStartTable[gCurrentWorld];
		spC[3] = gWorldPlusStartTable[gCurrentWorld];
	}
	load_graphics_config_08032F24(spC, 3);
	sub_08037230();
	REG_DISPCNT = 0x1840;
	if (gLevelType == 0 || gLevelType == 4)
	{
		gUnknown_030002F0 = sub_08006968(gWorldStartTable[gCurrentWorld]);
		load_predefined_palette(gUnknown_080A8674[gCurrentWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
	}
	else
	{
		gUnknown_030002F0 = sub_08006968(gWorldPlusStartTable[gCurrentWorld]);
		load_predefined_palette(gUnknown_080A868C[gCurrentWorld], LOAD_BG_PALETTE);
		load_predefined_palette(gUnknown_080A8674[gCurrentWorld], LOAD_OBJ_PALETTE);
	}
	if (gCurrentWorld == 0)
	{
		gUnknown_030002F4 = 1;
		gUnknown_03000300->unk10 = play_sound_effect_08071990(234, 12, 16, 64, 0, 128, 0);
		sub_08040FC0(gUnknown_03000300->unk10, gUnknown_03000300->unk0);
		play_sound_effect_08071990(168, 8, 16, 64, 0, 128, 0);
		sub_080379BC(1, 0);
	}
	else
	{
		gUnknown_030002F4 = 0;
		sub_080379BC(1, 0);
		sub_080379BC(0, 22);
	}
	set_blend_regs_08029CDC(gWorldOneStartData.bldCnt, gWorldOneStartData.bldAlpha, gWorldOneStartData.bldY);
	CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
	gUnknown_030002F8 = -0x3200;
	gBGLayerOffsets.bg2_y = gUnknown_030002F8 >> 8;
}

void sub_08037230(void)
{
	gUnknown_03000300 = arena_allocate(20);
	gUnknown_03000300->unkC = 0;
	gUnknown_03000300->unkE = gUnknown_08251EC0.unk1;
	gUnknown_03000300->unk0 = -0x3F00;
	gUnknown_03000300->unk4 = 56;
	gUnknown_03000300->unk8 = 241;
	gUnknown_03000300->unkA = 0x200;
 
	gUnknown_03000304 = arena_allocate(20);
	gUnknown_03000304->unkC = 0;
	gUnknown_03000304->unkE = gUnknown_0854301C.unk1;
	gUnknown_03000304->unk0 = -0x2000;
	gUnknown_03000304->unk4 = 88;
	gUnknown_03000304->unk8 = 737;
	gUnknown_03000304->unkA = 336;
}

void sub_080372A0(void)
{
	switch (gUnknown_030002F4)
	{
	case 0:
		if (--gUnknown_030002FC->unk1 == 0)
		{
			if (gUnknown_030002FC->unk0 < gUnknown_030002FC->unk5)
			{
				// to _080373CC
				gUnknown_030002FC->unk0++;
				gUnknown_030002FC->unk1 = 
			}
		}
	}
}
*/
