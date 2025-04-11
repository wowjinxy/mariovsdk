#ifndef GUARD_SOUND_H
#define GUARD_SOUND_H

enum SoundID
{
    SE_CLIMB          = 0,
    SE_SKID           = 1,
    SE_POUND          = 2,
    SE_TUMBLE1        = 3,
    SE_STUN           = 4,
    SE_BURN1          = 5,
    SE_JUMP_1         = 6,
    SE_GRUNT2         = 7,
    SE_JUMP_4         = 8,
    SE_JUMP_3         = 9,
    SE_PICKUP         = 10,
    SE_JUMP_5         = 11,
    SE_COUNTER        = 12,
    SE_ITEM1          = 13,  // item collected
    SE_STEPS2         = 14,  
    SE_KEY1           = 15,  // Key respawns
    SE_CRASH          = 16,
    SE_THROW          = 17,
    SE_WALK           = 18,
    SE_PICKUP_CRYSTAL = 19,
    SE_HERE_WEGO      = 20,  // "Okey-dokey! Let's a-go!"
    SE_LETS_GO        = 21,  // "Let's a-go, little guys!"
    SE_BACK           = 22,
    SE_CURSOR_E       = 23,
    SE_CURSOR_M       = 24,
    SE_CURSOR_S       = 25,
    SE_ERASE          = 26,
    SE_ERROR          = 27,  // used when at edge of screen in level viewer
    SE_EXIT_ED        = 28,
    SE_FIELD          = 29,
    SE_GRID           = 30,
    SE_ITEM           = 31,  // empty -- wouldve been used for switching objects in the level editor
    SE_SELECT_M       = 32,
    SE_SELECT_S       = 33,
    SE_STAMP          = 34,  // empty -- wouldve been used when you placed a object in the level editor
    SE_START          = 35,
    SE_BEAM           = 36,
    SE_BURN2          = 37,
    SE_BLOCK          = 38,
    SE_EXIT           = 39,  // empty -- wouldve been used when playing level in level editor
    SE_HURT           = 40,
    SE_ITEMLAST       = 41,  // final item collected in level
    SE_POUND2         = 42,
    SE_SCUFF          = 43,
    SE_SHOCK          = 44,
    SE_KEY_DOOR       = 45,  // key door unlock sound
    SE_SPIN           = 46,
    SE_SPLAT          = 47,
    SE_SQUEAK         = 48,
    SE_UNLOCK         = 49,  // empty
    SE_WIREJUMP       = 50,
    SE_SPIN_1         = 51,
    SE_ONE_UP         = 52,
    SE_HELP           = 53,  // empty -- probably from the E3 2002 DK+ "HELP!" bubbles 
    SE_SILENCE        = 54,  // empty -- says it on the name
    SE_SKIDSHORT      = 55,
    SE_SWITCH1        = 56,
    SE_SWITCH2        = 57,
    SE_SWITCH3        = 58,
    SE_BOING          = 59,
    SE_JUMP_6         = 60,
    SE_ROPE_UP        = 61,
    SE_ROPE_DOWN      = 62,
    SE_DOOR           = 63,  // empty -- probably from the E3 2003 appearance where the key doors looked more like elevators
    SE_SCROLL         = 64,  // level viewer scrolling
    SE_RETURN         = 65,
    SE_BLANK          = 66,
    SE_LOOK_UP        = 67,
    SE_MM_DIE         = 68,
    SE_MM_BOING       = 69,
    SE_MM_PROTECT     = 70,
    SE_CHEST_OPEN     = 71,
    SE_CHEST_CLOSE    = 72,
    SE_OOF            = 73,
    SE_DK_HURT        = 74,
    SE_DK_BELLOW      = 75,
    SE_SLAM2          = 76,
    SE_FRUIT_FALL     = 77,
    SE_POINTER        = 78,  // bonus minigame arrow chanes
    SE_CHOOSE         = 79,  // bonus stop arrow chosen
    SE_EMPTY          = 80,  // bonus minigame DK
    SE_TOY1           = 81,  // TOY letter collected
    SE_TOYLAST        = 82,  // final TOY letter collected
    SE_WARP_OUT       = 83,
    SE_WARP_IN        = 84,
    SE_SQUEEZE        = 85,
    SE_GLASS          = 86,
    SE_LIFT           = 87,
    SE_MM_OH_NO       = 88,  // mini mario "Oh Mario!" when off screen
    SE_JUMP_7         = 89,
    SE_LEVEL_START    = 90,
    SE_ELEV_GO        = 91,
    SE_ELEV_STOP      = 92,
    SE_EGG_FALL       = 93,
    SE_DK_EXIT1       = 94,
    SE_DK_BLUBBER     = 95,
    SE_MOVIE_02       = 96,
    SE_MOVIE_03       = 97,
    SE_MOVIE_04       = 98,
    SE_MOVIE_05       = 99,
    SE_MOVIE_06       = 100,
    SE_KEY2           = 101,
    SE_KEY3           = 102,
    SE_GRAB_WIRE      = 103,
    SE_GRAB_ROPE      = 104,
    SE_GRAB_LADDER    = 105,
    SE_CRUSH          = 106,
    SE_SPITFIRE       = 107,
    SE_NINJI          = 108,
    SE_CRUMBLE        = 109,
    SE_LAVA           = 110,
    SE_BUBBLE         = 111,
    SE_FOUNTAIN       = 112,
    SE_OUCH           = 113,
    SE_RESTART        = 114,
    SE_METALROLL      = 115,
    SE_SHWING         = 116,
    SE_KICK           = 117,
    SE_BRICKMAN       = 118,
    SE_SPIT           = 119,
    SE_POP            = 120,
    SE_GROWL          = 121,
    SE_GROWL2         = 122,
    SE_GHOST          = 123,
    SE_SHY_WAKE       = 124,
    SE_SHY_RUN        = 125,
    SE_BOMB_PEEP      = 126,
    SE_BOMB_JUMP      = 127,
    SE_BOMB_FLASH     = 128,
    SE_BOMB_BLOW      = 129,
    SE_VAPORIZE       = 130,
    SE_BAT            = 131,
    SE_CANNON         = 132,
    SE_CROUCH         = 133,
    SE_SCATTER        = 134,
    SE_REACH          = 135,
    SE_DK_HEAD        = 136,
    SE_GOTCHA         = 137,  // "Haha! Gotcha!"
    SE_TOAD_WALK      = 138,
    SE_TOAD_TOSS      = 139,
    SE_BOX_FALL       = 140,
    SE_SPARKY_LOOP    = 141,
    SE_DK_BLUB        = 142,
    SE_YANK           = 143,  // DK pulls chain
    SE_SPIKE          = 144,  // falling spike platform seen in world 4
    SE_BONE           = 145,  // wrench shy guy
    SE_MM_BOINGUP     = 146,
    SE_LASER          = 147,
    SE_DK_JUMP        = 148,
    SE_JUMP_8         = 149,
    SE_TRASHCAN       = 150,
    SE_KEY_TOAD       = 151,
    SE_SHATTER        = 152,
    SE_TOAD_CARRY     = 153,
    SE_TOAD_SET       = 154,
    SE_JUMP_A         = 155,
    SE_JUMP_B         = 156,
    SE_JUMP_C         = 157,
    SE_JUMP_D         = 158,
    SE_SHUFFLE        = 159,
    SE_MOVIE_07       = 160,
    SE_MOVIE_01       = 161,  // TV chatter
    SE_MINI_KEY       = 162,
    SE_MOVIE2_1       = 163,
    SE_MOVIE2_2       = 164,
    SE_MOVIE2_3       = 165,
    SE_MOVIE2_4       = 166,
    SE_MOVIE2_5       = 167,
    SE_MOVIE2_6       = 168,
    SE_MOVIE2_7       = 169,  // "Hey! Come back here!"
    SE_MOVIE2_8       = 170,
    SE_BOSS_ARM       = 171,
    SE_BOSS_ARM2      = 172,
    SE_BOSS_ARM3      = 173,
    SE_BOSS_ARM4      = 174,
    SE_BOSS_ARM5      = 175,
    SE_BOSS_SWITCH    = 176,
    SE_CURSOR_WORLD   = 177,
    SE_CURSOR_UP_DN   = 178,
    SE_BOSS_DIE1      = 179,
    SE_BOSS_DIE2      = 180,
    SE_BOSS_INTRO1    = 181,
    SE_BOSS_INTRO3    = 182,
    SE_PLUS_MAIN      = 183,
    SE_BARREL         = 184,
    SE_SPIKE_HIT      = 185,
    SE_BIGBARREL_HIT  = 186,
    SE_BIGBARREL_FALL = 187,
    SE_TOADS_JUMP     = 188,
    SE_TOADS_GRAB     = 189,
    SE_MOVIE3_01      = 190,
    SE_MOVIE3_02      = 191,
    SE_MOVIE3_03      = 192,
    SE_MOVIE3_04      = 193,
    SE_MOVIE3_05      = 194,
    SE_MOVIE3_06      = 195,
    SE_MOVIE3_07      = 196,
    SE_MOVIE3_08      = 197,
    SE_MOVIE3_09      = 198,
    SE_MOVIE3_10      = 199,
    SE_MOVIE3_11      = 200,
    SE_MOVIE3_12      = 201,
    SE_MOVIE3_13      = 202,
    SE_MOVIE3_14      = 203,
    SE_MOVIE4_01      = 204,
    SE_MOVIE4_02      = 205,
    SE_MOVIE4_03      = 206,
    SE_MOVIE4_04      = 207,
    SE_MOVIE4_06      = 208,
    SE_MOVIE4_07      = 209,
    SE_MOVIE4_08      = 210,
    SE_MOVIE4_09      = 211,  // "Stop! Not again?"
    SE_MOVIE4_10      = 212,  // "Here we go again! Hoo-hooo!"
    SE_MOVIE5_01      = 213,  // "Come back here, you big monkey!"
    SE_MOVIE5_05      = 214,  // "Oh?"
    SE_MOVIE5_07      = 215,  // "Here we go! Again? Again?"
    SE_MOVIE6_01      = 216,  // DK crying
    SE_MOVIE6_02      = 217,
    SE_MOVIE6_03      = 218,  // "Ohh you mum-mummy, you (Italian gibberish)!"
    SE_MOVIE6_04      = 219,
    SE_MOVIE6_05      = 220,  // "Hey, it's okay. Don't cry."
    SE_MOVIE6_06      = 221,  // "Here, you like?"
    SE_MOVIE6_07      = 222,  // "It's a mini Mario."
    SE_MOVIE6_08      = 223,
    SE_MOVIE6_09      = 224,
    SE_MOVIE6_10      = 225,
    SE_MOVIE2_9       = 226,
    SE_MOVIE2_10      = 227,
    SE_MOVIE_08       = 228,
    SE_TITLE          = 229,  // "Mario vs. Donkey Kong!"
    SE_YOU_WON1       = 230,  // "Way to go!"
    SE_YOU_WON2       = 231,  // "Good job!"
    SE_YOU_WON3       = 232,  // "All you, it's all you baby!"
    SE_STAR           = 233,
    SE_DK_WALK        = 234,
    SE_SCUFF2         = 235,
    SE_WORLD_START    = 236,  // "Let's a-get going!"
    SE_MM_WAKEUP      = 237,  // "Yippee, hehehe"
    SE_MM_FREE        = 238,
    SE_MM_MAMAMIAS    = 239,
    SE_SPIKE_VANISH   = 240,
    SE_SPIKE_APPEAR   = 241,
    SE_BOSS_DIE3      = 242,
    SE_BARREL_BOUNCE  = 243,
    SE_ROCK_BOUNCE    = 244,
    SE_MM_WALK        = 245,
    SE_DK_GRUNT       = 246,
    SE_RIBBON         = 247,
    SE_WON_TEXT       = 248,
    SE_DK_FALL        = 249,
};

struct SoundEffect
{
    /*0x00*/ u32 size;
    /*0x04*/ void *samplePtr;
    /*0x08*/ u32 sampleRate;
    /*0x0C*/ char *name;
    /*0x10*/ u16 unk10;
    /*0x12*/ u8 unk12;
             u8 unk13;
             u32 unk14;
    /*0x18*/ u32 size2;  // same as size?
};

extern struct SoundEffect gSoundEffectTable[];

struct MusicFile;

extern struct MusicSequence
{
    /*0x00*/ struct MusicFile *data;
    /*0x04*/ u16 volume;
    u8 unk6[3];
    u8 unk9;
    //u8 fillerA[0xC-0xA];
} gMusicTable[];

extern u16 gSoundEffectCount;
extern u16 gBGMCount;

void sound_init(void *buffer, int bufferSize, int arg2, int arg3, int arg4);
void sound_update(void);
void sub_0807194C(void);
int play_sound_effect_08071990(int soundID, u8 arg1, u8 arg2, u8 pan, u8 arg4, u32 volume, int sampleRate);
void sound_update_dma_transfer(void);
void sound_disable_dma_transfer(void);
void sound_enable_dma_transfer(void);
void sub_08071C24(void);
void sub_08071C6C(int soundID);
void sub_08071CD4(void);
int sub_08071D28(int arg0, int arg1, int arg2);
void sub_08071D9C(int arg0);
void sub_08071E14(int soundID);
void sub_08071E7C(u8 arg0, u8 arg1);
void sound_finish(void);
u32 get_bgm_volume(u32 bgmID);
void *get_bgm_data(u32 bgmID);
u8 *sub_08071F8C(u32 bgmID);
void sub_08071FA0(struct MusicFile *musFile, int arg1, int arg2, u8 *arg3);
int get_current_bgm(void);
void *get_current_bgm_data(void);
void play_bgm(int bgmID, int volume, int arg2);
void sound_stop_music(void);
void sound_pause_music(void);
void sound_resume_music(void);
int sound_is_music_finished(void);
int sub_080721A8(int arg0);
void sub_0807220C(int arg0);
void update_gbc_sound_regs(void);

#endif
