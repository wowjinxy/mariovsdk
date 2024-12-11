#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"
#include "sprites.h"

extern struct UnknownStruct15 *gUnknown_03000104;
extern s32 gUnknown_03000108;
extern s8 gUnknown_0300010C;
extern s8 gUnknown_0300010D;
extern s8 gUnknown_0300010E;
extern s8 gUnknown_0300010F;
extern u8 gUnknown_03000C14;
extern u8 gUnknown_03000C24;
extern s8 gUnknown_03000DD0;
extern s8 gUnknown_03000DDC;
extern s8 gUnknown_03000DF4;
extern s8 gUnknown_03000DF8;

u32 gUnknown_080788B0[] =
{
    0x01000000,
    0x02000000,
    0x04000000,
    0x08000000,
    0x00100000,
    0x00200000,
};

u32 gUnknown_080788C8[] =
{
    0x00400000,
    0x00800000,
    0x00010000,
    0x00020000,
    0x00040000,
    0x00080000,
};

static void sub_08029A80(void);

#ifdef NONMATCHING
// reg swaps
void sub_0802919C(int arg0, int arg1)
{
    gUnknown_0300010E = 0;
    if (gLevelEWorldFlag)
    {
        gUnknown_0300010C = 7;
        gUnknown_03000DF8 = gUnknown_0300010D = arg1;
        gUnknown_03000DD0 = 0;
        if ((s8)arg1 < 0)
            gUnknown_0300010D = 0;
        gUnknown_0300010D += 9;
    }
    else
    {
        if (gNextLevelInLevelTable.levelFlags & 2)
        {
            asm("":::"r2");
            gUnknown_03000DD0 = arg0;
            if (gLevelType == LEVEL_TYPE_MAIN)
                gUnknown_03000DF8 = 13;
            else
                gUnknown_03000DF8 = 6;
            if (gUnknown_03000DD0 == 5)
                gUnknown_0300010F = 1;
            gUnknown_03000DF4 = 7;
            gUnknown_0300010C = gUnknown_03000DD0;
            if (gLevelType == LEVEL_TYPE_PLUS)
                gUnknown_0300010D = 25;
            else
                gUnknown_0300010D = 22;
        }
        else
        {
            gUnknown_03000DD0 = arg0;
            if (gLevelType == LEVEL_TYPE_MAIN_BOSS || gLevelType == LEVEL_TYPE_PLUS_BOSS)
            {
                gUnknown_0300010C = 8;
                gUnknown_0300010D = 23;
            }
            else if (gLevelType == LEVEL_TYPE_EXPERT_1_6 || gLevelType == LEVEL_TYPE_EXPERT_7_12)
            {

                gUnknown_03000DD0 = gUnknown_03000DF8 = arg0;
                gUnknown_0300010C = 6;
                gUnknown_03000DF4 = arg0;
                if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
                    gUnknown_03000DF4 += 6;
            }
            else if (gLevelType == LEVEL_TYPE_PLUS)
            {
                gUnknown_0300010E = 1;
                gUnknown_03000DF8 = arg1;
                gUnknown_03000DD0 = arg0;
                gUnknown_0300010C = arg0;
                gUnknown_03000DF4 = arg1;
            }
            else
            {
                gUnknown_03000DF8 = arg0;
                if ((s8)arg0 < 0)
                    gUnknown_03000DF8 = 0;
                gUnknown_03000DF4 = gUnknown_03000DF8 >> 1;
                gUnknown_0300010C = arg1;
            }
            gUnknown_0300010D = gUnknown_03000DF4 + 9;
            if (gNextLevelInLevelTable.levelFlags & 1)
                gUnknown_0300010D = 21;
        }
    }
}
#else
__attribute__((naked))
void sub_0802919C(int arg0, int arg1)
{
    asm("push {r4-r7,lr}\n\
    add r4, r0, #0\n\
    add r3, r1, #0\n\
    ldr r6, _080291D8  @ =gUnknown_0300010E\n\
    mov r2, #0\n\
    strb r2, [r6]\n\
    ldr r0, _080291DC  @ =gLevelEWorldFlag\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #0\n\
    beq _080291F0\n\
    ldr r1, _080291E0  @ =gUnknown_0300010C\n\
    mov r0, #7\n\
    strb r0, [r1]\n\
    ldr r0, _080291E4  @ =gUnknown_03000DF8\n\
    ldr r1, _080291E8  @ =gUnknown_0300010D\n\
    strb r3, [r1]\n\
    strb r3, [r0]\n\
    ldr r0, _080291EC  @ =gUnknown_03000DD0\n\
    strb r2, [r0]\n\
    lsl r0, r3, #24\n\
    cmp r0, #0\n\
    bge _080291CE\n\
    strb r2, [r1]\n\
_080291CE:\n\
    ldrb r0, [r1]\n\
    add r0, r0, #9\n\
    strb r0, [r1]\n\
    b _08029346\n\
    .byte 0x00\n\
    .byte 0x00\n\
_080291D8:\n\
    .4byte gUnknown_0300010E\n\
_080291DC:\n\
    .4byte gLevelEWorldFlag\n\
_080291E0:\n\
    .4byte gUnknown_0300010C\n\
_080291E4:\n\
    .4byte gUnknown_03000DF8\n\
_080291E8:\n\
    .4byte gUnknown_0300010D\n\
_080291EC:\n\
    .4byte gUnknown_03000DD0\n\
_080291F0:\n\
    ldr r1, _08029218  @ =gNextLevelInLevelTable\n\
    ldr r5, [r1, #32]\n\
    mov r0, #2\n\
    and r5, r5, r0\n\
    add r7, r1, #0\n\
    cmp r5, #0\n\
    beq _08029278\n\
    ldr r0, _0802921C  @ =gUnknown_03000DD0\n\
    strb r4, [r0]\n\
    ldr r1, _08029220  @ =gLevelType\n\
    mov r2, #0\n\
    ldrsb r2, [r1, r2]\n\
    add r3, r0, #0\n\
    add r4, r1, #0\n\
    cmp r2, #0\n\
    bne _08029228\n\
    ldr r1, _08029224  @ =gUnknown_03000DF8\n\
    mov r0, #13\n\
    b _0802922C\n\
    .byte 0x00\n\
    .byte 0x00\n\
_08029218:\n\
    .4byte gNextLevelInLevelTable\n\
_0802921C:\n\
    .4byte gUnknown_03000DD0\n\
_08029220:\n\
    .4byte gLevelType\n\
_08029224:\n\
    .4byte gUnknown_03000DF8\n\
_08029228:\n\
    ldr r1, _08029258  @ =gUnknown_03000DF8\n\
    mov r0, #6\n\
_0802922C:\n\
    strb r0, [r1]\n\
    mov r0, #0\n\
    ldrsb r0, [r3, r0]\n\
    cmp r0, #5\n\
    bne _0802923C\n\
    ldr r1, _0802925C  @ =gUnknown_0300010F\n\
    mov r0, #1\n\
    strb r0, [r1]\n\
_0802923C:\n\
    ldr r1, _08029260  @ =gUnknown_03000DF4\n\
    mov r0, #7\n\
    strb r0, [r1]\n\
    ldr r1, _08029264  @ =gUnknown_0300010C\n\
    ldrb r0, [r3]\n\
    strb r0, [r1]\n\
    mov r0, #0\n\
    ldrsb r0, [r4, r0]\n\
    cmp r0, #1\n\
    bne _0802926C\n\
    ldr r1, _08029268  @ =gUnknown_0300010D\n\
    mov r0, #25\n\
    strb r0, [r1]\n\
    b _08029346\n\
_08029258:\n\
    .4byte gUnknown_03000DF8\n\
_0802925C:\n\
    .4byte gUnknown_0300010F\n\
_08029260:\n\
    .4byte gUnknown_03000DF4\n\
_08029264:\n\
    .4byte gUnknown_0300010C\n\
_08029268:\n\
    .4byte gUnknown_0300010D\n\
_0802926C:\n\
    ldr r1, _08029274  @ =gUnknown_0300010D\n\
    mov r0, #22\n\
    strb r0, [r1]\n\
    b _08029346\n\
_08029274:\n\
    .4byte gUnknown_0300010D\n\
_08029278:\n\
    ldr r1, _0802929C  @ =gUnknown_03000DD0\n\
    strb r4, [r1]\n\
    ldr r0, _080292A0  @ =gLevelType\n\
    ldrb r2, [r0]\n\
    sub r0, r2, #4\n\
    lsl r0, r0, #24\n\
    lsr r0, r0, #24\n\
    cmp r0, #1\n\
    bhi _080292B0\n\
    ldr r1, _080292A4  @ =gUnknown_0300010C\n\
    mov r0, #8\n\
    strb r0, [r1]\n\
    ldr r1, _080292A8  @ =gUnknown_0300010D\n\
    mov r0, #23\n\
    strb r0, [r1]\n\
    add r2, r1, #0\n\
    ldr r1, _080292AC  @ =gUnknown_03000DF4\n\
    b _08029332\n\
_0802929C:\n\
    .4byte gUnknown_03000DD0\n\
_080292A0:\n\
    .4byte gLevelType\n\
_080292A4:\n\
    .4byte gUnknown_0300010C\n\
_080292A8:\n\
    .4byte gUnknown_0300010D\n\
_080292AC:\n\
    .4byte gUnknown_03000DF4\n\
_080292B0:\n\
    sub r0, r2, #2\n\
    lsl r0, r0, #24\n\
    lsr r0, r0, #24\n\
    cmp r0, #1\n\
    bhi _080292EC\n\
    ldr r0, _080292DC  @ =gUnknown_03000DF8\n\
    strb r4, [r0]\n\
    strb r4, [r1]\n\
    ldr r1, _080292E0  @ =gUnknown_0300010C\n\
    mov r0, #6\n\
    strb r0, [r1]\n\
    ldr r1, _080292E4  @ =gUnknown_03000DF4\n\
    strb r4, [r1]\n\
    lsl r0, r2, #24\n\
    asr r0, r0, #24\n\
    ldr r2, _080292E8  @ =gUnknown_0300010D\n\
    cmp r0, #3\n\
    bne _08029332\n\
    add r0, r4, #6\n\
    strb r0, [r1]\n\
    b _08029332\n\
    .byte 0x00\n\
    .byte 0x00\n\
_080292DC:\n\
    .4byte gUnknown_03000DF8\n\
_080292E0:\n\
    .4byte gUnknown_0300010C\n\
_080292E4:\n\
    .4byte gUnknown_03000DF4\n\
_080292E8:\n\
    .4byte gUnknown_0300010D\n\
_080292EC:\n\
    lsl r0, r2, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #1\n\
    bne _08029314\n\
    strb r0, [r6]\n\
    ldr r0, _08029308  @ =gUnknown_03000DF8\n\
    strb r3, [r0]\n\
    strb r4, [r1]\n\
    ldr r0, _0802930C  @ =gUnknown_0300010C\n\
    strb r4, [r0]\n\
    ldr r0, _08029310  @ =gUnknown_03000DF4\n\
    strb r3, [r0]\n\
    b _0802932E\n\
    .byte 0x00\n\
    .byte 0x00\n\
_08029308:\n\
    .4byte gUnknown_03000DF8\n\
_0802930C:\n\
    .4byte gUnknown_0300010C\n\
_08029310:\n\
    .4byte gUnknown_03000DF4\n\
_08029314:\n\
    ldr r1, _0802934C  @ =gUnknown_03000DF8\n\
    strb r3, [r1]\n\
    lsl r0, r3, #24\n\
    cmp r0, #0\n\
    bge _08029320\n\
    strb r5, [r1]\n\
_08029320:\n\
    ldr r0, _08029350  @ =gUnknown_03000DF4\n\
    ldrb r1, [r1]\n\
    lsl r1, r1, #24\n\
    asr r1, r1, #25\n\
    strb r1, [r0]\n\
    ldr r1, _08029354  @ =gUnknown_0300010C\n\
    strb r4, [r1]\n\
_0802932E:\n\
    ldr r2, _08029358  @ =gUnknown_0300010D\n\
    add r1, r0, #0\n\
_08029332:\n\
    ldrb r0, [r1]\n\
    add r0, r0, #9\n\
    strb r0, [r2]\n\
    ldr r0, [r7, #32]\n\
    mov r1, #1\n\
    and r0, r0, r1\n\
    cmp r0, #0\n\
    beq _08029346\n\
    mov r0, #21\n\
    strb r0, [r2]\n\
_08029346:\n\
    pop {r4-r7}\n\
    pop {r0}\n\
    bx r0\n\
_0802934C:\n\
    .4byte gUnknown_03000DF8\n\
_08029350:\n\
    .4byte gUnknown_03000DF4\n\
_08029354:\n\
    .4byte gUnknown_0300010C\n\
_08029358:\n\
    .4byte gUnknown_0300010D\n");
}
#endif

void level_results_init_callback(void)
{
    int r4;
    struct UnknownStruct15 *r0;

    gUnknown_0300010F = 0;
    if (gUnknown_03001940 != 0)
        gDKLevelMarioLivesLeft_03000C20 = *(u8*)&gUnknown_030019AC->unk34;
    else
        gDKLevelMarioLivesLeft_03000C20 = 6;
    arena_restore_head(0);
    gUnknown_03000C1C = 0;
    gUnknown_030009D8 = 0;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    load_graphics_config_bg2_08032EB8(&gLevelResultsData);
    sub_0802BCA4(0, 0);
    r0 = sub_08006968(&gLevelResultsData);
    gUnknown_03000104 = r0;
    DmaFill16(3, 0xA0, OAM, OAM_SIZE/2);
    if (gNextLevelInLevelTable.levelFlags & 3)
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    else
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    gUnknown_03001A1C = 0;
    if (gNextLevelInLevelTable.levelFlags & 2)
        r4 = 3;
    else if (gNextLevelInLevelTable.levelFlags & 1)
        r4 = 2;
    else
    {
        u8 _gLevelType = gLevelType;
        r4 = 1;
        if (_gLevelType == LEVEL_TYPE_MAIN || _gLevelType == LEVEL_TYPE_PLUS)
            r4 = gLevelEWorldFlag != 0;
    }
    sub_08029A80();
    sub_08030408(r4);
    save_blend_regs(gLevelResultsData.bldCnt, gLevelResultsData.bldAlpha, gLevelResultsData.bldY);
    if (get_current_bgm() != 11)
        play_bgm(11, 128, 1);
    sub_08038B18();
    r4 = 0;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
    if (gNextLevelInLevelTable.levelFlags & 1)
        sub_0802F648(&gUnknown_03000E00, gUnknown_08079DA0.unk4);
    else if (gNextLevelInLevelTable.levelFlags & 2)
        sub_0802F648(&gUnknown_03000E00, gUnknown_08079DA0.unk8);
    else if (!gLevelEWorldFlag && gLevelType == LEVEL_TYPE_MAIN)
        sub_0802F648(&gUnknown_03000E00, gUnknown_08079DA0.unk0);
    else
        sub_0802F648(&gUnknown_03000E00, gUnknown_08079DA0.unkC);
    if (gNextLevelInLevelTable.levelFlags & 1)
    {
        if (gMiniMariosRescued_03001BA0 < 6)
            r4 += gMiniMariosRescued_03001BA0 * 1000;
        else
            r4 += 10000;
    }
    sub_0802FC24(r4, 1);
    DmaCopy32(3, gUnknown_082EC750, OBJ_VRAM0, 640);
    gObjVRAMCopyOffset_0300192C = 640;
    gVRAMCurrTileNum_03001930 = 20;
    sub_080091A8(&gVRAMCurrTileNum_03001930, &gObjVRAMCopyOffset_0300192C);
    sub_08042FB0(&gVRAMCurrTileNum_03001930, &gObjVRAMCopyOffset_0300192C);
    sub_08031BF0(&gObjVRAMCopyOffset_0300192C, &gVRAMCurrTileNum_03001930);
    gUnknown_03000C24 = 0;
    gUnknown_03000C14 = 0;
    sub_08029A80();
    gUnknown_03000108 = -1;
    sub_0802FCA4();
    sub_080149F8(gLivesCount);
    if (gUnknown_0300010F != 0)
        set_level_flags_08010534(5, (u8)gUnknown_03000DF8, &gCollectedLevelItems);
    else
        set_level_flags_08010534((u8)gUnknown_03000DD0, (u8)gUnknown_03000DF8, &gCollectedLevelItems);
    if (gNextLevelInLevelTable.levelFlags & 2)
    {
        if ((s8)gUnknown_03000DD0 <= 4)
            sub_08010BE0((u8)(gUnknown_03000DD0 + 1), 0);
        else if (gLevelType == LEVEL_TYPE_MAIN)
            sub_08010BE0(5, 14);
        else if (gLevelType == LEVEL_TYPE_PLUS)
            sub_08010BE0(5, 6);
    }
    else
        sub_08010BE0((u8)gUnknown_03000DD0, (u8)gNextLevelID);
    sub_080300CC(1);
}

void level_results_main(void)
{
    int r4 = 0;

    update_fade_from_black();
    if (gUnknown_03000C14 > 30)
    {
        r4 = 50;
        process_input();
        if (gUnknown_03000DDC == 0)
        {
            if (gNewKeys & (A_BUTTON|START_BUTTON))
            {
                if ((gNextLevelInLevelTable.levelFlags & 3) != 0
                 || !gCollectedLevelItems.redPresent
                 || !gCollectedLevelItems.yellowPresent
                 || !gCollectedLevelItems.bluePresent)
                    play_sound_effect_08071990(SE_SELECT_M, 8, 16, 64, 0, 128, 0);
                r4 = 0xF423F;
                gNewKeys = 0;
            }
            r4 = sub_0802F7B8(&gUnknown_03000E00, r4) == 0;
            if (r4)
            {
                if (gUnknown_03000108 != -1)
                    sub_08071D9C(gUnknown_03000108);
                if ((gNextLevelInLevelTable.levelFlags & 3) == 0
                 && gCollectedLevelItems.redPresent
                 && gCollectedLevelItems.yellowPresent
                 && gCollectedLevelItems.bluePresent)
                    play_sound_effect_08071990(SE_ITEMLAST, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                if (gUnknown_03000108 == -1 || sub_080721A8(gUnknown_03000108))
                    gUnknown_03000108 = play_sound_effect_08071990(SE_COUNTER, 12, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (sub_0802FC88() != 0)
                sub_080300CC(1);
            r4 = 1;
        }
    }
    else
    {
        gUnknown_03000C14++;
    }

    sub_08030DA0(r4);
    if (r4 != 0)
    {
        gUnknown_030009D8++;
        if (sub_08030DE8() != 0 && (gNewKeys & (A_BUTTON|START_BUTTON)))
        {
            int r1 = *gUnknown_03000E00.unk50 - 1;
            gUnknown_03000E00.unk0[r1].unk0 = gUnknown_03000E00.unk0[r1].unk4;
            if (gUnknown_03000108 != -1)
                sub_08071D9C(gUnknown_03000108);
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            gUnknown_03000C1C = 1;
            if (gLevelEWorldFlag != 0)
                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
            else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
                change_main_state(MAIN_STATE_EXPERT_LEVEL_SELECT, USE_FADE);
            else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
                change_main_state(MAIN_STATE_EXPERT_LEVEL_SELECT, USE_FADE);
            else
            {
                if (gNextLevelInLevelTable.levelFlags & 4)
                {
                    if (gLevelType == LEVEL_TYPE_MAIN)
                    {
                        if (gNextLevelInLevelTable.unk12 < (u32)gUnknown_08B2CA5C[0].unk0 - 1)
                        {
                            if ((u8)sub_080148F0(gUnknown_080788B0[gNextLevelInLevelTable.unk12 + 1]) != 0)
                                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
                            else
                            {
                                sub_080148A4(gUnknown_080788B0[gNextLevelInLevelTable.unk12 + 1], 1);
                                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
                            }
                        }
                        else
                        {
                            gLevelType = LEVEL_TYPE_MAIN_BOSS;
                            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                            level_setup(0, 0);
                            gCurrentWorld = 0;
                            gNextLevelID = 0;
                            sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                            movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, 43, MAIN_STATE_LEVEL_PLAY, MOVIE_DK_BOSS_1);
                            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
                        }
                    }
                    else if (gLevelType == LEVEL_TYPE_PLUS)
                    {
                        if (gNextLevelInLevelTable.unk12 < (u32)gUnknown_08B2CDF4[0].unk0 - 1)
                        {
                            if ((u8)sub_080148F0(gUnknown_080788C8[gNextLevelInLevelTable.unk12 + 1]) != 0)
                                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
                            else
                            {
                                sub_080148A4(gUnknown_080788C8[gNextLevelInLevelTable.unk12 + 1], 1);
                                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
                            }
                        }
                        else
                        {
                            gLevelType = LEVEL_TYPE_PLUS_BOSS;
                            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                            level_setup(0, 1);
                            gCurrentWorld = 0;
                            gNextLevelID = 1;
                            sub_08004428(gNextLevelInLevelTable.unk0->levelData);
                            movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, 45, MAIN_STATE_LEVEL_PLAY, MOVIE_DK_BOSS_2);
                            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
                        }
                    }
                    else
                    {
                        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
                        gCurrentWorld = 0;
                        gNextLevelID = 0;
                    }
                }
                else
                {
                    if (gCollectedLevelItems.redPresent
                     && gCollectedLevelItems.yellowPresent
                     && gCollectedLevelItems.bluePresent)
                    {
                        if (gLevelType == LEVEL_TYPE_MAIN && gNextLevelInLevelTable.unk12 == 0)
                        {
                            if ((gNextLevelInLevelTable.unk10 != 1 || (u8)sub_080148F0(0x100) != 0)
                             && (sub_0802F5C0(gGeneralTimer) & 1))
                                change_main_state(MAIN_STATE_BONUS_SWAPBOXES, USE_FADE);
                            else
                                change_main_state(MAIN_STATE_BONUS_STOPARROW, USE_FADE);
                        }
                        else
                        {
                            if (sub_0802F5C0(gGeneralTimer) & 1)
                                change_main_state(MAIN_STATE_BONUS_SWAPBOXES, USE_FADE);
                            else
                                change_main_state(MAIN_STATE_BONUS_STOPARROW, USE_FADE);
                        }
                    }
                    else
                    {
                        if (gNextLevelInLevelTable.levelFlags & 1)
                            change_main_state(MAIN_STATE_UKNOWN_12, USE_FADE);
                        else
                            change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
                    }
                }
            }
        }
    }
    sub_08031C1C();
}

void sub_08029A80(void)
{
    struct { int unk0; int unk4; } sp8;

    if (!gLevelEWorldFlag && (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_PLUS))
    {
        struct { int unk0; int unk4; } sp0 = { 13, 2 };

        int r1 = 8;
        void *r7 = gLevelResultsData.bgVramMapAddrs[2];
        int r6 = gUnknown_03000104->unk170;
        if (gLevelType == LEVEL_TYPE_PLUS)
        {
            sp0.unk0++;
            r1 = 7;
        }
        if (r1 != 0)
        {
            int r4 = r1;
            while (r4 != 0)
            {
                sub_080064D4(&sp0, r6, r7, 5);
                r4--;
                sp0.unk0 += 2;
            }
        }
    }
    sp8.unk0 = 7;
    sp8.unk4 = 2;
    sub_080064D4(
        &sp8,
        gUnknown_03000104->unk108[gUnknown_0300010C],
        gLevelResultsData.bgVramMapAddrs[3],
        5);
    sp8.unk0 += 2;
    sub_080064D4(
        &sp8,
        gUnknown_03000104->unk108[gUnknown_0300010D],
        gLevelResultsData.bgVramMapAddrs[3],
        5);
    if (gUnknown_0300010E != 0)
    {
        sp8.unk0++;
        sub_080064D4(
            &sp8,
            gUnknown_03000104->unk168,
            gLevelResultsData.bgVramMapAddrs[3],
            5);
    }
}

void level_results_loop(void)
{
    u16 sp4, sp6, sp8;
    sp4 = 0;
    sp6 = gVRAMCurrTileNum_03001930;
    sp8 = gObjVRAMCopyOffset_0300192C;

    if (!gUnknown_03000C1C)
    {
        DmaFill32(3, 0xA0, &gOamBuffer, OAM_SIZE);
        sub_08031AD4(&sp4);
        sub_0802F890(&gUnknown_03000E00.unk0[0].unk0, &sp4, &sp6, &sp8);
        sub_08030C84(&sp4, &sp6, &sp8);
        DmaCopy32(3, &gOamBuffer, (void *)OAM, OAM_SIZE);
    }
}

void level_results_end(void)
{
}

FILE_PAD
