#include "gba/gba.h"
#include "global.h"

struct MusicPattern  // pattern?
{
    u32 length;  // length of pattern in ticks
    u32 offset;  // offset to note data from beginning of file
};

struct MusicFile
{
    u8 filler0[0x34];  // name
    u16 unk34;  // number of patterns?
    u16 unk36;
    u16 unk38;
    u16 unk3A;
    u8 filler3C[0x3E - 0x3C];
    /*0x03E*/ u16 tickLength;
    u16 unk40;
    u8 filler42[2];
    /*0x044*/ u8 patternOrder[0x144-0x44];
    /*0x144*/ s16 instrumentIDs[(0x244-0x144)/2];
    u8 unk244[16][2];
    u8 filler264[0x284-0x264];
    /*0x284*/ struct MusicPattern patterns[1];
};

struct SoundWork_sub3
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 unk4;
    u32 unk8;
    u32 unkC;  // sample rate
    /*0x10*/ struct SoundEffect *soundEffect;
};

struct SoundBuffers
{
    u8 sndBufA[0x120];
    u8 sndBufB[0x120];
};

struct Struct08072750
{
    //u16 unk0[0][2];
    struct { u16 unk0, unk2; } unk0[0];
    u8 filler0[0x30];
    u8 unk30;
    u8 unk31;
    u8 filler32[0x33-0x32];
    u8 unk33;
    u8 unk34;
    u8 unk35;
    u16 unk36[1];  // TODO: extend
};

static_assert(sizeof(struct Struct08072750) == 0x38, size38);

struct Instrument_sub
{
    u8 filler0[0xC];
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 fillerF;
    u8 unk10;
    s8 unk11;
    u8 filler12[0x28-0x12];  // name?
    u8 unk28;
    u8 filler29[0x30-0x29];
};

struct Instrument  // size = 0x13C?
{
    char name[0x10];
    u8 unk10;
    u8 filler11[0x16-0x11];
    u8 unk16;
    u8 unk17;
    u8 filler18[0x1B-0x18];
    u8 unk1B[0x94-0x1B];
    struct Struct08072750 unk94;
    u8 fillerCC[0xE4-0xCC];
    struct Struct08072750 unkE4;
    u8 filler11C[0x134-0x11C];
    u16 unk134;
    u8 filler136[2];
    struct Instrument_sub *unk138;
};

static_assert(offsetof(struct Instrument, unk138) == 0x138, offset138);

extern struct Instrument gInstruments[];

struct MusicChannel_sub
{
    u16 unk0;
    u8 unk2;
    u16 unk4;
};

// Music voice/channel?
struct MusicChannel
{
    struct MusicChannel_sub unk0;
    struct MusicChannel_sub unk8;
    /*0x10*/ u8 currNote;
    /*0x11*/ u8 prevNote;
    /*0x12*/ u8 instrumentIndex;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    s8 unk1C;
    u8 unk1D;
    u16 unk1E;
    u32 unk20;
    s8 unk24;
    /*0x25*/ u8 prevHdrByte;
    s16 unk26;
    s16 unk28;
    s16 unk2A;
    s8 unk2C;
    s8 unk2D;
    s8 unk2E;
    s8 unk2F;
    u16 unk30;
    u16 unk32;
    u8 unk34[1];  // array?
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 unk38;
    u8 unk39;
    u8 unk3A;
    u8 unk3B;
    /*0x3C*/ struct Instrument *instrument;
    struct Instrument_sub *unk40;
    u8 unk44;
    u8 unk45;
    u16 unk46;
    s16 unk48;
    s16 unk4A;
};

struct SoundWork_sub2
{
    struct MusicFile *unk0;  // data of currently playing song
    struct MusicChannel channels[16];
    struct MusicChannel *unk4C4[8];
    /*0x4E4*/ u8 *noteDataPtr;  // ptr to note data?
    /*0x4E8*/ s16 volume;
    s16 unk4EA;
    /*0x4EC*/ s16 tickLength;
    u16 unk4EE;
    s16 unk4F0;
    /*0x4F2*/ s16 unk4F2;
    u16 unk4F4;
    /*0x4F6*/ s16 currPatternTick;
    /*0x4F8*/ s16 unk4F8;
    u8 unk4FA;
    u8 unk4FB;
    u32 unk4FC;
    u32 unk500;
    u32 unk504;
    s32 unk508;
    s32 unk50C;
    u8 unk510[1];
};  // unknown size

struct SoundWork
{
    u8 unk0;
    u8 unk1;
    /*0x02*/ u8 updateTimer;  // timer until next buffer reload?
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u32 unkC;
    struct SoundBuffers unk10[2];
    u8 filler490[0x6D0-0x490];
    u8 unk6D0[0xB50-0x6D0];
    /*0xB50*/ u8 codeBuf1[0xE8];  // ARM code buffer
    /*0xC38*/ u8 codeBuf2[0x390];  // ARM code buffer
    struct SoundWork_sub2 unkFC8;  // music state?
    u8 filler14C4[0x14DC-0xFC8-sizeof(struct SoundWork_sub2)];
    struct SoundWork_sub3 unk14DC[1];  // variable length (by unk0) sound effect state?
};

void sub_080728F0(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072A04(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072A88(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072B10(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072BA8(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072C74(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072D54(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072E64(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08072F2C(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_0807394C(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_080739B0(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08073A34(struct MusicChannel *arg0, void *arg1, int arg2);
void sub_08073AAC(struct MusicChannel *arg0, void *arg1, int arg2);

u16 gUnknown_08B3961C[] =
{
    16726, 16741, 16756, 16771, 16786, 16801, 16816, 16832,
    16847, 16862, 16877, 16892, 16908, 16923, 16938, 16953,
    16969, 16984, 16999, 17015, 17030, 17046, 17061, 17076,
    17092, 17107, 17123, 17138, 17154, 17169, 17185, 17200,
    17216, 17231, 17247, 17262, 17278, 17293, 17309, 17325,
    17340, 17356, 17372, 17387, 17403, 17419, 17435, 17450,
    17466, 17482, 17498, 17513, 17529, 17545, 17561, 17577,
    17593, 17608, 17624, 17640, 17656, 17672, 17688, 17704,
    17720, 17736, 17752, 17768, 17784, 17800, 17816, 17832,
    17848, 17865, 17881, 17897, 17913, 17929, 17945, 17962,
    17978, 17994, 18010, 18027, 18043, 18059, 18075, 18092,
    18108, 18124, 18141, 18157, 18174, 18190, 18206, 18223,
    18239, 18256, 18272, 18289, 18305, 18322, 18338, 18355,
    18372, 18388, 18405, 18421, 18438, 18455, 18471, 18488,
    18505, 18521, 18538, 18555, 18572, 18588, 18605, 18622,
    18639, 18656, 18672, 18689, 18706, 18723, 18740, 18757,
    18774, 18791, 18808, 18825, 18842, 18859, 18876, 18893,
    18910, 18927, 18944, 18961, 18978, 18995, 19013, 19030,
    19047, 19064, 19081, 19099, 19116, 19133, 19150, 19168,
    19185, 19202, 19220, 19237, 19254, 19272, 19289, 19306,
    19324, 19341, 19359, 19376, 19394, 19411, 19429, 19446,
    19464, 19482, 19499, 19517, 19534, 19552, 19570, 19587,
    19605, 19623, 19640, 19658, 19676, 19694, 19711, 19729,
    19747, 19765, 19783, 19801, 19819, 19836, 19854, 19872,
    19890, 19908, 19926, 19944, 19962, 19980, 19998, 20016,
    20034, 20052, 20071, 20089, 20107, 20125, 20143, 20161,
    20179, 20198, 20216, 20234, 20252, 20271, 20289, 20307,
    20326, 20344, 20362, 20381, 20399, 20418, 20436, 20455,
    20473, 20492, 20510, 20529, 20547, 20566, 20584, 20603,
    20621, 20640, 20659, 20677, 20696, 20715, 20733, 20752,
    20771, 20790, 20808, 20827, 20846, 20865, 20884, 20902,
    20921, 20940, 20959, 20978, 20997, 21016, 21035, 21054,
    21073, 21092, 21111, 21130, 21149, 21168, 21187, 21206,
    21226, 21245, 21264, 21283, 21302, 21322, 21341, 21360,
    21379, 21399, 21418, 21437, 21457, 21476, 21496, 21515,
    21534, 21554, 21573, 21593, 21612, 21632, 21651, 21671,
    21690, 21710, 21730, 21749, 21769, 21789, 21808, 21828,
    21848, 21867, 21887, 21907, 21927, 21946, 21966, 21986,
    22006, 22026, 22046, 22066, 22086, 22105, 22125, 22145,
    22165, 22185, 22205, 22226, 22246, 22266, 22286, 22306,
    22326, 22346, 22366, 22387, 22407, 22427, 22447, 22468,
    22488, 22508, 22528, 22549, 22569, 22590, 22610, 22630,
    22651, 22671, 22692, 22712, 22733, 22753, 22774, 22794,
    22815, 22836, 22856, 22877, 22897, 22918, 22939, 22960,
    22980, 23001, 23022, 23043, 23063, 23084, 23105, 23126,
    23147, 23168, 23189, 23210, 23230, 23251, 23272, 23293,
    23315, 23336, 23357, 23378, 23399, 23420, 23441, 23462,
    23483, 23505, 23526, 23547, 23568, 23590, 23611, 23632,
    23654, 23675, 23696, 23718, 23739, 23761, 23782, 23804,
    23825, 23847, 23868, 23890, 23911, 23933, 23954, 23976,
    23998, 24019, 24041, 24063, 24084, 24106, 24128, 24150,
    24172, 24193, 24215, 24237, 24259, 24281, 24303, 24325,
    24347, 24369, 24391, 24413, 24435, 24457, 24479, 24501,
    24523, 24545, 24567, 24590, 24612, 24634, 24656, 24679,
    24701, 24723, 24746, 24768, 24790, 24813, 24835, 24857,
    24880, 24902, 24925, 24947, 24970, 24992, 25015, 25038,
    25060, 25083, 25105, 25128, 25151, 25174, 25196, 25219,
    25242, 25265, 25287, 25310, 25333, 25356, 25379, 25402,
    25425, 25448, 25471, 25494, 25517, 25540, 25563, 25586,
    25609, 25632, 25655, 25678, 25702, 25725, 25748, 25771,
    25795, 25818, 25841, 25864, 25888, 25911, 25935, 25958,
    25981, 26005, 26028, 26052, 26075, 26099, 26123, 26146,
    26170, 26193, 26217, 26241, 26264, 26288, 26312, 26336,
    26359, 26383, 26407, 26431, 26455, 26479, 26502, 26526,
    26550, 26574, 26598, 26622, 26646, 26670, 26695, 26719,
    26743, 26767, 26791, 26815, 26839, 26864, 26888, 26912,
    26937, 26961, 26985, 27010, 27034, 27058, 27083, 27107,
    27132, 27156, 27181, 27205, 27230, 27254, 27279, 27304,
    27328, 27353, 27378, 27402, 27427, 27452, 27477, 27502,
    27526, 27551, 27576, 27601, 27626, 27651, 27676, 27701,
    27726, 27751, 27776, 27801, 27826, 27851, 27876, 27902,
    27927, 27952, 27977, 28003, 28028, 28053, 28078, 28104,
    28129, 28155, 28180, 28205, 28231, 28256, 28282, 28307,
    28333, 28359, 28384, 28410, 28435, 28461, 28487, 28513,
    28538, 28564, 28590, 28616, 28642, 28667, 28693, 28719,
    28745, 28771, 28797, 28823, 28849, 28875, 28901, 28927,
    28953, 28980, 29006, 29032, 29058, 29084, 29111, 29137,
    29163, 29190, 29216, 29242, 29269, 29295, 29322, 29348,
    29375, 29401, 29428, 29454, 29481, 29507, 29534, 29561,
    29587, 29614, 29641, 29668, 29694, 29721, 29748, 29775,
    29802, 29829, 29856, 29883, 29910, 29937, 29964, 29991,
    30018, 30045, 30072, 30099, 30126, 30154, 30181, 30208,
    30235, 30263, 30290, 30317, 30345, 30372, 30400, 30427,
    30454, 30482, 30509, 30537, 30565, 30592, 30620, 30647,
    30675, 30703, 30731, 30758, 30786, 30814, 30842, 30870,
    30897, 30925, 30953, 30981, 31009, 31037, 31065, 31093,
    31121, 31149, 31178, 31206, 31234, 31262, 31290, 31319,
    31347, 31375, 31403, 31432, 31460, 31489, 31517, 31546,
    31574, 31602, 31631, 31660, 31688, 31717, 31745, 31774,
    31803, 31832, 31860, 31889, 31918, 31947, 31975, 32004,
    32033, 32062, 32091, 32120, 32149, 32178, 32207, 32236,
    32265, 32295, 32324, 32353, 32382, 32411, 32441, 32470,
    32499, 32529, 32558, 32587, 32617, 32646, 32676, 32705,
    32735, 32764, 32794, 32823, 32853, 32883, 32912, 32942,
    32972, 33002, 33031, 33061, 33091, 33121, 33151, 33181,
    33211, 33241, 33271, 33301, 33331, 33361, 33391, 33421,
};

s32 gUnknown_08B39C1C[][64] =
{
    {
             0,   6423,  12785,  19023,  25079,  30893,  36409,  41575,
         46341,  50659,  54491,  57797,  60547,  62714,  64277,  65220,
         65536,  65220,  64277,  62714,  60547,  57797,  54491,  50659,
         46341,  41575,  36409,  30893,  25079,  19023,  12785,   6423,
             0,  -6423, -12785, -19023, -25079, -30893, -36409, -41575,
        -46341, -50659, -54491, -57797, -60547, -62714, -64277, -65220,
        -65536, -65220, -64277, -62714, -60547, -57797, -54491, -50659,
        -46341, -41575, -36409, -30893, -25079, -19023, -12785,  -6423,
    },
    {
         65536,  65536,  65536,  65536,  65536,  65536,  65536,  65536,
         65536,  65536,  65536,  65536,  65536,  65536,  65536,  65536,
         65536,  65536,  65536,  65536,  65536,  65536,  65536,  65536,
         65536,  65536,  65536,  65536,  65536,  65536,  65536,  65536,
        -65536, -65536, -65536, -65536, -65536, -65536, -65536, -65536,
        -65536, -65536, -65536, -65536, -65536, -65536, -65536, -65536,
        -65536, -65536, -65536, -65536, -65536, -65536, -65536, -65536,
        -65536, -65536, -65536, -65536, -65536, -65536, -65536, -65536,
    },
    {
             0,   2048,   4096,   6144,   8192,  10240,  12288,  14336,
         16384,  18432,  20480,  22528,  24576,  26624,  28672,  30720,
         32768,  34816,  36864,  38912,  40960,  43008,  45056,  47104,
         49152,  51200,  53248,  55296,  57344,  59392,  61440,  -2048,
        -63488, -61440, -59392, -57344, -55296, -53248, -51200, -49152,
        -47104, -45056, -43008, -40960, -38912, -36864, -34816, -32768,
        -30720, -28672, -26624, -24576, -22528, -20480, -18432, -16384,
        -14336, -12288, -10240,  -8192,  -6144,  -4096,  -2048,      0,
    },
};

u8 gUnknown_08B39F1C[] =
{
    8,
    0,
    1,
    2,
    3,
    8,
    8,
    5,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    6,
    8,
    8,
    7,
    4,
    8,
    8,
    0,
    0,
    0,
};

u32 gUnknown_08B39F48[] =
{
    0x000,
    0x100,
    0x200,
    0x001,
    0x101,
    0x201,
    0x002,
    0x102,
    0x202,
    0x003,
    0x103,
    0x203,
    0x004,
    0x104,
    0x204,
    0x005,
    0x105,
    0x205,
    0x006,
    0x106,
    0x206,
    0x007,
    0x107,
    0x207,
    0x008,
    0x108,
    0x208,
    0x009,
    0x109,
    0x209,
    0x00A,
};

u32 gUnknown_08B39FC4[] =
{
    0x000,
    0x040,
    0x080,
    0x0C0,
    0x100,
    0x140,
    0x180,
    0x1C0,
    0x200,
    0x240,
    0x280,
    0x2C0,
    0x300,
    0x340,
    0x380,
    0x3C0,
};

// effect functions?
void (*gUnknown_08B3A004[])(struct MusicChannel *, void *, int) =
{
    sub_080728F0,
    sub_08072A04,
    sub_08072A88,
    sub_08072B10,
    sub_08072BA8,
    sub_08072C74,
    sub_08072D54,
    sub_08072E64,
    sub_0807394C,
    sub_0807394C,
    sub_08072F2C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_0807394C,
    sub_080739B0,
    sub_0807394C,
    sub_0807394C,
    sub_08073A34,
    sub_08073AAC,
    sub_0807394C,
    sub_0807394C,
};

u16 gUnknown_08B3A0A8[] =
{
      0,   1,   3,   5,   7,   9,  11,  13,
     15,  17,  19,  21,  22,  24,  26,  28,
     30,  31,  33,  35,  36,  38,  40,  41,
     43,  45,  46,  48,  49,  51,  52,  54,
     56,  57,  58,  60,  61,  63,  64,  66,
     67,  68,  70,  71,  72,  74,  75,  76,
     78,  79,  80,  81,  82,  84,  85,  86,
     87,  88,  89,  90,  91,  92,  93,  94,
     96,  96,  97,  98,  99, 100, 101, 102,
    103, 104, 105, 106, 106, 107, 108, 109,
    110, 110, 111, 112, 112, 113, 114, 114,
    115, 116, 116, 117, 117, 118, 118, 119,
    120, 120, 120, 121, 121, 122, 122, 123,
    123, 123, 124, 124, 124, 125, 125, 125,
    126, 126, 126, 126, 126, 127, 127, 127,
    127, 127, 127, 127, 127, 127, 127, 127,
    128, 129, 130, 131, 132, 133, 134, 135,
    136, 137, 138, 139, 140, 141, 142, 143,
    144, 145, 146, 147, 148, 149, 150, 151,
    152, 153, 154, 155, 156, 157, 158, 159,
    160, 161, 162, 163, 164, 165, 166, 167,
    168, 169, 170, 171, 172, 173, 174, 175,
    176, 177, 178, 179, 180, 181, 182, 183,
    184, 185, 186, 187, 188, 189, 190, 191,
    192, 193, 194, 195, 196, 197, 198, 199,
    200, 201, 202, 203, 204, 205, 206, 207,
    208, 209, 210, 211, 212, 213, 214, 215,
    216, 217, 218, 219, 220, 221, 222, 223,
    224, 225, 226, 227, 228, 229, 230, 231,
    232, 233, 234, 235, 236, 237, 238, 239,
    240, 241, 242, 243, 244, 245, 246, 247,
    248, 249, 250, 251, 252, 253, 254, 255,
    256, 257, 258, 259, 260, 261, 262, 263,
    264, 265, 266, 267, 268, 269, 270, 271,
    272, 273, 274, 275, 276, 277, 278, 279,
    280, 281, 282, 283, 284, 285, 286, 287,
    288, 289, 290, 291, 292, 293, 294, 295,
    296, 297, 298, 299, 300, 301, 302, 303,
    304, 305, 306, 307, 308, 309, 310, 311,
    312, 313, 314, 315, 316, 317, 318, 319,
    320, 321, 322, 323, 324, 325, 326, 327,
    328, 329, 330, 331, 332, 333, 334, 335,
    336, 337, 338, 339, 340, 341, 342, 343,
    344, 345, 346, 347, 348, 349, 350, 351,
    352, 353, 354, 355, 356, 357, 358, 359,
    360, 361, 362, 363, 364, 365, 366, 367,
    368, 369, 370, 371, 372, 373, 374, 375,
    376, 377, 378, 379, 380, 381, 382, 383,
    384, 385, 386, 387, 388, 389, 390, 391,
    392, 393, 394, 395, 396, 397, 398, 399,
    400, 401, 402, 403, 404, 405, 406, 407,
    408, 409, 410, 411, 412, 413, 414, 415,
    416, 417, 418, 419, 420, 421, 422, 423,
    424, 425, 426, 427, 428, 429, 430, 431,
    432, 433, 434, 435, 436, 437, 438, 439,
    440, 441, 442, 443, 444, 445, 446, 447,
    448, 449, 450, 451, 452, 453, 454, 455,
    456, 457, 458, 459, 460, 461, 462, 463,
    464, 465, 466, 467, 468, 469, 470, 471,
    472, 473, 474, 475, 476, 477, 478, 479,
    480, 481, 482, 483, 484, 485, 486, 487,
    488, 489, 490, 491, 492, 493, 494, 495,
    496, 497, 498, 499, 500, 501, 502, 503,
    504, 505, 506, 507, 508, 509, 510, 511,
    512,   0,
};

struct Struct08B3A4AC
{
    /*0x00*/ volatile u16 *lenEnvReg;
    /*0x04*/ volatile u16 *freqReg;
    u16 unk8;
    u16 unused;
};

struct Struct08B3A4AC gUnknown_08B3A4AC[] =
{
    { &REG_SOUND1CNT_H, &REG_SOUND1CNT_X, 0xF800, 0x07FF },
    { &REG_SOUND2CNT_L, &REG_SOUND2CNT_H, 0xF800, 0x07FF },
    { &REG_SOUND3CNT_H, &REG_SOUND3CNT_X, 0xF800, 0x07FF },
    { &REG_SOUND4CNT_L, &REG_SOUND4CNT_H, 0xFFFF, 0x0000 },
};

// ARM code
extern u8 sound_arm_1_start[];
extern u8 arm_update_sound_dma_transfer[];
extern u8 arm_load_sound_16bit_to_8bit[];
extern u8 sound_arm_2_start[];
extern u8 sub_08001968[];

extern void (*ptr_arm_clear_audio_buffer)(void *, int);
extern void (*gUnknown_03001EE4)();
extern void (*ptr_arm_update_sound_dma_transfer)(void);
extern void (*ptr_arm_load_sound_16bit_to_8bit)();
extern void (*gUnknown_03001EFC)();
extern u32 gUnknown_03001F00;
extern u32 gUnknown_03001F04;
extern u32 gUnknown_03001F08;
extern struct SoundWork *gSoundWork;

void sub_080714B8(struct SoundWork_sub3 *arg0, void *arg1, int arg2);
int sub_080715B8(struct SoundWork_sub3 *arg0, void *arg1, int arg2);
void sub_08071E7C(u8 arg0, u8 arg1);
void init_sound_mem(u8 *, int);
void *alloc_sound_mem(int size);
void reset_sound_mem(void);
void sub_080731C4(struct SoundWork_sub2 *arg0, struct MusicChannel *arg1);
void sub_08073464(struct MusicChannel *arg0);
void sub_080734F8(struct SoundWork_sub2 *arg0, void *arg1);
void sub_080735D0(struct SoundWork_sub2 *arg0);
int sub_080736A0(struct SoundWork_sub2 *arg0, void *dest, int length);
void sub_0807387C(struct SoundWork_sub2 *arg0, int arg1, int arg2, u8 *arg3);
void sub_080738D4(struct SoundWork_sub2 *arg0, int arg1);
void sub_08073914(struct SoundWork_sub2 *arg0, int arg1);
void sub_08073B18(void);
void sub_08073E1C(void);

#define DMA_FLAGS (DMA_ENABLE | DMA_INTR_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD)

struct Struct080714B8
{
    void *unk0;
    void *samplePtr;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
};

void sub_080714B8(struct SoundWork_sub3 *arg0, void *arg1, int arg2)
{
    int r8 = arg0->soundEffect->sampleSize << 14;
    int r2 = arg0->unk3;
    u32 r3 = arg0->unk2;
    int r5 = (s32)((128 - r3) * r2) >> 7;
    int r7, r6;
    u8 r0;
    struct SoundEffect *se;
    struct Struct080714B8 sp0;

    r6 = arg0->unk1;
    r7 = 128 - arg0->unk1;

    r6 = (r6 * r5) >> 7;
    r7 = (r7 * r5) >> 7;

    if (r3 > 4)
    {
        u32 temp = sub_080715B8(arg0, arg1, arg2);
        if (r5 == 0)
        {
            if (temp >= r8)
                arg0->unk0 = 0;
            else
                arg0->unk8 = temp;
            return;
        }
    }
    se = arg0->soundEffect;
    r7 = gUnknown_08B3A0A8[r7];
    r6 = gUnknown_08B3A0A8[r6];

    sp0.unk0 = arg1;
    sp0.samplePtr = se->samplePtr;
    sp0.unk8 = arg0->unk8;
    sp0.unkC = arg0->unkC;
    r0 = arg0->unk0 & 4;
    if (r0 != 0)
    {
        int temp = se->unk18;
        sp0.unk10 = temp << 14;
        sp0.unk14 = (temp - se->unk14) << 15;
    }
    else
    {
        sp0.unk10 = r8;
        sp0.unk14 = r0;
    }
    sp0.unk18 = arg2;
    sp0.unk1C = r7;
    sp0.unk20 = r6;
    gUnknown_03001EE4(&sp0);
    arg0->unk8 = sp0.unk8;
    if (arg0->unk8 >= r8)
    {
        arg0->unk0 = 0;
        sub_08073914(&gSoundWork->unkFC8, arg0 - gSoundWork->unk14DC);
    }
}

int sub_080715B8(struct SoundWork_sub3 *arg0, void *arg1, int arg2)
{
    struct SoundEffect *se = arg0->soundEffect;
    int r12 = se->sampleSize << 14;
    int r2 = arg0->unk3;
    int r3 = arg0->unk2;
    int r4 = (r2 * r3) >> 7;
    int r5;
    int r6;
    u8 r0;
    struct Struct080714B8 sp0;

    r5 = 128 - arg0->unk1;
    r5 = (r5 >> 1) + 64;

    r6 = arg0->unk1;
    r6 = (r6 >> 1) + 64;

    r5 = (r5 * r4) >> 7;
    r6 = (r6 * r4) >> 7;

    r5 = gUnknown_08B3A0A8[r5];
    r6 = -gUnknown_08B3A0A8[r6];

    sp0.unk0 = arg1;
    sp0.samplePtr = se->samplePtr;
    sp0.unk8 = 0x1000 + arg0->unk8;
    sp0.unkC = arg0->unkC;

    r0 = arg0->unk0 & 4;
    if (r0 != 0)
    {
        int temp = se->unk18;
        sp0.unk10 = temp << 14;
        sp0.unk14 = (temp - se->unk14) << 15;
    }
    else
    {
        sp0.unk10 = r12;
        sp0.unk14 = r0;
    }
    sp0.unk18 = arg2;
    sp0.unk1C = r5;
    sp0.unk20 = r6;
    gUnknown_03001EE4(&sp0);
    sp0.unk8 -= 0x1000;
    return sp0.unk8;
}

void sound_init(void *buffer, int bufferSize, int arg2, int arg3, int arg4)
{
    u8 *codeBuf1;
    u8 *codeBuf2;

    if (arg2 == 0)
        arg2 = 1;

    init_sound_mem(buffer, bufferSize);
    gSoundWork = alloc_sound_mem(sizeof(struct SoundWork) + (arg2 - 1) * sizeof(struct SoundWork_sub3));
    gSoundWork->unkFC8.unk4FB = arg4;

    ptr_arm_clear_audio_buffer = (void *)codeBuf1 = (void *)gSoundWork->codeBuf1;
    DmaCopy16(3, sound_arm_1_start, codeBuf1, 0xE8);
    ptr_arm_load_sound_16bit_to_8bit  = (void *)(codeBuf1 + (arm_load_sound_16bit_to_8bit - sound_arm_1_start));
    ptr_arm_update_sound_dma_transfer = (void *)(codeBuf1 + (arm_update_sound_dma_transfer - sound_arm_1_start));

    gUnknown_03001EE4 = (void *)codeBuf2 = gSoundWork->codeBuf2;
    DmaCopy16(3, sound_arm_2_start, codeBuf2, 0x390);
    gUnknown_03001EFC = (void *)((u8 *)codeBuf2 + (sub_08001968 - sound_arm_2_start));

    gSoundWork->unk0 = arg2;
    gSoundWork->unk4 = arg4;
    gSoundWork->unk3 = arg3;
    gSoundWork->unk1 = 18;
    gSoundWork->unk8 = gSoundWork->unk6 = gSoundWork->unk7 = 2;
    gSoundWork->unk5 = 0;
    gSoundWork->updateTimer = 18;
    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE;
    REG_SOUNDCNT_L = 0;
    REG_SOUNDCNT_H = SOUND_A_MIX_FULL | SOUND_A_LEFT_OUTPUT | SOUND_A_TIMER_1 | SOUND_A_FIFO_RESET
                   | SOUND_B_MIX_FULL | SOUND_B_RIGHT_OUTPUT | SOUND_B_TIMER_1 | SOUND_B_FIFO_RESET;
    REG_DMA1DAD = (u32)&REG_FIFO_A;
    REG_DMA2DAD = (u32)&REG_FIFO_B;
    REG_DMA1SAD = (u32)gSoundWork->unk10[gSoundWork->unk6].sndBufA;
    REG_DMA2SAD = (u32)gSoundWork->unk10[gSoundWork->unk6].sndBufB;
    REG_DMA1CNT = (DMA_FLAGS << 16) | 4;
    REG_DMA2CNT = (DMA_FLAGS << 16) | 4;
    REG_TM1CNT = ((TIMER_ENABLE | TIMER_1CLK) << 16) | 0xFC00;
    REG_IE |= INTR_FLAG_DMA1 | INTR_FLAG_DMA2;
    sub_08073B18();
}

void sub_08071800(void)
{
    u8 *src;
    u32 length;
    void *bufA;
    void *bufB;
    int sp4;
    u32 i;
    u32 r5;

    if (gSoundWork == NULL)
        return;  // not initialized
    if (gSoundWork->unk1 & 1)
        return;
    if (gSoundWork->unk1 & 8)
        return;
    r5 = gSoundWork->unk5;
    src = gSoundWork->unk6D0;
    bufA = gSoundWork->unk10[r5].sndBufA;
    bufB = gSoundWork->unk10[r5].sndBufB;
    sp4 = gUnknown_03001F00;
    length = 0x120;
    gSoundWork->unk1 |= 8;
    ptr_arm_clear_audio_buffer(src, length);
    if (gSoundWork->unkFC8.unk4F2 != -1 && gSoundWork->unkFC8.unk0 != NULL)
    {
        u32 pos = 0;
        while (pos < length)
            pos += sub_080736A0(&gSoundWork->unkFC8, src + pos * 4, length - pos);
    }
    for (i = 0; i < gSoundWork->unk0; i++)
    {
        struct SoundWork_sub3 *r2 = &gSoundWork->unk14DC[i];

        if ((r2->unk0 & 3) && (r2->unk0 & 1))
            sub_080714B8(r2, src, length);
    }
    ptr_arm_load_sound_16bit_to_8bit(src, bufA, bufB, length);
    gSoundWork->unk8 = r5;
    r5++;
    if (r5 > 2)
        r5 = 0;
    gSoundWork->unk5 = r5;
    gUnknown_03001F04 = gUnknown_03001F00 - sp4;
    gUnknown_03001F08 += gUnknown_03001F04;
    gSoundWork->unk1 &= ~8;
}

void sub_0807194C(void)
{
    if (gSoundWork == NULL)
        return;
    if (gSoundWork->unk1 & 2)
    {
        gSoundWork->unk1 &= ~3;
        gSoundWork->unk7 = gSoundWork->unk8;
    }
    else
    {
        gSoundWork->unk1 |= 1;
        if (!(gSoundWork->unk1 & 4))
            sound_enable_dma_transfer();
    }
}

int play_sound_effect_08071990(int soundID, u8 arg1, u8 arg2, u8 arg3, u8 arg4, u32 arg5, int sampleRate)
{
    struct SoundWork_sub3 *r9 = NULL;
    u32 r10 = gSoundWork->unk0;
    int spC = FALSE;
    struct SoundEffect *se = &gSoundEffectTable[soundID];
    u8 r7;
    struct SoundWork_sub3 *r3;
    struct SoundWork_sub3 *r4;
    int i;

    if (arg2 > 15)
        arg2 = se->unk12;
    if (!(gSoundWork->unk1 & 0x10))
    {
        arg3 = 64;
        arg4 = 0;
    }
    if (se->sampleSize == 1)
    {
        sub_08071E7C(arg2, 0);
        goto error;
    }

    arg2 <<= 4;
    r7 = arg2;

    r3 = gSoundWork->unk14DC;

    if (sampleRate == 0)
        sampleRate = se->sampleRate;
    else if (sampleRate > 0)
        sampleRate = (sampleRate * se->sampleRate) >> 13;
    else if (sampleRate < 0)
        sampleRate = -sampleRate;

    arg5 = arg5 * se->unk10 >> 7;

    if (arg1 & 24)
    {
        for (i = 0; i < r10; i++, r3++)
        {
            r4 = r3;
            if (r4->unk0 & 3)
            {
                u8 r1 = r4->unk0 & 240;
                if (r3->soundEffect == se)
                {
                    if (!(arg1 & 8))
                        return r3->unk4;
                    r9 = r4;
                    break;
                }
                if (!spC && r1 < r7)
                {
                    r7 = r1;
                    r9 = r4;
                }
            }
            else if (!spC)
            {
                r9 = r4;
                spC = TRUE;
            }
        }
        if (r9 == NULL)
            goto error;
        r4 = r9;
        r4->soundEffect = se;
        r4->unk0 = 1;
        r4->unk0 |= (arg1 & 4) | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (sampleRate << 14) >> 14;
        r4->unk4 = gSoundWork->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gSoundWork->unkFC8, r4 - gSoundWork->unk14DC);
        return r4->unk4;
    }
    else
    {
        for (i = 0; i < r10; i++, r3++)
        {
            if (r3->unk0 & 3)
            {
                u8 r0 = r3->unk0 & 240;
                if (r0 < r7)
                {
                    r7 = r0;
                    r9 = r3;
                }
            }
            else
            {
                r9 = r3;
                break;
            }
        }
        if (r9 == NULL)
            return -1;
        r4 = r9;
        r4->soundEffect = se;
        r4->unk0 = 1;
        r4->unk0 |= arg1 | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (sampleRate << 14) >> 14;
        r4->unk4 = gSoundWork->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gSoundWork->unkFC8, r4 - gSoundWork->unk14DC);
        return r4->unk4;
    }

error:
    return -1;
}

void sound_update_dma_transfer(void)
{
    ptr_arm_update_sound_dma_transfer();
}

void sound_disable_dma_transfer(void)
{
    REG_DMA1CNT = 0;
    REG_DMA2CNT = 0;
    gSoundWork->unk1 |= 4;
}

void sound_enable_dma_transfer(void)
{
    gSoundWork->unk1 &= ~4;
    REG_DMA1CNT = (DMA_FLAGS << 16) | 4;
    REG_DMA2CNT = (DMA_FLAGS << 16) | 4;
}

void sub_08071C24(void)
{
    int i;

    for (i = 0; i < gSoundWork->unk0; i++)
    {
        gSoundWork->unk14DC[i].unk0 = 0;
        sub_08073914(&gSoundWork->unkFC8, i);
    }
}

void sub_08071C6C(int soundID)
{
    int i;
    struct SoundEffect *se = &gSoundEffectTable[soundID];

    for (i = 0; i < gSoundWork->unk0; i++)
    {
        if (gSoundWork->unk14DC[i].soundEffect != se)
        {
            gSoundWork->unk14DC[i].unk0 = 0;
            sub_08073914(&gSoundWork->unkFC8, i);
        }
    }
}

void sub_08071CD4(void)
{
    int i;

    for (i = 0; i < gSoundWork->unk0; i++)
    {
        if (gSoundWork->unk14DC[i].unk0 & 4)
        {
            gSoundWork->unk14DC[i].unk0 = 0;
            sub_08073914(&gSoundWork->unkFC8, i);
        }
    }
}

static inline struct SoundWork_sub3 *testinline2(int arg0)
{
    int i;
    u8 r4 = gSoundWork->unk0;
    struct SoundWork_sub3 *r3 = gSoundWork->unk14DC;
    int index;

    for (i = 0; i < r4; i++, r3++)
    {
        if ((r3->unk0 & 3) && r3->unk4 == arg0)
            return r3;
    }
    return NULL;
}

int sub_08071D28(int arg0, int arg1, int arg2)
{
    struct SoundWork_sub3 *r3 = testinline2(arg0);

    if (r3 == NULL)
        return -1;
    if (!(gSoundWork->unk1 & 0x10))
    {
        arg1 = 64;
        arg2 = 0;
    }
    r3->unk1 = arg1;
    r3->unk2 = arg2;
    return arg0;
}

void sub_08071D9C(int arg0)
{
    struct SoundWork_sub3 *r3 = testinline2(arg0);
    int index;

    if (r3 == NULL)
        return;
    index = r3 - gSoundWork->unk14DC;
    r3->unk0 = 0;
    sub_08073914(&gSoundWork->unkFC8, index);
}

void sub_08071E14(int soundID)
{
    int r7 = 1;
    int i;
    struct SoundEffect *se = &gSoundEffectTable[soundID];
    struct SoundWork_sub3 *r4 = gSoundWork->unk14DC;
    u8 r6 = gSoundWork->unk0;

    for (i = 0; i < r6; i++, r4++)
    {
        if ((r4->unk0 & r7) == r7 && r4->soundEffect == se)
        {
            r4->unk0 = 0;
            sub_08073914(&gSoundWork->unkFC8, i);
        }
    }
}

void sub_08071E7C(u8 arg0, u8 arg1)
{
    int r7 = 1;
    int i;
    struct SoundWork_sub3 *r4 = gSoundWork->unk14DC;
    u8 r6 = gSoundWork->unk0;

    arg0 <<= 4;
    if (arg1 == 0)
        r7 = 5;
    for (i = 0; i < r6; i++, r4++)
    {
        register u32 r0 asm("r0");
        if ((r7 & r4->unk0) == r7 && (r0 = (r4->unk0 & 0xF0)) == arg0)
        {
            r4->unk0 = 0;
            sub_08073914(&gSoundWork->unkFC8, i);
        }
    }
}

void sound_finish(void)
{
    REG_DMA1CNT = 0;
    REG_DMA2CNT = 0;
    REG_SOUNDCNT_X = 0;
    REG_TM1CNT = 0;
    reset_sound_mem();
    gSoundWork = NULL;
}

void sub_08071F10(void *arg0)
{
    sub_080734F8(&gSoundWork->unkFC8, arg0);
}

void sub_08071F2C(void *arg0)
{
    sub_080734F8(&gSoundWork->unkFC8, arg0);
}

void sub_08071F48(void)
{
    sub_080735D0(&gSoundWork->unkFC8);
}

u32 get_song_volume(u32 bgmID)
{
    return gMusicTable[bgmID].volume;
}

void *get_song_data(u32 bgmID)
{
    return gMusicTable[bgmID].data;
}

u8 *sub_08071F8C(u32 bgmID)
{
    return gMusicTable[bgmID].unk6;
}

void sub_08071FA0(void *arg0, int arg1, int arg2, void *arg3)
{
    sub_080734F8(&gSoundWork->unkFC8, arg0);
    sub_0807387C(&gSoundWork->unkFC8, arg1, arg2, arg3);
}

int get_current_bgm(void)
{
    int i;

    if (sub_08072144() != 0)
        return -1;
    for (i = 0; i < gUnknown_08D7B10C; i++)
    {
        if (gSoundWork->unkFC8.unk0 == gMusicTable[i].data)
            return i;
    }
    return -2;
}

void *sub_08072038(void)
{
    return gSoundWork->unkFC8.unk0;
}

void play_bgm(int bgmID, int volume, int arg2)
{
    sub_080734F8(&gSoundWork->unkFC8, gMusicTable[bgmID].data);
    volume = (gMusicTable[bgmID].volume * volume) >> 7;
    sub_0807387C(&gSoundWork->unkFC8, volume, arg2, gMusicTable[bgmID].unk6);
}

void sub_080720AC(void)
{
    if (gSoundWork->unkFC8.unk4F2 >= 0)
        gSoundWork->unkFC8.unk4F8 = gSoundWork->unkFC8.unk4F2;
    gSoundWork->unkFC8.unk4F2 = -2;
}

void sub_080720E4(void)
{
    if (gSoundWork->unkFC8.unk4F2 >= 0)
    {
        gSoundWork->unkFC8.unk4F8 = gSoundWork->unkFC8.unk4F2;
        gSoundWork->unkFC8.unk4F2 = -1;
    }
}

void sub_08072118(void)
{
    if (gSoundWork->unkFC8.unk4F2 == -1)
        gSoundWork->unkFC8.unk4F2 = gSoundWork->unkFC8.unk4F8;
}

int sub_08072144(void)
{
    return (gSoundWork->unkFC8.unk4F2 == -2);
}

int sub_0807216C(void)
{
    int i;
    u8 r1 = gSoundWork->unk0;
    int r4 = 0;
    struct SoundWork_sub3 *r3 = gSoundWork->unk14DC;

    for (i = 0; i < r1; i++, r3++)
    {
        if (r3->unk0 & 3)
            r4++;
    }
    return r4;
}

int sub_080721A8(int arg0)
{
    return (testinline2(arg0) == NULL);
}

u8 sub_080721F8(void)
{
    return (gSoundWork->unk1 & 0x10) >> 4;
}

void sub_0807220C(int arg0)
{
    gSoundWork->unk1 &= ~0x10;
    gSoundWork->unk1 |= arg0 << 4;
}

// Memory allocation

// TODO: static variables
extern u32 sSoundMemMaxSize;
extern u8 *sSoundMemHead;
extern u32 sSoundMemSize;

void init_sound_mem(u8 *arg0, int arg1)
{
    int i;

    sSoundMemHead = arg0;
    sSoundMemMaxSize = arg1;
    sSoundMemSize = 0;
    for (i = 0; i < sSoundMemMaxSize; i++)
        sSoundMemHead[i] = 0;
}

void *alloc_sound_mem(int size)
{
    u8 *mem = sSoundMemHead + sSoundMemSize;

    if (sSoundMemSize + size > sSoundMemMaxSize)
        return NULL;
    sSoundMemSize += size;
    return mem;
}

void reset_sound_mem(void)
{
    sSoundMemHead = NULL;
}

int sub_080722A8(struct SoundWork_sub2 *arg0, struct MusicChannel *arg1)
{
    int r5 = arg1->unk1D;
    struct MusicChannel **r6 = arg0->unk4C4;
    int index = -1;
    int i;

    if (arg0->unk4FA <= arg0->unk4FB)
    {
        index = arg1 - arg0->channels;
        if ((u32)r6[index] == 1)
            return 0;
    }
    else
    {
        for (i = 0; i < arg0->unk4FB; i++)
        {
            struct MusicChannel *r0 = r6[i];

            if (r0 == NULL)
            {
                index = i;
                break;
            }
            if ((u32)r0 != 1 && r0->unk1D < r5)
            {
                r5 = r0->unk1D;
                index = i;
            }
        }
    }
    if (index >= 0)
    {
        if (r6[index] != NULL)
            r6[index]->unk1D &= ~1;
        r6[index] = arg1;
        arg1->unk1D |= 1;
        return 1;
    }
    return 0;
}

#ifdef NONMATCHING
static inline u32 stupid(u8 *r5)
{
    u32 r1 = *r5;
    u32 r0 = 0xFF;
    asm(""::"r"(r0));
    r0 &= r1;
    return r0;
}

int play_notes(struct SoundWork_sub2 *arg0)
{
    struct MusicChannel *channels = arg0->channels;
    int sp8 = 0;
    u8 *r5 = arg0->noteDataPtr;
    int r2;
    u8 r12_;
    /*u16*/s16 note;
    struct MusicChannel *chan;
    //u8 *spC;
    int hdrByte;
    //int r1;

    while ((r12_ = *r5++) != 0)
    {
        u8 chanID = (r12_ & 0x3F) - 1;
        if (chanID > 15)
            continue;
        sp8 |= 1 << chanID;
        //chan = &arg0->unk4[chanID];
        chan = &channels[chanID];
        if (r12_ & 0x80)
        {
            hdrByte = *r5++;
            //spC = &chan->prevHdrByte;
        }
        else
        {
            hdrByte = chan->prevHdrByte;
            //spC = &chan->prevHdrByte;
        }
        //_080723DA
        r2 = gUnknown_08B39F1C[chan->unk18];
        if (r2 < 8 && chan->unk1A != 0)
            chan->unk34[r2] = chan->unk1A;
        //_080723F6
        chan->unk1A = 0;
        chan->unk18 = 0;
        chan->unk14 = 0;
        chan->instrumentIndex = 0;
        chan->currNote = 0;
        chan->unk16 = -128;
        if (hdrByte & 2)
        {
            chan->instrumentIndex = *r5;
            chan->unk13 = stupid(r5);
            r5++;
            //r5++;
        }
        else
        {
            if (hdrByte & 0x20)
                chan->instrumentIndex = chan->unk13;
            else
                goto _08072498;
        }
        //_08072436
        //r1 = arg0->unk0->instrumentIDs[chan->instrumentIndex - 1];
        chan->instrument = &gInstruments[arg0->unk0->instrumentIDs[chan->instrumentIndex - 1]];
        if (chan->instrument->unk17 & 0x80)
            chan->unk2D = chan->instrument->unk17 & 0x7F;
        //_08072472
        if (chan->unk40 != NULL)
        {
            struct Instrument_sub *r2 = chan->unk40;

            chan->unk2C = r2->unkC;
            chan->unk24 = r2->unkC;
            if (!(chan->unk40->unk10 & 0x80))
                chan->unk2D = chan->unk40->unk10;
        }
        //_08072498

    _08072498:
        if (hdrByte & 4)
        {
            chan->unk14 = *r5;
            chan->unk15 = stupid(r5);  // 0xFF
            r5++;

            chan->unk16 = *r5;
            chan->unk17 = stupid(r5);  // 0xFF
            r5++;
        }
        //_080724C4
        else if (hdrByte & 0x40)
        {
            chan->unk14 = chan->unk15;
            chan->unk16 = chan->unk17;
        }

        //_080724D6
        if (hdrByte & 8)  // effect?
        {
            //int r2;

            chan->unk18 = *r5;
            chan->unk19 = stupid(r5);
            r5++;
            chan->unk1A = *r5;
            chan->unk1B = stupid(r5);
            r5++;
            r2 = gUnknown_08B39F1C[chan->unk18];
            if (r2 <= 7 && chan->unk1A == 0)
            {
                chan->unk1A = chan->unk34[r2];
            }
            //to _08072528
        }
        //_08072516
        else if (hdrByte & 0x80)
        {
            chan->unk18 = chan->unk19;
            chan->unk1A = chan->unk1B;
        }

        //_08072528
        if (hdrByte & 1)  // note?
        {
            chan->currNote = *r5;
            chan->prevNote = stupid(r5);
            r5++;
            //to _08072552
        }
        //_08072542
        else
        {
            if (hdrByte & 0x10)
                chan->currNote = chan->prevNote;
            else
                goto _080726FA;
        }

        //_08072552
        if (chan->currNote <= 120)
        {
            s16 r2;

            note = chan->currNote;
            if (chan->unk18 == 3 || chan->unk18 == 5)
            {
                int asdf;
                asdf = (s16)note - 12;
                r2 = chan->unk40->unk11 + asdf;
                chan->unk2A = 0x1E00 - (r2<<6) - (chan->unk1C >> 1) + 64;
                //to _080726E8
            }
            //_08072590
            else
            {
                //s16 r2;
                if (chan->instrument != NULL)
                {
                    int zero;  // r7
                    struct { u16 unk0; u8 unk2; u16 unk4; } *asdf;
                    struct Instrument *r3_;
                    int r1;
                    struct Instrument_sub *r6;


                    r3_ = chan->instrument;
                    r1 = r3_->unk1B[note];
                    r6 = &r3_->unk138[r1];
                    if (r3_->unk17 & 0x80)
                        chan->unk2D = r3_->unk17 & 0x7F;
                    if (r6->unk28 <= 2)
                        chan->unk46 = 0;
                    else
                        chan->unk46 = -1;
                    zero = 0;
                    chan->unk20 = zero;
                    chan->unk1E = 1;
                    chan->unk40 = r6;
                    if (!(r6->unk10 & 0x80))
                        chan->unk2D = r6->unk10;
                    //_08072604
                    chan->unk2C = r6->unkC;
                    chan->unk1C = r6->unkE;
                    chan->unk2F = (chan->unk2E * r3_->unk16) >> 6;
                    chan->unk2F = (chan->unk2F * r6->unkD) >> 6;
                    asdf = (void *)&chan->unk0;
                    asdf->unk0 = 0x4000;
                    asdf->unk2 = asdf->unk4 = zero;
                    asdf++;
                    asdf->unk0 = 0x2000;
                    asdf->unk2 = asdf->unk4 = zero;
                    asm(""::"r"(zero));
                    asm(""::"r"(zero));
                    /*
                    chan->unk0 = 0x4000;
                    chan->unk4 = 0;
                    chan->unk2 = 0;
                    //asm(""::"r"(&chan->unk8));
                    #if 0
                    asdf = &chan->unk8;
                    asdf->unk0 = 0x2000;
                    asdf->unk4 = 0;
                    asdf->unk2 = 0;
                    #else
                    chan->unk8 = 0x2000;
                    chan->unkC = 0;
                    chan->unkA = 0;
                    #endif
                    */
                    note += chan->unk40->unk11;
                }
                //_08072660
                r2 = note - 12;
                chan->unk30 = -1;
                chan->unk32 = 0;
                //r2 = (note - 12) << 6;
                //r2 = ((note << 16) + 0xFFF40000) >> 10;

                chan->unk28 = chan->unk26 = 0x1E00 - (r2 << 6) - chan->unk1C / 2 + 64;
                chan->unk24 = chan->unk2C;
                if (chan->unk1D & 1)
                    chan->unk1D = (chan->unk2C << 1) | 1;
                    //to _080726E8
                else
                {
                    chan->unk1D = chan->unk2C << 1;
                    sub_080722A8(arg0, chan);
                }
            }
            //to _080726E8
        }
        //_080726C4
        else if (chan->currNote == 121)  // stop note
        {
            if (chan->instrument != 0)
                chan->unk32 = (chan->instrument->unk134 << 1) | 1;
        }
        //_080726E0
        else
            chan->unk2C = 0;
        //_080726E8
        if (chan->unk18 == 4 || chan->unk18 == 6)
            chan->unk46 = -1;
    _080726FA:
        if (!(chan->unk16 & 0x80))
            chan->unk2D = chan->unk16;
        sub_080731C4(arg0, chan);
        sub_08073464(chan);
        chan->prevHdrByte = hdrByte;
    }
    //_08072728
    arg0->unk4FC = sp8;
    arg0->noteDataPtr = r5;
    // missing return?
}
#else
__attribute__((naked))
int play_notes(struct SoundWork_sub2 *arg0)
{
    asm(
    "push {r4-r7,lr}\n\
	mov r7, r10\n\
	mov r6, r9\n\
	mov r5, r8\n\
	push {r5-r7}\n\
	sub sp, sp, #16\n\
	str r0, [sp]\n\
	add r1, r0, #0\n\
	add r1, r1, #4\n\
	str r1, [sp, #4]\n\
	mov r2, #0\n\
	str r2, [sp, #8]\n\
	ldr r3, _080723CC  @ =0x000004E4\n\
	add r1, r0, r3\n\
	ldr r5, [r1]\n\
	ldrb r2, [r5]\n\
	add r5, r5, #1\n\
	cmp r2, #0\n\
	bne _08072390\n\
	b _08072728\n\
_08072390:\n\
	mov r6, #0\n\
	mov r10, r6\n\
_08072394:  @ loop start\n\
	mov r1, #63\n\
	and r1, r1, r2\n\
	sub r1, r1, #1\n\
	lsl r1, r1, #24\n\
	lsr r1, r1, #24\n\
	cmp r1, #15\n\
	bls _080723A4\n\
	b _0807271E  @ continue\n\
_080723A4:\n\
	mov r0, #1\n\
	lsl r0, r0, r1\n\
	ldr r3, [sp, #8]\n\
	orr r3, r3, r0\n\
	str r3, [sp, #8]\n\
	mov r0, #76\n\
	mul r0, r1, r0\n\
	ldr r6, [sp, #4]\n\
	add r4, r6, r0\n\
	mov r0, #128\n\
	and r2, r2, r0\n\
	cmp r2, #0\n\
	beq _080723D0\n\
	ldrb r1, [r5]\n\
	mov r8, r1\n\
	add r5, r5, #1\n\
	add r2, r4, #0\n\
	add r2, r2, #37\n\
	str r2, [sp, #12]\n\
	b _080723DA\n\
_080723CC:\n\
	.4byte 0x000004E4\n\
_080723D0:\n\
	add r0, r4, #0\n\
	add r0, r0, #37\n\
	ldrb r3, [r0]\n\
	mov r8, r3\n\
	str r0, [sp, #12]\n\
_080723DA:\n\
	ldr r1, _08072424  @ =gUnknown_08B39F1C\n\
	ldrb r0, [r4, #24]\n\
	add r0, r0, r1\n\
	ldrb r2, [r0]\n\
	add r6, r1, #0\n\
	cmp r2, #7\n\
	bgt _080723F6\n\
	ldrb r1, [r4, #26]\n\
	cmp r1, #0\n\
	beq _080723F6\n\
	add r0, r4, #0\n\
	add r0, r0, #52\n\
	add r0, r0, r2\n\
	strb r1, [r0]\n\
_080723F6:\n\
	mov r0, r10\n\
	strb r0, [r4, #26]\n\
	strb r0, [r4, #24]\n\
	strb r0, [r4, #20]\n\
	strb r0, [r4, #18]\n\
	strb r0, [r4, #16]\n\
	mov r1, #128\n\
	neg r1, r1\n\
	strb r1, [r4, #22]\n\
	mov r0, #2\n\
	mov r2, r8\n\
	and r0, r0, r2\n\
	cmp r0, #0\n\
	beq _08072428\n\
	ldrb r0, [r5]\n\
	strb r0, [r4, #18]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #19]\n\
	add r5, r5, #1\n\
	b _08072436\n\
	.byte 0x00\n\
	.byte 0x00\n\
_08072424:\n\
	.4byte gUnknown_08B39F1C\n\
_08072428:\n\
	mov r0, #32\n\
	mov r3, r8\n\
	and r0, r0, r3\n\
	cmp r0, #0\n\
	beq _08072498\n\
	ldrb r0, [r4, #19]\n\
	strb r0, [r4, #18]\n\
_08072436:\n\
	ldr r0, [sp]\n\
	ldr r1, [r0]  @ arg0->data\n\
	ldrb r0, [r4, #18]\n\
	sub r0, r0, #1\n\
	lsl r0, r0, #1\n\
	mov r2, #162\n\
	lsl r2, r2, #1  @ 0x144\n\
	add r1, r1, r2\n\
	add r1, r1, r0\n\
	mov r3, #0\n\
	ldrsh r1, [r1, r3]\n\
	lsl r0, r1, #2\n\
	add r0, r0, r1\n\
	lsl r0, r0, #4  @ * 0x50\n\
	sub r0, r0, r1  @ * 0x4F\n\
	lsl r0, r0, #2  @ * 0x13C\n\
	ldr r1, _080724C0  @ =gInstruments\n\
	add r0, r1, r0\n\
	str r0, [r4, #60]\n\
	ldrb r1, [r0, #23]\n\
	mov r3, #128\n\
	add r0, r3, #0\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _08072472\n\
	mov r0, #127\n\
	and r0, r0, r1\n\
	add r1, r4, #0\n\
	add r1, r1, #45\n\
	strb r0, [r1]\n\
_08072472:\n\
	ldr r2, [r4, #64]\n\
	cmp r2, #0\n\
	beq _08072498\n\
	ldrb r1, [r2, #12]\n\
	add r0, r4, #0\n\
	add r0, r0, #44  @ 0x2C\n\
	strb r1, [r0]\n\
	ldrb r1, [r2, #12]\n\
	sub r0, r0, #8  @ 0x24\n\
	strb r1, [r0]\n\
	ldr r0, [r4, #64]\n\
	ldrb r1, [r0, #16]\n\
	add r0, r3, #0\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	bne _08072498\n\
	add r0, r4, #0\n\
	add r0, r0, #45\n\
	strb r1, [r0]\n\
_08072498:\n\
	mov r0, #4\n\
	mov r2, r8\n\
	and r0, r0, r2\n\
	cmp r0, #0\n\
	beq _080724C4\n\
	ldrb r0, [r5]\n\
	strb r0, [r4, #20]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #21]\n\
	add r5, r5, #1\n\
	ldrb r0, [r5]\n\
	strb r0, [r4, #22]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #23]\n\
	add r5, r5, #1\n\
	b _080724D6\n\
_080724C0:\n\
	.4byte gInstruments\n\
_080724C4:\n\
	mov r0, #64\n\
	mov r3, r8\n\
	and r0, r0, r3\n\
	cmp r0, #0\n\
	beq _080724D6\n\
	ldrb r0, [r4, #21]\n\
	strb r0, [r4, #20]\n\
	ldrb r0, [r4, #23]\n\
	strb r0, [r4, #22]\n\
_080724D6:\n\
	mov r0, #8\n\
	mov r1, r8\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _08072516\n\
	ldrb r0, [r5]\n\
	strb r0, [r4, #24]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #25]\n\
	add r5, r5, #1\n\
	ldrb r3, [r5]\n\
	strb r3, [r4, #26]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #27]\n\
	add r5, r5, #1\n\
	ldrb r0, [r4, #24]\n\
	add r0, r0, r6\n\
	ldrb r2, [r0]\n\
	cmp r2, #7\n\
	bgt _08072528\n\
	lsl r0, r3, #24\n\
	cmp r0, #0\n\
	bne _08072528\n\
	add r0, r4, #0\n\
	add r0, r0, #52\n\
	add r0, r0, r2\n\
	ldrb r0, [r0]\n\
	b _08072526\n\
_08072516:\n\
	mov r0, r8\n\
	mov r2, #128\n\
	and r0, r0, r2\n\
	cmp r0, #0\n\
	beq _08072528\n\
	ldrb r0, [r4, #25]\n\
	strb r0, [r4, #24]\n\
	ldrb r0, [r4, #27]\n\
_08072526:\n\
	strb r0, [r4, #26]\n\
_08072528:\n\
	mov r0, #1\n\
	mov r3, r8\n\
	and r0, r0, r3\n\
	cmp r0, #0\n\
	beq _08072542\n\
	ldrb r0, [r5]\n\
	strb r0, [r4, #16]\n\
	ldrb r1, [r5]\n\
	mov r0, #255\n\
	and r0, r0, r1\n\
	strb r0, [r4, #17]\n\
	add r5, r5, #1\n\
	b _08072552\n\
_08072542:\n\
	mov r0, #16\n\
	mov r6, r8\n\
	and r0, r0, r6\n\
	cmp r0, #0\n\
	bne _0807254E\n\
	b _080726FA\n\
_0807254E:\n\
	ldrb r0, [r4, #17]\n\
	strb r0, [r4, #16]\n\
_08072552:\n\
	ldrb r0, [r4, #16]\n\
	cmp r0, #120\n\
	bls _0807255A\n\
	b _080726C4\n\
_0807255A:\n\
	mov r12, r0\n\
	ldrb r0, [r4, #24]\n\
	cmp r0, #3\n\
	beq _08072566\n\
	cmp r0, #5\n\
	bne _08072590\n\
_08072566:\n\
	mov r2, r12\n\
	lsl r1, r2, #16\n\
	asr r1, r1, #16\n\
	sub r1, r1, #12\n\
	ldr r0, [r4, #64]\n\
	mov r2, #17\n\
	ldrsb r2, [r0, r2]\n\
	add r2, r2, r1\n\
	ldrb r1, [r4, #28]\n\
	lsl r1, r1, #24\n\
	asr r1, r1, #25\n\
	mov r3, #240\n\
	lsl r3, r3, #5\n\
	add r0, r3, #0\n\
	sub r0, r0, r1\n\
	lsl r2, r2, #16\n\
	asr r2, r2, #10\n\
	sub r0, r0, r2\n\
	add r0, r0, #64\n\
	strh r0, [r4, #42]\n\
	b _080726E8\n\
_08072590:\n\
	ldr r0, [r4, #60]\n\
	add r3, r4, #0\n\
	add r3, r3, #44\n\
	cmp r0, #0\n\
	beq _08072660\n\
	add r3, r0, #0\n\
	mov r6, r12\n\
	lsl r0, r6, #16\n\
	asr r0, r0, #16\n\
	add r0, r3, r0\n\
	ldrb r1, [r0, #27]\n\
	mov r0, #156\n\
	lsl r0, r0, #1  @ 0x138\n\
	add r2, r3, r0\n\
	lsl r0, r1, #1\n\
	add r0, r0, r1\n\
	lsl r0, r0, #4  @ * 0x30\n\
	ldr r1, [r2]\n\
	add r6, r1, r0\n\
	ldrb r1, [r3, #23]\n\
	mov r0, #128\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _080725CA\n\
	mov r0, #127\n\
	and r0, r0, r1\n\
	add r1, r4, #0\n\
	add r1, r1, #45\n\
	strb r0, [r1]\n\
_080725CA:\n\
	add r0, r6, #0\n\
	add r0, r0, #40\n\
	ldrb r0, [r0]\n\
	cmp r0, #2\n\
	bhi _080725DE\n\
	add r0, r4, #0\n\
	add r0, r0, #70\n\
	mov r1, r10\n\
	strh r1, [r0]\n\
	b _080725E6\n\
_080725DE:\n\
	add r1, r4, #0\n\
	add r1, r1, #70\n\
	ldr r0, _080726AC  @ =0x0000FFFF\n\
	strh r0, [r1]\n\
_080725E6:\n\
	mov r7, #0\n\
	str r7, [r4, #32]\n\
	mov r2, #0\n\
	mov r9, r2\n\
	mov r0, #1\n\
	strh r0, [r4, #30]\n\
	str r6, [r4, #64]\n\
	ldrb r1, [r6, #16]\n\
	mov r0, #128\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	bne _08072604\n\
	add r0, r4, #0\n\
	add r0, r0, #45\n\
	strb r1, [r0]\n\
_08072604:\n\
	ldrb r0, [r6, #12]\n\
	add r2, r4, #0\n\
	add r2, r2, #44\n\
	strb r0, [r2]\n\
	ldrb r0, [r6, #14]\n\
	strb r0, [r4, #28]\n\
	add r0, r4, #0\n\
	add r0, r0, #46\n\
	mov r1, #0\n\
	ldrsb r1, [r0, r1]\n\
	ldrb r0, [r3, #22]\n\
	mul r0, r1, r0\n\
	asr r0, r0, #6\n\
	add r3, r4, #0\n\
	add r3, r3, #47\n\
	strb r0, [r3]\n\
	mov r1, #0\n\
	ldrsb r1, [r3, r1]\n\
	ldrb r0, [r6, #13]\n\
	mul r0, r1, r0\n\
	asr r0, r0, #6\n\
	strb r0, [r3]\n\
	mov r3, #128\n\
	lsl r3, r3, #7\n\
	strh r3, [r4]\n\
	strh r7, [r4, #4]\n\
	mov r6, r9\n\
	strb r6, [r4, #2]\n\
	add r0, r4, #0\n\
	add r0, r0, #8\n\
	mov r1, #128\n\
	lsl r1, r1, #6\n\
	strh r1, [r4, #8]\n\
	strh r7, [r0, #4]\n\
	strb r6, [r0, #2]\n\
	ldr r0, [r4, #64]\n\
	mov r1, #17\n\
	ldrsb r1, [r0, r1]\n\
	mov r3, r12\n\
	lsl r0, r3, #16\n\
	asr r0, r0, #16\n\
	add r0, r0, r1\n\
	lsl r0, r0, #16\n\
	lsr r0, r0, #16\n\
	mov r12, r0\n\
	add r3, r2, #0\n\
_08072660:\n\
	mov r6, r12\n\
	lsl r2, r6, #16\n\
	ldr r0, _080726AC  @ =0x0000FFFF\n\
	strh r0, [r4, #48]\n\
	mov r0, r10\n\
	strh r0, [r4, #50]\n\
	mov r1, #28\n\
	ldrsb r1, [r4, r1]\n\
	lsr r0, r1, #31\n\
	add r1, r1, r0\n\
	asr r1, r1, #1\n\
	mov r6, #240\n\
	lsl r6, r6, #5\n\
	add r0, r6, #0\n\
	sub r0, r0, r1\n\
	ldr r1, _080726B0  @ =0xFFF40000\n\
	add r2, r2, r1\n\
	asr r2, r2, #10\n\
	sub r0, r0, r2\n\
	add r0, r0, #64\n\
	strh r0, [r4, #38]\n\
	strh r0, [r4, #40]\n\
	ldrb r1, [r3]\n\
	add r0, r4, #0\n\
	add r0, r0, #36\n\
	mov r6, #0\n\
	strb r1, [r0]\n\
	ldrb r1, [r4, #29]\n\
	mov r2, #1\n\
	mov r0, #1\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	beq _080726B4\n\
	ldrb r0, [r3]\n\
	lsl r0, r0, #1\n\
	orr r0, r0, r2\n\
	strb r0, [r4, #29]\n\
	b _080726E8\n\
_080726AC:\n\
	.4byte 0x0000FFFF\n\
_080726B0:\n\
	.4byte 0xFFF40000\n\
_080726B4:\n\
	ldrb r0, [r3]\n\
	lsl r0, r0, #1\n\
	strb r0, [r4, #29]\n\
	ldr r0, [sp]\n\
	add r1, r4, #0\n\
	bl sub_080722A8\n\
	b _080726E8\n\
_080726C4:\n\
	cmp r0, #121\n\
	bne _080726E0\n\
	ldr r0, [r4, #60]\n\
	cmp r0, #0\n\
	beq _080726E8\n\
	mov r2, #154\n\
	lsl r2, r2, #1  @ 0x134\n\
	add r0, r0, r2\n\
	ldrh r0, [r0]\n\
	lsl r0, r0, #1\n\
	mov r1, #1\n\
	orr r0, r0, r1\n\
	strh r0, [r4, #50]\n\
	b _080726E8\n\
_080726E0:\n\
	add r0, r4, #0\n\
	add r0, r0, #44\n\
	mov r3, r10\n\
	strb r3, [r0]\n\
_080726E8:\n\
	ldrb r0, [r4, #24]\n\
	cmp r0, #4\n\
	beq _080726F2\n\
	cmp r0, #6\n\
	bne _080726FA\n\
_080726F2:\n\
	add r1, r4, #0\n\
	add r1, r1, #70\n\
	ldr r0, _08072748  @ =0x0000FFFF\n\
	strh r0, [r1]\n\
_080726FA:\n\
	ldrb r1, [r4, #22]\n\
	mov r0, #128\n\
	and r0, r0, r1\n\
	cmp r0, #0\n\
	bne _0807270A\n\
	add r0, r4, #0\n\
	add r0, r0, #45\n\
	strb r1, [r0]\n\
_0807270A:\n\
	ldr r0, [sp]\n\
	add r1, r4, #0\n\
	bl sub_080731C4\n\
	add r0, r4, #0\n\
	bl sub_08073464\n\
	mov r1, r8\n\
	ldr r6, [sp, #12]\n\
	strb r1, [r6]\n\
_0807271E:\n\
	ldrb r2, [r5]\n\
	add r5, r5, #1\n\
	cmp r2, #0\n\
	beq _08072728\n\
	b _08072394\n\
_08072728:\n\
	ldr r2, [sp]\n\
	ldr r3, _0807274C  @ =0x000004FC\n\
	add r1, r2, r3\n\
	ldr r6, [sp, #8]\n\
	str r6, [r1]\n\
	sub r3, r3, #24\n\
	add r1, r2, r3\n\
	str r5, [r1]\n\
	add sp, sp, #16\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r7}\n\
	pop {r1}\n\
	bx r1\n\
_08072748:\n\
	.4byte 0x0000FFFF\n\
_0807274C:\n\
	.4byte 0x000004FC");
}
#endif

extern u32 gVolume_03001F24;
extern u32 gUnknown_03000820;
extern s32 gUnknown_03000824;
extern struct MusicChannel *gUnknown_03001F28;

void sub_08072750(struct MusicChannel_sub *arg0, struct Struct08072750 *arg1, int arg2)
{
    u8 r6;

    if (arg0->unk0 & 1)
        return;
    r6 = arg0->unk2 & 0xF;
    if (arg2 == 0 && (arg1->unk35 & 2) && r6 == arg1->unk31)
        return;
    if (arg0->unk4 == arg1->unk0[arg0->unk2 >> 4].unk0)
    {
        arg0->unk2 = (arg0->unk2 & 0xF0) | (arg0->unk2 >> 4);
        r6 = arg0->unk2 & 0xF;
        if (arg1->unk35 & 4)
        {
            if (r6 == arg1->unk34)
            {
                arg0->unk2 = (0xF0 & arg0->unk2) | arg1->unk33;
                arg0->unk4 = arg1->unk0[arg0->unk2 & 0xF].unk0;
                if (r6 == arg1->unk33)
                    arg0->unk2 = (arg0->unk2 << 4) | (arg0->unk2 & 0xF);
            }
        }
        else
            arg0->unk2 = ((r6 + 1) << 4) | (arg0->unk2 & 0xF);
        arg0->unk0 = arg1->unk0[r6].unk2 << 8;
        if ((arg0->unk2 >> 4) == arg1->unk30)
            arg0->unk0 |= 1;
    }
    else
    {
        arg0->unk0 += arg1->unk36[r6] << 1;
        arg0->unk4++;
    }
}

void sub_0807282C(struct MusicChannel *chan)
{
    u8 r2 = chan->unk14;

    register int r0 asm("r0") = chan->unk32 >> 1;
    if (r0 != 0)
    {
        int r1 = chan->unk30 - r0;
        if (r1 < 0)
        {
            chan->unk30 = 0;
            asm("");
        }
        else
            chan->unk30 = r1;
    }

    switch (r2 & 0xF0)
    {
    case 112:
        chan->unk2C += r2 & 0xF;
        break;
    case 96:
        chan->unk2C -= r2 & 0xF;
        break;
    case 208:
        chan->unk2D -= r2 & 0xF;
        break;
    case 224:
        chan->unk2D += r2 & 0xF;
        break;
    case 0xF0:  // needed to match
        break;
    }
    if (chan->instrument->unk94.unk35 & 1)
        sub_08072750(&chan->unk0, &chan->instrument->unk94, chan->unk32 & 1);
    if (chan->instrument->unkE4.unk35 & 1)
        sub_08072750(&chan->unk8, &chan->instrument->unkE4, chan->unk32 & 1);
}

void sub_080728F0(struct MusicChannel *chan, void *arg1, int arg2)
{
    u32 r4 = chan->unk1A;
    int r7;
    int r6;
    int r3;
    int sp0[3];

    if (r4 == 0)
    {
        r7 = chan->unk2D;
        if (!(gSoundWork->unk1 & 0x10))
            chan->unk2D = 32;
        gUnknown_03001F28 = chan;
        gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
        chan->unk2D = r7;
    }
    else
    {
        r3 = gUnknown_03000824;
        while (r3 >= 3)  // hey, ever heard of the modulo (%) operator?
            r3 -= 3;
        sp0[0] = chan->unk28;
        sp0[1] = sp0[0] - gUnknown_08B39FC4[(r4 >> 4) & 0xF];
        sp0[2] = sp0[0] - gUnknown_08B39FC4[r4 & 0xF];
        chan->unk26 = sp0[r3];
        if (chan->unk26 < 40)
            chan->unk26 = 40;

        r6 = chan->unk2D;
        if (!(gSoundWork->unk1 & 0x10))
            chan->unk2D = 32;
        gUnknown_03001F28 = chan;
        gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
        chan->unk2D = r6;
    }
}

void sub_08072A04(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r1 = chan->unk1A;
    int r7;

    if (r1 == 0)
        r1 = chan->unk34[0];

    if (gUnknown_03000824 != 0)
    {
        chan->unk26 -= r1 << 2;
        if (chan->unk26 < 40)
            chan->unk26 = 40;
        chan->unk28 = chan->unk26;
    }
    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072A88(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r1 = chan->unk1A;
    int r7;

    if (r1 == 0)
        r1 = chan->unk35;

    if (gUnknown_03000824 != 0)
    {
        chan->unk26 += r1 << 2;
        if (chan->unk26 > 0x1E00)
            chan->unk26 = 0x1E00;
        chan->unk28 = chan->unk26;
    }
    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072B10(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r4 = chan->unk1A;
    int r1 = chan->unk26;
    int r3 = chan->unk2A;
    int r7;

    if (r4 == 0)
        r4 = chan->unk36;

    r4 <<= 2;
    if (gUnknown_03000824 != 0)
    {
        if (r3 != 0)
        {
            if (r1 > r3)
            {
                r1 -= r4;
                if (r1 <= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
            else
            {
                r1 += r4;
                if (r1 >= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
        }
        chan->unk26 = r1;
        chan->unk28 = r1;
        chan->unk2A = r3;
    }
    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072BA8(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r3 = chan->unk1A;
    int r2 = chan->unk28;
    s32 *r5 = gUnknown_08B39C1C[chan->unk44];
    int r4 = chan->unk48;
    int r7;
    int r1;

    if (r3 == 0)
        r3 = chan->unk37;
    r1 = (r3 & 0xF) << 1;
    r3 = (r3 >> 4) & 0xF;
    chan->unk26 = r2 + ((r5[r4] * r1) >> 16);
    if (chan->unk26 < 40)
        chan->unk26 = 40;
    else if (chan->unk26 > 0x1E00)
        chan->unk26 = 0x1E00;
    r4 += r3;
    r4 &= 0x3F;
    chan->unk48 = r4;
    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072C74(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r4 = chan->unk36;
    u32 r2 = chan->unk1A;
    int r3 = chan->unk2A;
    int r1 = chan->unk26;
    int r7;

    r2 = ((r2 & 0xF0) != 0) ? (r2 >> 4) : -(r2 & 0xF);
    r4 <<= 2;
    if (gUnknown_03000824 != 0)
    {
        if (r3 != 0)
        {
            if (r1 < r3)
            {
                r1 += r4;
                if (r1 >= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
            else
            {
                r1 -= r4;
                if (r1 <= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
        }
        chan->unk2A = r3;
        chan->unk26 = r1;
        chan->unk28 = r1;
        chan->unk2C += r2;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072D54(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r4 = chan->unk37;
    int r6 = chan->unk28;
    u32 r5 = chan->unk1A;
    s32 *r2 = gUnknown_08B39C1C[chan->unk44];
    int r3 = chan->unk48;
    int r1;
    int r7;

    r5 = ((r5 & 0xF0) != 0) ? (r5 >> 4) : -(r5 & 0xF);
    r1 = (r4 & 0xF) << 1;
    r4 = (r4 >> 4) & 0xF;
    chan->unk26 = r6 + ((r2[r3] * r1) >> 16);
    if (chan->unk26 < 40)
        chan->unk26 = 40;
    else if (chan->unk26 > 0x1E00)
        chan->unk26 = 0x1E00;
    r3 += r4;
    r3 &= 0x3F;
    chan->unk48 = r3;

    if (gUnknown_03000824 != 0)
    {
        chan->unk2C += r5;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072E64(struct MusicChannel *chan, void *arg1, int arg2)
{
    int r3 = chan->unk1A;
    int r2 = chan->unk24;
    s32 *r5 = gUnknown_08B39C1C[chan->unk45];
    int r4 = chan->unk4A;
    int r1;
    int r7;

    if (r3 == 0)
        r3 = chan->unk39;
    r1 = (r3 & 0xF) << 2;
    r3 = (r3 >> 4) & 0xF;
    chan->unk2C = r2 + ((r5[r4] * r1) >> 16);
    if (chan->unk2C < 0)
        chan->unk2C = 0;
    else if (chan->unk2C > 64)
        chan->unk2C = 64;
    r4 += r3;
    r4 &= 0x3F;
    chan->unk4A = r4;

    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072F2C(struct MusicChannel *chan, void *arg1, int arg2)
{
    u32 r1 = chan->unk1A;
    int r3 = ((r1 & 0xF0) != 0) ? (r1 >> 4) : -(r1 & 0xF);
    int r7;

    if (gUnknown_03000824 != 0)
    {
        chan->unk2C += r3;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

void sub_08072FC8(struct SoundWork_sub2 *arg0, void *arg1, int arg2)
{
    int r9 = arg0->unk4FA;
    u8 sp8 = arg0->unk4FC;
    u32 i;
    struct MusicChannel *chan;
    int r7;

    if (gUnknown_03000820 != 0)
    {
        for (i = 0; i < r9; i++)
        {
            chan = &arg0->channels[i];
            if (chan->instrument != NULL && chan->unk26 != 0)
            {
                if (!((sp8 >> i) & 1) || (r7 = chan->unk18) != 38 || (u32)gUnknown_03000824 >= chan->unk1A)
                {
                    r7 = chan->unk2D;
                    if (!(gSoundWork->unk1 & 0x10))
                        chan->unk2D = 32;
                    gUnknown_03001F28 = chan;
                    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
                    chan->unk2D = r7;
                }
            }
        }
    }
    else
    {
        for (i = 0; i < r9; i++)
        {
            chan = &arg0->channels[i];
            if (chan->instrument != NULL && chan->unk26 != 0)
            {
                if (!((sp8 >> i) & 1))
                {
                    chan->unk26 = chan->unk28;
                    chan->unk2C = chan->unk24;
                    if (chan->instrument->unk94.unk35 & 1)
                        sub_08072750(&chan->unk0, &chan->instrument->unk94, chan->unk32 & 1);
                    if (chan->instrument->unkE4.unk35 & 1)
                        sub_08072750(&chan->unk8, &chan->instrument->unkE4, chan->unk32 & 1);
                    chan->unk28 = chan->unk26;
                    chan->unk24 = chan->unk2C;
                    r7 = chan->unk2D;
                    if (!(gSoundWork->unk1 & 0x10))
                        chan->unk2D = 32;
                    gUnknown_03001F28 = chan;
                    gUnknown_03001EFC(chan, arg1, arg2, (gUnknown_03000820 == 0));
                    chan->unk2D = r7;
                }
                else
                {
                    r7 = chan->unk18;
                    chan->unk26 = chan->unk28;
                    chan->unk2C = chan->unk24;
                    sub_0807282C(chan);
                    chan->unk28 = chan->unk26;
                    chan->unk24 = chan->unk2C;
                    gUnknown_08B3A004[r7](chan, arg1, arg2);
                }
            }
        }
    }
}

void sub_080731C4(struct SoundWork_sub2 *arg0, struct MusicChannel *arg1)
{
    int r0 = arg1->unk18;
    int r2 = arg1->unk1A;

    switch (r0)
    {
    case 8:
    case 33:
        arg1->unk2D = r2;
        break;
    case 9:
        arg1->unk20 = r2 << 22;
        break;
    case 12:
        arg1->unk24 = r2;
        if (arg1->unk24 > 64)
            arg1->unk24 = 64;
        break;
    case 26:
        arg1->unk28 -= r2 << 2;
        if (arg1->unk28 < 40)
            arg1->unk28 = 40;
        break;
    case 27:
        arg1->unk28 += r2 << 2;
        if (arg1->unk28 > 0x1E00)
            arg1->unk28 = 0x1E00;
        break;
    case 29:
        if (r2 <= 3)
            arg1->unk48 = 0;
        r2 &= 3;
        if (r2 == 3)
            r2 = 0;
        arg1->unk44 = r2;
        break;
    case 32:
        if (r2 <= 3)
            arg1->unk4A = 0;
        r2 &= 3;
        if (r2 == 3)
            r2 = 0;
        arg1->unk45 = r2;
        break;
    case 35:
        arg1->unk24 += r2;
        if (arg1->unk24 > 64)
            arg1->unk24 = 64;
        break;
    case 36:
        arg1->unk24 -= r2;
        if (arg1->unk24 < 0)
            arg1->unk24 = 0;
        break;
    case 23:
        arg1->unk28 -= r2;
        if (arg1->unk28 < 40)
            arg1->unk28 = 40;
        break;
    case 24:
        arg1->unk28 += r2;
        if (arg1->unk28 > 0x1E00)
            arg1->unk28 = 0x1E00;
        break;
    case 15:
        if (r2 != 0)
        {
            if (r2 <= 32)
            {
                arg0->tickLength = r2;
                arg0->unk508 = (arg0->tickLength << 14) / arg0->unk4EA;
                arg0->unk50C = arg0->unk508 / arg0->tickLength;
            }
            else
            {
                arg0->unk4EA = r2 * 50 / 125;
                arg0->unk508 = (arg0->tickLength << 14) / arg0->unk4EA;
                arg0->unk50C = arg0->unk508 / arg0->tickLength;
            }
        }
        if (arg0->unk508 == 0x3B1 && arg0->unk50C == 0x13B)
            arg0->unk508 = 0x3B0;
        break;
    case 11:
        if (arg0->unk4EE & 1)
            arg0->unk4F2 = r2;
        else
            arg0->unk4F2 = -2;
        arg0->currPatternTick = 0;
        break;
    case 13:
        arg0->unk4F2 = arg0->unk4F0 + 1;
        if (arg0->unk4F2 >= arg0->unk0->unk34)
        {
            if (arg0->unk4EE & 1)
                arg0->unk4F2 = arg0->unk0->unk36;
            else
                arg0->unk4F2 = -2;
        }
        arg0->currPatternTick = ((r2 >> 4) * 10) + (r2 & 0xF);
        break;
    }
}

void sub_08073464(struct MusicChannel *arg0)
{
    u32 r1 = arg0->unk14;
    u32 r0 = r1 & 0xF0;
    u32 r3 = r1 & 0x0F;

    switch (r0)
    {
    default:
    case 16:
        if (r0 - 16 < 64)
            arg0->unk24 = r1 - 16;
        break;
    case 128:
        arg0->unk24 -= r3;
        break;
    case 144:
        arg0->unk24 += r3;
        break;
    case 160:
        arg0->unk37 = (arg0->unk37 & 0xF) | (r3 << 4);
        break;
    case 176:
        if (r3 < 4)
            arg0->unk48 = 0;
        r3 &= 3;
        if (r3 == 3)
            r3 = 0;
        arg0->unk44 = r3;
        break;
    case 192:
        arg0->unk2D = r3;
        break;
    }
}

// nonmatching
#ifdef NONMATCHING
void sub_080734F8(struct SoundWork_sub2 *arg0, void *arg1)
{
    int i;  // r5
    u32 j;  // r2
    //int r12 = 0;

    arg0->unk4F2 = -1;
    arg0->unk0 = arg1;
    for (i = 0; i < 16; i++)
    {
        struct MusicChannel *r3 = &arg0->channels[i];
        u8 *r1 = arg0->unk0->unk244[i];
        struct MusicChannel *r4 = &arg0->channels[i];
        //u8 *arr = r4->unk0;

        //testinline3(r3);
        for (j = 0; j < 76; j++)
            ((u8 *)r4)[j] = 20 /*0*/;  // r12
        r3->unk2E = r1[0];
        r3->unk2D = r1[1];
        r3->unk45 = r3->unk44 = 8 /*0*/;  // r8
        //r3->unk45 = 8 /*0*/;  // r8
    }

    for (i = 0; i < 8; i++)
        arg0->unk4C4[i] = 0;
    if (arg0->unk4FB >= 8)
        arg0->unk4FB = 8;
    arg0->unk4FA = arg0->unk0->unk38;
    if (arg0->unk4FA >= 16)
        arg0->unk4FA = 16;
    arg0->volume = 0;
    arg0->unk4EE = 0;
    sub_080735D0(arg0);
    arg0->unk4F2 = -1;
}
#else
__attribute__((naked))
void sub_080734F8(struct SoundWork_sub2 *arg0, void *arg1)
{
    asm(
    "	push {r4-r7,lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	add r6, r0, #0\n\
	ldr r0, _080735BC  @ =0x000004F2\n\
	add r2, r6, r0\n\
	ldr r0, _080735C0  @ =0x0000FFFF\n\
	strh r0, [r2]\n\
	str r1, [r6]\n\
	mov r5, #0  @ i\n\
	mov r1, #0\n\
	mov r12, r1  @ constant\n\
	mov r2, #0\n\
	mov r8, r2  @ constant\n\
_08073514:\n\
	mov r0, #76\n\
	add r3, r5, #0\n\
	mul r3, r0, r3\n\
	add r3, r3, r6\n\
	add r3, r3, #4\n\
	lsl r1, r5, #1\n\
	ldr r0, [r6]\n\
	add r1, r1, r0\n\
	mov r7, #145\n\
	lsl r7, r7, #2\n\
	add r1, r1, r7\n\
	add r4, r3, #0\n\
	mov r2, #0\n\
_0807352E:\n\
	add r0, r4, r2\n\
	mov r7, r12\n\
	strb r7, [r0]\n\
	add r2, r2, #1\n\
	cmp r2, #75\n\
	bls _0807352E\n\
	ldrb r0, [r1]\n\
	add r2, r3, #0\n\
	add r2, r2, #46\n\
	strb r0, [r2]\n\
	ldrb r0, [r1, #1]\n\
	sub r2, r2, #1\n\
	strb r0, [r2]\n\
	add r0, r3, #0\n\
	add r0, r0, #68\n\
	mov r1, r8\n\
	strb r1, [r0]\n\
	add r0, r0, #1\n\
	strb r1, [r0]\n\
	add r5, r5, #1\n\
	cmp r5, #15\n\
	ble _08073514\n\
	mov r1, #0\n\
	mov r5, #7\n\
	mov r2, #156\n\
	lsl r2, r2, #3\n\
	add r0, r6, r2\n\
_08073564:\n\
	str r1, [r0]\n\
	sub r0, r0, #4\n\
	sub r5, r5, #1\n\
	cmp r5, #0\n\
	bge _08073564\n\
	mov r5, #8\n\
	ldr r7, _080735C4  @ =0x000004FB\n\
	add r1, r6, r7\n\
	ldrb r0, [r1]\n\
	cmp r0, #7\n\
	bls _0807357C\n\
	strb r5, [r1]\n\
_0807357C:\n\
	ldr r0, [r6]\n\
	ldrh r0, [r0, #56]\n\
	ldr r2, _080735C8  @ =0x000004FA\n\
	add r1, r6, r2\n\
	mov r2, #0\n\
	strb r0, [r1]\n\
	lsl r0, r0, #24\n\
	lsr r0, r0, #24\n\
	cmp r0, #15\n\
	bls _08073594\n\
	mov r0, #16\n\
	strb r0, [r1]\n\
_08073594:\n\
	mov r7, #157\n\
	lsl r7, r7, #3\n\
	add r0, r6, r7\n\
	strh r2, [r0]\n\
	ldr r1, _080735CC  @ =0x000004EE\n\
	add r0, r6, r1\n\
	strh r2, [r0]\n\
	add r0, r6, #0\n\
	bl sub_080735D0\n\
	ldr r2, _080735BC  @ =0x000004F2\n\
	add r1, r6, r2\n\
	ldr r0, _080735C0  @ =0x0000FFFF\n\
	strh r0, [r1]\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080735BC:\n\
	.4byte 0x000004F2\n\
_080735C0:\n\
	.4byte 0x0000FFFF\n\
_080735C4:\n\
	.4byte 0x000004FB\n\
_080735C8:\n\
	.4byte 0x000004FA\n\
_080735CC:\n\
	.4byte 0x000004EE");
}
#endif

void sub_080735D0(struct SoundWork_sub2 *arg0)
{
    int i;

    arg0->unk500 = 0;
    arg0->unk504 = 0;
    arg0->unk4EA = arg0->unk0->unk40 * 50 / 125;
    arg0->tickLength = arg0->unk0->tickLength;
    arg0->unk508 = (arg0->tickLength << 14) / arg0->unk4EA;
    arg0->unk50C = arg0->unk508 / arg0->tickLength;
    arg0->currPatternTick = 0;
    arg0->unk4F4 = 0;
    arg0->unk4FC = 0;
    arg0->unk4F0 = -1;
    arg0->unk4F8 = -1;
    arg0->unk4F2 = 0;

    for (i = 0; i < arg0->unk4FB; i++)
    {
        if ((u32)arg0->unk4C4[i] != 1)
            arg0->unk4C4[i] = NULL;
    }
}

// copies (and mixes?) audio?
int sub_080736A0(struct SoundWork_sub2 *arg0, void *dest, int length)
{
    struct MusicFile *musFile = arg0->unk0;
    s32 r6;
    s32 r7;
    struct MusicPattern *pat;

    if (arg0->unk4F2 < 0)
        return length;
    r6 = arg0->unk504;
    r7 = arg0->unk500;
    if (r6 == 0 && r7 == 0)
    {
        if (arg0->unk4F0 != arg0->unk4F2)
            arg0->noteDataPtr = (u8 *)musFile + musFile->patterns[musFile->patternOrder[arg0->unk4F2]].offset;
        arg0->unk4F0 = arg0->unk4F2;
        arg0->unk4F4 = arg0->currPatternTick;
        arg0->currPatternTick++;
    }

    pat = &musFile->patterns[musFile->patternOrder[arg0->unk4F0]];
    if (arg0->currPatternTick >= pat->length)
    {
        arg0->currPatternTick = 0;  // restart
        do
        {
            arg0->unk4F2++;
            if (arg0->unk4F2 >= musFile->unk34)
            {
                if (arg0->unk4EE & 1)
                {
                    arg0->unk4F0 = -1;
                    arg0->unk4F2 = musFile->unk36;
                }
                else
                    arg0->unk4F2 = -2;
                break;
            }
        } while (musFile->patternOrder[arg0->unk4F2] >= musFile->unk3A);
    }
    gVolume_03001F24 = arg0->volume;
    if (r6 == 0 && r7 == 0)
        play_notes(arg0);
    if (r6 + length >= arg0->unk50C)
        length = arg0->unk50C - r6;
    gUnknown_03000824 = r7;
    gUnknown_03000820 = r6;
    sub_08072FC8(arg0, dest, length);
    arg0->volume = gVolume_03001F24;
    r6 += length;
    if (r6 >= arg0->unk50C)
    {
        r6 = 0;
        r7++;
        if (r7 >= arg0->tickLength)
            r7 = 0;
    }
    arg0->unk504 = r6;
    arg0->unk500 = r7;
    return length;
}

// unused
void sub_08073858(struct SoundWork_sub2 *arg0, void *arg1)
{
    void *dest = (void *)EWRAM;

    arg0->unk0 = 0;
    LZ77UnCompWram(arg1, dest);
    sub_080734F8(arg0, dest);
}

void sub_0807387C(struct SoundWork_sub2 *arg0, int volume, int arg2, u8 *arg3)
{
    int i;

    arg0->volume = volume;
    arg0->unk4EE = arg2;
    if (arg3 != NULL)
    {
        for (i = 0; i < 3; i++)
            arg0->unk510[i] = arg3[i];
    }
    else
    {
        for (i = 0; i < 3; i++)
            arg0->unk510[i] = 0;
    }
    sub_080735D0(arg0);
}

void sub_080738D4(struct SoundWork_sub2 *arg0, int index)
{
    if (arg0->unk510[index] == 0)
        index = 7 - index;
    else
        index = arg0->unk510[index] - 1;
    if ((u32)arg0->unk4C4[index] >= 2)
        arg0->unk4C4[index]->unk1D &= ~1;
    arg0->unk4C4[index] = (void *)1;
}

void sub_08073914(struct SoundWork_sub2 *arg0, int index)
{
    if (arg0->unk510[index] == 0)
        index = 7 - index;
    else
        index = arg0->unk510[index] - 1;
    if ((u32)arg0->unk4C4[index] == 1)
        arg0->unk4C4[index] = NULL;
}

void sub_0807394C(struct MusicChannel *arg0, void *arg1, int arg2)
{
    int r7;

    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_080739B0(struct MusicChannel *arg0, void *arg1, int arg2)
{
    int r1 = arg0->unk1A;
    int r7;

    if (r1 == 0)
        r1 = arg0->unk3A;
    if (gUnknown_03000824 % (r1 + 1) == r1)
        arg0->unk20 = 0;
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08073A34(struct MusicChannel *arg0, void *arg1, int arg2)
{
    int r1 = arg0->unk1A;
    int r7;

    if (r1 == 0)
        r1 = arg0->unk3B;
    if (gUnknown_03000824 == r1)
    {
        arg0->unk2C = 0;
        arg0->unk24 = 0;
    }
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08073AAC(struct MusicChannel *arg0, void *arg1, int arg2)
{
    int r1 = arg0->unk1A;
    int r7;

    if (r1 == 0)
        r1 = arg0->unk38;
    if (gUnknown_03000824 < r1)
        return;
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

struct Struct03000840_child_sub
{
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
};

struct Struct08073CE8
{
    u16 unk0[0];
    u8 filler0[0x20];
    u16 unk20[3];
    u16 unk26;
    struct Struct03000840_child_sub unk28[1];
};

struct Struct03000840_sub
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
};

extern struct
{
    volatile u8 unk0;
    volatile u8 unk1;
    u16 unk2;
    struct Struct03000840_sub unk4[3];
    u8 filler28[0x34-0x28];
    u32 unk34;
    u32 unk38;
    struct Struct08073CE8 *unk3C;
} gUnknown_03000840;

void sub_08073B18(void)
{
    int i;

    REG_SOUNDCNT_L |= 0xCC00;
    REG_SOUNDCNT_L &= 0xFF00;
    REG_SOUNDCNT_H |= 2;
    for (i = 0; i < 4; i++)
    {
        *gUnknown_08B3A4AC[i].lenEnvReg = 0;
        *gUnknown_08B3A4AC[i].freqReg = 0;
    }
    gUnknown_03000840.unk0 = 0;
    gUnknown_03000840.unk3C = NULL;
    gUnknown_03000840.unk34 = 0;
    gUnknown_03000840.unk38 = 0;
    REG_TM0CNT = 0x00C1FC00;
    REG_IE |= INTR_FLAG_TIMER0;
}

void update_gbc_sound_regs(void)
{
    int i;
    struct Struct03000840_child_sub *r3;
    struct Struct03000840_child_sub *r4;

    if (gUnknown_03000840.unk0 != 2)
        return;
    if (gUnknown_03000840.unk1 != 0)
        return;
    if (gUnknown_03000840.unk34 >= gUnknown_03000840.unk3C->unk26)
        return;
    gUnknown_03000840.unk1 = 1;
    for (i = 0; i < 3; i++)
    {
        struct Struct03000840_sub *r4 = &gUnknown_03000840.unk4[i];
        struct Struct08B3A4AC *r0;

        if (r4->unk4 == 0)
            r4->unk0 = r4->unk8;
        else if (r4->unk4 > 0)
        {
            r4->unk0 += r4->unk4;
            if (r4->unk0 >= r4->unk8)
            {
                r4->unk4 = 0;
                r4->unk0 = r4->unk8;
            }
        }
        else
        {
            r4->unk0 += r4->unk4;
            if (r4->unk0 <= r4->unk8)
            {
                r4->unk4 = 0;
                r4->unk0 = r4->unk8;
            }
        }

        r0 = &gUnknown_08B3A4AC[i];
        *r0->freqReg = (*r0->freqReg & r0->unk8) | (r4->unk0 >> 9);
    }

    if (gUnknown_03000840.unk38 != 0)
    {
        gUnknown_03000840.unk38--;
        gUnknown_03000840.unk1 = 0;
    }
    else
    {
        r3 = &gUnknown_03000840.unk3C->unk28[gUnknown_03000840.unk34];
        r4 = &gUnknown_03000840.unk3C->unk28[gUnknown_03000840.unk3C->unk26];

        do
        {
            if (r3->unk3 == 0)
            {
                struct Struct08B3A4AC *r0 = &gUnknown_08B3A4AC[r3->unk2];
                *r0->freqReg;
                *r0->lenEnvReg = r3->unk4;
                *r0->freqReg = ((u32)(gUnknown_03000840.unk4[r3->unk2].unk0 & 0x1FFFFFF)>>9) | r3->unk6;
            }
            else if (r3->unk3 == 1)
            {
                gUnknown_03000840.unk4[r3->unk2].unk8 = (u32)(r3->unk4 << 21) >> 12;
                gUnknown_03000840.unk4[r3->unk2].unk4 = *(s32 *)&r3->unk4 >> 11;
            }
        } while (++r3 < r4 && r3->unk0 == 0);

        if (r3 >= r4)
        {
            gUnknown_03000840.unk0 = 0;
            gUnknown_03000840.unk1 = 0;
        }
        else
        {
            gUnknown_03000840.unk34 = r3 - gUnknown_03000840.unk3C->unk28;
            gUnknown_03000840.unk38 = r3->unk0;
            gUnknown_03000840.unk1 = 0;
        }
    }
}

static inline void sub_08073CE8_inline(struct Struct08073CE8 *arg0, int arg1, int arg2)
{
    int r1;

    gUnknown_03000840.unk34 = 0;
    gUnknown_03000840.unk38 = arg0->unk28[0].unk0;
    gUnknown_03000840.unk3C = arg0;
    arg1 >>= 4;
    if (arg1 > 7)
        arg1 = 7;
    // interpolate
    r1 = arg1;
    if (arg2 < 64)
        r1 = (arg1 * arg2) >> 6;
    else if (arg2 > 64)
        arg1 = (arg1 * (128 - arg2)) >> 6;
    gUnknown_03000840.unk2 = (arg1 << 4) | r1;
}

void sub_08073CE8(struct Struct08073CE8 *arg0, int arg1, int arg2)  // unused?
{
    int i;

    sub_08073E1C();
    sub_08073CE8_inline(arg0, arg1, arg2);
    REG_SOUND3CNT_L = 0x60;

    i = 0;
    while (i < 16)
    {
        volatile u16 *dest = (volatile u16 *)REG_ADDR_WAVE_RAM0;
        int end = i + 8;

        while (i < end)
        {
            *dest++ = arg0->unk0[i];
            i++;
        }
        REG_SOUND3CNT_L = 0x20;
    }
    REG_SOUND3CNT_L = 0xA0;
    for (i = 0; i < 3; i++)
        gUnknown_03000840.unk4[i].unk8 = gUnknown_03000840.unk4[i].unk0 = arg0->unk20[i] << 9;
    REG_SOUNDCNT_L &= 0xFF00;
    REG_SOUNDCNT_L |= gUnknown_03000840.unk2;
    gUnknown_03000840.unk0 = 2;
}

void sub_08073DC4(void)
{
    if (gUnknown_03000840.unk0 == 2)
    {
        gUnknown_03000840.unk0 = 1;
        REG_SOUNDCNT_L &= 0xFF00;
    }
}

void sub_08073DEC(void)
{
    if (gUnknown_03000840.unk0 == 1)
    {
        gUnknown_03000840.unk0 = 2;
        REG_SOUNDCNT_L &= 0xFF00;
        REG_SOUNDCNT_L |= gUnknown_03000840.unk2;
    }
}

void sub_08073E1C(void)
{
    gUnknown_03000840.unk0 = 0;
    REG_SOUNDCNT_L &= 0xFF00;
}
