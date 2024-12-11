#define INCLUDED_FROM_SAVEFILE_C
#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"

static u16 gMainLevelDefaultHighScores[6][8] =
{
    // World 1 Scores
    { 27500, 28000, 27000, 28500, 30000, 27500, 15000, 22000 },
    // World 2 Scores
    { 29000, 27000, 31000, 29500, 32000, 32000, 13000, 23000 },
    // World 3 Scores
    { 28500, 32000, 30500, 29500, 29000, 27000, 14000, 18500 },
    // World 4 Scores
    { 29000, 32000, 31500, 31000, 30000, 27000, 10000, 21000 },
    // World 5 Scores
    { 28500, 29000, 27500, 26000, 24500, 26500, 12000, 22500 },
    // World 6 Scores
    { 26500, 24500, 27500, 27000, 26500, 25500, 18000, 21500 },
};

static u16 gPlusLevelDefaultHighScores[6][7] =
{
    // World 1 Plus Scores
    { 17000, 17500, 20000, 18500, 19000, 19500, 20000 },
    // World 2 Plus Scores
    { 21500, 23500, 18500, 19500, 21500, 21000, 20000 },
    // World 3 Plus Scores
    { 16000, 17500, 18500, 19500, 20500, 21000, 20000 },
    // World 4 Plus Scores
    { 19000, 18500, 20000, 20500, 21000, 22000, 20000 },
    // World 5 Plus Scores
    { 19000, 22000, 18500, 19500, 19000, 18500, 20000 },
    // World 6 Plus Scores
    { 18000, 21000, 19500, 20000, 18500, 19000, 20000 },
};

u16 unknownScores[] = { 10000, 10000 };

// Returns the last unlocked level for a main or plus world. This is the first
// level that has not yet been completed. If the world has not been unlocked,
// returns -1 instead.
s8 get_last_unlocked_level_for_world(u8 levelType, u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 level;

    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (world > 0 && !is_world_or_expert_level_completed_080103C8(0, world - 1))
            return -1;
        for (level = 0; level < 8; level++)
        {
            if (!(saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE))
                break;
        }
        return level;
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (world > 0 && !is_world_or_expert_level_completed_080103C8(1, world - 1))
            return -1;
        for (level = 0; level < 7; level++)
        {
            if (!(saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE))
                break;
        }
        return level;
    }
    return 0;
}

static void update_star_and_completion_count(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    s16 stars = 0;
    s16 completed = 0;
    s16 world;
    s16 level;
    u8 stats;

    for (world = 0; world < 6; world++)
    {
        // normal levels
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level, &stats))
            {
                completed++;
                if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                    stars++;
            }
            if (get_level_stats_08010068(fileNum, LEVEL_TYPE_PLUS, world, level, &stats))
            {
                completed++;
                if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                    stars++;
            }
        }
        // main MM level
        if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level, &stats))
        {
            completed++;
            if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                stars++;
        }
        // main DK level
        if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level + 1, &stats))
        {
            completed++;
            if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                stars++;
        }
        // plus DK level
        if (get_level_stats_08010068(fileNum, LEVEL_TYPE_PLUS, world, level, &stats))
        {
            completed++;
            if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                stars++;
        }
    }
    saveFile->stars = stars;
    saveFile->levelsCompleted = completed;
    if (stars == 90 && (saveFile->plusBossLevel.flags & LEVEL_FLAG_COMPLETE))
        saveFile->unk4 |= 0x80000000;
}

// Returns TRUE if the specified main or plus level is unlocked.
// If levelType is LEVEL_TYPE_EXPERT_1_6 or LEVEL_TYPE_EXPERT_7_12, the world
// parameter actually specifies the level instead.
int is_level_unlocked(u8 levelType, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s8 lastUnlocked;

    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level > 7)
            level = 7;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
            return TRUE;
        lastUnlocked = get_last_unlocked_level_for_world(levelType, world);
        if (lastUnlocked == -1)
            return FALSE;
        if (lastUnlocked == 0)
            return level == 0;
        return lastUnlocked >= level;
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (world > 0 || level > 0 || !(saveFile->mainBossLevel.flags & LEVEL_FLAG_COMPLETE))
        {
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
                return 1;
            lastUnlocked = get_last_unlocked_level_for_world(levelType, world);
            if (lastUnlocked == -1)
                return FALSE;
            if (lastUnlocked == 0)
                return level == 0;
            return lastUnlocked >= level;
        }
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
    {
        if (saveFile->mainLevels[5 * 8 + 7].flags & LEVEL_FLAG_COMPLETE)  // huh? Why not mainBossLevel.flags?
            return TRUE;
    }
    else if (levelType == LEVEL_TYPE_PLUS_BOSS)
    {
        if (saveFile->plusLevels[5 * 8 + 5].flags & LEVEL_FLAG_COMPLETE)  // huh? Why not plusBossLevel.flags?
            return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (saveFile->expertLevels1_6[world].flags & LEVEL_FLAG_COMPLETE)
            return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (saveFile->expertLevels7_12[world].flags & LEVEL_FLAG_COMPLETE)
            return TRUE;
    }
    return FALSE;
}

int get_level_stats_0800FB28(u8 levelType, u8 world, u8 level, u8 *stats)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 r1;
    u8 r0;
    s8 result;

    *stats = 0;
    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // MM level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            else if (level == 7)  // DK level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            else  // normal level
            {
                *stats = saveFile->mainLevels[world * 8 + level].present1;
                *stats += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            return TRUE;
        }
        else
        {
            result = get_last_unlocked_level_for_world(0, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // DK level
            {
                *stats = saveFile->plusLevels[world * 8 + 6].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
            }
            else  // normal level
            {
                *stats = saveFile->plusLevels[world * 8 + level].present1;
                *stats += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
        else
        {
            result = get_last_unlocked_level_for_world(1, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    *stats = 0;
    return TRUE;
}

// Returns TRUE if the player fulfilled the requirements for a star on a level.
// This involves getting all presents on a normal level, getting all mini Marios
// on a MM level, or having 6 lives remaining on a DK level.
int got_star_on_level(u8 levelType, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    u8 presentBits;

    if (gLevelEWorldFlag != 0)
        return FALSE;
    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // MM level
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) >= 6
                 && (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE))
                    return TRUE;
                return FALSE;
            }
            else if (level == 7)  // DK level
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) >= 6
                 && (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE))
                    return TRUE;
            }
            else  // normal level
            {
                presentBits = saveFile->mainLevels[world * 8 + level].present1;
                presentBits += saveFile->mainLevels[world * 8 + level].present2 * 2;
                presentBits += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (presentBits >= 7 && (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE))
                    return TRUE;
            }
        }
        return FALSE;
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
        return FALSE;
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // DK level
            {
                if ((saveFile->plusLevels[world * 8 + level].flags & 7) < 6)
                    return FALSE;
            }
            else  // normal level
            {
                presentBits = saveFile->plusLevels[world * 8 + level].present1;
                presentBits += saveFile->plusLevels[world * 8 + level].present2 * 2;
                presentBits += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (presentBits < 7)
                    return FALSE;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)  // needed to match
        return FALSE;
    return FALSE;
}

// Returns TRUE if the level was completed.
// If levelType is LEVEL_TYPE_EXPERT_1_6 or LEVEL_TYPE_EXPERT_7_12, then the
// world parameter actually refers to the level instead.
u8 get_level_stats_0800FE2C(u8 levelType, u8 world, u8 level, u8 *stats)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    *stats = 0;
    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // MM level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            else if (level == 7)  // DK level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            else  // normal level
            {
                *stats = saveFile->mainLevels[world * 8 + level].present1;
                *stats += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
    {
        if (saveFile->mainBossLevel.flags & LEVEL_FLAG_COMPLETE)
        {
            if (saveFile->mainBossLevel.flags & LEVEL_FLAG_HIGHSCORE)
                *stats = LEVEL_STAT_COLLECTED_ALL | LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // DK level
            {
                *stats = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
            }
            else  // normal level
            {
                *stats = saveFile->plusLevels[world * 8 + level].present1;
                *stats += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_PLUS_BOSS)
    {
        if (saveFile->plusBossLevel.flags & LEVEL_FLAG_COMPLETE)
        {
            if (saveFile->plusBossLevel.flags & LEVEL_FLAG_HIGHSCORE)
                *stats = LEVEL_STAT_COLLECTED_ALL | LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (saveFile->expertLevels1_6[world].flags & LEVEL_FLAG_COMPLETE)
        {
            *stats = saveFile->expertLevels1_6[world].present1;
            *stats += saveFile->expertLevels1_6[world].present2 * 2;
            *stats += saveFile->expertLevels1_6[world].present3 * 4;
            if (*stats == 7)
                *stats |= LEVEL_STAT_COLLECTED_ALL;
            if (saveFile->expertLevels1_6[world].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (saveFile->expertLevels7_12[world].flags & LEVEL_FLAG_COMPLETE)
        {
            *stats = saveFile->expertLevels7_12[world].present1;
            *stats += saveFile->expertLevels7_12[world].present2 * 2;
            *stats += saveFile->expertLevels7_12[world].present3 * 4;
            if (*stats == 7)
                *stats |= LEVEL_STAT_COLLECTED_ALL;
            if (saveFile->expertLevels7_12[world].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    return FALSE;
}

// Exactly like get_level_stats_0800FE2C, except allows specifying a file number
u8 get_level_stats_08010068(u8 fileNum, u8 levelType, u8 world, u8 level, u8 *stats)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];

    *stats = 0;
    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // MM level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            else if (level == 7)  // DK level
            {
                *stats = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;

            }
            else  // normal level
            {
                *stats = saveFile->mainLevels[world * 8 + level].present1;
                *stats += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
                if (saveFile->mainLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                    *stats |= LEVEL_STAT_HIGHSCORE;
            }
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
    {
        if (saveFile->mainBossLevel.flags & LEVEL_FLAG_COMPLETE)
        {
            if (saveFile->mainBossLevel.flags & LEVEL_FLAG_HIGHSCORE)
                *stats = LEVEL_STAT_COLLECTED_ALL | LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_COMPLETE)
        {
            if (level == 6)  // DK level
            {
                *stats = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*stats >= 6)
                    *stats = LEVEL_STAT_COLLECTED_ALL | 6;
            }
            else  // normal level
            {
                *stats = saveFile->plusLevels[world * 8 + level].present1;
                *stats += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *stats += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*stats == 7)
                    *stats |= LEVEL_STAT_COLLECTED_ALL;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_PLUS_BOSS)
    {
        if (saveFile->plusBossLevel.flags & LEVEL_FLAG_COMPLETE)
        {
            if (saveFile->plusBossLevel.flags & LEVEL_FLAG_HIGHSCORE)
                *stats = LEVEL_STAT_COLLECTED_ALL | LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (saveFile->expertLevels1_6[world].flags & LEVEL_FLAG_COMPLETE)
        {
            *stats = saveFile->expertLevels1_6[world].present1;
            *stats += saveFile->expertLevels1_6[world].present2 * 2;
            *stats += saveFile->expertLevels1_6[world].present3 * 4;
            if (*stats == 7)
                *stats |= LEVEL_STAT_COLLECTED_ALL;
            if (saveFile->expertLevels1_6[world].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    else if (levelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (saveFile->expertLevels7_12[world].flags & LEVEL_FLAG_COMPLETE)
        {
            *stats = saveFile->expertLevels7_12[world].present1;
            *stats += saveFile->expertLevels7_12[world].present2 * 2;
            *stats += saveFile->expertLevels7_12[world].present3 * 4;
            if (*stats == 7)
                *stats |= LEVEL_STAT_COLLECTED_ALL;
            if (saveFile->expertLevels7_12[world].flags & LEVEL_FLAG_HIGHSCORE)
                *stats |= LEVEL_STAT_HIGHSCORE;
            return TRUE;
        }
    }
    return FALSE;
}

static void init_current_save_file_080102B4(u8 world)  // unreferenced
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s16 level;

    if (gLevelType == LEVEL_TYPE_MAIN)
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
        update_star_and_completion_count(gFileSelectMenuSel);
    }
    else if (gLevelType == LEVEL_TYPE_PLUS)
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
        update_star_and_completion_count(gFileSelectMenuSel);
    }
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
}

// If levelType is LEVEL_TYPE_MAIN or LEVEL_TYPE_PLUS, returns TRUE if the last
// level of the specified world (the DK level) has been completed.
// If levelType is LEVEL_TYPE_MAIN_BOSS or LEVEL_TYPE_PLUS_BOSS, returns TRUE if
// the DK level of the last world has been completed.
// if levelType is LEVEL_TYPE_EXPERT_1_6 or LEVEL_TYPE_EXPERT_7_12, then the
// world parameter is actually the level, and returns TRUE if the level has been
// completed
u8 is_world_or_expert_level_completed_080103C8(u8 levelType, u8 world)
{
    u8 dummy;

    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_MAIN, world, 7, &dummy))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_MAIN, 5, 7, &dummy))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_PLUS, world, 6, &dummy))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_PLUS_BOSS)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_PLUS, 5, 6, &dummy))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_EXPERT_1_6, world, 0, &dummy))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (!get_level_stats_0800FE2C(LEVEL_TYPE_EXPERT_7_12, world, 0, &dummy))
            return FALSE;
        return TRUE;
    }
    return FALSE;
}

// returns TRUE if the requirements for a star are met
static int got_star_on_level_unref(u8 levelType, u8 world)  // unreferenced
{
    u8 stats;
    u8 level;

    if (levelType == LEVEL_TYPE_MAIN)
    {
        for (level = 0; level < 8; level++)
        {
            if (!get_level_stats_0800FE2C(levelType, world, level, &stats))
                return FALSE;
            if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                return FALSE;
        }
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_MAIN_BOSS)
    {
        if (!get_level_stats_0800FE2C(levelType, 0, 0, &stats))
            return FALSE;
        if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_PLUS)
    {
        for (level = 0; level < 6; level++)
        {
            if (!get_level_stats_0800FE2C(levelType, world, level, &stats))
                return FALSE;
            if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                return FALSE;
        }
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_PLUS_BOSS)
    {
        if (!get_level_stats_0800FE2C(levelType, 0, 0, &stats))
            return FALSE;
        if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (!get_level_stats_0800FE2C(levelType, world, 0, &stats))
            return FALSE;
        if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            return FALSE;
        return TRUE;
    }
    else if (levelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (!get_level_stats_0800FE2C(levelType, world, 0, &stats))
            return FALSE;
        if ((stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) != (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            return FALSE;
        return TRUE;
    }
    return FALSE;
}

void set_level_flags_08010534(u8 world, u8 level, u8 *presents)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");

    if (gLevelEWorldFlag != 0)
    {
        sub_0802F168(level, presents);
        return;
    }
    if (gLevelType == LEVEL_TYPE_MAIN)
    {
        if (gNextLevelInLevelTable.levelFlags & 1)
        {
            if ((saveFile->mainLevels[world * 8 + 6].flags & 7) < 6)
            {
                saveFile->mainLevels[world * 8 + 6].flags &= ~7;
                saveFile->mainLevels[world * 8 + 6].flags |= gMiniMariosRescued_03001BA0;
            }
            saveFile->mainLevels[world * 8 + 6].flags |= LEVEL_FLAG_COMPLETE;
        }
        else if (gNextLevelInLevelTable.levelFlags & 2)
        {
            if ((saveFile->mainLevels[world * 8 + 7].flags & 7) < 6)
            {
                saveFile->mainLevels[world * 8 + 7].flags &= ~7;
                saveFile->mainLevels[world * 8 + 7].flags |= gDKLevelMarioLivesLeft_03000C20;
            }
            saveFile->mainLevels[world * 8 + 7].flags |= LEVEL_FLAG_COMPLETE;
        }
        else
        {
            u8 var = level / 2;

            if (!saveFile->mainLevels[world * 8 + var].present1
             || !saveFile->mainLevels[world * 8 + var].present2
             || !saveFile->mainLevels[world * 8 + var].present3)
            {
                saveFile->mainLevels[world * 8 + var].present1 = (presents[0] != 0);
                saveFile->mainLevels[world * 8 + var].present2 = (presents[1] != 0);
                saveFile->mainLevels[world * 8 + var].present3 = (presents[2] != 0);
            }
            saveFile->mainLevels[world * 8 + var].flags |= LEVEL_FLAG_COMPLETE;
        }
    }
    else if (gLevelType == LEVEL_TYPE_PLUS)
    {
        if (level == 6)  // DK level
        {
            if ((saveFile->plusLevels[world * 8 + level].flags & 7) < 6)
            {
                saveFile->plusLevels[world * 8 + level].flags &= ~7;
                saveFile->plusLevels[world * 8 + level].flags |= gDKLevelMarioLivesLeft_03000C20;
            }
            saveFile->plusLevels[world * 8 + level].flags |= LEVEL_FLAG_COMPLETE;
        }
        else  // normal level
        {
            if (!saveFile->plusLevels[world * 8 + level].present1
             || !saveFile->plusLevels[world * 8 + level].present2
             || !saveFile->plusLevels[world * 8 + level].present3)
            {
                saveFile->plusLevels[world * 8 + level].present1 = (presents[0] != 0);
                saveFile->plusLevels[world * 8 + level].present2 = (presents[1] != 0);
                saveFile->plusLevels[world * 8 + level].present3 = (presents[2] != 0);
            }
        }
        saveFile->plusLevels[world * 8 + level].flags |= LEVEL_FLAG_COMPLETE;
    }
    else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        saveFile->mainBossLevel.flags |= LEVEL_FLAG_COMPLETE;
    }
    else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
    {
        saveFile->plusBossLevel.flags |= LEVEL_FLAG_COMPLETE;
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
    {
        if (!saveFile->expertLevels1_6[world].present1
         || !saveFile->expertLevels1_6[world].present2
         || !saveFile->expertLevels1_6[world].present3)
        {
            saveFile->expertLevels1_6[world].present1 = (presents[0] != 0);
            saveFile->expertLevels1_6[world].present2 = (presents[1] != 0);
            saveFile->expertLevels1_6[world].present3 = (presents[2] != 0);
        }
        saveFile->expertLevels1_6[world].flags |= LEVEL_FLAG_COMPLETE;
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
    {
        if (!saveFile->expertLevels7_12[world].present1
         || !saveFile->expertLevels7_12[world].present2
         || !saveFile->expertLevels7_12[world].present3)
        {
            saveFile->expertLevels7_12[world].present1 = (presents[0] != 0);
            saveFile->expertLevels7_12[world].present2 = (presents[1] != 0);
            saveFile->expertLevels7_12[world].present3 = (presents[2] != 0);
        }
        saveFile->expertLevels7_12[world].flags |= LEVEL_FLAG_COMPLETE;
    }
}

void set_level_highscore_flag_080107E8(u8 world, u8 level, u16 score)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    if (gLevelEWorldFlag != 0)
    {
        sub_0802F1AC(level, score);
        return;
    }
    gCurrentEnemyScore = 0;
    if (gLevelType == LEVEL_TYPE_MAIN)
    {
        if (gNextLevelInLevelTable.levelFlags & 1)
        {
            if (saveFile->mainLevels[world * 8 + 6].highScore <= score)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + 6].highScore = score;
                saveFile->mainLevels[world * 8 + 6].flags |= LEVEL_FLAG_HIGHSCORE;
            }
            else
            {
                gCurrentPresentScore = score;
            }
        }
        else if (gNextLevelInLevelTable.levelFlags & 2)
        {
            if (saveFile->mainLevels[world * 8 + 7].highScore <= score)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + 7].highScore = score;
                saveFile->mainLevels[world * 8 + 7].flags |= LEVEL_FLAG_HIGHSCORE;
            }
            else
            {
                gCurrentPresentScore = score;
            }
        }
        else
        {
            level /= 2;
            if (saveFile->mainLevels[world * 8 + level].highScore <= score)
            {
                gCurrentPresentScore = saveFile->mainLevels[world * 8 + level].highScore = score;
                saveFile->mainLevels[world * 8 + level].flags |= LEVEL_FLAG_HIGHSCORE;
            }
            else
            {
                gCurrentPresentScore = score;
            }
        }
    }
    else if (gLevelType == LEVEL_TYPE_PLUS)
    {
        if (saveFile->plusLevels[world * 8 + level].highScore <= score)
        {
            gCurrentPresentScore = saveFile->plusLevels[world * 8 + level].highScore = score;
            saveFile->plusLevels[world * 8 + level].flags |= LEVEL_FLAG_HIGHSCORE;
        }
        else
        {
            gCurrentPresentScore = score;
        }
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_1_6)
    {

        if (saveFile->expertLevels1_6[world].highScore <= score)
        {
            gCurrentPresentScore = saveFile->expertLevels1_6[world].highScore = score;
            saveFile->expertLevels1_6[world].flags |= LEVEL_FLAG_HIGHSCORE;
        }
        else
        {
            gCurrentPresentScore = score;
        }
    }
    else if (gLevelType == LEVEL_TYPE_EXPERT_7_12)
    {

        if (saveFile->expertLevels7_12[world].highScore <= score)
        {
           gCurrentPresentScore = saveFile->expertLevels7_12[world].highScore = score;
            saveFile->expertLevels7_12[world].flags |= LEVEL_FLAG_HIGHSCORE;
        }
        else
        {
            gCurrentPresentScore = score;
        }
    }
    else
    {
        gCurrentPresentScore = 0;
    }
}

u16 get_level_highscore_0801095C(u8 world, u8 level, u8 levelType)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];

    if (gLevelEWorldFlag != 0)
        return sub_0802F1C0(level);
    if (levelType == LEVEL_TYPE_MAIN)
    {
        if (level == 12)
            return saveFile->mainLevels[world * 8 + 6].highScore;
        if (level == 13)
            return saveFile->mainLevels[world * 8 + 7].highScore;
        level /= 2;
        return saveFile->mainLevels[world * 8 + level].highScore;
    }
    if (levelType == LEVEL_TYPE_PLUS)
        return saveFile->plusLevels[world * 8 + level].highScore;
    if (levelType == LEVEL_TYPE_MAIN_BOSS)
        return 0;
    if (levelType == LEVEL_TYPE_PLUS_BOSS)
        return 0;
    if (levelType == LEVEL_TYPE_EXPERT_1_6)
        return saveFile->expertLevels1_6[world].highScore;
    if (levelType == LEVEL_TYPE_EXPERT_7_12)
        return saveFile->expertLevels7_12[world].highScore;
}

void sub_08010A3C(u8 arg0, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*gSelectedSaveFileNumPtr];
    s8 sp0;
    u8 sp1;
    s8 sp2;

    if (!(saveFile->plusBossLevel.flags & LEVEL_FLAG_COMPLETE))
    {
        sub_08014B78(*gSelectedSaveFileNumPtr, &sp0, &sp1, &sp2);
        if (gLevelType == LEVEL_TYPE_MAIN)
        {
            if (sp2 == 0 && arg0 >= sp0)
            {
                if (gNextLevelInLevelTable.levelFlags & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gNextLevelInLevelTable.levelFlags & 2)
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
        else if (gLevelType == LEVEL_TYPE_PLUS)
        {
            if (sp2 == 1 && arg0 >= sp0 )
            {
                if (gNextLevelInLevelTable.levelFlags & 2)
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
        else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
        {
            saveFile->unk1 = 0x55;
            saveFile->unk2 = 0x56;
            saveFile->unk3 = 1;
        }
    }
    update_star_and_completion_count(*gSelectedSaveFileNumPtr);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
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
        write_flash_sector_0802A164();
        return;
    }
    *gUnknown_080788F8 &= ~1;
    if (!(saveFile->plusBossLevel.flags & LEVEL_FLAG_COMPLETE))
    {
        sub_08014B78(*gSelectedSaveFileNumPtr, &sp0, &sp1, &sp2);
        if (gLevelType == LEVEL_TYPE_MAIN)
        {
            arg1 /= 2;
            if (sp2 == 0 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gNextLevelInLevelTable.levelFlags & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gNextLevelInLevelTable.levelFlags & 2)
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
        else if (gLevelType == LEVEL_TYPE_PLUS)
        {
            if (sp2 <= 1 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gNextLevelInLevelTable.levelFlags & 2)
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
        else if (gLevelType == LEVEL_TYPE_MAIN_BOSS)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gLevelType == LEVEL_TYPE_PLUS_BOSS)
        {
            saveFile->unk2 = saveFile->unk1 = 0x55;
            saveFile->unk3 = 1;
        }
    }
    update_star_and_completion_count(*gSelectedSaveFileNumPtr);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
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
    saveFile->mainBossLevel.highScore = 0;
    saveFile->plusBossLevel.highScore = 0;
}

static void init_all_save_files_08010E90(void)  // unreferenced
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
    update_star_and_completion_count(1);

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
    update_star_and_completion_count(2);
}

static void unlock_everything(void)  // unreferenced?
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
            saveFile->mainLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
            saveFile->plusLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
            saveFile->plusLevels[world * 8 + level].present2 = 1;
            saveFile->plusLevels[world * 8 + level].present3 = 1;
            saveFile->plusLevels[world * 8 + level].present1 = 1;
            saveFile->mainLevels[world * 8 + level].present2 = 1;
            saveFile->mainLevels[world * 8 + level].present3 = 1;
            saveFile->mainLevels[world * 8 + level].present1 = 1;
        }
        saveFile->expertLevels1_6[world].flags = LEVEL_FLAG_COMPLETE;
        saveFile->expertLevels7_12[world].flags = LEVEL_FLAG_COMPLETE;
        saveFile->expertLevels1_6[world].present2 = 1;
        saveFile->expertLevels1_6[world].present3 = 1;
        saveFile->expertLevels1_6[world].present1 = 1;
        saveFile->expertLevels7_12[world].present2 = 1;
        saveFile->expertLevels7_12[world].present3 = 1;
        saveFile->expertLevels7_12[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE|6;
        saveFile->mainLevels[world * 8 + level + 1].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE|6;
        saveFile->plusLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE|6;
        saveFile->mainBossLevel.flags = LEVEL_FLAG_COMPLETE;
        saveFile->plusBossLevel.flags = LEVEL_FLAG_COMPLETE;
    }
    update_star_and_completion_count(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
}

static void init_current_save_file_08011098(void)  // unreferenced
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
            saveFile->mainLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
            saveFile->plusLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
        }
        saveFile->expertLevels1_6[world].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
        saveFile->expertLevels7_12[world].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
        saveFile->expertLevels1_6[world].present2 = 1;
        saveFile->expertLevels1_6[world].present3 = 1;
        saveFile->expertLevels1_6[world].present1 = 1;
        saveFile->expertLevels7_12[world].present2 = 1;
        saveFile->expertLevels7_12[world].present3 = 1;
        saveFile->expertLevels7_12[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE|6;
        saveFile->mainLevels[world * 8 + level + 1].flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE|6;
        saveFile->mainBossLevel.flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
        saveFile->plusBossLevel.flags = LEVEL_FLAG_COMPLETE|LEVEL_FLAG_HIGHSCORE;
    }
    update_star_and_completion_count(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
}

u8 sub_080111B4(u8 fileNum)
{
    s16 world;
    s16 level;
    u8 stats;
    s16 sp8;
    s16 completed;

    sp8 = 0;
    completed = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level, &stats)
             && (stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                completed++;
        }
        if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level, &stats)
         && (stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            completed++;
        if (get_level_stats_08010068(fileNum, LEVEL_TYPE_MAIN, world, level + 1, &stats)
         && (stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
            completed++;
    }
    if (completed < 48)
        return 0;
    sp8++;
    completed = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 7; level++)
        {
            if (get_level_stats_08010068(fileNum, LEVEL_TYPE_PLUS, world, level, &stats)
             && (stats & (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE)) == (LEVEL_STAT_COLLECTED_ALL|LEVEL_STAT_HIGHSCORE))
                completed++;
        }
    }
    if (completed >= 42)
    {
        sp8++;
        completed = 0;
        for (world = 0; world < 6; world++)
        {
            if (get_level_stats_08010068(fileNum, 2, world, 0, &stats))
                completed++;
            if (get_level_stats_08010068(fileNum, 3, world, 0, &stats))
                completed++;
        }
        if (completed > 11)
            return ++sp8;
    }
    return sp8;
}

static void process_some_key_sequence_0801138C(void)  // unreferenced
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
        gNewKeys = 0;
        gHeldKeys = 0;
    }
    else
    {
        gUnknown_03000065 = 0;
    }
}

void sub_08011428(u32 arg0)
{
    struct UnknownStruct12 r6 = *gScreenModeRelatedPtr;
    s16 i;

    CpuFill16(0, gSelectedSaveFileNumPtr, 0xA84);
    sub_08029080();
    if (arg0 == 0)
        *gScreenModeRelatedPtr = r6;
    sub_0807220C(gScreenModeRelatedPtr->unk0_5);
    init_level_highscores_08010DEC(&gSaveFilesPtr[0]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[1]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[2]);
    sub_0802F06C();
    sub_0802F1D4();
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
    if (gUnknown_03000B50 == 1)
        write_flash_sector_0802A164();
}
