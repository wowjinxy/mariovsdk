#include "gba/gba.h"
#include "global.h"

u16 gSoundEffectCount = 250;

extern u8 CLIMB_8000Hz[];
extern u8 SKID_8000Hz[];
extern u8 POUND_8000Hz[];
extern u8 TUMBLE1_8000Hz[];
extern u8 STUN_8000Hz[];
extern u8 BURN1_8000Hz[];
extern u8 JUMP1_8000Hz[];
extern u8 GRUNT2[];
extern u8 JUMP_4_8000Hz[];
extern u8 JUMP_3_8000Hz[];
extern u8 PICKUP_8000Hz[];
extern u8 JUMP_5_8000Hz[];
extern u8 COUNTER_8000Hz[];
extern u8 ITEM1_8000Hz[];
extern u8 STEPS2_8000Hz[];
extern u8 KEY1_11025Hz[];
extern u8 CRASH_8000Hz[];
extern u8 THROW_8000Hz[];
extern u8 WALK_11025Hz[];
extern u8 PICKUP_CRYSTAL_8000Hz[];
extern u8 HERE_WEGO_8000Hz[];
extern u8 LETS_GO_8000Hz[];
extern u8 BACK_8000Hz[];
extern u8 CURSOR_E_8000Hz[];
extern u8 CURSOR_M_8000Hz[];
extern u8 CURSOR_S_8000Hz[];
extern u8 gUnknown_08B6308E[];
extern u8 ERROR_8000Hz[];
extern u8 EXIT_ED_8000Hz[];
extern u8 FIELD_8000Hz[];
extern u8 GRID_8000Hz[];
extern u8 ITEM_8000Hz[];
extern u8 SELECT_M_8000Hz[];
extern u8 SELECT_S_8000Hz[];
extern u8 STAMP_8000Hz[];
extern u8 START_8000Hz[];
extern u8 BEAM_8000Hz[];
extern u8 BURN2_8000Hz[];
extern u8 BLOCK_8000Hz[];
extern u8 EXIT_8000Hz[];
extern u8 HURT_8000Hz[];
extern u8 ITEMLAST_8000Hz[];
extern u8 POUND2_8000Hz[];
extern u8 SCUFF_8000Hz[];
extern u8 SHOCK_8000Hz[];
extern u8 KEY_DOOR_8000Hz[];
extern u8 gUnknown_08B72F4A[];
extern u8 gUnknown_08B7348F[];
extern u8 gUnknown_08B74894[];
extern u8 gUnknown_08B75584[];
extern u8 gUnknown_08B75585[];
extern u8 gUnknown_08B76A87[];
extern u8 gUnknown_08B76FCC[];
extern u8 gUnknown_08B79E8C[];
extern u8 gUnknown_08B79E8D[];
extern u8 gUnknown_08B79E8E[];
extern u8 gUnknown_08B79FB8[];
extern u8 gUnknown_08B7DA77[];
extern u8 gUnknown_08B80E46[];
extern u8 gUnknown_08B83DE5[];
extern u8 gUnknown_08B84E7E[];
extern u8 gUnknown_08B86A9A[];
extern u8 gUnknown_08B873FF[];
extern u8 gUnknown_08B87F58[];
extern u8 gUnknown_08B87F59[];
extern u8 gUnknown_08B883DD[];
extern u8 gUnknown_08B8B4F7[];
extern u8 gUnknown_08B8B4F8[];
extern u8 gUnknown_08B8C20E[];
extern u8 gUnknown_08B8D80E[];
extern u8 gUnknown_08B8DD50[];
extern u8 gUnknown_08B916E9[];
extern u8 gUnknown_08B92D76[];
extern u8 gUnknown_08B93BDC[];
extern u8 gUnknown_08B95DEE[];
extern u8 gUnknown_08B97C9B[];
extern u8 gUnknown_08B9AC39[];
extern u8 gUnknown_08B9AC3A[];
extern u8 gUnknown_08B9D6D7[];
extern u8 gUnknown_08B9D8FF[];
extern u8 gUnknown_08B9EED5[];
extern u8 gUnknown_08B9FD23[];
extern u8 gUnknown_08BA118A[];
extern u8 gUnknown_08BA2A11[];
extern u8 gUnknown_08BA2A12[];
extern u8 gUnknown_08BA7C49[];
extern u8 gUnknown_08BAA34A[];
extern u8 gUnknown_08BB1217[];
extern u8 gUnknown_08BB1BD8[];
extern u8 gUnknown_08BB3DE7[];
extern u8 gUnknown_08BB73AF[];
extern u8 gUnknown_08BB9DF3[];
extern u8 gUnknown_08BBBD27[];
extern u8 gUnknown_08BBC915[];
extern u8 gUnknown_08BBF008[];
extern u8 gUnknown_08BC0199[];
extern u8 gUnknown_08BC3F39[];
extern u8 gUnknown_08BC4BFE[];
extern u8 gUnknown_08BC929E[];
extern u8 gUnknown_08BCF316[];
extern u8 gUnknown_08BD2241[];
extern u8 gUnknown_08BD663A[];
extern u8 gUnknown_08BD6F5E[];
extern u8 gUnknown_08BD70C8[];
extern u8 gUnknown_08BD73FC[];
extern u8 gUnknown_08BD769F[];
extern u8 gUnknown_08BD7DAD[];
extern u8 gUnknown_08BD8AC5[];
extern u8 gUnknown_08BDD1A0[];
extern u8 gUnknown_08BDD8B9[];
extern u8 gUnknown_08BE03F8[];
extern u8 gUnknown_08BE64D6[];
extern u8 gUnknown_08BE6F38[];
extern u8 gUnknown_08BEBC48[];
extern u8 gUnknown_08BEBC49[];
extern u8 gUnknown_08BED237[];
extern u8 gUnknown_08BEEF3E[];
extern u8 gUnknown_08BEFEB5[];
extern u8 gUnknown_08BF020F[];
extern u8 gUnknown_08BF2711[];
extern u8 gUnknown_08BF47D0[];
extern u8 gUnknown_08BF64D0[];
extern u8 gUnknown_08BF7904[];
extern u8 gUnknown_08BF9869[];
extern u8 gUnknown_08BFA42E[];
extern u8 gUnknown_08BFAFB8[];
extern u8 gUnknown_08BFB945[];
extern u8 gUnknown_08BFC1E4[];
extern u8 gUnknown_08BFDABF[];
extern u8 gUnknown_08BFDEC7[];
extern u8 gUnknown_08BFFE84[];
extern u8 gUnknown_08C0175D[];
extern u8 gUnknown_08C02E14[];
extern u8 gUnknown_08C05299[];
extern u8 gUnknown_08C0529A[];
extern u8 gUnknown_08C09A9E[];
extern u8 gUnknown_08C0A476[];
extern u8 gUnknown_08C0C5B5[];
extern u8 gUnknown_08C0E976[];
extern u8 gUnknown_08C0F5F7[];
extern u8 gUnknown_08C12DE7[];
extern u8 gUnknown_08C19228[];
extern u8 gUnknown_08C1A917[];
extern u8 gUnknown_08C1BD9C[];
extern u8 gUnknown_08C1D82E[];
extern u8 gUnknown_08C1F3A8[];
extern u8 gUnknown_08C23937[];
extern u8 gUnknown_08C23E84[];
extern u8 gUnknown_08C25CF4[];
extern u8 gUnknown_08C27A3F[];
extern u8 gUnknown_08C28439[];
extern u8 gUnknown_08C297E6[];
extern u8 gUnknown_08C2BBD3[];
extern u8 gUnknown_08C2EEBD[];
extern u8 gUnknown_08C2FF6D[];
extern u8 gUnknown_08C3188B[];
extern u8 gUnknown_08C31D46[];
extern u8 gUnknown_08C32166[];
extern u8 gUnknown_08C325FC[];
extern u8 gUnknown_08C32B2F[];
extern u8 gUnknown_08C3334F[];
extern u8 gUnknown_08C4C232[];
extern u8 gUnknown_08C53FB2[];
extern u8 gUnknown_08C5D5EB[];
extern u8 gUnknown_08C5FD9E[];
extern u8 gUnknown_08C64E9E[];
extern u8 gUnknown_08C6862E[];
extern u8 gUnknown_08C6D26A[];
extern u8 gUnknown_08C707D2[];
extern u8 gUnknown_08C7552A[];
extern u8 gUnknown_08C7804A[];
extern u8 gUnknown_08C7D5E3[];
extern u8 gUnknown_08C7F89C[];
extern u8 gUnknown_08C81229[];
extern u8 gUnknown_08C83398[];
extern u8 gUnknown_08C8496E[];
extern u8 gUnknown_08C87887[];
extern u8 gUnknown_08C8979D[];
extern u8 gUnknown_08C8A81B[];
extern u8 gUnknown_08C8AF5D[];
extern u8 gUnknown_08C8CE9D[];
extern u8 sfxBossIntro1[];
extern u8 gUnknown_08C970F4[];
extern u8 gUnknown_08C9EC0C[];
extern u8 gUnknown_08CA03F2[];
extern u8 gUnknown_08CA1418[];
extern u8 gUnknown_08CA2A90[];
extern u8 gUnknown_08CA4430[];
extern u8 gUnknown_08CA4431[];
extern u8 gUnknown_08CAD0E3[];
extern u8 gUnknown_08CAEF5E[];
extern u8 gUnknown_08CAEF5F[];
extern u8 gUnknown_08CB18A2[];
extern u8 gUnknown_08CB326A[];
extern u8 gUnknown_08CB7226[];
extern u8 gUnknown_08CBB266[];
extern u8 gUnknown_08CBEBA6[];
extern u8 gUnknown_08CC3C86[];
extern u8 gUnknown_08CC87A6[];
extern u8 gUnknown_08CCCE46[];
extern u8 gUnknown_08CD0EA6[];
extern u8 gUnknown_08CD5526[];
extern u8 gUnknown_08CD5527[];
extern u8 gUnknown_08CD5528[];
extern u8 gUnknown_08CDAFB8[];
extern u8 gUnknown_08CDFDB8[];
extern u8 gUnknown_08CE7BE4[];
extern u8 gUnknown_08CEC044[];
extern u8 gUnknown_08CFB2AF[];
extern u8 gUnknown_08CFB2B0[];
extern u8 gUnknown_08CFFFBF[];
extern u8 gUnknown_08D04F93[];
extern u8 gUnknown_08D0931A[];
extern u8 gUnknown_08D0E1BA[];
extern u8 gUnknown_08D122AA[];
extern u8 gUnknown_08D1306F[];
extern u8 gUnknown_08D17C04[];
extern u8 gUnknown_08D1CFB3[];
extern u8 gUnknown_08D1E402[];
extern u8 gUnknown_08D241F1[];
extern u8 gUnknown_08D294EB[];
extern u8 gUnknown_08D2EEAB[];
extern u8 gUnknown_08D32950[];
extern u8 gUnknown_08D380F5[];
extern u8 gUnknown_08D3D62F[];
extern u8 gUnknown_08D42F92[];
extern u8 gUnknown_08D491B7[];
extern u8 gUnknown_08D4D502[];
extern u8 gUnknown_08D4D503[];
extern u8 gUnknown_08D4E3A0[];
extern u8 gUnknown_08D52983[];
extern u8 gUnknown_08D54DD2[];
extern u8 gUnknown_08D56FB8[];
extern u8 gUnknown_08D5A761[];
extern u8 gUnknown_08D5BA85[];
extern u8 gUnknown_08D5C709[];
extern u8 gUnknown_08D5D451[];
extern u8 gUnknown_08D5FF00[];
extern u8 gUnknown_08D62C0E[];
extern u8 gUnknown_08D65883[];
extern u8 gUnknown_08D689DB[];
extern u8 gUnknown_08D698AA[];
extern u8 gUnknown_08D6B08E[];
extern u8 gUnknown_08D7356D[];
extern u8 gUnknown_08D739A1[];
extern u8 gUnknown_08D73B63[];
extern u8 gUnknown_08D74657[];
extern u8 gUnknown_08D75609[];
extern u8 gUnknown_08D7644C[];
extern u8 gUnknown_08D79836[];

struct SoundEffect gSoundEffectTable[] =
{
    { 0x00C82, CLIMB_8000Hz,           8000, "CLIMB", 128, 0, 1, 0, 0x00C82 },
    { 0x00741, SKID_8000Hz,            8000, "SKID", 128, 0, 0, 0, 0x00741 },
    { 0x0347F, POUND_8000Hz,           8000, "POUND", 90, 0, 0, 0, 0x0347F },
    { 0x00BE8, TUMBLE1_8000Hz,         8000, "TUMBLE1", 128, 3, 0, 0, 0x00BE8 },
    { 0x02D9F, STUN_8000Hz,            8000, "STUN", 128, 3, 0, 0, 0x02D9F },
    { 0x01903, BURN1_8000Hz,           8000, "BURN1", 128, 3, 0, 0, 0x01903 },
    { 0x00EB5, JUMP1_8000Hz,           8000, "JUMP_1", 140, 2, 0, 0, 0x00EB5 },
    { 0x0067A, GRUNT2,                 8000, "GRUNT2", 80, 2, 0, 0, 0x0067A },
    { 0x0217B, JUMP_4_8000Hz,          8000, "JUMP_4", 100, 2, 0, 0, 0x0217B },
    { 0x018B0, JUMP_3_8000Hz,          8000, "JUMP_3", 100, 2, 0, 0, 0x018B0 },
    { 0x00BBC, PICKUP_8000Hz,          8000, "PICKUP", 128, 2, 0, 0, 0x00BBC },
    { 0x01F47, JUMP_5_8000Hz,          8000, "JUMP_5", 100, 2, 0, 0, 0x01F47 },
    { 0x00181, COUNTER_8000Hz,         8000, "COUNTER", 128, 0, 0, 0, 0x00181 },
    { 0x01686, ITEM1_8000Hz,           8000, "ITEM1", 128, 5, 0, 0, 0x01686 },
    { 0x00C80, STEPS2_8000Hz,          8000, "STEPS2", 128, 0, 0, 0, 0x00C80 },
    { 0x00EE0, KEY1_11025Hz,          11025, "KEY1", 60, 8, 0, 0, 0x00EE0 },
    { 0x013FC, CRASH_8000Hz,           8000, "CRASH", 128, 2, 0, 0, 0x013FC },
    { 0x0110C, THROW_8000Hz,           8000, "THROW", 128, 3, 0, 0, 0x0110C },
    { 0x01143, WALK_11025Hz,          11025, "WALK", 128, 0, 0, 0, 0x01143 },
    { 0x02506, PICKUP_CRYSTAL_8000Hz,  8000, "PICKUP_CRYSTAL", 128, 15, 0, 0, 0x02506 },
    { 0x068BB, HERE_WEGO_8000Hz,       8000, "HERE_WEGO", 128, 2, 1, 0, 0x068BB },
    { 0x0362C, LETS_GO_8000Hz,         8000, "LETS_GO", 90, 2, 0, 0, 0x0362C },
    { 0x013FD, BACK_8000Hz,            8000, "BACK", 100, 0, 0, 0, 0x013FD },
    { 0x0056A, CURSOR_E_8000Hz,        8000, "CURSOR_E", 200, 0, 0, 0, 0x0056A },
    { 0x00C15, CURSOR_M_8000Hz,        8000, "CURSOR_M", 50, 0, 0, 0, 0x00C15 },
    { 0x00812, CURSOR_S_8000Hz,        8000, "CURSOR_S", 128, 0, 0, 0, 0x00812 },
    { 0x009D7, gUnknown_08B6308E,      8000, "ERASE", 60, 0, 0, 0, 0x009D7 },
    { 0x006C7, ERROR_8000Hz,           8000, "ERROR", 70, 0, 0, 0, 0x006C7 },
    { 0x00001, EXIT_ED_8000Hz,         8000, "EXIT_ED", 50, 0, 1, 0, 0x00001 },
    { 0x00001, FIELD_8000Hz,           8000, "FIELD", 128, 0, 1, 0, 0x00001 },
    { 0x00001, GRID_8000Hz,            8000, "GRID", 128, 0, 1, 0, 0x00001 },
    { 0x00001, ITEM_8000Hz,            8000, "ITEM", 128, 0, 1, 0, 0x00001 },
    { 0x00001, SELECT_M_8000Hz,        8000, "SELECT_M", 128, 0, 1, 0, 0x00001 },
    { 0x00001, SELECT_S_8000Hz,        8000, "SELECT_S", 128, 0, 1, 0, 0x00001 },
    { 0x00001, STAMP_8000Hz,           8000, "STAMP", 128, 0, 1, 0, 0x00001 },
    { 0x015AD, START_8000Hz,           8000, "START", 90, 15, 0, 0, 0x015AD },
    { 0x00001, BEAM_8000Hz,            8000, "BEAM", 128, 5, 1, 0, 0x00001 },
    { 0x008BF, BURN2_8000Hz,           8000, "BURN2", 128, 0, 0, 0, 0x008BF },
    { 0x00DD4, BLOCK_8000Hz,           8000, "BLOCK", 50, 1, 0, 0, 0x00DD4 },
    { 0x00001, EXIT_8000Hz,            8000, "EXIT", 128, 0, 1, 0, 0x00001 },
    { 0x00F2F, HURT_8000Hz,            8000, "HURT", 128, 4, 0, 0, 0x00F2F },
    { 0x02587, ITEMLAST_8000Hz,        8000, "ITEMLAST", 50, 5, 0, 0, 0x02587 },
    { 0x00854, POUND2_8000Hz,          8000, "POUND2", 128, 2, 0, 0, 0x00854 },
    { 0x00708, SCUFF_8000Hz,           8000, "SCUFF", 128, 0, 0, 0, 0x00708 },
    { 0x03494, SHOCK_8000Hz,           8000, "SHOCK", 128, 14, 0, 0, 0x03494 },
    { 0x0492F, KEY_DOOR_8000Hz,        8000, "KEY_DOOR", 200, 15, 1, 0, 0x0492F },
    { 0x00545, gUnknown_08B72F4A,      8000, "SPIN", 128, 0, 0, 0, 0x00545 },
    { 0x01405, gUnknown_08B7348F,      8000, "SPLAT", 128, 0, 0, 0, 0x01405 },
    { 0x00CF0, gUnknown_08B74894,      8000, "SQUEAK", 80, 4, 0, 0, 0x00CF0 },
    { 0x00001, gUnknown_08B75584,      8000, "UNLOCK", 128, 14, 1, 0, 0x00001 },
    { 0x01502, gUnknown_08B75585,      8000, "WIREJUMP", 85, 2, 0, 0, 0x01502 },
    { 0x00545, gUnknown_08B76A87,      8000, "SPIN_1", 128, 0, 0, 0, 0x00545 },
    { 0x02EC0, gUnknown_08B76FCC,     11025, "ONE_UP", 130, 5, 0, 0, 0x02EC0 },
    { 0x00001, gUnknown_08B79E8C,      8000, "HELP", 128, 0, 1, 0, 0x00001 },
    { 0x00001, gUnknown_08B79E8D,      8000, "SILENCE", 128, 0, 1, 0, 0x00001 },
    { 0x0012A, gUnknown_08B79E8E,      8000, "SKIDSHORT", 128, 0, 0, 0, 0x0012A },
    { 0x03ABF, gUnknown_08B79FB8,     11025, "SWITCH1", 110, 6, 0, 0, 0x03ABF },
    { 0x033CF, gUnknown_08B7DA77,     11025, "SWITCH2", 110, 6, 0, 0, 0x033CF },
    { 0x02F9F, gUnknown_08B80E46,     11025, "SWITCH3", 110, 6, 0, 0, 0x02F9F },
    { 0x01099, gUnknown_08B83DE5,      8000, "BOING", 128, 0, 0, 0, 0x01099 },
    { 0x01C1C, gUnknown_08B84E7E,      8000, "JUMP_6", 100, 3, 0, 0, 0x01C1C },
    { 0x00965, gUnknown_08B86A9A,      8000, "ROPE_UP", 100, 0, 0, 0, 0x00965 },
    { 0x00B59, gUnknown_08B873FF,      8000, "ROPE_DOWN", 128, 0, 0, 0, 0x00B59 },
    { 0x00001, gUnknown_08B87F58,      8000, "DOOR", 150, 3, 1, 0, 0x00001 },
    { 0x00484, gUnknown_08B87F59,      8000, "SCROLL", 100, 0, 0, 0, 0x00483 },
    { 0x0311A, gUnknown_08B883DD,      8000, "RETURN", 100, 0, 0, 0, 0x0311A },
    { 0x00001, gUnknown_08B8B4F7,      8000, "BLANK", 128, 0, 1, 0, 0x00001 },
    { 0x00D16, gUnknown_08B8B4F8,      8000, "LOOK_UP", 65, 0, 0, 0, 0x00D16 },
    { 0x01600, gUnknown_08B8C20E,      8000, "MM_DIE", 100, 4, 0, 0, 0x01600 },
    { 0x00542, gUnknown_08B8D80E,      8000, "MM_BOING", 128, 2, 0, 0, 0x00542 },
    { 0x03999, gUnknown_08B8DD50,      8000, "MM_PROTECT", 128, 3, 0, 0, 0x03999 },
    { 0x0168D, gUnknown_08B916E9,      8000, "CHEST_OPEN", 128, 3, 0, 0, 0x0168D },
    { 0x00E66, gUnknown_08B92D76,      8000, "CHEST_CLOSE", 128, 3, 0, 0, 0x00E66 },
    { 0x02212, gUnknown_08B93BDC,      8000, "OOF", 128, 2, 0, 0, 0x02212 },
    { 0x01EAD, gUnknown_08B95DEE,      8000, "DK_HURT", 170, 15, 0, 0, 0x01EAD },
    { 0x02F9E, gUnknown_08B97C9B,      8000, "DK_BELLOW", 110, 15, 0, 0, 0x02F9E },
    { 0x00001, gUnknown_08B9AC39,      8000, "SLAM2", 200, 15, 1, 0, 0x00001 },
    { 0x02A9D, gUnknown_08B9AC3A,      8000, "FRUIT_FALL", 75, 7, 0, 0, 0x02A9D },
    { 0x00228, gUnknown_08B9D6D7,      8000, "POINTER", 128, 0, 0, 0, 0x00228 },
    { 0x015D6, gUnknown_08B9D8FF,      8000, "CHOOSE", 160, 15, 0, 0, 0x015D6 },
    { 0x00E4E, gUnknown_08B9EED5,      8000, "EMPTY", 128, 0, 0, 0, 0x00E4E },
    { 0x01467, gUnknown_08B9FD23,      8000, "TOY1", 128, 5, 0, 0, 0x01467 },
    { 0x01887, gUnknown_08BA118A,      8000, "TOYLAST", 128, 5, 0, 0, 0x01887 },
    { 0x00001, gUnknown_08BA2A11,      8000, "WARP_OUT", 128, 0, 1, 0, 0x00001 },
    { 0x05237, gUnknown_08BA2A12,      8000, "WARP_IN", 128, 0, 0, 0, 0x05237 },
    { 0x02701, gUnknown_08BA7C49,      8000, "SQUEEZE", 128, 0, 0, 0, 0x02701 },
    { 0x06ECD, gUnknown_08BAA34A,     11025, "GLASS", 175, 0, 0, 0, 0x06ECD },
    { 0x009C1, gUnknown_08BB1217,      8000, "LIFT", 128, 0, 0, 0, 0x009C1 },
    { 0x0220F, gUnknown_08BB1BD8,      8000, "MM_OH_NO", 40, 10, 0, 0, 0x0220F },
    { 0x035C8, gUnknown_08BB3DE7,      8000, "JUMP_7", 100, 0, 0, 0, 0x035C8 },
    { 0x02A44, gUnknown_08BB73AF,      8000, "LEVEL_START", 90, 15, 0, 0, 0x02A44 },
    { 0x01F34, gUnknown_08BB9DF3,      8000, "ELEV_GO", 128, 8, 0, 0, 0x01F34 },
    { 0x00BEE, gUnknown_08BBBD27,      8000, "ELEV_STOP", 160, 8, 0, 0, 0x00BEE },
    { 0x026F3, gUnknown_08BBC915,      8000, "EGG_FALL", 128, 8, 0, 0, 0x026F3 },
    { 0x01191, gUnknown_08BBF008,      8000, "DK_EXIT1", 128, 0, 0, 0, 0x01191 },
    { 0x03DA0, gUnknown_08BC0199,      8000, "DK_BLUBBER", 160, 0, 1, 0, 0x03DA0 },
    { 0x00CC5, gUnknown_08BC3F39,      8000, "MOVIE_02", 100, 0, 1, 0, 0x00CC5 },
    { 0x046A0, gUnknown_08BC4BFE,      8000, "MOVIE_03", 60, 0, 1, 0, 0x046A0 },
    { 0x06078, gUnknown_08BC929E,      8000, "MOVIE_04", 60, 0, 1, 0, 0x06078 },
    { 0x02F2B, gUnknown_08BCF316,      8000, "MOVIE_05", 60, 0, 1, 0, 0x02F2B },
    { 0x043F9, gUnknown_08BD2241,      8000, "MOVIE_06", 60, 0, 1, 0, 0x043F9 },
    { 0x00924, gUnknown_08BD663A,      8000, "KEY2", 65, 0, 0, 0, 0x00924 },
    { 0x0016A, gUnknown_08BD6F5E,     11025, "KEY3", 50, 0, 0, 0, 0x0016A },
    { 0x00334, gUnknown_08BD70C8,      8000, "GRAB_WIRE", 170, 1, 0, 0, 0x00334 },
    { 0x002A3, gUnknown_08BD73FC,      8000, "GRAB_ROPE", 170, 1, 0, 0, 0x002A3 },
    { 0x0070E, gUnknown_08BD769F,      8000, "GRAB_LADDER", 170, 1, 0, 0, 0x0070E },
    { 0x00D18, gUnknown_08BD7DAD,      8000, "CRUSH", 128, 3, 0, 0, 0x00D18 },
    { 0x046DB, gUnknown_08BD8AC5,      8000, "SPITFIRE", 25, 3, 1, 0, 0x046DB },
    { 0x00719, gUnknown_08BDD1A0,      8000, "NINJI", 30, 5, 0, 0, 0x00719 },
    { 0x02B3F, gUnknown_08BDD8B9,      8000, "CRUMBLE", 35, 0, 0, 0, 0x02B3F },
    { 0x060DE, gUnknown_08BE03F8,      8000, "LAVA", 85, 4, 0, 0, 0x060DE },
    { 0x00A62, gUnknown_08BE64D6,      8000, "BUBBLE", 85, 1, 0, 0, 0x00A62 },
    { 0x04D10, gUnknown_08BE6F38,      8000, "FOUNTAIN", 20, 6, 0, 0, 0x04D10 },
    { 0x00001, gUnknown_08BEBC48,      8000, "OUCH", 128, 2, 1, 0, 0x00001 },
    { 0x015EE, gUnknown_08BEBC49,      8000, "RESTART", 128, 1, 0, 0, 0x015EE },
    { 0x01D07, gUnknown_08BED237,      8000, "METALROLL", 35, 3, 0, 0, 0x01D07 },
    { 0x00F77, gUnknown_08BEEF3E,      8000, "SHWING", 85, 4, 0, 0, 0x00F77 },
    { 0x0035A, gUnknown_08BEFEB5,     11025, "KICK", 100, 5, 0, 0, 0x0035A },
    { 0x02502, gUnknown_08BF020F,      8000, "BRICKMAN", 70, 4, 0, 0, 0x02502 },
    { 0x020BF, gUnknown_08BF2711,      8000, "SPIT", 80, 4, 0, 0, 0x020BF },
    { 0x01D00, gUnknown_08BF47D0,     11025, "POP", 110, 8, 0, 0, 0x01D00 },
    { 0x01434, gUnknown_08BF64D0,      8000, "GROWL", 30, 5, 0, 0, 0x01434 },
    { 0x01F65, gUnknown_08BF7904,      8000, "GROWL2", 60, 5, 0, 0, 0x01F65 },
    { 0x00BC5, gUnknown_08BF9869,      8000, "GHOST", 25, 5, 0, 0, 0x00BC5 },
    { 0x00B8A, gUnknown_08BFA42E,      8000, "SHY_WAKE", 50, 5, 0, 0, 0x00B8A },
    { 0x0098D, gUnknown_08BFAFB8,      8000, "SHY_RUN", 50, 4, 0, 0, 0x0098D },
    { 0x0089F, gUnknown_08BFB945,      8000, "BOMB_PEEP", 45, 5, 0, 0, 0x0089F },
    { 0x018DB, gUnknown_08BFC1E4,      8000, "BOMB_JUMP", 45, 5, 0, 0, 0x018DB },
    { 0x00408, gUnknown_08BFDABF,     16000, "BOMB_FLASH", 50, 5, 0, 0, 0x00408 },
    { 0x01FBD, gUnknown_08BFDEC7,      8000, "BOMB_BLOW", 128, 5, 0, 0, 0x01FBD },
    { 0x018D9, gUnknown_08BFFE84,      8000, "VAPORIZE", 110, 5, 0, 0, 0x018D9 },
    { 0x016B7, gUnknown_08C0175D,      8000, "BAT", 127, 5, 0, 0, 0x016B7 },
    { 0x02485, gUnknown_08C02E14,      8000, "CANNON", 127, 5, 0, 0, 0x02485 },
    { 0x00001, gUnknown_08C05299,      8000, "CROUCH", 127, 3, 1, 0, 0x00001 },
    { 0x04804, gUnknown_08C0529A,      8000, "SCATTER", 127, 0, 0, 0, 0x04804 },
    { 0x009D8, gUnknown_08C09A9E,      8000, "REACH", 127, 2, 0, 0, 0x009D8 },
    { 0x0213F, gUnknown_08C0A476,      8000, "DK_HEAD", 127, 0, 0, 0, 0x0213F },
    { 0x023C1, gUnknown_08C0C5B5,      8000, "GOTCHA", 127, 0, 0, 0, 0x023C1 },
    { 0x00C81, gUnknown_08C0E976,      8000, "TOAD_WALK", 100, 13, 0, 0, 0x00C81 },
    { 0x037F0, gUnknown_08C0F5F7,      8000, "TOAD_TOSS", 127, 13, 0, 0, 0x037F0 },
    { 0x06441, gUnknown_08C12DE7,     11025, "BOX_FALL", 127, 0, 0, 0, 0x06441 },
    { 0x016EF, gUnknown_08C19228,     11025, "SPARKY_LOOP", 60, 4, 0, 0, 0x016EF },
    { 0x01485, gUnknown_08C1A917,      8000, "DK_BLUB", 127, 4, 0, 0, 0x01485 },
    { 0x01A92, gUnknown_08C1BD9C,      8000, "YANK", 150, 6, 0, 0, 0x01A92 },
    { 0x01B7A, gUnknown_08C1D82E,      8000, "SPIKE", 50, 6, 0, 0, 0x01B7A },
    { 0x0458F, gUnknown_08C1F3A8,      8000, "BONE", 127, 5, 0, 0, 0x0458F },
    { 0x0054D, gUnknown_08C23937,      8000, "MM_BOINGUP", 127, 0, 0, 0, 0x0054D },
    { 0x01E70, gUnknown_08C23E84,      8000, "LASER", 16, 13, 0, 0, 0x01E70 },
    { 0x01D4B, gUnknown_08C25CF4,      8000, "DK_JUMP", 127, 8, 0, 0, 0x01D4B },
    { 0x009FA, gUnknown_08C27A3F,      8000, "JUMP_8", 120, 2, 0, 0, 0x009FA },
    { 0x013AD, gUnknown_08C28439,      8000, "TRASHCAN", 100, 5, 0, 0, 0x013AD },
    { 0x023ED, gUnknown_08C297E6,      8000, "KEY_TOAD", 127, 8, 1, 0, 0x023ED },
    { 0x032EA, gUnknown_08C2BBD3,     11025, "SHATTER", 140, 8, 0, 0, 0x032EA },
    { 0x010B0, gUnknown_08C2EEBD,      8000, "TOAD_CARRY", 127, 13, 0, 0, 0x010B0 },
    { 0x0191E, gUnknown_08C2FF6D,      8000, "TOAD_SET", 127, 13, 0, 0, 0x0191E },
    { 0x004BB, gUnknown_08C3188B,      8000, "JUMP_A", 80, 2, 0, 0, 0x004BB },
    { 0x00420, gUnknown_08C31D46,      8000, "JUMP_B", 80, 2, 0, 0, 0x00420 },
    { 0x00496, gUnknown_08C32166,      8000, "JUMP_C", 80, 2, 0, 0, 0x00496 },
    { 0x00533, gUnknown_08C325FC,      8000, "JUMP_D", 80, 2, 0, 0, 0x00533 },
    { 0x00820, gUnknown_08C32B2F,      8000, "SHUFFLE", 127, 2, 0, 0, 0x00820 },
    { 0x18EE3, gUnknown_08C3334F,      8000, "MOVIE_07", 60, 0, 1, 0, 0x18EE3 },
    { 0x07D80, gUnknown_08C4C232,      8000, "MOVIE_01", 60, 0, 1, 0, 0x07D80 },
    { 0x09639, gUnknown_08C53FB2,      8000, "MINI_KEY", 127, 15, 0, 0, 0x09639 },
    { 0x027B3, gUnknown_08C5D5EB,      8000, "MOVIE2_1", 80, 0, 1, 0, 0x027B3 },
    { 0x05100, gUnknown_08C5FD9E,      8000, "MOVIE2_2", 127, 0, 1, 0, 0x05100 },
    { 0x03790, gUnknown_08C64E9E,      8000, "MOVIE2_3", 80, 0, 1, 0, 0x03790 },
    { 0x04C3C, gUnknown_08C6862E,      8000, "MOVIE2_4", 127, 0, 1, 0, 0x04C3C },
    { 0x03568, gUnknown_08C6D26A,      8000, "MOVIE2_5", 127, 0, 1, 0, 0x03568 },
    { 0x04D58, gUnknown_08C707D2,      8000, "MOVIE2_6", 80, 0, 1, 0, 0x04D58 },
    { 0x02B20, gUnknown_08C7552A,      8000, "MOVIE2_7", 100, 0, 1, 0, 0x02B20 },
    { 0x05599, gUnknown_08C7804A,      8000, "MOVIE2_8", 100, 0, 1, 0, 0x05599 },
    { 0x022B9, gUnknown_08C7D5E3,      8000, "BOSS_ARM", 127, 0, 0, 0, 0x022B9 },
    { 0x0198D, gUnknown_08C7F89C,      8000, "BOSS_ARM2", 127, 0, 0, 0, 0x0198D },
    { 0x0216F, gUnknown_08C81229,      8000, "BOSS_ARM3", 127, 0, 0, 0, 0x0216F },
    { 0x015D6, gUnknown_08C83398,      8000, "BOSS_ARM4", 127, 0, 0, 0, 0x015D6 },
    { 0x02F19, gUnknown_08C8496E,      8000, "BOSS_ARM5", 127, 0, 0, 0, 0x02F19 },
    { 0x01F16, gUnknown_08C87887,     11025, "BOSS_SWITCH", 110, 0, 0, 0, 0x01F16 },
    { 0x0107E, gUnknown_08C8979D,      8000, "CURSOR_WORLD", 128, 0, 0, 0, 0x0107E },
    { 0x00742, gUnknown_08C8A81B,      8000, "CURSOR_UP_DN", 80, 0, 0, 0, 0x00742 },
    { 0x01F40, gUnknown_08C8AF5D,      8000, "BOSS_DIE1", 127, 0, 0, 0, 0x01F40 },
    { 0x06220, gUnknown_08C8CE9D,      8000, "BOSS_DIE2", 127, 0, 0, 12288, 0x06180 },
    { 0x04037, sfxBossIntro1,          8000, "BOSS_INTRO1", 100, 2, 0, 0, 0x04037 },
    { 0x07B18, gUnknown_08C970F4,      8000, "BOSS_INTRO3", 100, 2, 0, 0, 0x07B18 },
    { 0x017E6, gUnknown_08C9EC0C,      8000, "PLUS_MAIN", 127, 0, 0, 0, 0x017E6 },
    { 0x01026, gUnknown_08CA03F2,      8000, "BARREL", 90, 0, 0, 0, 0x01026 },
    { 0x01678, gUnknown_08CA1418,      8000, "SPIKE_HIT", 160, 5, 0, 0, 0x01678 },
    { 0x019A0, gUnknown_08CA2A90,      8000, "BIGBARREL_HIT", 192, 0, 0, 0, 0x019A0 },
    { 0x00001, gUnknown_08CA4430,      8000, "BIGBARREL_FALL", 0, 0, 1, 0, 0x00001 },
    { 0x08CB2, gUnknown_08CA4431,      8000, "TOADS_JUMP", 160, 0, 0, 0, 0x08CB2 },
    { 0x01E7B, gUnknown_08CAD0E3,      8000, "TOADS_GRAB", 127, 10, 0, 0, 0x01E7B },
    { 0x00001, gUnknown_08CAEF5E,      8000, "MOVIE3_01", 0, 0, 1, 0, 0x00001 },
    { 0x02943, gUnknown_08CAEF5F,      8000, "MOVIE3_02", 127, 0, 1, 0, 0x02943 },
    { 0x019C8, gUnknown_08CB18A2,      8000, "MOVIE3_03", 127, 0, 1, 0, 0x019C8 },
    { 0x03FBC, gUnknown_08CB326A,      8000, "MOVIE3_04", 127, 0, 1, 0, 0x03FBC },
    { 0x04040, gUnknown_08CB7226,      8000, "MOVIE3_05", 127, 0, 1, 0, 0x04040 },
    { 0x03940, gUnknown_08CBB266,      8000, "MOVIE3_06", 127, 0, 1, 0, 0x03940 },
    { 0x050E0, gUnknown_08CBEBA6,      8000, "MOVIE3_07", 127, 0, 1, 0, 0x050E0 },
    { 0x04B20, gUnknown_08CC3C86,      8000, "MOVIE3_08", 127, 0, 1, 0, 0x04B20 },
    { 0x046A0, gUnknown_08CC87A6,      8000, "MOVIE3_09", 127, 0, 1, 0, 0x046A0 },
    { 0x04060, gUnknown_08CCCE46,      8000, "MOVIE3_10", 127, 0, 1, 0, 0x04060 },
    { 0x04680, gUnknown_08CD0EA6,      8000, "MOVIE3_11", 127, 0, 1, 0, 0x04680 },
    { 0x00001, gUnknown_08CD5526,      8000, "MOVIE3_12", 127, 0, 1, 0, 0x00001 },
    { 0x00001, gUnknown_08CD5527,      8000, "MOVIE3_13", 127, 0, 1, 0, 0x00001 },
    { 0x05A90, gUnknown_08CD5528,      8000, "MOVIE3_14", 160, 0, 1, 0, 0x05A90 },
    { 0x04E00, gUnknown_08CDAFB8,      8000, "MOVIE4_01", 127, 0, 1, 0, 0x04E00 },
    { 0x07E2C, gUnknown_08CDFDB8,      8000, "MOVIE4_02", 127, 0, 1, 0, 0x07E2C },
    { 0x04460, gUnknown_08CE7BE4,      8000, "MOVIE4_03", 127, 0, 1, 0, 0x04460 },
    { 0x0F26B, gUnknown_08CEC044,      8000, "MOVIE4_04", 127, 0, 1, 0, 0x0F26B },
    { 0x00001, gUnknown_08CFB2AF,      8000, "MOVIE4_06", 127, 0, 1, 0, 0x00001 },
    { 0x04D0F, gUnknown_08CFB2B0,      8000, "MOVIE4_07", 127, 0, 1, 0, 0x04D0F },
    { 0x04FD4, gUnknown_08CFFFBF,      8000, "MOVIE4_08", 127, 0, 1, 0, 0x04FD4 },
    { 0x04387, gUnknown_08D04F93,      8000, "MOVIE4_09", 127, 0, 1, 0, 0x04387 },
    { 0x04EA0, gUnknown_08D0931A,      8000, "MOVIE4_10", 127, 0, 1, 0, 0x04EA0 },
    { 0x040F0, gUnknown_08D0E1BA,      8000, "MOVIE5_01", 127, 0, 1, 0, 0x040F0 },
    { 0x00DC5, gUnknown_08D122AA,      8000, "MOVIE5_05", 127, 0, 1, 0, 0x00DC5 },
    { 0x04B95, gUnknown_08D1306F,      8000, "MOVIE5_07", 127, 0, 1, 0, 0x04B95 },
    { 0x053AF, gUnknown_08D17C04,      8000, "MOVIE6_01", 127, 0, 1, 0, 0x053AF },
    { 0x0144F, gUnknown_08D1CFB3,      8000, "MOVIE6_02", 127, 0, 1, 0, 0x0144F },
    { 0x05DEF, gUnknown_08D1E402,      8000, "MOVIE6_03", 127, 0, 1, 0, 0x05DEF },
    { 0x052FA, gUnknown_08D241F1,      8000, "MOVIE6_04", 127, 0, 1, 0, 0x052FA },
    { 0x059C0, gUnknown_08D294EB,      8000, "MOVIE6_05", 127, 0, 1, 0, 0x059C0 },
    { 0x03AA5, gUnknown_08D2EEAB,      8000, "MOVIE6_06", 127, 0, 1, 0, 0x03AA5 },
    { 0x057A5, gUnknown_08D32950,      8000, "MOVIE6_07", 127, 0, 1, 0, 0x057A5 },
    { 0x0553A, gUnknown_08D380F5,      8000, "MOVIE6_08", 127, 0, 1, 0, 0x0553A },
    { 0x05963, gUnknown_08D3D62F,      8000, "MOVIE6_09", 127, 0, 1, 0, 0x05963 },
    { 0x06225, gUnknown_08D42F92,      8000, "MOVIE6_10", 127, 0, 1, 0, 0x06225 },
    { 0x0434B, gUnknown_08D491B7,      8000, "MOVIE2_9", 100, 0, 1, 0, 0x0434B },
    { 0x00001, gUnknown_08D4D502,      8000, "MOVIE2_10", 0, 0, 1, 0, 0x00001 },
    { 0x00E9D, gUnknown_08D4D503,      8000, "MOVIE_08", 110, 0, 1, 0, 0x00E9D },
    { 0x045E3, gUnknown_08D4E3A0,      8000, "TITLE", 128, 15, 0, 0, 0x045E3 },
    { 0x0244F, gUnknown_08D52983,      8000, "YOU_WON1", 115, 15, 0, 0, 0x0244F },
    { 0x021E6, gUnknown_08D54DD2,      8000, "YOU_WON2", 115, 15, 0, 0, 0x021E6 },
    { 0x037A9, gUnknown_08D56FB8,      8000, "YOU_WON3", 115, 15, 0, 0, 0x037A9 },
    { 0x01324, gUnknown_08D5A761,      8000, "STAR", 150, 0, 0, 0, 0x01324 },
    { 0x00C84, gUnknown_08D5BA85,      8000, "DK_WALK", 40, 0, 0, 0, 0x00C84 },
    { 0x00D48, gUnknown_08D5C709,      8000, "SCUFF2", 128, 0, 1, 0, 0x00D48 },
    { 0x02AAF, gUnknown_08D5D451,      8000, "WORLD_START", 128, 0, 0, 0, 0x02AAF },
    { 0x02D0E, gUnknown_08D5FF00,      8000, "MM_WAKEUP", 128, 2, 0, 0, 0x02D0E },
    { 0x02C75, gUnknown_08D62C0E,      8000, "MM_FREE", 140, 2, 0, 0, 0x02C75 },
    { 0x03158, gUnknown_08D65883,      8000, "MM_MAMAMIAS", 100, 2, 0, 0, 0x03158 },
    { 0x00ECF, gUnknown_08D689DB,      8000, "SPIKE_VANISH", 128, 2, 0, 0, 0x00ECF },
    { 0x017E4, gUnknown_08D698AA,      8000, "SPIKE_APPEAR", 128, 2, 0, 0, 0x017E4 },
    { 0x084DF, gUnknown_08D6B08E,      8000, "BOSS_DIE3", 200, 2, 0, 0, 0x084DF },
    { 0x00434, gUnknown_08D7356D,      8000, "BARREL_BOUNCE", 128, 2, 0, 0, 0x00434 },
    { 0x001C2, gUnknown_08D739A1,      8000, "ROCK_BOUNCE", 128, 2, 0, 0, 0x001C2 },
    { 0x00AF4, gUnknown_08D73B63,     11025, "MM_WALK", 128, 2, 0, 0, 0x00AF4 },
    { 0x00FB2, gUnknown_08D74657,      8000, "DK_GRUNT", 140, 2, 0, 0, 0x00FB2 },
    { 0x00E43, gUnknown_08D75609,      8000, "RIBBON", 128, 2, 0, 0, 0x00E43 },
    { 0x033EA, gUnknown_08D7644C,      8000, "WON_TEXT", 40, 2, 0, 0, 0x033EA },
    { 0x018D5, gUnknown_08D79836,      8000, "DK_FALL", 128, 2, 0, 0, 0x018D5 },
};
