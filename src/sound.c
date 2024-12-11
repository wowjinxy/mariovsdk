#include "gba/gba.h"
#include "global.h"
#include "sound.h"

struct MusicPattern  // pattern?
{
    u32 length;  // length of pattern in ticks
    u32 offset;  // offset to note data from beginning of file
};

struct MusicFile
{
    u8 filler0[0x34];  // name
    /*0x034*/ u16 songLength;  // length of patternOrder table
    /*0x036*/ u16 loopStart;  // loop start point (index into patternOrder array)
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

struct SoundPlayer
{
    u8 unk0;
    /*0x01*/ u8 pan;
    /*0x02*/ u8 unk2;
    /*0x03*/ u8 volume;
    /*0x04*/ u32 uid;  // unique ID of sound playing instance
    /*0x08*/ u32 position;  // current byte offset within sound (14 fractional bits)
    /*0x0C*/ u32 sampleDelta;  // delta between samples (14 fractional bits)
    /*0x10*/ struct SoundEffect *soundEffect;
};

struct SoundBuffers
{
    s8 sndBufA[0x120];
    s8 sndBufB[0x120];
};

struct Struct08072750
{
    struct { u16 unk0, unk2; } unk0[12];
    u8 unk30;
    u8 unk31;
    u8 filler32[0x33-0x32];
    u8 unk33;
    u8 unk34;
    u8 unk35;
    u16 unk36[12];
};

struct InstrumentSound
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
    u8 filler29[1];
    /*0x2C*/ s16 *samplePtr;  // sample data
};

struct Instrument  // size = 0x13C?
{
    char name[0xC];
    u8 fillerC[4];
    u8 unk10;
    u8 filler11[0x16-0x11];
    u8 unk16;
    u8 unk17;
    u8 filler18[0x1B-0x18];
    /*0x121*/ u8 noteToSoundMap[121];  // note to sound mapping
    struct Struct08072750 unk94;
    struct Struct08072750 unkE4;
    u16 unk134;
    u8 filler136[2];
    /*0x138*/ struct InstrumentSound *sounds;
};

static_assert(offsetof(struct Instrument, unk134) == 0x134, Instrument_unk134);
static_assert(offsetof(struct Instrument, sounds) == 0x138, Instrument_unk138);

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
    /*0x12*/ u8 currInstrIndex;
    /*0x13*/ u8 prevInstrIndex;
    /*0x14*/ u8 currVolume;  // volume?
    u8 unk15;
    u8 unk16;
    u8 unk17;
    /*0x18*/ u8 currEffect;
    /*0x19*/ u8 prevEffect;
    /*0x1A*/ u8 currEffectParam;
    /*0x1B*/ u8 prevEffectParam;
    s8 unk1C;
    u8 unk1D;
    u16 unk1E;
    u32 unk20;
    s8 unk24;
    /*0x25*/ u8 prevHdrByte;
    s16 unk26;
    s16 unk28;
    /*0x2A*/ s16 pitchRelated;  // something related to pitch?
    s8 unk2C;
    s8 unk2D;  // pan?
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
    /*0x40*/ struct InstrumentSound *instrSound;  // sound for currently playing note
    u8 unk44;
    u8 unk45;
    u16 unk46;
    s16 unk48;
    s16 unk4A;
};

struct MusicPlayer
{
    struct MusicFile *musicFile;  // data of currently playing song
    struct MusicChannel channels[16];
    struct MusicChannel *unk4C4[8];
    /*0x4E4*/ u8 *noteDataPtr;  // ptr to note data?
    /*0x4E8*/ s16 volume;
    s16 unk4EA;
    /*0x4EC*/ s16 tickLength;
    /*0x4EE*/ u16 loopFlag;  // music loops if bit 0 is set
    s16 unk4F0;
    /*0x4F2*/ s16 currPatternIndex;
    u16 unk4F4;
    /*0x4F6*/ s16 currPatternTick;
    /*0x4F8*/ s16 unk4F8;
    u8 unk4FA;
    u8 unk4FB;
    u32 unk4FC;  // bitmask of used channels?
    u32 unk500;
    u32 unk504;
    s32 unk508;
    s32 unk50C;  // length of current note (in samples)?
    u8 unk510[3];
};  // unknown size

struct SoundWork
{
    /*0x00*/ u8 soundPlayersCount;
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
    /*0x6D0*/ s16 unk6D0[0x240];  // some sound buffer?
    /*0xB50*/ u8 codeBuf1[0xE8];  // ARM code buffer
    /*0xC38*/ u8 codeBuf2[0x390];  // ARM code buffer
    /*0xFC8*/ struct MusicPlayer musicPlayer;  // music state?
    /*0x14DC*/ struct SoundPlayer soundPlayers[1];  // variable length (by soundPlayersCount) sound effect state?
};

static void effect_0_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_1_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_2_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_3_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_4_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_5_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_6_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_7_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_10_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_default_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_34_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_37_func(struct MusicChannel *chan, s16 *dest, int numSamples);
static void effect_38_func(struct MusicChannel *chan, s16 *dest, int numSamples);

u16 gFrequencyLUT_08B3961C[768] =
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

static u8 gUnknown_08B39F1C[] =
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

// No idea why this needs a lookup table
static u32 sTimes64LUT[] =
{
    64*0,
    64*1,
    64*2,
    64*3,
    64*4,
    64*5,
    64*6,
    64*7,
    64*8,
    64*9,
    64*10,
    64*11,
    64*12,
    64*13,
    64*14,
    64*15,
};

// effect functions?
static void (*sEffectFuncs[])(struct MusicChannel *chan, s16 *dest, int numSamples) =
{
    effect_0_func,
    effect_1_func,
    effect_2_func,
    effect_3_func,
    effect_4_func,
    effect_5_func,
    effect_6_func,
    effect_7_func,
    effect_default_func,
    effect_default_func,
    effect_10_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_default_func,
    effect_34_func,
    effect_default_func,
    effect_default_func,
    effect_37_func,
    effect_38_func,
    effect_default_func,
    effect_default_func,
};

// Some kind of lookup table for adjusting volume
u16 gVolumeAdjustTable[513] =
{
#define X(n) (n >= 128 ? n : (n*2.0f - n*n/128.0f))
    X(0),   X(1),   X(2),   X(3),   X(4),   X(5),   X(6),   X(7),   X(8),   X(9), 
    X(10),  X(11),  X(12),  X(13),  X(14),  X(15),  X(16),  X(17),  X(18),  X(19), 
    X(20),  X(21),  X(22),  X(23),  X(24),  X(25),  X(26),  X(27),  X(28),  X(29), 
    X(30),  X(31),  X(32),  X(33),  X(34),  X(35),  X(36),  X(37),  X(38),  X(39), 
    X(40),  X(41),  X(42),  X(43),  X(44),  X(45),  X(46),  X(47),  X(48),  X(49), 
    X(50),  X(51),  X(52),  X(53),  X(54),  X(55),  X(56),  X(57),  X(58),  X(59), 
    X(60),  X(61),  X(62),  X(63),  X(64),  X(65),  X(66),  X(67),  X(68),  X(69), 
    X(70),  X(71),  X(72),  X(73),  X(74),  X(75),  X(76),  X(77),  X(78),  X(79), 
    X(80),  X(81),  X(82),  X(83),  X(84),  X(85),  X(86),  X(87),  X(88),  X(89), 
    X(90),  X(91),  X(92),  X(93),  X(94),  X(95),  X(96),  X(97),  X(98),  X(99), 
    X(100), X(101), X(102), X(103), X(104), X(105), X(106), X(107), X(108), X(109), 
    X(110), X(111), X(112), X(113), X(114), X(115), X(116), X(117), X(118), X(119), 
    X(120), X(121), X(122), X(123), X(124), X(125), X(126), X(127), X(128), X(129), 
    X(130), X(131), X(132), X(133), X(134), X(135), X(136), X(137), X(138), X(139), 
    X(140), X(141), X(142), X(143), X(144), X(145), X(146), X(147), X(148), X(149), 
    X(150), X(151), X(152), X(153), X(154), X(155), X(156), X(157), X(158), X(159), 
    X(160), X(161), X(162), X(163), X(164), X(165), X(166), X(167), X(168), X(169), 
    X(170), X(171), X(172), X(173), X(174), X(175), X(176), X(177), X(178), X(179), 
    X(180), X(181), X(182), X(183), X(184), X(185), X(186), X(187), X(188), X(189), 
    X(190), X(191), X(192), X(193), X(194), X(195), X(196), X(197), X(198), X(199), 
    X(200), X(201), X(202), X(203), X(204), X(205), X(206), X(207), X(208), X(209), 
    X(210), X(211), X(212), X(213), X(214), X(215), X(216), X(217), X(218), X(219), 
    X(220), X(221), X(222), X(223), X(224), X(225), X(226), X(227), X(228), X(229), 
    X(230), X(231), X(232), X(233), X(234), X(235), X(236), X(237), X(238), X(239), 
    X(240), X(241), X(242), X(243), X(244), X(245), X(246), X(247), X(248), X(249), 
    X(250), X(251), X(252), X(253), X(254), X(255), X(256), X(257), X(258), X(259), 
    X(260), X(261), X(262), X(263), X(264), X(265), X(266), X(267), X(268), X(269), 
    X(270), X(271), X(272), X(273), X(274), X(275), X(276), X(277), X(278), X(279), 
    X(280), X(281), X(282), X(283), X(284), X(285), X(286), X(287), X(288), X(289), 
    X(290), X(291), X(292), X(293), X(294), X(295), X(296), X(297), X(298), X(299), 
    X(300), X(301), X(302), X(303), X(304), X(305), X(306), X(307), X(308), X(309), 
    X(310), X(311), X(312), X(313), X(314), X(315), X(316), X(317), X(318), X(319), 
    X(320), X(321), X(322), X(323), X(324), X(325), X(326), X(327), X(328), X(329), 
    X(330), X(331), X(332), X(333), X(334), X(335), X(336), X(337), X(338), X(339), 
    X(340), X(341), X(342), X(343), X(344), X(345), X(346), X(347), X(348), X(349), 
    X(350), X(351), X(352), X(353), X(354), X(355), X(356), X(357), X(358), X(359), 
    X(360), X(361), X(362), X(363), X(364), X(365), X(366), X(367), X(368), X(369), 
    X(370), X(371), X(372), X(373), X(374), X(375), X(376), X(377), X(378), X(379), 
    X(380), X(381), X(382), X(383), X(384), X(385), X(386), X(387), X(388), X(389), 
    X(390), X(391), X(392), X(393), X(394), X(395), X(396), X(397), X(398), X(399), 
    X(400), X(401), X(402), X(403), X(404), X(405), X(406), X(407), X(408), X(409), 
    X(410), X(411), X(412), X(413), X(414), X(415), X(416), X(417), X(418), X(419), 
    X(420), X(421), X(422), X(423), X(424), X(425), X(426), X(427), X(428), X(429), 
    X(430), X(431), X(432), X(433), X(434), X(435), X(436), X(437), X(438), X(439), 
    X(440), X(441), X(442), X(443), X(444), X(445), X(446), X(447), X(448), X(449), 
    X(450), X(451), X(452), X(453), X(454), X(455), X(456), X(457), X(458), X(459), 
    X(460), X(461), X(462), X(463), X(464), X(465), X(466), X(467), X(468), X(469), 
    X(470), X(471), X(472), X(473), X(474), X(475), X(476), X(477), X(478), X(479), 
    X(480), X(481), X(482), X(483), X(484), X(485), X(486), X(487), X(488), X(489), 
    X(490), X(491), X(492), X(493), X(494), X(495), X(496), X(497), X(498), X(499), 
    X(500), X(501), X(502), X(503), X(504), X(505), X(506), X(507), X(508), X(509), 
    X(510), X(511), X(512),
#undef X
};

struct Struct08B3A4AC
{
    /*0x00*/ volatile u16 *lenEnvReg;
    /*0x04*/ volatile u16 *freqReg;
    u16 unk8;
    u16 unused;
};

static struct Struct08B3A4AC sGBCSoundRegDefs[] =
{
    { &REG_SOUND1CNT_H, &REG_SOUND1CNT_X, 0xF800, 0x07FF },
    { &REG_SOUND2CNT_L, &REG_SOUND2CNT_H, 0xF800, 0x07FF },
    { &REG_SOUND3CNT_H, &REG_SOUND3CNT_X, 0xF800, 0x07FF },
    { &REG_SOUND4CNT_L, &REG_SOUND4CNT_H, 0xFFFF, 0x0000 },
};

struct Struct080714B8
{
    s16 *buffer;
    void *samplePtr;
    u32 position;  // current position? 14 fractional bits
    u32 sampleDelta;  // delta between samples? 14 fractional bits
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 leftVol;
    u32 rightVol;
};

// ARM code
extern u8 sound_arm_1_start[];
extern u8 arm_update_sound_dma_transfer[];
extern u8 arm_load_sound_16bit_to_8bit[];
extern u8 sound_arm_2_start[];
extern u8 arm_mix_music_note[];

static void (*ptr_arm_clear_audio_buffer)(void *, int);
static void (*ptr_arm_mix_wave_sound)(struct Struct080714B8 *);
static void (*ptr_arm_update_sound_dma_transfer)(void);
static u8 bss_pad_1EEC[0x1EF8-0x1EF0];  // unused
static void (*ptr_arm_load_sound_16bit_to_8bit)(s16 *, s8 *, s8 *, int);
static void (*ptr_arm_mix_music_note)(struct MusicChannel *chan, s16 *dest, int numSamples, int);
static u32 gUnknown_03001F00;
static u32 gUnknown_03001F04;
static u32 gUnknown_03001F08;
extern struct SoundWork *gSoundWork;

static void render_sound_effect(struct SoundPlayer *arg0, s16 *buf, int arg2);
static int sub_080715B8(struct SoundPlayer *arg0, s16 *buf, int arg2);
void sub_08071E7C(u8 arg0, u8 arg1);
static void init_sound_mem(u8 *, int);
static void *alloc_sound_mem(int size);
static void reset_sound_mem(void);
static void sub_080731C4(struct MusicPlayer *arg0, struct MusicChannel *arg1);
static void sub_08073464(struct MusicChannel *arg0);
static void sub_080734F8(struct MusicPlayer *arg0, struct MusicFile *musFile);
static void sub_080735D0(struct MusicPlayer *arg0);
static int render_music(struct MusicPlayer *arg0, s16 *dest, int length);
static void sub_0807387C(struct MusicPlayer *arg0, int arg1, int arg2, u8 *arg3);
static void sub_080738D4(struct MusicPlayer *arg0, int arg1);
static void sub_08073914(struct MusicPlayer *arg0, int arg1);
static void sub_08073B18(void);
static void sub_08073E1C(void);

#define DMA_FLAGS (DMA_ENABLE | DMA_INTR_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD)

static void render_sound_effect(struct SoundPlayer *arg0, s16 *buf, int numSamples)
{
    int r8 = arg0->soundEffect->size << 14;
    int coeff = (arg0->volume * (128 - arg0->unk2)) >> 7;
    int leftVol, rightVol;
    u8 r0;
    struct SoundEffect *se;
    struct Struct080714B8 params;

    rightVol = arg0->pan;
    leftVol = 128 - arg0->pan;

    rightVol = (rightVol * coeff) >> 7;
    leftVol = (leftVol * coeff) >> 7;

    if (arg0->unk2 > 4)
    {
        u32 temp = sub_080715B8(arg0, buf, numSamples);
        if (coeff == 0)
        {
            if (temp >= r8)
                arg0->unk0 = 0;
            else
                arg0->position = temp;
            return;
        }
    }
    se = arg0->soundEffect;
    leftVol = gVolumeAdjustTable[leftVol];
    rightVol = gVolumeAdjustTable[rightVol];

    params.buffer = buf;
    params.samplePtr = se->samplePtr;
    params.position = arg0->position;
    params.sampleDelta = arg0->sampleDelta;
    r0 = arg0->unk0 & 4;
    if (r0 != 0)
    {
        int temp = se->size2;
        params.unk10 = temp << 14;
        params.unk14 = (temp - se->unk14) << 15;
    }
    else
    {
        params.unk10 = r8;
        params.unk14 = r0;
    }
    params.unk18 = numSamples;
    params.leftVol = leftVol;
    params.rightVol = rightVol;
    ptr_arm_mix_wave_sound(&params);
    arg0->position = params.position;
    if (arg0->position >= r8)
    {
        arg0->unk0 = 0;
        sub_08073914(&gSoundWork->musicPlayer, arg0 - gSoundWork->soundPlayers);
    }
}

static int sub_080715B8(struct SoundPlayer *arg0, s16 *buf, int numSamples)
{
    struct SoundEffect *se = arg0->soundEffect;
    int r12 = se->size << 14;
    int coeff = (arg0->volume * arg0->unk2) >> 7;
    int leftVol;
    int rightVol;
    u8 r0;
    struct Struct080714B8 params;

    leftVol = 128 - arg0->pan;
    leftVol = (leftVol >> 1) + 64;

    rightVol = arg0->pan;
    rightVol = (rightVol >> 1) + 64;

    leftVol = (leftVol * coeff) >> 7;
    rightVol = (rightVol * coeff) >> 7;

    leftVol = gVolumeAdjustTable[leftVol];
    rightVol = -gVolumeAdjustTable[rightVol];

    params.buffer = buf;
    params.samplePtr = se->samplePtr;
    params.position = 0x1000 + arg0->position;
    params.sampleDelta = arg0->sampleDelta;

    r0 = arg0->unk0 & 4;
    if (r0 != 0)
    {
        int temp = se->size2;
        params.unk10 = temp << 14;
        params.unk14 = (temp - se->unk14) << 15;
    }
    else
    {
        params.unk10 = r12;
        params.unk14 = r0;
    }
    params.unk18 = numSamples;
    params.leftVol = leftVol;
    params.rightVol = rightVol;
    ptr_arm_mix_wave_sound(&params);
    params.position -= 0x1000;
    return params.position;
}

void sound_init(void *buffer, int bufferSize, int arg2, int arg3, int arg4)
{
    u8 *codeBuf1;
    u8 *codeBuf2;

    if (arg2 == 0)
        arg2 = 1;

    init_sound_mem(buffer, bufferSize);
    gSoundWork = alloc_sound_mem(sizeof(struct SoundWork) + (arg2 - 1) * sizeof(struct SoundPlayer));
    gSoundWork->musicPlayer.unk4FB = arg4;

    ptr_arm_clear_audio_buffer = (void *)codeBuf1 = (void *)gSoundWork->codeBuf1;
    DmaCopy16(3, sound_arm_1_start, codeBuf1, 0xE8);
    ptr_arm_load_sound_16bit_to_8bit  = (void *)(codeBuf1 + (arm_load_sound_16bit_to_8bit - sound_arm_1_start));
    ptr_arm_update_sound_dma_transfer = (void *)(codeBuf1 + (arm_update_sound_dma_transfer - sound_arm_1_start));

    ptr_arm_mix_wave_sound = (void *)codeBuf2 = gSoundWork->codeBuf2;
    DmaCopy16(3, sound_arm_2_start, codeBuf2, 0x390);
    ptr_arm_mix_music_note = (void *)(codeBuf2 + (arm_mix_music_note - sound_arm_2_start));

    gSoundWork->soundPlayersCount = arg2;
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
    // Initialize the timer so that it overflows every 1024th clock cycle
    // The GBA runs at 16.78 MHz, so this should produce samples at 16384 Hz
    REG_TM1CNT = ((TIMER_ENABLE | TIMER_1CLK) << 16) | (u16)-1024;
    REG_IE |= INTR_FLAG_DMA1 | INTR_FLAG_DMA2;
    sub_08073B18();
}

void sound_update(void)
{
    s16 *src;
    u32 numSamples;  // number of samples (per output)
    s8 *outLeft;
    s8 *outRight;
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
    outLeft  = gSoundWork->unk10[r5].sndBufA;
    outRight = gSoundWork->unk10[r5].sndBufB;
    sp4 = gUnknown_03001F00;
    numSamples = 0x120;
    gSoundWork->unk1 |= 8;
    ptr_arm_clear_audio_buffer(src, numSamples);

    // mix music?
    if (gSoundWork->musicPlayer.currPatternIndex != -1 && gSoundWork->musicPlayer.musicFile != NULL)
    {
        u32 pos = 0;
        while (pos < numSamples)
            pos += render_music(&gSoundWork->musicPlayer, src + pos * 2, numSamples - pos);
    }

    // mix sound effects?
    for (i = 0; i < gSoundWork->soundPlayersCount; i++)
    {
        struct SoundPlayer *r2 = &gSoundWork->soundPlayers[i];

        if ((r2->unk0 & 3) && (r2->unk0 & 1))
            render_sound_effect(r2, src, numSamples);
    }
    ptr_arm_load_sound_16bit_to_8bit(src, outLeft, outRight, numSamples);
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

int play_sound_effect_08071990(int soundID, u8 arg1, u8 arg2, u8 pan, u8 arg4, u32 volume, int sampleRate)
{
    struct SoundPlayer *r9 = NULL;
    u32 r10 = gSoundWork->soundPlayersCount;
    int spC = FALSE;
    struct SoundEffect *se = &gSoundEffectTable[soundID];
    u8 r7;
    struct SoundPlayer *r3;
    struct SoundPlayer *r4;
    int i;

    if (arg2 > 15)
        arg2 = se->unk12;
    if (!(gSoundWork->unk1 & 0x10))
    {
        pan = 64;
        arg4 = 0;
    }
    if (se->size == 1)
    {
        sub_08071E7C(arg2, 0);
        goto error;
    }

    arg2 <<= 4;
    r7 = arg2;

    r3 = gSoundWork->soundPlayers;

    if (sampleRate == 0)
        sampleRate = se->sampleRate;
    else if (sampleRate > 0)
        sampleRate = (sampleRate * se->sampleRate) >> 13;
    else if (sampleRate < 0)
        sampleRate = -sampleRate;

    volume = volume * se->unk10 >> 7;

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
                        return r3->uid;
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
        r4->pan = pan;
        r4->unk2 = arg4;
        r4->volume = volume;
        r4->position = 0;
        r4->sampleDelta = (sampleRate << 14) >> 14;
        r4->uid = gSoundWork->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gSoundWork->musicPlayer, r4 - gSoundWork->soundPlayers);
        return r4->uid;
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
        r4->pan = pan;
        r4->unk2 = arg4;
        r4->volume = volume;
        r4->position = 0;
        r4->sampleDelta = (sampleRate << 14) >> 14;
        r4->uid = gSoundWork->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gSoundWork->musicPlayer, r4 - gSoundWork->soundPlayers);
        return r4->uid;
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

    for (i = 0; i < gSoundWork->soundPlayersCount; i++)
    {
        gSoundWork->soundPlayers[i].unk0 = 0;
        sub_08073914(&gSoundWork->musicPlayer, i);
    }
}

void sub_08071C6C(int soundID)
{
    int i;
    struct SoundEffect *se = &gSoundEffectTable[soundID];

    for (i = 0; i < gSoundWork->soundPlayersCount; i++)
    {
        if (gSoundWork->soundPlayers[i].soundEffect != se)
        {
            gSoundWork->soundPlayers[i].unk0 = 0;
            sub_08073914(&gSoundWork->musicPlayer, i);
        }
    }
}

void sub_08071CD4(void)
{
    int i;

    for (i = 0; i < gSoundWork->soundPlayersCount; i++)
    {
        if (gSoundWork->soundPlayers[i].unk0 & 4)
        {
            gSoundWork->soundPlayers[i].unk0 = 0;
            sub_08073914(&gSoundWork->musicPlayer, i);
        }
    }
}

static inline struct SoundPlayer *get_music_player_by_id(int uid)
{
    int i;
    u8 r4 = gSoundWork->soundPlayersCount;
    struct SoundPlayer *r3 = gSoundWork->soundPlayers;
    int index;

    for (i = 0; i < r4; i++, r3++)
    {
        if ((r3->unk0 & 3) && r3->uid == uid)
            return r3;
    }
    return NULL;
}

int sub_08071D28(int uid, int pan, int arg2)
{
    struct SoundPlayer *r3 = get_music_player_by_id(uid);

    if (r3 == NULL)
        return -1;
    if (!(gSoundWork->unk1 & 0x10))
    {
        pan = 64;
        arg2 = 0;
    }
    r3->pan = pan;
    r3->unk2 = arg2;
    return uid;
}

void sub_08071D9C(int uid)
{
    struct SoundPlayer *r3 = get_music_player_by_id(uid);
    int index;

    if (r3 == NULL)
        return;
    index = r3 - gSoundWork->soundPlayers;
    r3->unk0 = 0;
    sub_08073914(&gSoundWork->musicPlayer, index);
}

void sub_08071E14(int soundID)
{
    int r7 = 1;
    int i;
    struct SoundEffect *se = &gSoundEffectTable[soundID];
    struct SoundPlayer *r4 = gSoundWork->soundPlayers;
    u8 r6 = gSoundWork->soundPlayersCount;

    for (i = 0; i < r6; i++, r4++)
    {
        if ((r4->unk0 & r7) == r7 && r4->soundEffect == se)
        {
            r4->unk0 = 0;
            sub_08073914(&gSoundWork->musicPlayer, i);
        }
    }
}

void sub_08071E7C(u8 arg0, u8 arg1)
{
    int r7 = 1;
    int i;
    struct SoundPlayer *r4 = gSoundWork->soundPlayers;
    u8 r6 = gSoundWork->soundPlayersCount;

    arg0 <<= 4;
    if (arg1 == 0)
        r7 = 5;
    for (i = 0; i < r6; i++, r4++)
    {
        register u32 r0 asm("r0");
        if ((r7 & r4->unk0) == r7 && (r0 = (r4->unk0 & 0xF0)) == arg0)
        {
            r4->unk0 = 0;
            sub_08073914(&gSoundWork->musicPlayer, i);
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

static void sub_08071F10(struct MusicFile *musFile)
{
    sub_080734F8(&gSoundWork->musicPlayer, musFile);
}

static void sub_08071F2C(struct MusicFile *musFile)
{
    sub_080734F8(&gSoundWork->musicPlayer, musFile);
}

static void sub_08071F48(void)
{
    sub_080735D0(&gSoundWork->musicPlayer);
}

u32 get_bgm_volume(u32 bgmID)
{
    return gMusicTable[bgmID].volume;
}

void *get_bgm_data(u32 bgmID)
{
    return gMusicTable[bgmID].data;
}

u8 *sub_08071F8C(u32 bgmID)
{
    return gMusicTable[bgmID].unk6;
}

void sub_08071FA0(struct MusicFile *musFile, int arg1, int arg2, u8 *arg3)
{
    sub_080734F8(&gSoundWork->musicPlayer, musFile);
    sub_0807387C(&gSoundWork->musicPlayer, arg1, arg2, arg3);
}

int get_current_bgm(void)
{
    int i;

    if (sound_is_music_finished())
        return -1;
    for (i = 0; i < gBGMCount; i++)
    {
        if (gSoundWork->musicPlayer.musicFile == gMusicTable[i].data)
            return i;
    }
    return -2;
}

void *get_current_bgm_data(void)
{
    return gSoundWork->musicPlayer.musicFile;
}

void play_bgm(int bgmID, int volume, int arg2)
{
    sub_080734F8(&gSoundWork->musicPlayer, gMusicTable[bgmID].data);
    volume = (gMusicTable[bgmID].volume * volume) >> 7;
    sub_0807387C(&gSoundWork->musicPlayer, volume, arg2, gMusicTable[bgmID].unk6);
}

void sound_stop_music(void)
{
    if (gSoundWork->musicPlayer.currPatternIndex >= 0)
        gSoundWork->musicPlayer.unk4F8 = gSoundWork->musicPlayer.currPatternIndex;
    gSoundWork->musicPlayer.currPatternIndex = -2;
}

void sound_pause_music(void)
{
    if (gSoundWork->musicPlayer.currPatternIndex >= 0)
    {
        gSoundWork->musicPlayer.unk4F8 = gSoundWork->musicPlayer.currPatternIndex;
        gSoundWork->musicPlayer.currPatternIndex = -1;
    }
}

void sound_resume_music(void)
{
    if (gSoundWork->musicPlayer.currPatternIndex == -1)
        gSoundWork->musicPlayer.currPatternIndex = gSoundWork->musicPlayer.unk4F8;
}

int sound_is_music_finished(void)
{
    return (gSoundWork->musicPlayer.currPatternIndex == -2);
}

static int sub_0807216C(void)
{
    int i;
    u8 count = gSoundWork->soundPlayersCount;
    int r4 = 0;
    struct SoundPlayer *sndPlay = gSoundWork->soundPlayers;

    for (i = 0; i < count; i++, sndPlay++)
    {
        if (sndPlay->unk0 & 3)
            r4++;
    }
    return r4;
}

int sub_080721A8(int uid)
{
    return (get_music_player_by_id(uid) == NULL);
}

static u8 sub_080721F8(void)
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

static void init_sound_mem(u8 *arg0, int arg1)
{
    int i;

    sSoundMemHead = arg0;
    sSoundMemMaxSize = arg1;
    sSoundMemSize = 0;
    for (i = 0; i < sSoundMemMaxSize; i++)
        sSoundMemHead[i] = 0;
}

static void *alloc_sound_mem(int size)
{
    u8 *mem = sSoundMemHead + sSoundMemSize;

    if (sSoundMemSize + size > sSoundMemMaxSize)
        return NULL;
    sSoundMemSize += size;
    return mem;
}

static void reset_sound_mem(void)
{
    sSoundMemHead = NULL;
}

static int sub_080722A8(struct MusicPlayer *mplayer, struct MusicChannel *arg1)
{
    int r5 = arg1->unk1D;
    struct MusicChannel **chanPtrs = mplayer->unk4C4;
    int index = -1;
    int i;

    if (mplayer->unk4FA <= mplayer->unk4FB)
    {
        index = arg1 - mplayer->channels;
        if ((u32)chanPtrs[index] == 1)
            return 0;
    }
    else
    {
        for (i = 0; i < mplayer->unk4FB; i++)
        {
            struct MusicChannel *r0 = chanPtrs[i];

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
        if (chanPtrs[index] != NULL)
            chanPtrs[index]->unk1D &= ~1;
        chanPtrs[index] = arg1;
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

static int play_notes(struct MusicPlayer *mplayer)
{
    struct MusicChannel *channels = mplayer->channels;
    int sp8 = 0;
    u8 *r5 = mplayer->noteDataPtr;
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
        r2 = gUnknown_08B39F1C[chan->currEffect];
        if (r2 < 8 && chan->currEffectParam != 0)
            chan->unk34[r2] = chan->currEffectParam;
        //_080723F6
        chan->currEffectParam = 0;
        chan->currEffect = 0;
        chan->currVolume = 0;
        chan->currInstrIndex = 0;
        chan->currNote = 0;
        chan->unk16 = -128;
        if (hdrByte & 2)
        {
            chan->currInstrIndex = *r5;
            chan->prevInstrIndex = stupid(r5);
            r5++;
            //r5++;
        }
        else
        {
            if (hdrByte & 0x20)
                chan->currInstrIndex = chan->prevInstrIndex;
            else
                goto _08072498;
        }
        //_08072436
        //r1 = mplayer->unk0->instrumentIDs[chan->currInstrIndex - 1];
        chan->instrument = &gInstruments[mplayer->musicFile->instrumentIDs[chan->currInstrIndex - 1]];
        if (chan->instrument->unk17 & 0x80)
            chan->unk2D = chan->instrument->unk17 & 0x7F;
        //_08072472
        if (chan->instrSound != NULL)
        {
            //struct InstrumentSound *r2 = chan->instrSound;

            chan->unk24 = chan->unk2C = chan->instrSound->unkC;
            //chan->unk24 = r2->unkC;
            if (!(chan->instrSound->unk10 & 0x80))
                chan->unk2D = chan->instrSound->unk10;
        }
        //_08072498

    _08072498:
        if (hdrByte & 4)
        {
            chan->currVolume = *r5;
            chan->unk15 = stupid(r5);  // 0xFF
            r5++;

            chan->unk16 = *r5;
            chan->unk17 = stupid(r5);  // 0xFF
            r5++;
        }
        //_080724C4
        else if (hdrByte & 0x40)
        {
            chan->currVolume = chan->unk15;
            chan->unk16 = chan->unk17;
        }

        //_080724D6
        if (hdrByte & 8)  // effect?
        {
            //int r2;

            chan->currEffect = *r5;
            chan->prevEffect = stupid(r5);
            r5++;
            chan->currEffectParam = *r5;
            chan->prevEffectParam = stupid(r5);
            r5++;
            r2 = gUnknown_08B39F1C[chan->currEffect];
            if (r2 <= 7 && chan->currEffectParam == 0)
            {
                chan->currEffectParam = chan->unk34[r2];
            }
            //to _08072528
        }
        //_08072516
        else if (hdrByte & 0x80)
        {
            chan->currEffect = chan->prevEffect;
            chan->currEffectParam = chan->prevEffectParam;
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
            s16 note;
            s16 r2;

            note = chan->currNote;
            if (chan->currEffect == 3 || chan->currEffect == 5)
            {
                int asdf;
                asdf = (s16)note - 12;
                r2 = chan->instrSound->unk11 + asdf;
                chan->pitchRelated = 0x1E00 - (r2<<6) - (chan->unk1C >> 1) + 64;
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
                    struct InstrumentSound *r6;


                    r3_ = chan->instrument;
                    r1 = r3_->noteToSoundMap[note];
                    r6 = &r3_->sounds[r1];
                    if (r3_->unk17 & 0x80)
                        chan->unk2D = r3_->unk17 & 0x7F;
                    if (r6->unk28 <= 2)
                        chan->unk46 = 0;
                    else
                        chan->unk46 = -1;
                    zero = 0;
                    chan->unk20 = zero;
                    chan->unk1E = 1;
                    chan->instrSound = r6;
                    if (!(r6->unk10 & 0x80))
                        chan->unk2D = r6->unk10;
                    //_08072604
                    chan->unk2C = r6->unkC;
                    chan->unk1C = r6->unkE;
                    chan->unk2F = (chan->unk2E * r3_->unk16) >> 6;
                    chan->unk2F = (chan->unk2F * r6->unkD) >> 6;
                    asdf = &chan->unk0;
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
                    note += chan->instrSound->unk11;
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
                    sub_080722A8(mplayer, chan);
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
        if (chan->currEffect == 4 || chan->currEffect == 6)
            chan->unk46 = -1;
    _080726FA:
        if (!(chan->unk16 & 0x80))
            chan->unk2D = chan->unk16;
        sub_080731C4(mplayer, chan);
        sub_08073464(chan);
        chan->prevHdrByte = hdrByte;
    }
    //_08072728
    mplayer->unk4FC = sp8;
    mplayer->noteDataPtr = r5;
    // missing return?
}
#else
__attribute__((naked))
static int play_notes(struct MusicPlayer *mplayer)
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
	ldr r1, [r0]  @ mplayer->data\n\
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

static void sub_08072750(struct MusicChannel_sub *arg0, struct Struct08072750 *arg1, int arg2)
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

static void sub_0807282C(struct MusicChannel *chan)
{
    u8 r2 = chan->currVolume;

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
    case 0x70:
        chan->unk2C += r2 & 0xF;
        break;
    case 0x60:
        chan->unk2C -= r2 & 0xF;
        break;
    case 0xD0:
        chan->unk2D -= r2 & 0xF;
        break;
    case 0xE0:
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

// TODO: compile with auto-inlining on
static inline void effect_default_func_inline(struct MusicChannel *chan, s16 *arg1, int arg2)
{
    int r7;

    r7 = chan->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        chan->unk2D = 32;
    gUnknown_03001F28 = chan;
    ptr_arm_mix_music_note(chan, arg1, arg2, (gUnknown_03000820 == 0));
    chan->unk2D = r7;
}

static void effect_0_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    u32 param = chan->currEffectParam;
    int index;
    int arr[3];

    if (param == 0)
    {
        effect_default_func_inline(chan, dest, numSamples);
    }
    else
    {
        index = gUnknown_03000824;
        while (index >= 3)  // hey, ever heard of the modulo (%) operator?
            index -= 3;
        arr[0] = chan->unk28;
        arr[1] = arr[0] - sTimes64LUT[(param >> 4) & 0xF];
        arr[2] = arr[0] - sTimes64LUT[param & 0xF];
        chan->unk26 = arr[index];
        if (chan->unk26 < 40)
            chan->unk26 = 40;
        effect_default_func_inline(chan, dest, numSamples);
    }
}

static void effect_1_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    int param = chan->currEffectParam;

    if (param == 0)
        param = chan->unk34[0];

    if (gUnknown_03000824 != 0)
    {
        chan->unk26 -= param << 2;
        if (chan->unk26 < 40)
            chan->unk26 = 40;
        chan->unk28 = chan->unk26;
    }
    effect_default_func_inline(chan, dest, numSamples);
}

static void effect_2_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int param = chan->currEffectParam;

    if (param == 0)
        param = chan->unk35;

    if (gUnknown_03000824 != 0)
    {
        chan->unk26 += param << 2;
        if (chan->unk26 > 0x1E00)
            chan->unk26 = 0x1E00;
        chan->unk28 = chan->unk26;
    }
    effect_default_func_inline(chan, dest, arg2);
}

static void effect_3_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int param = chan->currEffectParam;
    int r1 = chan->unk26;
    int r3 = chan->pitchRelated;

    if (param == 0)
        param = chan->unk36;

    param <<= 2;
    if (gUnknown_03000824 != 0)
    {
        if (r3 != 0)
        {
            if (r1 > r3)
            {
                r1 -= param;
                if (r1 <= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
            else
            {
                r1 += param;
                if (r1 >= r3)
                {
                    r1 = r3;
                    r3 = 0;
                }
            }
        }
        chan->unk26 = r1;
        chan->unk28 = r1;
        chan->pitchRelated = r3;
    }
    effect_default_func_inline(chan, dest, arg2);
}

static void effect_4_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int param = chan->currEffectParam;
    int r2 = chan->unk28;
    s32 *r5 = gUnknown_08B39C1C[chan->unk44];
    int r4 = chan->unk48;
    int r1;

    if (param == 0)
        param = chan->unk37;
    r1 = (param & 0xF) << 1;
    param = (param >> 4) & 0xF;
    chan->unk26 = r2 + ((r5[r4] * r1) >> 16);
    if (chan->unk26 < 40)
        chan->unk26 = 40;
    else if (chan->unk26 > 0x1E00)
        chan->unk26 = 0x1E00;
    r4 += param;
    r4 &= 0x3F;
    chan->unk48 = r4;
    effect_default_func_inline(chan, dest, arg2);
}

static void effect_5_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int r4 = chan->unk36;
    u32 param = chan->currEffectParam;
    int r3 = chan->pitchRelated;
    int r1 = chan->unk26;

    param = ((param & 0xF0) != 0) ? (param >> 4) : -(param & 0xF);
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
        chan->pitchRelated = r3;
        chan->unk26 = r1;
        chan->unk28 = r1;
        chan->unk2C += param;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    effect_default_func_inline(chan, dest, arg2);
}

static void effect_6_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int r4 = chan->unk37;
    int r6 = chan->unk28;
    u32 param = chan->currEffectParam;
    s32 *r2 = gUnknown_08B39C1C[chan->unk44];
    int r3 = chan->unk48;
    int r1;

    param = ((param & 0xF0) != 0) ? (param >> 4) : -(param & 0xF);
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
        chan->unk2C += param;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    effect_default_func_inline(chan, dest, arg2);
}

static void effect_7_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    int param = chan->currEffectParam;
    int r2 = chan->unk24;
    s32 *r5 = gUnknown_08B39C1C[chan->unk45];
    int r4 = chan->unk4A;
    int r1;

    if (param == 0)
        param = chan->unk39;
    r1 = (param & 0xF) << 2;
    param = (param >> 4) & 0xF;
    chan->unk2C = r2 + ((r5[r4] * r1) >> 16);
    if (chan->unk2C < 0)
        chan->unk2C = 0;
    else if (chan->unk2C > 64)
        chan->unk2C = 64;
    r4 += param;
    r4 &= 0x3F;
    chan->unk4A = r4;

    effect_default_func_inline(chan, dest, arg2);
}

static void effect_10_func(struct MusicChannel *chan, s16 *dest, int arg2)
{
    u32 param = chan->currEffectParam;
    int r3 = ((param & 0xF0) != 0) ? (param >> 4) : -(param & 0xF);

    if (gUnknown_03000824 != 0)
    {
        chan->unk2C += r3;
        if (chan->unk2C < 0)
            chan->unk2C = 0;
        else if (chan->unk2C > 64)
            chan->unk2C = 64;
        chan->unk24 = chan->unk2C;
    }

    effect_default_func_inline(chan, dest, arg2);
}

static void sub_08072FC8(struct MusicPlayer *mplayer, s16 *dest, int numSamples)
{
    int r9 = mplayer->unk4FA;
    u8 sp8 = mplayer->unk4FC;
    u32 i;
    struct MusicChannel *chan;
    int eff;

    if (gUnknown_03000820 != 0)
    {
        for (i = 0; i < r9; i++)
        {
            chan = &mplayer->channels[i];
            if (chan->instrument != NULL && chan->unk26 != 0)
            {
                if (!((sp8 >> i) & 1) || (eff = chan->currEffect) != 38 || (u32)gUnknown_03000824 >= chan->currEffectParam)
                {
                    effect_default_func_inline(chan, dest, numSamples);
                }
            }
        }
    }
    else
    {
        for (i = 0; i < r9; i++)
        {
            chan = &mplayer->channels[i];
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
                    effect_default_func_inline(chan, dest, numSamples);
                }
                else
                {
                    eff = chan->currEffect;
                    chan->unk26 = chan->unk28;
                    chan->unk2C = chan->unk24;
                    sub_0807282C(chan);
                    chan->unk28 = chan->unk26;
                    chan->unk24 = chan->unk2C;
                    sEffectFuncs[eff](chan, dest, numSamples);
                }
            }
        }
    }
}

static void sub_080731C4(struct MusicPlayer *mplayer, struct MusicChannel *chan)
{
    int effect = chan->currEffect;
    int param = chan->currEffectParam;

    switch (effect)
    {
    case 8:
    case 33:
        chan->unk2D = param;
        break;
    case 9:
        chan->unk20 = param << 22;
        break;
    case 12:
        chan->unk24 = param;
        if (chan->unk24 > 64)
            chan->unk24 = 64;
        break;
    case 26:
        chan->unk28 -= param << 2;
        if (chan->unk28 < 40)
            chan->unk28 = 40;
        break;
    case 27:
        chan->unk28 += param << 2;
        if (chan->unk28 > 0x1E00)
            chan->unk28 = 0x1E00;
        break;
    case 29:
        if (param <= 3)
            chan->unk48 = 0;
        param &= 3;
        if (param == 3)
            param = 0;
        chan->unk44 = param;
        break;
    case 32:
        if (param <= 3)
            chan->unk4A = 0;
        param &= 3;
        if (param == 3)
            param = 0;
        chan->unk45 = param;
        break;
    case 35:
        chan->unk24 += param;
        if (chan->unk24 > 64)
            chan->unk24 = 64;
        break;
    case 36:
        chan->unk24 -= param;
        if (chan->unk24 < 0)
            chan->unk24 = 0;
        break;
    case 23:
        chan->unk28 -= param;
        if (chan->unk28 < 40)
            chan->unk28 = 40;
        break;
    case 24:
        chan->unk28 += param;
        if (chan->unk28 > 0x1E00)
            chan->unk28 = 0x1E00;
        break;
    case 15:
        if (param != 0)
        {
            if (param <= 32)
            {
                mplayer->tickLength = param;
                mplayer->unk508 = (mplayer->tickLength << 14) / mplayer->unk4EA;
                mplayer->unk50C = mplayer->unk508 / mplayer->tickLength;
            }
            else
            {
                mplayer->unk4EA = param * 50 / 125;
                mplayer->unk508 = (mplayer->tickLength << 14) / mplayer->unk4EA;
                mplayer->unk50C = mplayer->unk508 / mplayer->tickLength;
            }
        }
        if (mplayer->unk508 == 0x3B1 && mplayer->unk50C == 0x13B)
            mplayer->unk508 = 0x3B0;
        break;
    case 11:
        if (mplayer->loopFlag & 1)
            mplayer->currPatternIndex = param;
        else
            mplayer->currPatternIndex = -2;
        mplayer->currPatternTick = 0;
        break;
    case 13:
        mplayer->currPatternIndex = mplayer->unk4F0 + 1;
        if (mplayer->currPatternIndex >= mplayer->musicFile->songLength)
        {
            if (mplayer->loopFlag & 1)
                mplayer->currPatternIndex = mplayer->musicFile->loopStart;
            else
                mplayer->currPatternIndex = -2;
        }
        mplayer->currPatternTick = ((param >> 4) * 10) + (param & 0xF);
        break;
    }
}

static void sub_08073464(struct MusicChannel *chan)
{
    u32 r1 = chan->currVolume;
    u32 hi = r1 & 0xF0;
    u32 lo = r1 & 0x0F;

    switch (hi)
    {
    default:
    case 16:
        if (hi - 16 < 64)
            chan->unk24 = r1 - 16;
        break;
    case 128:
        chan->unk24 -= lo;
        break;
    case 144:
        chan->unk24 += lo;
        break;
    case 160:
        chan->unk37 = (chan->unk37 & 0xF) | (lo << 4);
        break;
    case 176:
        if (lo < 4)
            chan->unk48 = 0;
        lo &= 3;
        if (lo == 3)
            lo = 0;
        chan->unk44 = lo;
        break;
    case 192:
        chan->unk2D = lo;
        break;
    }
}

static inline void sub_080734F8_inline(struct MusicChannel *chan, u8 *r1)
{
    u8 *dest;
    u32 i;

    // zero out entire struct
    dest = (u8 *)chan;
    for (i = 0; i < 76; i++)
        dest[i] = 0;

    chan->unk2E = r1[0];
    chan->unk2D = r1[1];
    chan->unk44 = 0;
    chan->unk45 = 0;
}

static void sub_080734F8(struct MusicPlayer *mplayer, struct MusicFile *musFile)
{
    int i;

    mplayer->currPatternIndex = -1;
    mplayer->musicFile = musFile;
    for (i = 0; i < 16; i++)
        sub_080734F8_inline(&mplayer->channels[i], mplayer->musicFile->unk244[i]);
    for (i = 0; i < 8; i++)
        mplayer->unk4C4[i] = 0;
    if (mplayer->unk4FB >= 8)
        mplayer->unk4FB = 8;
    mplayer->unk4FA = mplayer->musicFile->unk38;
    if (mplayer->unk4FA >= 16)
        mplayer->unk4FA = 16;
    mplayer->volume = 0;
    mplayer->loopFlag = 0;
    sub_080735D0(mplayer);
    mplayer->currPatternIndex = -1;
}

static void sub_080735D0(struct MusicPlayer *mplayer)
{
    int i;

    mplayer->unk500 = 0;
    mplayer->unk504 = 0;
    mplayer->unk4EA = mplayer->musicFile->unk40 * 50 / 125;
    mplayer->tickLength = mplayer->musicFile->tickLength;
    mplayer->unk508 = (mplayer->tickLength << 14) / mplayer->unk4EA;
    mplayer->unk50C = mplayer->unk508 / mplayer->tickLength;
    mplayer->currPatternTick = 0;
    mplayer->unk4F4 = 0;
    mplayer->unk4FC = 0;
    mplayer->unk4F0 = -1;
    mplayer->unk4F8 = -1;
    mplayer->currPatternIndex = 0;

    for (i = 0; i < mplayer->unk4FB; i++)
    {
        if ((u32)mplayer->unk4C4[i] != 1)
            mplayer->unk4C4[i] = NULL;
    }
}

static int render_music(struct MusicPlayer *mplayer, s16 *dest, int numSamples)
{
    struct MusicFile *musFile = mplayer->musicFile;
    s32 r6;
    s32 r7;
    struct MusicPattern *pat;

    if (mplayer->currPatternIndex < 0)
        return numSamples;
    r6 = mplayer->unk504;
    r7 = mplayer->unk500;
    if (r6 == 0 && r7 == 0)
    {
        if (mplayer->unk4F0 != mplayer->currPatternIndex)
            mplayer->noteDataPtr = (u8 *)musFile + musFile->patterns[musFile->patternOrder[mplayer->currPatternIndex]].offset;
        mplayer->unk4F0 = mplayer->currPatternIndex;
        mplayer->unk4F4 = mplayer->currPatternTick;
        mplayer->currPatternTick++;
    }

    pat = &musFile->patterns[musFile->patternOrder[mplayer->unk4F0]];
    if (mplayer->currPatternTick >= pat->length)  // end of pattern
    {
        mplayer->currPatternTick = 0;  // restart
        do
        {
            mplayer->currPatternIndex++;
            if (mplayer->currPatternIndex >= musFile->songLength)
            {
                if (mplayer->loopFlag & 1)
                {
                    mplayer->unk4F0 = -1;
                    mplayer->currPatternIndex = musFile->loopStart;
                }
                else
                    mplayer->currPatternIndex = -2;
                break;
            }
        } while (musFile->patternOrder[mplayer->currPatternIndex] >= musFile->unk3A);
    }
    gVolume_03001F24 = mplayer->volume;
    if (r6 == 0 && r7 == 0)
        play_notes(mplayer);
    if (r6 + numSamples >= mplayer->unk50C)
        numSamples = mplayer->unk50C - r6;
    gUnknown_03000824 = r7;
    gUnknown_03000820 = r6;
    sub_08072FC8(mplayer, dest, numSamples);
    mplayer->volume = gVolume_03001F24;
    r6 += numSamples;
    if (r6 >= mplayer->unk50C)
    {
        r6 = 0;
        r7++;
        if (r7 >= mplayer->tickLength)
            r7 = 0;
    }
    mplayer->unk504 = r6;
    mplayer->unk500 = r7;
    return numSamples;
}

// unused
static void sub_08073858(struct MusicPlayer *mplayer, void *arg1)
{
    void *dest = (void *)EWRAM;

    mplayer->musicFile = NULL;
    LZ77UnCompWram(arg1, dest);
    sub_080734F8(mplayer, dest);
}

static void sub_0807387C(struct MusicPlayer *mplayer, int volume, int loopFlag, u8 *arg3)
{
    int i;

    mplayer->volume = volume;
    mplayer->loopFlag = loopFlag;
    if (arg3 != NULL)
    {
        for (i = 0; i < 3; i++)
            mplayer->unk510[i] = arg3[i];
    }
    else
    {
        for (i = 0; i < 3; i++)
            mplayer->unk510[i] = 0;
    }
    sub_080735D0(mplayer);
}

static void sub_080738D4(struct MusicPlayer *mplayer, int index)
{
    if (mplayer->unk510[index] == 0)
        index = 7 - index;
    else
        index = mplayer->unk510[index] - 1;
    if ((u32)mplayer->unk4C4[index] >= 2)
        mplayer->unk4C4[index]->unk1D &= ~1;
    mplayer->unk4C4[index] = (void *)1;
}

static void sub_08073914(struct MusicPlayer *mplayer, int index)
{
    if (mplayer->unk510[index] == 0)
        index = 7 - index;
    else
        index = mplayer->unk510[index] - 1;
    if ((u32)mplayer->unk4C4[index] == 1)
        mplayer->unk4C4[index] = NULL;
}

static void effect_default_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    effect_default_func_inline(chan, dest, numSamples);
}

static void effect_34_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    int param = chan->currEffectParam;

    if (param == 0)
        param = chan->unk3A;
    if (gUnknown_03000824 % (param + 1) == param)
        chan->unk20 = 0;
    effect_default_func_inline(chan, dest, numSamples);
}

static void effect_37_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    int param = chan->currEffectParam;

    if (param == 0)
        param = chan->unk3B;
    if (gUnknown_03000824 == param)
    {
        chan->unk2C = 0;
        chan->unk24 = 0;
    }
    effect_default_func_inline(chan, dest, numSamples);
}

static void effect_38_func(struct MusicChannel *chan, s16 *dest, int numSamples)
{
    int param = chan->currEffectParam;

    if (param == 0)
        param = chan->unk38;
    if (gUnknown_03000824 < param)
        return;
    effect_default_func_inline(chan, dest, numSamples);
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

static void sub_08073B18(void)
{
    int i;

    REG_SOUNDCNT_L |= 0xCC00;
    REG_SOUNDCNT_L &= 0xFF00;
    REG_SOUNDCNT_H |= SOUND_CGB_MIX_FULL;
    for (i = 0; i < 4; i++)
    {
        *sGBCSoundRegDefs[i].lenEnvReg = 0;
        *sGBCSoundRegDefs[i].freqReg = 0;
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

        r0 = &sGBCSoundRegDefs[i];
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
                struct Struct08B3A4AC *r0 = &sGBCSoundRegDefs[r3->unk2];
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

// unused
static void sub_08073CE8(struct Struct08073CE8 *arg0, int arg1, int arg2)  // unused?
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

static void sub_08073DC4(void)
{
    if (gUnknown_03000840.unk0 == 2)
    {
        gUnknown_03000840.unk0 = 1;
        REG_SOUNDCNT_L &= 0xFF00;
    }
}

static void sub_08073DEC(void)
{
    if (gUnknown_03000840.unk0 == 1)
    {
        gUnknown_03000840.unk0 = 2;
        REG_SOUNDCNT_L &= 0xFF00;
        REG_SOUNDCNT_L |= gUnknown_03000840.unk2;
    }
}

static void sub_08073E1C(void)
{
    gUnknown_03000840.unk0 = 0;
    REG_SOUNDCNT_L &= 0xFF00;
}
