#define INCLUDED_FROM_SAVEFILE_C
#include "gba/gba.h"
#include "global.h"
#include "main.h"

#define LEVEL_COMPLETED 0x80
#define LEVEL_STARRED   0x40

struct LevelStats
{
    /*0x00*/ u16 highScore;
    /*0x02*/ u8 filler2[2];
    /*0x04*/ u8 present1;  // presents
    /*0x05*/ u8 present2;
    /*0x06*/ u8 present3;
    /*0x07*/ u8 flags;  // upper nibble: flags, lower nibble: mini mario count
};

struct SaveFile
{
    s8 lives;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    s32 unk4;
    u8 unk8;
    u8 unk9;
    /*0x0C*/ struct LevelStats mainLevels[48];
    /*0x18C*/ struct LevelStats plusLevels[46];
    u8 filler2FC[0x30C-0x2FC];
    u16 unk30C;
    u8 filler30E[0x313-0x30E];
    u8 unk313;
    u16 unk314;
    u8 filler316[0x31B-0x316];
    u8 unk31B;
    struct LevelStats unk31C[6];
    struct LevelStats unk34C[6];
};  // 0x37C

enum LevelCategory
{
    MAIN_LEVELS = 0,
    PLUS_LEVELS = 1,
};

s8 sub_0800F76C(u8 arg0, u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 level;

    if (arg0 == 0)
    {
        if (world != 0 && sub_080103C8(0, world - 1) == 0)
            return -1;
        for (level = 0; level < 8; level++)
        {
            if (!(saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED))
                break;
        }
        return level;
    }
    else if (arg0 == 1)
    {
        if (world != 0 && sub_080103C8(1, world - 1) == 0)
            return -1;
        for (level = 0; level < 7; level++)
        {
            if (!(saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED))
                break;
        }
        return level;
    }
    return 0;
}

void sub_0800F84C(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    s16 stars = 0;
    s16 r8 = 0;
    s16 world;
    s16 level;
    u8 flags;

    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level, &flags) != 0)
            {
                r8++;
                if ((flags & (LEVEL_COMPLETED|LEVEL_STARRED)) == (LEVEL_COMPLETED|LEVEL_STARRED))
                    stars++;
            }
            if (get_level_stats_08010068(fileNum, PLUS_LEVELS, world, level, &flags) != 0)
            {
                r8++;
                if ((flags & (LEVEL_COMPLETED|LEVEL_STARRED)) == (LEVEL_COMPLETED|LEVEL_STARRED))
                    stars++;
            }
        }
        if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level, &flags) != 0)
        {
            r8++;
            if ((flags & (LEVEL_COMPLETED|LEVEL_STARRED)) == (LEVEL_COMPLETED|LEVEL_STARRED))
                stars++;
        }
        if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level + 1, &flags) != 0)
        {
            r8++;
            if ((flags & (LEVEL_COMPLETED|LEVEL_STARRED)) == (LEVEL_COMPLETED|LEVEL_STARRED))
                stars++;
        }
        if (get_level_stats_08010068(fileNum, PLUS_LEVELS, world, level, &flags) != 0)
        {
            r8++;
            if ((flags & (LEVEL_COMPLETED|LEVEL_STARRED)) == (LEVEL_COMPLETED|LEVEL_STARRED))
                stars++;
        }
    }
    saveFile->unk8 = stars;
    saveFile->unk9 = r8;
    if (stars == 90 && (saveFile->unk31B & 0x80))
        saveFile->unk4 |= 0x80000000;
}

int sub_0800FA04(u8 arg0, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s8 r1;
    u8 var;
    register u8 mask asm("r0");

    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED)
            return 1;
        r1 = sub_0800F76C(0, world);
        if (r1 == -1)
            return FALSE;
        if (r1 == 0)
            return level == 0;
        return r1 >= level;
    }
    else if (arg0 == 1)
    {
        if (world != 0 || level != 0 || !(saveFile->unk313 & 0x80))
        {
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED)
                return 1;
            r1 = sub_0800F76C(arg0, world);
            if (r1 == -1)
                return FALSE;
            if (r1 == 0)
                return level == 0;
            return r1 >= level;
        }
        return 1;
    }
    else if (arg0 == 4)
        var = saveFile->mainLevels[47].flags;
    else if (arg0 == 5)
        var = saveFile->plusLevels[45].flags;
    else if (arg0 == 2)
        var = saveFile->unk31C[world].flags;
    else if (arg0 == 3)
        var = saveFile->unk34C[world].flags;
    else
        return FALSE;

    mask = LEVEL_COMPLETED;
    mask &= var;
    if (!(mask))
        return FALSE;
    else
        return TRUE;
}

int get_level_stats_0800FB28(u8 arg0, u8 world, u8 level, u8 *arg3)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 r1;
    u8 r0;
    s8 result;

    *arg3 = 0;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg3 |= 0x80;
            }
            else if (level == 7)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg3 |= 0x80;
            }
            else
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].present1;
                *arg3 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg3 |= 0x80;
            }
            return TRUE;
        }
        else
        {
            result = sub_0800F76C(0, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg3 = saveFile->plusLevels[world * 8 + 6].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
            }
            else
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].present1;
                *arg3 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_STARRED)
                *arg3 |= 0x80;
            return TRUE;
        }
        else
        {
            result = sub_0800F76C(1, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    *arg3 = 0;
    return TRUE;
}

int get_level_stats_0800FCE4(u8 arg0, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 r1;

    if (gLevelEWorldFlag != 0)
        return FALSE;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) < 6)
                    return FALSE;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    return TRUE;
                return FALSE;
            }
            else if (level == 7)
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) < 6)
                    return FALSE;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    return TRUE;
            }
            else
            {
                r1 = saveFile->mainLevels[world * 8 + level].present1;
                r1 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                r1 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (r1 <= 6)
                    return FALSE;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    return TRUE;
            }
        }
        return FALSE;
    }
    else if (arg0 == 4)
        return FALSE;
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                if ((saveFile->plusLevels[world * 8 + level].flags & 7) < 6)
                    return FALSE;
            }
            else
            {
                r1 = saveFile->plusLevels[world * 8 + level].present1;
                r1 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                r1 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (r1 <= 6)
                    return FALSE;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_STARRED)
                return TRUE;
        }
    }
    else if (arg0 == 2)  // needed to match
        return FALSE;
    return FALSE;
}

u8 get_level_stats_0800FE2C(u8 arg0, u8 world, u8 level, u8 *arg3)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    *arg3 = 0;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (!(saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED))
                    return TRUE;
                *arg3 |= 0x80;
            }
            else if (level == 7)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (!(saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED))
                    return TRUE;
                *arg3 |= 0x80;
            }
            else
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].present1;
                *arg3 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
                if (!(saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED))
                    return TRUE;
                *arg3 |= 0x80;
            }
            return TRUE;
        }
    }
    else if (arg0 == 4)
    {
        if (saveFile->unk313 & 0x80)
        {
            if (!(saveFile->unk313 & 0x40))
                return TRUE;
            *arg3 = 0xC0;
            return TRUE;
        }
    }
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
            }
            else
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].present1;
                *arg3 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_STARRED)
                *arg3 |= 0x80;
            return TRUE;
        }
    }
    else if (arg0 == 5)
    {
        if (saveFile->unk31B & 0x80)
        {
            if (saveFile->unk31B & 0x40)
                *arg3 = 0xC0;
            return TRUE;
        }
    }
    else if (arg0 == 2)
    {
        if (saveFile->unk31C[world].flags & LEVEL_COMPLETED)
        {
            *arg3 = saveFile->unk31C[world].present1;
            *arg3 += saveFile->unk31C[world].present2 * 2;
            *arg3 += saveFile->unk31C[world].present3 * 4;
            if (*arg3 == 7)
                *arg3 |= 0x40;
            if (saveFile->unk31C[world].flags & LEVEL_STARRED)
                *arg3 |= 0x80;
            return TRUE;
        }
    }
    else if (arg0 == 3)
    {
        if (saveFile->unk34C[world].flags & LEVEL_COMPLETED)
        {
            *arg3 = saveFile->unk34C[world].present1;
            *arg3 += saveFile->unk34C[world].present2 * 2;
            *arg3 += saveFile->unk34C[world].present3 * 4;
            if (*arg3 == 7)
                *arg3 |= 0x40;
            if (saveFile->unk34C[world].flags & LEVEL_STARRED)
                *arg3 |= 0x80;
            return TRUE;
        }
    }
    return FALSE;
}

u8 get_level_stats_08010068(u8 fileNum, u8 category, u8 world, u8 level, u8 *arg4)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];

    *arg4 = 0;
    if (category == MAIN_LEVELS)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg4 |= 0x80;

            }
            else if (level == 7)
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg4 |= 0x80;

            }
            else
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].present1;
                *arg4 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg4 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg4 == 7)
                    *arg4 |= 0x40;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_STARRED)
                    *arg4 |= 0x80;

            }
            return TRUE;
        }
    }
    else if (category == 4)
    {
        if (saveFile->unk313 & 0x80)
        {
            if (saveFile->unk313 & 0x40)
                *arg4 = 0xC0;
            return TRUE;
        }
    }
    else if (category == PLUS_LEVELS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_COMPLETED)
        {
            if (level == 6)
            {
                *arg4 = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
            }
            else
            {
                *arg4 = saveFile->plusLevels[world * 8 + level].present1;
                *arg4 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg4 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg4 == 7)
                    *arg4 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_STARRED)
                *arg4 |= 0x80;
            return TRUE;
        }
    }
    else if (category == 5)
    {
        if (saveFile->unk31B & 0x80)
        {
            if (saveFile->unk31B & 0x40)
                *arg4 = 0xC0;
            return TRUE;
        }
    }
    else if (category == 2)
    {
        if (saveFile->unk31C[world].flags & LEVEL_COMPLETED)
        {
            *arg4 = saveFile->unk31C[world].present1;
            *arg4 += saveFile->unk31C[world].present2 * 2;
            *arg4 += saveFile->unk31C[world].present3 * 4;
            if (*arg4 == 7)
                *arg4 |= 0x40;
            if (saveFile->unk31C[world].flags & LEVEL_STARRED)
                *arg4 |= 0x80;
            return TRUE;
        }
    }
    else if (category == 3)
    {
        if (saveFile->unk34C[world].flags & LEVEL_COMPLETED)
        {
            *arg4 = saveFile->unk34C[world].present1;
            *arg4 += saveFile->unk34C[world].present2 * 2;
            *arg4 += saveFile->unk34C[world].present3 * 4;
            if (*arg4 == 7)
                *arg4 |= 0x40;
            if (saveFile->unk34C[world].flags & LEVEL_STARRED)
                *arg4 |= 0x80;
            return TRUE;
        }
    }
    return FALSE;
}

void init_current_save_file_080102B4(u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s16 level;

    if (gLevelType == 0)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].highScore = gMainLevelDefaultHighScores[world][level];
            saveFile->mainLevels[world * 8 + level].flags = 0;
            saveFile->mainLevels[world * 8 + level].present2 = 0;
            saveFile->mainLevels[world * 8 + level].present3 = 0;
            saveFile->mainLevels[world * 8 + level].present1 = 0;
        }
        saveFile->lives = 5;
        sub_0800F84C(gFileSelectMenuSel);
    }
    else if (gLevelType == 1)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->plusLevels[world * 8 + level].highScore = gPlusLevelDefaultHighScores[world][level];
            saveFile->plusLevels[world * 8 + level].flags = 0;
            saveFile->plusLevels[world * 8 + level].present2 = 0;
            saveFile->plusLevels[world * 8 + level].present3 = 0;
            saveFile->plusLevels[world * 8 + level].present1 = 0;
        }
        saveFile->lives = 5;
        sub_0800F84C(gFileSelectMenuSel);
    }
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

u8 sub_080103C8(u8 arg0, u8 world)
{
    u8 dummy;
    u8 a, b, c;

    if (arg0 == 0)
    {
        a = 0; b = world;
jump:
        c = 7;
    }
    else if (arg0 == 4)
    {
        a = 0; b = 5; goto jump;
    }
    else if (arg0 == 1)
    {
        a = 1; b = world; c = 6;
    }
    else if (arg0 == 5)
    {
        a = 1; b = 5; c = 6;
    }
    else if (arg0 == 2)
    {
        a = 2; b = world; c = 0;
    }
    else if (arg0 == 3)
    {
        a = 3; b = world; c = 0;
    }
    else
        return FALSE;

    if (!get_level_stats_0800FE2C(a, b, c, &dummy))
        return FALSE;
    return TRUE;
}

int sub_0801042C(u8 arg0, u8 world)
{
    u8 sp0;
    u8 level;

    if (arg0 == 0)
    {
        for (level = 0; level < 8; level++)
        {
            if (!get_level_stats_0800FE2C(arg0, world, level, &sp0))
                return FALSE;
            if ((sp0 & 0xC0) != 0xC0)
                return FALSE;
        }
        return TRUE;
    }
    else if (arg0 == 4)
    {
        if (!get_level_stats_0800FE2C(4, 0, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 1)
    {
        for (level = 0; level < 6; level++)
        {
            if (!get_level_stats_0800FE2C(arg0, world, level, &sp0))
                return FALSE;
            if ((sp0 & 0xC0) != 0xC0)
                return FALSE;
        }
        return TRUE;
    }
    else if (arg0 == 5)
    {
        if (!get_level_stats_0800FE2C(5, 0, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 2)
    {
        if (!get_level_stats_0800FE2C(2, world, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 3)
    {
        if (!get_level_stats_0800FE2C(3, world, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    return FALSE;
}

void sub_08010534(u8 world, u8 level, u8 *arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");

    if (gLevelEWorldFlag != 0)
    {
        sub_0802F168(level, arg2);
        return;
    }
    if (gLevelType == 0)
    {
        if (gNextLevelInLevelTable.levelType & 1)
        {
            if ((saveFile->mainLevels[world * 8 + 6].flags & 7) < 6)
            {
                saveFile->mainLevels[world * 8 + 6].flags &= ~7;
                saveFile->mainLevels[world * 8 + 6].flags |= gUnknown_03001BA0;
            }
            saveFile->mainLevels[world * 8 + 6].flags |= LEVEL_COMPLETED;
        }
        else if (gNextLevelInLevelTable.levelType & 2)
        {
            if ((saveFile->mainLevels[world * 8 + 7].flags & 7) < 6)
            {
                saveFile->mainLevels[world * 8 + 7].flags &= ~7;
                saveFile->mainLevels[world * 8 + 7].flags |= gUnknown_03000C20;
            }
            saveFile->mainLevels[world * 8 + 7].flags |= LEVEL_COMPLETED;
        }
        else
        {
            u8 var = level / 2;

            if (saveFile->mainLevels[world * 8 + var].present1 == 0
             || saveFile->mainLevels[world * 8 + var].present2 == 0
             || saveFile->mainLevels[world * 8 + var].present3 == 0)
            {
                saveFile->mainLevels[world * 8 + var].present1 = (arg2[0] != 0);
                saveFile->mainLevels[world * 8 + var].present2 = (arg2[1] != 0);
                saveFile->mainLevels[world * 8 + var].present3 = (arg2[2] != 0);
            }
            saveFile->mainLevels[world * 8 + var].flags |= LEVEL_COMPLETED;
        }
    }
    else if (gLevelType == 1)
    {
        if (level == 6)
        {
            if ((saveFile->plusLevels[world * 8 + level].flags & 7) < 6)
            {
                saveFile->plusLevels[world * 8 + level].flags &= ~7;
                saveFile->plusLevels[world * 8 + level].flags |= gUnknown_03000C20;
            }
            saveFile->plusLevels[world * 8 + level].flags |= LEVEL_COMPLETED;
        }
        else
        {
            if (saveFile->plusLevels[world * 8 + level].present1 == 0
             || saveFile->plusLevels[world * 8 + level].present2 == 0
             || saveFile->plusLevels[world * 8 + level].present3 == 0)
            {
                saveFile->plusLevels[world * 8 + level].present1 = (arg2[0] != 0);
                saveFile->plusLevels[world * 8 + level].present2 = (arg2[1] != 0);
                saveFile->plusLevels[world * 8 + level].present3 = (arg2[2] != 0);
            }
        }
        saveFile->plusLevels[world * 8 + level].flags |= LEVEL_COMPLETED;
    }
    else if (gLevelType == 4)
    {
        saveFile->unk313 |= LEVEL_COMPLETED;
    }
    else if (gLevelType == 5)
    {
        saveFile->unk31B |= LEVEL_COMPLETED;
    }
    else if (gLevelType == 2)
    {
        if (saveFile->unk31C[world].present1 == 0
         || saveFile->unk31C[world].present2 == 0
         || saveFile->unk31C[world].present3 == 0)
        {
            saveFile->unk31C[world].present1 = (arg2[0] != 0);
            saveFile->unk31C[world].present2 = (arg2[1] != 0);
            saveFile->unk31C[world].present3 = (arg2[2] != 0);
        }
        saveFile->unk31C[world].flags |= LEVEL_COMPLETED;
    }
    else if (gLevelType == 3)
    {
        if (saveFile->unk34C[world].present1 == 0
         || saveFile->unk34C[world].present2 == 0
         || saveFile->unk34C[world].present3 == 0)
        {
            saveFile->unk34C[world].present1 = (arg2[0] != 0);
            saveFile->unk34C[world].present2 = (arg2[1] != 0);
            saveFile->unk34C[world].present3 = (arg2[2] != 0);
        }
        saveFile->unk34C[world].flags |= LEVEL_COMPLETED;
    }
}

void sub_080107E8(u8 world, u8 level, u16 arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    if (gLevelEWorldFlag != 0)
    {
        sub_0802F1AC(level, arg2);
        return;
    }
    gCurrentEnemyScore = 0;
    if (gLevelType == 0)
    {
        if (gNextLevelInLevelTable.levelType & 1)
        {
            if (saveFile->mainLevels[world * 8 + 6].highScore <= arg2)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + 6].highScore = arg2;
                saveFile->mainLevels[world * 8 + 6].flags |= 0x40;
            }
            else
            {
                gCurrentPresentScore = arg2;
            }
        }
        else if (gNextLevelInLevelTable.levelType & 2)
        {
            if (saveFile->mainLevels[world * 8 + 7].highScore <= arg2)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + 7].highScore = arg2;
                saveFile->mainLevels[world * 8 + 7].flags |= 0x40;
            }
            else
            {
                gCurrentPresentScore = arg2;
            }
        }
        else
        {
            level /= 2;
            if (saveFile->mainLevels[world * 8 + level].highScore <= arg2)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + level].highScore = arg2;
                saveFile->mainLevels[world * 8 + level].flags |= 0x40;
            }
            else
            {
                gCurrentPresentScore = arg2;
            }
        }
    }
    else if (gLevelType == 1)
    {
        if (saveFile->plusLevels[world * 8 + level].highScore <= arg2)
        {
            gCurrentPresentScore = saveFile->plusLevels[world * 8 + level].highScore = arg2;
            saveFile->plusLevels[world * 8 + level].flags |= 0x40;
        }
        else
        {
            gCurrentPresentScore = arg2;
        }
    }
    else if (gLevelType == 2)
    {

        if (saveFile->unk31C[world].highScore <= arg2)
        {
            gCurrentPresentScore = saveFile->unk31C[world].highScore = arg2;
            saveFile->unk31C[world].flags |= 0x40;
        }
        else
        {
            gCurrentPresentScore = arg2;
        }
    }
    else if (gLevelType == 3)
    {

        if (saveFile->unk34C[world].highScore <= arg2)
        {
           gCurrentPresentScore = saveFile->unk34C[world].highScore = arg2;
            saveFile->unk34C[world].flags |= 0x40;
        }
        else
        {
            gCurrentPresentScore = arg2;
        }
    }
    else
    {
        gCurrentPresentScore = 0;
    }
}

u16 get_level_highscore_0801095C(u8 world, u8 level, u8 arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    if (gLevelEWorldFlag != 0)
        return sub_0802F1C0(level);
    if (arg2 == 0)
    {
        if (level == 12)
            return saveFile->mainLevels[world * 8 + 6].highScore;
        if (level == 13)
            return saveFile->mainLevels[world * 8 + 7].highScore;
        level /= 2;
        return saveFile->mainLevels[world * 8 + level].highScore;
    }
    if (arg2 == 1)
        return saveFile->plusLevels[world * 8 + level].highScore;
    if (arg2 == 4)
        return 0;
    if (arg2 == 5)
        return 0;
    if (arg2 == 2)
        return saveFile->unk31C[world].highScore;
    if (arg2 == 3)
        return saveFile->unk34C[world].highScore;
}

void sub_08010A3C(u8 arg0, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s8 sp0;
    u8 sp1;
    s8 sp2;

    if ((saveFile->unk31B & 0x80) == 0)
    {
        sub_08014B78(*gSelectedSaveFileNumPtr, &sp0, &sp1, &sp2);
        if (gLevelType == 0)
        {
            if (sp2 == 0 && arg0 >= sp0)
            {
                if (gNextLevelInLevelTable.levelType & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gNextLevelInLevelTable.levelType & 2)
                {
                    if (gCurrentWorld > 5)
                        gCurrentWorld = 0;
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 <= 4)
                        saveFile->unk2 = saveFile->unk1;
                    else
                        saveFile->unk2 = arg1 | 0x50;
                }
                else
                {
                    u8 var = arg1 / 2;
                    saveFile->unk1 = var | (arg0 << 4);
                    saveFile->unk2 = (gCurrentWorld << 4) | var;
                }
                saveFile->unk3 = 0;
            }
        }
        else if (gLevelType == 1)
        {
            if (sp2 == 1 && arg0 >= sp0 )
            {
                if (gNextLevelInLevelTable.levelType & 2)
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 > 4)
                        saveFile->unk2 = arg1 | 0x50;
                    else
                        saveFile->unk2 = saveFile->unk1;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gCurrentWorld << 4) | arg1;
                }
                saveFile->unk3 = 1;
            }
        }
        else if (gLevelType == 4)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gLevelType == 5)
        {
            saveFile->unk1 = 0x55;
            saveFile->unk2 = 0x56;
            saveFile->unk3 = 1;
        }
    }
    sub_0800F84C(*gSelectedSaveFileNumPtr);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

void sub_08010BE0(u8 arg0, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s8 sp0;
    s8 sp1;
    s8 sp2;

    if (gLevelEWorldFlag != 0)
    {
        sub_0802F1D4();
        *gUnknown_080788F8 |= 1;
        sub_0802A164();
        return;
    }
    *gUnknown_080788F8 &= ~1;
    if ((saveFile->unk31B & 0x80) == 0)
    {
        sub_08014B78(*gSelectedSaveFileNumPtr, &sp0, &sp1, &sp2);
        if (gLevelType == 0)
        {
            arg1 /= 2;
            if (sp2 == 0 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gNextLevelInLevelTable.levelType & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gNextLevelInLevelTable.levelType & 2)
                {
                    if (gCurrentWorld > 5)
                        gCurrentWorld = 0;
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 <= 4)
                        saveFile->unk2 = arg1 | (arg0 << 4);
                    else
                        saveFile->unk2 = arg1 | 0x50;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gCurrentWorld << 4) | arg1;
                }
                saveFile->unk3 = 0;
            }
        }
        else if (gLevelType == 1)
        {
            if (sp2 <= 1 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gNextLevelInLevelTable.levelType & 2)
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 > 4)
                        saveFile->unk2 = arg1 | 0x50;
                    else
                        saveFile->unk2 = (arg0 << 4) | arg1;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gCurrentWorld << 4) | arg1;
                }
                saveFile->unk3 = 1;
            }
        }
        else if (gLevelType == 4)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gLevelType == 5)
        {
            saveFile->unk2 = saveFile->unk1 = 0x55;
            saveFile->unk3 = 1;
        }
    }
    sub_0800F84C(*gSelectedSaveFileNumPtr);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

void init_level_highscores_08010DEC(struct SaveFile *saveFile)
{
    s16 world, level;

    saveFile->lives = 5;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 8; level++)
            saveFile->mainLevels[world * 8 + level].highScore = gMainLevelDefaultHighScores[world][level];
        for (level = 0; level < 7; level++)
            saveFile->plusLevels[world * 8 + level].highScore = gPlusLevelDefaultHighScores[world][level];
    }
    saveFile->unk30C = 0;
    saveFile->unk314 = 0;
}

void init_all_save_files_08010E90(void)
{
    struct SaveFile *saveFile;
    s16 world;
    s16 level;

    saveFile = &gSaveFilesPtr[1];
    saveFile->unk2 = saveFile->unk1 = 16;
    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 1; world++)
    {
        for (level = 0; level < 6; level++)
            saveFile->mainLevels[world * 8 + level].flags = 0x80;
        saveFile->mainLevels[world * 8 + level].flags = 0x86;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0x80;
    }
    sub_0800F84C(1);

    saveFile = &gSaveFilesPtr[2];
    saveFile->unk2 = saveFile->unk1 = 48;
    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 3; world++)
    {
        for (level = 0; level < 6; level++)
            saveFile->mainLevels[world * 8 + level].flags = 0x80;
        saveFile->mainLevels[world * 8 + level].flags = 0x86;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0x80;
    }
    sub_0800F84C(2);
}

void unlock_everything(void)  // unreferenced?
{
    struct SaveFile *saveFile = &gSaveFilesPtr[gFileSelectMenuSel];
    s16 world;
    s16 level;

    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED;
            saveFile->plusLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED;
            saveFile->plusLevels[world * 8 + level].present2 = 1;
            saveFile->plusLevels[world * 8 + level].present3 = 1;
            saveFile->plusLevels[world * 8 + level].present1 = 1;
            saveFile->mainLevels[world * 8 + level].present2 = 1;
            saveFile->mainLevels[world * 8 + level].present3 = 1;
            saveFile->mainLevels[world * 8 + level].present1 = 1;
        }
        saveFile->unk31C[world].flags = LEVEL_COMPLETED;
        saveFile->unk34C[world].flags = LEVEL_COMPLETED;
        saveFile->unk31C[world].present2 = 1;
        saveFile->unk31C[world].present3 = 1;
        saveFile->unk31C[world].present1 = 1;
        saveFile->unk34C[world].present2 = 1;
        saveFile->unk34C[world].present3 = 1;
        saveFile->unk34C[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED|6;
        saveFile->mainLevels[world * 8 + level + 1].flags = LEVEL_COMPLETED|LEVEL_STARRED|6;
        saveFile->plusLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED|6;
        saveFile->unk313 = LEVEL_COMPLETED;
        saveFile->unk31B = LEVEL_COMPLETED;
    }
    sub_0800F84C(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

void init_current_save_file_08011098(void)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[gFileSelectMenuSel];
    s16 world;
    s16 level;

    saveFile->lives = 5;
    saveFile->unk4 = 0xF000FFEF;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED;
            saveFile->plusLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED;
        }
        saveFile->unk31C[world].flags = LEVEL_COMPLETED|LEVEL_STARRED;
        saveFile->unk34C[world].flags = LEVEL_COMPLETED|LEVEL_STARRED;
        saveFile->unk31C[world].present2 = 1;
        saveFile->unk31C[world].present3 = 1;
        saveFile->unk31C[world].present1 = 1;
        saveFile->unk34C[world].present2 = 1;
        saveFile->unk34C[world].present3 = 1;
        saveFile->unk34C[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = LEVEL_COMPLETED|LEVEL_STARRED|6;
        saveFile->mainLevels[world * 8 + level + 1].flags = LEVEL_COMPLETED|LEVEL_STARRED|6;
        saveFile->unk313 = LEVEL_COMPLETED|LEVEL_STARRED;
        saveFile->unk31B = LEVEL_COMPLETED|LEVEL_STARRED;
    }
    sub_0800F84C(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

u8 sub_080111B4(u8 arg0)
{
    s16 world;
    s16 level;
    u8 sp4;
    s16 sp8;
    s16 r6;

    sp8 = 0;
    r6 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
                r6++;
        }
        if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
            r6++;
        if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level + 1, &sp4) && (sp4 & 0xC0) == 0xC0)
            r6++;
    }
    if (r6 < 48)
        return 0;
    sp8++;
    r6 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 7; level++)
        {
            if (get_level_stats_08010068(arg0, PLUS_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
                r6++;
        }
    }
    if (r6 >= 42)
    {
        sp8++;
        r6 = 0;
        for (world = 0; world < 6; world++)
        {
            if (get_level_stats_08010068(arg0, 2, world, 0, &sp4))
                r6++;
            if (get_level_stats_08010068(arg0, 3, world, 0, &sp4))
                r6++;
        }
        if (r6 > 11)
            return ++sp8;
    }
    return sp8;
}

extern u16 gUnknown_080788E0[];

void process_some_key_sequence_0801138C(void)  // unreferenced?
{
    if (gHeldKeys & SELECT_BUTTON)
    {
        gHeldKeys &= ~SELECT_BUTTON;
        if (gHeldKeys == gUnknown_080788E0[gUnknown_03000065])
        {
            gUnknown_03000065++;
            if (gUnknown_03000065 == 10)
                play_sound_effect_08071990(SE_HERE_WEGO, 8, 16, 64, 0, 0x80, 0);
        }
        else if (gUnknown_03000065 != 0
         && gHeldKeys != 0
         && gHeldKeys != gUnknown_080788E0[gUnknown_03000065 - 1])
        {
            gUnknown_03000065 = 0;
        }
        gSomeKeys_030012E8 = 0;
        gHeldKeys = 0;
    }
    else
    {
        gUnknown_03000065 = 0;
    }
}

void sub_08011428(u32 arg0)
{
    struct UnknownStruct12 r6 = *gUnknown_080788FC;
    s16 i;

    CpuFill16(0, gSelectedSaveFileNumPtr, 0xA84);
    sub_08029080();
    if (arg0 == 0)
        *gUnknown_080788FC = r6;
    sub_0807220C(gUnknown_080788FC->unk0_5);
    init_level_highscores_08010DEC(&gSaveFilesPtr[0]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[1]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[2]);
    sub_0802F06C();
    sub_0802F1D4();
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}
