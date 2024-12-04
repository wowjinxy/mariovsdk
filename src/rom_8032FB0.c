#include "gba/gba.h"
#include "global.h"
#include "main.h"

void load_some_oam(void)
{
    int i;
    struct OamData *oam = gOamBuffer;
    u16 *ptr = (u16 *)oam;

    for (i = 0; i < 32; i++)
    {
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
    }
    CpuCopy16(oam, (void *)OAM, 0x400);
}

void sub_08033024(void)
{
    if (gNewKeys == START_BUTTON || gNewKeys == B_BUTTON)
    {
        change_main_state(MAIN_STATE_UKNOWN_12, USE_FADE);
        gUnknown_030012F8 = 0;
        gHeldKeys = 0;
        gNewKeys = 0;
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gNewKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gHeldKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            if ((gHeldKeys & L_BUTTON) && (gNewKeys & DPAD_UP))
            {
                change_main_state(MAIN_STATE_UNKNOWN_18, NO_FADE);
                gUnknown_030012F8 = 0;
                gHeldKeys = 0;
                gNewKeys = 0;
                gUnknown_030019A0 |= 0x200000;
                gUnknown_03001744 = 1;
            }
            else
            {
                sub_0806D1AC(gNewKeys, gHeldKeys);
                if (gUnknown_03001938 & 0x800)
                {
                    sub_0800EE70();
                }
                else
                {
                    gUnknown_030012F8++;
                }
            }
        }
        else
        {
            change_main_state(MAIN_STATE_TUTORIAL_SETUP, NO_FADE);
            gUnknown_030012F8 = 0;
            gHeldKeys = 0;
            gNewKeys = 0;
        }
    }
}

void sub_08033148(void)
{
    if (gNewKeys == START_BUTTON || gNewKeys == B_BUTTON)
    {
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
        gUnknown_030012F8 = 0;
        gHeldKeys = 0;
        gNewKeys = 0;
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gNewKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gHeldKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            gUnknown_030012F8++;
        }
        else
        {
            change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
            gUnknown_030012F8 = 0;
            gHeldKeys = 0;
            gNewKeys = 0;
        }
    }

}

// possibly sub_08034154
static inline u16 inline_1(void)
{
    if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
        return sub_0806C2C4();
    else
        return 0;
}

// possibly sub_08034178
static inline bool32 inline_2(void)
{
    if ((gHeldKeys & START_BUTTON) &&  (gHeldKeys & SELECT_BUTTON) && (gHeldKeys & A_BUTTON) && (gHeldKeys & B_BUTTON)
     && gMainState != MAIN_STATE_TITLE_SCREEN && gMainState != MAIN_STATE_INIT)
    {
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
        gLevelType = LEVEL_TYPE_MAIN;
        gCurrentWorld = 0;
        gNextLevelID = 0;
        gLevelEWorldFlag = 0;
        sub_080720AC();
        sub_08071C24();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

void process_input(void)
{
    struct KeyInput keyInput = {.keys = ~REG_KEYINPUT};
    u16 keys;
    u32 r4;
    bool16 r3_2;

    keys = keyInput.keys;
    if (gMainState == MAIN_STATE_TUTORIAL || gMainState == MAIN_STATE_DEMO)
        gHeldKeys = gUnknown_030002AA;
    r4 = gUnknown_03001938;
    if (r4 & 0x400)
    {
        gNewKeys = keys & ~gHeldKeys;
        gHeldKeys = keys;

        if ((keys & (START_BUTTON | SELECT_BUTTON)) == (START_BUTTON | SELECT_BUTTON) && (keys & A_BUTTON) && (keys & B_BUTTON) && gMainState != MAIN_STATE_TITLE_SCREEN)
        {
            gUnknown_03001938 = r4 & ~0x400;
        }
        else
        {
            u16 r2 = inline_1();

            gNewKeys = r2 & ~gHeldKeys;
            gHeldKeys = r2;
        }

    }
    else
    {
        gNewKeys = keys & ~gHeldKeys;
        gHeldKeys = keys;
        if (gUnknown_03001740 == 0 && gNewKeys == 0 && keys == 0)
            gUnknown_03001740 = 1;
    }

    r3_2 = inline_2();
    if (r3_2 == 0)
    {
        s32 i;

        if (gMainState == MAIN_STATE_TUTORIAL)
        {
            gUnknown_030002AA = gHeldKeys;
            sub_08033024();
        }
        else if (gMainState == MAIN_STATE_DEMO)
        {
            gUnknown_030002AA = gHeldKeys;
            sub_08033148();
        }
        else if (gIsFadeInProgress != 0)
        {
            gNewKeys = gHeldKeys = 0;
        }
        else if (gMainState == MAIN_STATE_LEVEL_PLAY)
        {
            if (gGeneralTimer <= 10)
            {
                gNewKeys = gHeldKeys = 0;
            }
        }
        gUnknown_03001708 = 0;

        for (i = 0; i < 16; i++)
        {
            u16 r3 = 1 << i;

            if (gNewKeys & r3)
                gUnknown_03001708 |= r3;
            if ((u16)gHeldKeys & r3)
            {
                gUnknown_030012B0[i]--;
                if (gUnknown_030012B0[i] == 0)
                {
                    gUnknown_030012B0[i] = 6;
                    gUnknown_03001708 |= r3;
                }
            }
            else
            {
                gUnknown_030012B0[i] = 20;
            }
        }
    }
}

void sub_08033440(void)
{
    if (gCameraHorizontalOffset < 0)
        gCameraHorizontalOffset = 0;
    if ((gCameraHorizontalOffset >> 1) + 240 >= gCurrentLevelWidth)
        gCameraHorizontalOffset = ((u16)gCurrentLevelWidth - 240) * 2;
    
    if (gCameraVerticalOffset < 0)
        gCameraVerticalOffset = 0;
    if ((gCameraVerticalOffset >> 1) + 160 >= gCurrentLevelHeight)
        gCameraVerticalOffset = ((u16)gCurrentLevelHeight - 160) * 2;
    
    gSpriteHorizontalOffset = gCameraHorizontalOffset >> 1;
    gUnknown_030012F4 = gCameraVerticalOffset >> 1;
}

#ifdef NONMATCHING
void sub_080334C4(s32 a)
{
    s32 r1 = gUnknown_030002C0.unk0;
    s32 r5 = gUnknown_030002C0.unk4;
    
    if (gUnknown_030002B0.unk0 == r1)
    {
        gUnknown_030002C8.unk0 = 0;
    }
    else
    {
        gUnknown_030002B8.unk0 = r1;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + 240 >= gCurrentLevelWidth)
            gUnknown_030002B8.unk0 = (gCurrentLevelWidth - 240) << 8;
        gUnknown_030002C8.unk0 = (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0) / a;
        asm("");
    }
    
    if (gUnknown_030002B0.unk4 == r5)
    {
        gUnknown_030002C8.unk4 = 0;
    }
    else
    {
        gUnknown_030002B8.unk4 = r5;
        if (gUnknown_030002B8.unk4 < 0)
            gUnknown_030002B8.unk4 = 0;
        if ((gUnknown_030002B8.unk4 >> 8) + 160 >= gCurrentLevelHeight)
            gUnknown_030002B8.unk4 = (gCurrentLevelHeight - 160) << 8;
        gUnknown_030002C8.unk4 = (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4) / a;
    }
}
#else
__attribute__((naked))
void sub_080334C4(s32 a)
{
    asm("push {r4-r6,lr}\n\
	add r6, r0, #0\n\
	ldr r0, _080334E0  @ =gUnknown_030002C0\n\
	ldr r1, [r0]\n\
	ldr r5, [r0, #4]\n\
	ldr r3, _080334E4  @ =gUnknown_030002B0\n\
	ldr r0, [r3]\n\
	cmp r0, r1\n\
	bne _080334EC\n\
	ldr r1, _080334E8  @ =gUnknown_030002C8\n\
	mov r0, #0\n\
	str r0, [r1]\n\
	b _08033520\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080334E0:\n\
	.4byte gUnknown_030002C0\n\
_080334E4:\n\
	.4byte gUnknown_030002B0\n\
_080334E8:\n\
	.4byte gUnknown_030002C8\n\
_080334EC:\n\
	ldr r2, _08033530  @ =gUnknown_030002B8\n\
	str r1, [r2]\n\
	cmp r1, #0\n\
	bge _080334F8\n\
	mov r0, #0\n\
	str r0, [r2]\n\
_080334F8:\n\
	ldr r0, [r2]\n\
	asr r0, r0, #8\n\
	add r0, r0, #240\n\
	ldr r1, _08033534  @ =gCurrentLevelWidth\n\
	mov r4, #0\n\
	ldrsh r1, [r1, r4]\n\
	cmp r0, r1\n\
	blt _08033510\n\
	add r0, r1, #0\n\
	sub r0, r0, #240\n\
	lsl r0, r0, #8\n\
	str r0, [r2]\n\
_08033510:\n\
	ldr r4, _08033538  @ =gUnknown_030002C8\n\
	ldr r0, [r2]\n\
	ldr r1, [r3]\n\
	sub r0, r0, r1\n\
	add r1, r6, #0\n\
	bl __divsi3\n\
	str r0, [r4]\n\
_08033520:\n\
	ldr r3, _0803353C  @ =gUnknown_030002B0\n\
	ldr r0, [r3, #4]\n\
	cmp r0, r5\n\
	bne _08033540\n\
	ldr r1, _08033538  @ =gUnknown_030002C8\n\
	mov r0, #0\n\
	str r0, [r1, #4]\n\
	b _08033574\n\
_08033530:\n\
	.4byte gUnknown_030002B8\n\
_08033534:\n\
	.4byte gCurrentLevelWidth\n\
_08033538:\n\
	.4byte gUnknown_030002C8\n\
_0803353C:\n\
	.4byte gUnknown_030002B0\n\
_08033540:\n\
	ldr r2, _0803357C  @ =gUnknown_030002B8\n\
	str r5, [r2, #4]\n\
	cmp r5, #0\n\
	bge _0803354C\n\
	mov r0, #0\n\
	str r0, [r2, #4]\n\
_0803354C:\n\
	ldr r0, [r2, #4]\n\
	asr r0, r0, #8\n\
	add r0, r0, #160\n\
	ldr r1, _08033580  @ =gCurrentLevelHeight\n\
	mov r4, #0\n\
	ldrsh r1, [r1, r4]\n\
	cmp r0, r1\n\
	blt _08033564\n\
	add r0, r1, #0\n\
	sub r0, r0, #160\n\
	lsl r0, r0, #8\n\
	str r0, [r2, #4]\n\
_08033564:\n\
	ldr r4, _08033584  @ =gUnknown_030002C8\n\
	ldr r0, [r2, #4]\n\
	ldr r1, [r3, #4]\n\
	sub r0, r0, r1\n\
	add r1, r6, #0\n\
	bl __divsi3\n\
	str r0, [r4, #4]\n\
_08033574:\n\
	pop {r4-r6}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0803357C:\n\
	.4byte gUnknown_030002B8\n\
_08033580:\n\
	.4byte gCurrentLevelHeight\n\
_08033584:\n\
	.4byte gUnknown_030002C8\n");
}
#endif

void sub_08033588(int a, int b, int c)
{
    if (gUnknown_030002B0.unk0 == a)
    {
        gUnknown_030002C8.unk0 = 0;
        gUnknown_030002B8.unk0 = a;
    }
    else
    {
        gUnknown_030002B8.unk0 = a;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + DISPLAY_WIDTH >= gCurrentLevelWidth)
            gUnknown_030002B8.unk0 = (gCurrentLevelWidth - DISPLAY_WIDTH) << 8;
        if (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0 > 0)
            gUnknown_030002C8.unk0 = c;
        else
            gUnknown_030002C8.unk0 = -c;
    }
    
    if (gUnknown_030002B0.unk4 == b)
    {
        gUnknown_030002C8.unk4 = 0;
        gUnknown_030002B8.unk4 = b;
    }
    else
    {
        gUnknown_030002B8.unk4 = b;
        if (gUnknown_030002B8.unk4 < 0)
            gUnknown_030002B8.unk4 = 0;
        if ((gUnknown_030002B8.unk4 >> 8) + DISPLAY_HEIGHT >= gCurrentLevelHeight)
            gUnknown_030002B8.unk4 = (gCurrentLevelHeight - DISPLAY_HEIGHT) << 8;
        if (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4 > 0)
            gUnknown_030002C8.unk4 = c;
        else
            gUnknown_030002C8.unk4 = -c;
    }
}

FILE_PAD
