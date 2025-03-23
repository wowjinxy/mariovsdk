#include "gba/gba.h"
#include "global.h"
#include "main.h"

void normal_world_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CA5C[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CA5C[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_NONE;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0xC)
        gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_1;
    else if (levelID == 0xD)
    {
        gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_2;
        if (worldID == 0x1)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    else if ((levelID & 1) != 0)
        gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_4;
    if (levelID == 0x0)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_ITEM_1;
    else if (levelID >= gUnknown_08B2CA5C[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_3;

    if (worldID == 0x2)
    {
        gNextLevelInLevelTable.unk8 = &gUnknown_0807C028[levelID];
        if (levelID == 0xD)
            gNextLevelInLevelTable.unkC = level_callback_080084A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008330;
    }
}

void plus_world_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CDF4[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CDF4[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_ITEM_2;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 6) {
        gNextLevelInLevelTable.levelFlags = (LEVEL_FLAG_2|LEVEL_FLAG_ITEM_2);
        if (worldID == 0x1)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    if (levelID == 0x0)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_ITEM_1;
    else if (levelID >= gUnknown_08B2CDF4[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_3;

    if (worldID == 0x2) {
        gNextLevelInLevelTable.unk8 = &gUnknown_0807C098[levelID];
        if (levelID == 0x6)
            gNextLevelInLevelTable.unkC = level_callback_080084A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008330;
    }
}

void expert_1_6_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CEBC[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CEBC[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_ITEM_3;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0)
       gNextLevelInLevelTable.levelFlags = (LEVEL_FLAG_ITEM_1|LEVEL_FLAG_ITEM_3);
    else if (levelID >= gUnknown_08B2CEBC[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags = (LEVEL_FLAG_3|LEVEL_FLAG_ITEM_3);

    if (worldID == 0x2)
    {
        gNextLevelInLevelTable.unk8 = &gUnknown_0807C0D0;
        if (levelID == 0xD)
            gNextLevelInLevelTable.unkC = level_callback_080084A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008330;
    }
}

void expert_7_12_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CF84[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CF84[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_11;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_ITEM_1;
    else if (levelID >= gUnknown_08B2CEBC[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= LEVEL_FLAG_3;

    if (worldID == 0x2)
    {
        gNextLevelInLevelTable.unk8 = &gUnknown_0807C0D8;
        if (levelID == 0xD)
            gNextLevelInLevelTable.unkC = level_callback_080084A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008330;
    }
}

void dk_boss_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CFC0[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CFC0[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_9;
    gNextLevelInLevelTable.unk8 = 0;
}

void dk_boss_plus_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CFC0[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CFC0[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008764;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_10;
    gNextLevelInLevelTable.unk8  = 0;
}

void tutorial_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2D378[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2D378[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_bgm_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_bgm_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_NONE;
    gNextLevelInLevelTable.unk8 = 0;
    gNextLevelInLevelTable.unkC = level_callback_08008238;

    if (levelID == 6)
        gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_1;
    else if (levelID == 7)
    {
        gNextLevelInLevelTable.levelFlags = LEVEL_FLAG_2;
        if (worldID == WORLD_2)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    if (worldID == WORLD_3)
    {
        gNextLevelInLevelTable.unk8 = &gUnknown_0807C0E0[levelID];
        gNextLevelInLevelTable.unkC = level_callback_08008330;
    }
}

void level_setup(u32 worldID, u32 levelID)
{
    if (gLevelType == LEVEL_TYPE_MAIN)
        normal_world_level_setup(worldID, levelID);
    else if (gLevelType == LEVEL_TYPE_PLUS)
        plus_world_level_setup(worldID, levelID);
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
        expert_1_6_level_setup(worldID, levelID);
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
        expert_7_12_level_setup(worldID, levelID);
    else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
        dk_boss_level_setup(worldID, levelID);
    else
        dk_boss_plus_level_setup(worldID, levelID);
}

void title_demo_setup(u32 titleDemoID)
{
    normal_world_level_setup(titleDemoID, gTitleDemoLevelIDs[titleDemoID]);
    gNextLevelID = gNextLevelInLevelTable.unk10 = gTitleDemoLevelIDs[titleDemoID];
}
