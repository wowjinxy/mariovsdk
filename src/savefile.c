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

#define pSelectedSaveFileNum gSelectedSaveFileNumPtr
#define gUnknown_03000BB4 gLevelEWorldFlag

s8 sub_0800F76C(u8 arg0, u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
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
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
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
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
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
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    u8 r1;

    if (gUnknown_03000BB4 != 0)
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
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];

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
