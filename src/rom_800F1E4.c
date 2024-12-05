#include "gba/gba.h"
#include "global.h"
#include "main.h"

void normal_world_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CA5C[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CA5C[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0xC)
        gNextLevelInLevelTable.levelFlags = 1;
    else if (levelID == 0xD)
    {
        gNextLevelInLevelTable.levelFlags = 2;
        if (worldID == 0x1)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    else if ((levelID & 1) != 0)
        gNextLevelInLevelTable.levelFlags = 8;
    if (levelID == 0x0)
        gNextLevelInLevelTable.levelFlags |= 0x20;
    else if (levelID >= gUnknown_08B2CA5C[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= 0x4;

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

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0x40;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 6) {
        gNextLevelInLevelTable.levelFlags = 0x42;
        if (worldID == 0x1)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    if (levelID == 0x0)
        gNextLevelInLevelTable.levelFlags |= 0x20;
    else if (levelID >= gUnknown_08B2CDF4[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= 0x4;

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

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0x80;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0)
       gNextLevelInLevelTable.levelFlags = 0xA0;
    else if (levelID >= gUnknown_08B2CEBC[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags = 0x84;

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

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0x400;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0)
        gNextLevelInLevelTable.levelFlags |= 0x20;
    else if (levelID >= gUnknown_08B2CEBC[0].unk4[worldID].unk0 - 1)
        gNextLevelInLevelTable.levelFlags |= 0x4;

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

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0x100;
    gNextLevelInLevelTable.unk8 = 0;
}

void dk_boss_plus_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CFC0[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CFC0[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unkC = level_callback_08008764;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelFlags = 0x200;
    gNextLevelInLevelTable.unk8  = 0;
}

void tutorial_level_setup(u32 worldID, u32 levelID)
{
    u8 *var1;
    s32 i;

    gNextLevelInLevelTable.unk0 = &gUnknown_08B2D378[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2D378[0].unk4[worldID].unk8;

    gNextLevelInLevelTable.unk18 = get_song_volume(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = get_song_data(gNextLevelInLevelTable.unk0->songID);

    var1 = sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    for (i = 0; i < 3; i++)
        gNextLevelInLevelTable.unk1D[i] = var1[i];

    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.levelFlags = 0;
    gNextLevelInLevelTable.unk8 = 0;
    gNextLevelInLevelTable.unkC = level_callback_08008238;

    if (levelID == 6)
        gNextLevelInLevelTable.levelFlags = 0x1;
    else if (levelID == 7)
    {
        gNextLevelInLevelTable.levelFlags = 0x2;
        if (worldID == 0x1)
            gNextLevelInLevelTable.unkC = level_callback_080086A4;
        else
            gNextLevelInLevelTable.unkC = level_callback_08008600;
    }
    if (worldID == 0x2)
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
