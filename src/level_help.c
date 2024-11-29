#include "gba/gba.h"
#include "global.h"
#include "main.h"

static u8 gUnknown_03000130;
static u8 gUnknown_03000131;
static u8 gUnknown_03000132;
static u8 gUnknown_03000133;
static u16 gUnknown_03000138[12];

extern u8 gUnknown_082E4C4C[];
extern struct OamData gUnknown_082E4C44;

struct Struct08079ED0
{
    u8 filler0[6];
    u16 unk6;
    u16 unk8;
    u8 fillerA[0x14-0xA];
    void *unk14;
};  // size = 0x18

extern struct Struct08079ED0 *gUnknown_08079ED0;

struct UnkStruct2
{
    struct SpriteTemplate *unk0;
    u32 unk4;
    s16 unk8;
    s16 unkA;
};

extern struct UnkStruct2 gHelpScreenBaseSpriteLayout[];

struct Struct0807A92C_child  // maybe struct Struct08079ED0?
{
	s16 unk0;
	s16 unk2;
	u8 filler4[2];
	u16 unk6;
	u16 unk8;
	u8 fillerA[0x10-0xA];
	void *unk10;
	void *unk14;
};  // size = 0x18

struct Struct0807A92C
{
	struct Struct0807A92C_child *unk0;
	s16 unk4;
};

extern struct Struct0807A92C gUnknown_0807A92C[];

void help_init_callback(void)
{
    REG_DISPCNT |= DISPCNT_OBJWIN_ON;
    gUnknown_03000130 = 1;
    gUnknown_03000131 = 4;
    gUnknown_03000132 = 2;
    load_predefined_palette(PALETTE_5_LEVEL_HELP, LOAD_OBJ_PALETTE);

    if (gUnknown_03001938 & 2)
        gUnknown_03000133 = 0;
    else if (gUnknown_03001938 & 4)
        gUnknown_03000133 = 1;
    else if (gUnknown_03001938 & 8)
        gUnknown_03000133 = 2;
    else if (gUnknown_03001938 & 16)
        gUnknown_03000133 = 3;
    else if (gUnknown_03001938 & 32)
        gUnknown_03000133 = 4;
    else if (gUnknown_03001938 & 64)
        gUnknown_03000133 = 5;
    else if (gUnknown_03001938 & 128)
        gUnknown_03000133 = 6;
    else if (gUnknown_03001938 & 0x1000)
        gUnknown_03000133 = 7;
    else if (gUnknown_03001938 & 0x4000)
        gUnknown_03000133 = 8;
}

void sub_0802A5AC(void)
{
    u8 r3 = 0;

    if (gUnknown_03000130 == 1)
    {
        gUnknown_03000131++;
        gUnknown_03000132++;
        if (gUnknown_03000131 > 8)
        {
            gUnknown_03000131 = 8;
            r3++;
        }
        if (gUnknown_03000132 > 5)
        {
            gUnknown_03000132 = 5;
            r3++;
        }
        if (r3 == 2)
            gUnknown_03000130 = 2;
    }
    else if (gUnknown_03000130 == 3)
    {
        gUnknown_03000131--;
        gUnknown_03000132--;
        if (gUnknown_03000131 < 4)
        {
            gUnknown_03000131 = 4;
            r3++;
        }
        if (gUnknown_03000132 < 2)
        {
            gUnknown_03000132 = 2;
            r3++;
        }
        if (r3 == 2)
            gUnknown_03000130 = 0;
    }
}

void sub_0802A648(u16 *arg0, u16 *arg1, u16 *arg2)
{
    u16 tileNum;
    u16 xOffset, yOffset;
    u16 x, y;

    DmaCopy32(3, gUnknown_082E4C4C, (u8 *)OBJ_VRAM0 + *arg2, 0x200);
    tileNum = *arg1;
    *arg1 += 16;
    *arg2 += 0x200;

    xOffset = (240 - (gUnknown_03000131 * 32)) >> 1;
    yOffset = (160 - (gUnknown_03000132 * 32)) >> 1;

    for (y = 0; y < gUnknown_03000132; y++)
    {
        for (x = 0; x < gUnknown_03000131; x++)
        {
            DmaCopy32(3, &gUnknown_082E4C44, &gOamBuffer[*arg0], 8);
            gOamBuffer[*arg0].tileNum = tileNum;
            gOamBuffer[*arg0].x = x * 32 + xOffset;
            gOamBuffer[*arg0].y = y * 32 + yOffset;
            gOamBuffer[*arg0].paletteNum = 0;
            gOamBuffer[*arg0].priority = 1;
            (*arg0)++;
        }
    }
}

void sub_0802A7A0(u16 *arg0, u16 *arg1, u16 *arg2)
{
    s16 i;
    s16 j;

    const struct UnkStruct2 *r8 = gHelpScreenBaseSpriteLayout;
    const struct Struct08079ED0 *r3 = gUnknown_08079ED0;

    for (i = 0; i < 12; i++, r3++)
    {
        DmaCopy32(3, r3->unk14, (u8 *)OBJ_VRAM0 + *arg2, r3->unk8);
        gUnknown_03000138[i] = *arg1;
        *arg1 += r3->unk6;
        *arg2 += r3->unk8;
    }

    for (j = 0; j < 43u; j++, r8++)
    {
        DmaCopy32(3, r8->unk0->oamData, &gOamBuffer[*arg0], sizeof(struct OamData));
        gOamBuffer[*arg0].tileNum += gUnknown_03000138[r8->unk4];
        gOamBuffer[*arg0].x = r8->unk8;
        gOamBuffer[*arg0].y = r8->unkA;
        gOamBuffer[*arg0].priority = 0;
        (*arg0)++;
    }
}

void sub_0802A8F0(u16 *arg0, u16 *arg1, u16 *arg2)
{
	s16 i;

	for (i = 0; i < gUnknown_0807A92C[gUnknown_03000133].unk4; i++)
	{
		const struct Struct0807A92C_child *r4 = &gUnknown_0807A92C[gUnknown_03000133].unk0[i];

		DmaCopy32(3, r4->unk14, (u8 *)OBJ_VRAM0 + *arg2, r4->unk8);
		DmaCopy32(3, r4->unk10, &gOamBuffer[*arg0], sizeof(struct OamData));
		gOamBuffer[*arg0].tileNum = *arg1;
		gOamBuffer[*arg0].x = r4->unk0;
		gOamBuffer[*arg0].y = r4->unk2;
		gOamBuffer[*arg0].priority = 0;
		*arg1 += r4->unk6;
		*arg2 += r4->unk8;
		(*arg0)++;
	}
}

void help_end(void)
{
	sub_08038B18();
}

void help_main(void)
{
	process_input();
	if (gUnknown_03000130 == 2)
	{
		if (gNewKeys & (B_BUTTON|START_BUTTON))
			gUnknown_03000130 = 3;
	}
	else if (gUnknown_03000130 == 0)
	{
		REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;
		play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
		change_main_state(MAIN_STATE_UNKNOWN_19, NO_FADE);
		sub_08072118();
	}
}

void help_loop(void)
{
	level_play_loop();
}

void sub_0802AA9C(u16 *arg0, u16 *arg1, u16 *arg2)
{
	if (gMainState == MAIN_STATE_HELP && gUnknown_03000130 != 0)
	{
		if (gUnknown_03000130 == 2)
		{
			sub_0802A8F0(arg0, arg1, arg2);
			sub_0802A7A0(arg0, arg1, arg2);
		}
		else
		{
			sub_0802A648(arg0, arg1, arg2);
			sub_0802A5AC();
		}
	}
}
