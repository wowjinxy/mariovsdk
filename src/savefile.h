struct LevelStats
{
    /*0x00*/ u16 highScore;
    /*0x02*/ u8 filler2[2];
    /*0x04*/ u8 present1;  // got red present
    /*0x05*/ u8 present2;  // got yellow present
    /*0x06*/ u8 present3;  // got blue present
    /*0x07*/ u8 flags;  // bits 0-3: mini mario count (for MM level) or lives remaining (for DK level)
                        // bit 6: got high score, bit 7: completed
};

// bit flags for LevelStats.flags
#define LEVEL_FLAG_COMPLETE  0x80
#define LEVEL_FLAG_HIGHSCORE 0x40  // highscore

// Confusingly, a different set of flags is used by the "get_level_stats" functions
#define LEVEL_STAT_COLLECTED_ALL 0x40
#define LEVEL_STAT_HIGHSCORE     0x80

struct SaveFile
{
    /*0x000*/ s8 lives;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    s32 unk4;
    /*0x008*/ u8 stars;  // number of stars obtained
    /*0x009*/ u8 levelsCompleted;  // number of main and plus levels completed
    /*0x00C*/ struct LevelStats mainLevels[6 * 8];  // 6 worlds, 8 levels per world
    /*0x18C*/ struct LevelStats plusLevels[6 * 8];  // 6 worlds, 7 levels per world (the 8th slot in each world is unused
    /*0x30C*/ struct LevelStats mainBossLevel;
    /*0x314*/ struct LevelStats plusBossLevel;
    /*0x31C*/ struct LevelStats expertLevels1_6[6];
    /*0x34C*/ struct LevelStats expertLevels7_12[6];
};  // 0x37C

extern struct SaveFile *gSaveFilesPtr;

s8 get_last_unlocked_level_for_world(u8 levelType, u8 world);
int is_level_unlocked(u8 levelType, u8 world, u8 level);
int get_level_stats_0800FB28(u8 levelType, u8 world, u8 level, u8 *stats);
int got_star_on_level(u8 levelType, u8 world, u8 level);
u8 get_level_stats_0800FE2C(u8 levelType, u8 world, u8 level, u8 *stats);
u8 get_level_stats_08010068(u8 fileNum, u8 levelType, u8 world, u8 level, u8 *stats);
u8 is_world_or_expert_level_completed_080103C8(u8 levelType, u8 world);
// There seems to be some conflict with parameter types. No idea why.
#ifdef INCLUDED_FROM_SAVEFILE_C
void set_level_flags_08010534(u8 world, u8 level, u8 *presents);
void set_level_highscore_flag_080107E8(u8 world, u8 level, u16 score);
#else
void set_level_flags_08010534();
void set_level_highscore_flag_080107E8();
#endif
u16 get_level_highscore_0801095C(u8 world, u8 level, u8 levelType);
void sub_08010A3C(u8 arg0, u8 arg1);
// There seems to be some conflict with parameter types. No idea why.
#ifdef INCLUDED_FROM_SAVEFILE_C
void sub_08010BE0(u8 arg0, u8 arg1);
#else
void sub_08010BE0();
#endif
void init_level_highscores_08010DEC(struct SaveFile *saveFile);
u8 sub_080111B4(u8 fileNum);
void sub_08011428(u32 arg0);
