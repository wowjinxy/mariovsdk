#include "gba/gba.h"
#include "global.h"

#if 1
struct SongData_sub
{
    u32 unk0;
    u32 unk4;
};

struct SongData
{
    u8 filler0[0x34];
    u16 unk34;
    u16 unk36;
    u16 unk38;
    u16 unk3A;
    u8 filler3C[0x3E - 0x3C];
    u16 unk3E;
    u16 unk40;
    u8 filler42[2];
    u8 unk44[0x244-0x44];
    u8 unk244[1][2];
    u8 filler246[0x284-0x246];
    struct SongData_sub unk284[1];
};

struct Struct1F10_sub2
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    struct SoundEffect *unk10;
};

// sound buffers?
struct Struct1F10_sub
{
    u8 sndBufA[0x120];
    u8 sndBufB[0x120];
};

struct Struct1F10_sub3_sub_child
{
    u8 filler0[0x94];
    u8 unk94[0xC9-0x94];  // Struct08072750
    u8 unkC9;
    u8 fillerCA[0xE4-0xCA];
    u8 unkE4[0x119-0xE4];  // Struct08072750
    u8 unk119;
};

struct Struct1F10_sub3_sub
{
    u8 unk0[2];
    u8 unk2;
    u16 unk4;
    //u8 filler3[2];
    //u8 unk5;
    u8 filler6[0xA-0x6];
    //u8 unk9;
    u8 fillerA[0x14-0xA];
    u8 unk14;
    u8 filler15[3];
    u8 unk18;
    u8 filler19[1];
    u8 unk1A;
    u8 filler1B[0x24-0x1B];
    u8 unk24;
    s16 unk26;
    s16 unk28;
    s16 unk2A;
    s8 unk2C;
    s8 unk2D;
    u8 unk2E;
    u8 filler2F[1];
    u16 unk30;
    u16 unk32;
    u8 unk34;
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 filler38[0x3C-0x38];
    struct Struct1F10_sub3_sub_child *unk3C;
    u8 filler40[4];
    u8 unk44;
    u8 unk45;
    u8 filler46[0x48-0x46];
    s16 unk48;
    u8 filler4A[0x4C-0x4A];
};

static_assert(offsetof(struct Struct1F10_sub3_sub, unk26) == 0x26, unk26);

static_assert(sizeof(struct Struct1F10_sub3_sub) == 76, asdf);

struct Struct1F10_sub3_child
{
    u8 filler0[0x1D];
    u8 unk1D;
};

struct Struct1F10_sub3
{
    struct SongData *unk0;  // data of currently playing song
    struct Struct1F10_sub3_sub unk4[0];
    u8 filler4[0x9-0x4];
    u8 filler9;
    u8 fillerA[0x244-0xA];
    //u8 filler50[0x244-0x50];
    //u8 unk244;
    //u8 unk245;
    u8 filler244[2];
    u8 filler246[0x4C4-0x246];
    //u32 unk4C4[1];
    struct Struct1F10_sub3_child *unk4C4[1];
    u8 filler4C8[0x4E4-0x4C8];
    void *unk4E4;
    s16 unk4E8;
    s16 unk4EA;
    s16 unk4EC;
    u16 unk4EE;
    s16 unk4F0;
    #define unk4F2 unk14BA
    /*0x4F2*/ s16 unk14BA;
    u16 unk4F4;
    s16 unk4F6;
    #define unk4F8 unk14C0
    /*0x4F8*/ s16 unk14C0;
    u8 unk4FA;
    u8 unk4FB;
    u32 unk4FC;
    u32 unk500;
    u32 unk504;
    u32 unk508;
    s32 unk50C;
    u8 unk510[1];
};  // unknown size

static_assert(offsetof(struct Struct1F10_sub3, unk4FB) == 0x4FB, b);

struct Struct1F10
{
    u8 unk0;
    u8 unk1;
    u8 unk2;  // timer until next update?
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u32 unkC;
    struct Struct1F10_sub unk10[2];
    u8 filler490[0x6D0-0x490];
    u8 unk6D0[0xB50-0x6D0];
    u8 unkB50[0xE8];  // ARM code buffer
    u8 unkC38[0x390];  // ARM code buffer
    struct Struct1F10_sub3 unkFC8;
    u8 filler14C4[0x14DC-0xFC8-sizeof(struct Struct1F10_sub3)];
    struct Struct1F10_sub2 unk14DC[1];
};

// ARM code
extern u8 arm_clear_audio_buffer[];
extern u8 arm_set_sound_dma_regs[];
extern u8 arm_load_sound_16bit_to_8bit[];
extern u8 sub_08001760_end[];
extern u8 sub_08001968[];

extern void (*ptr_arm_clear_audio_buffer)(void *, int);
extern u8 *gUnknown_03001EE4;
extern void (*ptr_arm_set_sound_dma_regs)(void);
extern void (*ptr_arm_load_sound_16bit_to_8bit)();
extern void (*gUnknown_03001EFC)();
extern u32 gUnknown_03001F00;
extern u32 gUnknown_03001F04;
extern u32 gUnknown_03001F08;
extern struct Struct1F10 *gSoundWork;

#define DMA_FLAGS (DMA_ENABLE | DMA_INTR_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD)

void sound_init(void *arg0, int arg1, int arg2, int arg3, int arg4)
{
    u8 *buffer;
    u8 *buffer2;

    if (arg2 == 0)
        arg2 = 1;

    sub_08072230();
    gSoundWork = sub_0807226C((arg2 - 1) * 20 + 0x14F0);
    gSoundWork->unkFC8.unk4FB = arg4;

    ptr_arm_clear_audio_buffer = buffer = (void *)gSoundWork->unkB50;
    DmaCopy16(3, arm_clear_audio_buffer, buffer, 0xE8);
    ptr_arm_load_sound_16bit_to_8bit = (void *)(buffer + (arm_load_sound_16bit_to_8bit - arm_clear_audio_buffer));
    ptr_arm_set_sound_dma_regs = (void *)(buffer + (arm_set_sound_dma_regs - arm_clear_audio_buffer));

    gUnknown_03001EE4 = buffer2 = gSoundWork->unkC38;
    DmaCopy16(3, sub_08001760_end, buffer2, 0x390);
    gUnknown_03001EFC = (void *)((u8 *)buffer2 + (sub_08001968 - sub_08001760_end));

    gSoundWork->unk0 = arg2;
    gSoundWork->unk4 = arg4;
    gSoundWork->unk3 = arg3;
    gSoundWork->unk1 = 18;
    gSoundWork->unk8 = gSoundWork->unk6 = gSoundWork->unk7 = 2;
    gSoundWork->unk5 = 0;
    gSoundWork->unk2 = 18;
    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE;
    REG_SOUNDCNT_L = 0;
    REG_SOUNDCNT_H = SOUND_A_MIX_FULL | SOUND_A_LEFT_OUTPUT | SOUND_A_TIMER_1 | SOUND_A_FIFO_RESET
                   | SOUND_B_MIX_FULL | SOUND_B_RIGHT_OUTPUT | SOUND_B_TIMER_1 | SOUND_B_FIFO_RESET;
    REG_DMA1DAD = &REG_FIFO_A;
    REG_DMA2DAD = &REG_FIFO_B;
    REG_DMA1SAD = &gSoundWork->unk10[gSoundWork->unk6].sndBufA;
    REG_DMA2SAD = &gSoundWork->unk10[gSoundWork->unk6].sndBufB;
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
    if (gSoundWork->unkFC8.unk14BA != -1 && gSoundWork->unkFC8.unk0 != NULL)
    {
        u32 pos = 0;
        while (pos < length)
            pos += sub_080736A0(&gSoundWork->unkFC8, src + pos * 4, length - pos);
    }
    for (i = 0; i < gSoundWork->unk0; i++)
    {
        struct Struct1F10_sub2 *r2 = &gSoundWork->unk14DC[i];

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
            sub_08071C00();
    }
}

int play_sound_effect_08071990(int soundID, u8 arg1, u8 arg2, u8 arg3, u8 arg4, u32 arg5, int arg6)
{
    struct Struct1F10_sub2 *r9 = NULL;
    u32 r10 = gSoundWork->unk0;
    int spC = FALSE;
    struct SoundEffect *se = &gSoundEffectTable[soundID];
    u8 r7;
    struct Struct1F10_sub2 *r3;
    struct Struct1F10_sub2 *r4;
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

    if (arg6 == 0)
        arg6 = se->sampleRate;
    else if (arg6 > 0)
        arg6 = (arg6 * se->sampleRate) >> 13;
    else if (arg6 < 0)
        arg6 = -arg6;

    arg5 = arg5 * se->unk10 >> 7;

    if (arg1 & 24)
    {
        for (i = 0; i < r10; i++, r3++)
        {
            r4 = r3;
            if (r4->unk0 & 3)
            {
                u8 r1 = r4->unk0 & 240;
                if (r3->unk10 == se)
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
        r4->unk10 = se;
        r4->unk0 = 1;
        r4->unk0 |= (arg1 & 4) | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (arg6 << 14) >> 14;
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
        r4->unk10 = se;
        r4->unk0 = 1;
        r4->unk0 |= arg1 | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (arg6 << 14) >> 14;
        r4->unk4 = gSoundWork->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gSoundWork->unkFC8, r4 - gSoundWork->unk14DC);
        return r4->unk4;
    }

error:
    return -1;
}

void sub_08071BCC(void)
{
    ptr_arm_set_sound_dma_regs();
}

void sub_08071BE0(void)
{
    REG_DMA1CNT = 0;
    REG_DMA2CNT = 0;
    gSoundWork->unk1 |= 4;
}

void sub_08071C00(void)
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

void sub_08071C6C(int arg0)
{
    int i;
    struct SoundEffect *r7 = &gSoundEffectTable[arg0];

    for (i = 0; i < gSoundWork->unk0; i++)
    {
        if (gSoundWork->unk14DC[i].unk10 != r7)
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

static inline struct Struct1F10_sub2 *testinline2(int arg0)
{
    int i;
    u8 r4 = gSoundWork->unk0;
    struct Struct1F10_sub2 *r3 = gSoundWork->unk14DC;
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
    struct Struct1F10_sub2 *r3 = testinline2(arg0);

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
    struct Struct1F10_sub2 *r3 = testinline2(arg0);
    int index;

    if (r3 == NULL)
        return;
    index = r3 - gSoundWork->unk14DC;
    r3->unk0 = 0;
    sub_08073914(&gSoundWork->unkFC8, index);
}

void sub_08071E14(int arg0)
{
    int r7 = 1;
    int i;
    struct SoundEffect *r8 = &gSoundEffectTable[arg0];
    struct Struct1F10_sub2 *r4 = gSoundWork->unk14DC;
    u8 r6 = gSoundWork->unk0;

    for (i = 0; i < r6; i++, r4++)
    {
        if ((r4->unk0 & r7) == r7 && r4->unk10 == r8)
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
    struct Struct1F10_sub2 *r4 = gSoundWork->unk14DC;
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
    sub_0807229C();
    gSoundWork = NULL;
}

void sub_08071F10(int arg0)
{
    sub_080734F8(&gSoundWork->unkFC8, arg0);
}

void sub_08071F2C(int arg0)
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

void sub_08071FA0(int arg0, int arg1, int arg2, int arg3)
{
    sub_080734F8(&gSoundWork->unkFC8, arg0);
    sub_0807387C(&gSoundWork->unkFC8, arg1, arg2, arg3);
}

int get_current_bgm(void)
{
    int i;

    if (sub_08072144() != 0)
        return -1;
    if (gUnknown_08D7B10C >= 0)
    {
        for (i = 0; i < gUnknown_08D7B10C; i++)
        {
            if (gSoundWork->unkFC8.unk0 == gMusicTable[i].data)
                return i;
        }
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
    if (gSoundWork->unkFC8.unk14BA >= 0)
        gSoundWork->unkFC8.unk14C0 = gSoundWork->unkFC8.unk14BA;
    gSoundWork->unkFC8.unk14BA = -2;
}

void sub_080720E4(void)
{
    if (gSoundWork->unkFC8.unk14BA >= 0)
    {
        gSoundWork->unkFC8.unk14C0 = gSoundWork->unkFC8.unk14BA;
        gSoundWork->unkFC8.unk14BA = -1;
    }
}

void sub_08072118(void)
{
    if (gSoundWork->unkFC8.unk14BA == -1)
        gSoundWork->unkFC8.unk14BA = gSoundWork->unkFC8.unk14C0;
}

int sub_08072144(void)
{
    return (gSoundWork->unkFC8.unk14BA == -2);
}

int sub_0807216C(void)
{
    int i;
    u8 r1 = gSoundWork->unk0;
    int r4 = 0;
    struct Struct1F10_sub2 *r3 = gSoundWork->unk14DC;

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

extern u32 gUnknown_03001F14;
extern u8 *gUnknown_03001F18;
extern u32 gUnknown_03001F1C;

void sub_08072230(u8 *arg0, int arg1)
{
    int i;

    gUnknown_03001F18 = arg0;
    gUnknown_03001F14 = arg1;
    gUnknown_03001F1C = 0;
    for (i = 0; i < gUnknown_03001F14; i++)
        gUnknown_03001F18[i] = 0;
}

u8 *sub_0807226C(int arg0)
{
    u8 *r2 = gUnknown_03001F18 + gUnknown_03001F1C;
    if (gUnknown_03001F1C + arg0 > gUnknown_03001F14)
        return NULL;
    gUnknown_03001F1C = gUnknown_03001F1C + arg0;
    return r2;
}

void sub_0807229C(void)
{
    gUnknown_03001F18 = NULL;
}

extern u32 gUnknown_03001F24;
extern u32 gUnknown_03000820;
extern u32 gUnknown_03000824;
extern struct Struct1F10_sub3_sub *gUnknown_03001F28;

extern void (*gUnknown_08B3A004[])(struct Struct1F10_sub3_sub *, void *, int);

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
    u16 unk36[0];
};

void sub_08072750(struct Struct1F10_sub3_sub *arg0, struct Struct08072750 *arg1, int arg2)
{
    u8 r6;

    if (*(u16 *)arg0->unk0 & 1)
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
        *(u16 *)arg0->unk0 = arg1->unk0[r6].unk2 << 8;
        if ((arg0->unk2 >> 4) == arg1->unk30)
            *(u16 *)arg0->unk0 |= 1;
    }
    else
    {
        *(u16 *)arg0->unk0 += arg1->unk36[r6] << 1;
        arg0->unk4++;
    }
}

void sub_0807282C(struct Struct1F10_sub3_sub *arg0)
{
    u8 r2 = arg0->unk14;

    register int r0 asm("r0") = arg0->unk32 >> 1;
    if (r0 != 0)
    {
        int r1 = arg0->unk30 - r0;
        if (r1 < 0)
        {
            arg0->unk30 = 0;
            asm("");
        }
        else
            arg0->unk30 = r1;
    }

    switch (r2 & 0xF0)
    {
    case 112:
        arg0->unk2C += r2 & 0xF;
        break;
    case 96:
        arg0->unk2C -= r2 & 0xF;
        break;
    case 208:
        arg0->unk2D -= r2 & 0xF;
        break;
    case 224:
        arg0->unk2D += r2 & 0xF;
        break;
    case 0xF0:  // needed to match
        break;
    }
    if (arg0->unk3C->unkC9 & 1)
        sub_08072750(arg0, arg0->unk3C->unk94, arg0->unk32 & 1);
    if (arg0->unk3C->unk119 & 1)
        sub_08072750((u8 *)arg0 + 8, arg0->unk3C->unkE4, arg0->unk32 & 1);
}

void sub_08072A04(struct Struct1F10_sub3_sub *arg0, void *arg1, int arg2)
{
    int r1 = arg0->unk1A;
    int r7;

    if (r1 == 0)
        r1 = arg0->unk34;

    if (gUnknown_03000824 != 0)
    {
        arg0->unk26 -= r1 << 2;
        if (arg0->unk26 < 40)
            arg0->unk26 = 40;
        arg0->unk28 = arg0->unk26;
    }
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08072A88(struct Struct1F10_sub3_sub *arg0, void *arg1, int arg2)
{
    int r1 = arg0->unk1A;
    int r7;

    if (r1 == 0)
        r1 = arg0->unk35;

    if (gUnknown_03000824 != 0)
    {
        arg0->unk26 += r1 << 2;
        if (arg0->unk26 > 0x1E00)
            arg0->unk26 = 0x1E00;
        arg0->unk28 = arg0->unk26;
    }
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08072B10(struct Struct1F10_sub3_sub *arg0, void *arg1, int arg2)
{
    int r4 = arg0->unk1A;
    int r1 = arg0->unk26;
    int r3 = arg0->unk2A;
    int r7;

    if (r4 == 0)
        r4 = arg0->unk36;

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
        arg0->unk26 = r1;
        arg0->unk28 = r1;
        arg0->unk2A = r3;
    }
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

extern u8 gUnknown_08B39C1C[];

void sub_08072BA8(struct Struct1F10_sub3_sub *arg0, void *arg1, int arg2)
{
    int r3 = arg0->unk1A;
    int r2 = arg0->unk28;
    s32 *r5 = gUnknown_08B39C1C + (arg0->unk44 << 8);
    int r4 = arg0->unk48;
    int r7;
    int r1;

    if (r3 == 0)
        r3 = arg0->unk37;
    r1 = (r3 & 0xF) << 1;
    r3 = (r3 >> 4) & 0xF;
    arg0->unk26 = r2 + ((r5[r4] * r1) >> 16);
    if (arg0->unk26 < 40)
        arg0->unk26 = 40;
    else if (arg0->unk26 > 0x1E00)
        arg0->unk26 = 0x1E00;
    r4 += r3;
    r4 &= 0x3F;
    arg0->unk48 = r4;
    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08072C74(struct Struct1F10_sub3_sub *arg0, void *arg1, int arg2)
{
    int r4 = arg0->unk36;
    u32 r2 = arg0->unk1A;
    int r3 = arg0->unk2A;
    int r1 = arg0->unk26;
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
        arg0->unk2A = r3;
        arg0->unk26 = r1;
        arg0->unk28 = r1;
        arg0->unk2C += r2;
        if (arg0->unk2C < 0)
            arg0->unk2C = 0;
        else if (arg0->unk2C > 64)
            arg0->unk2C = 64;
        arg0->unk24 = arg0->unk2C;
    }
    //_08072CFC

    r7 = arg0->unk2D;
    if (!(gSoundWork->unk1 & 0x10))
        arg0->unk2D = 32;
    gUnknown_03001F28 = arg0;
    gUnknown_03001EFC(arg0, arg1, arg2, (gUnknown_03000820 == 0));
    arg0->unk2D = r7;
}

void sub_08072FC8(struct Struct1F10_sub3 *arg0, void *arg1, int arg2)
{
    int r9 = arg0->unk4FA;
    u8 sp8 = arg0->unk4FC;
    u32 i;
    struct Struct1F10_sub3_sub *r6;
    int r7;

    if (gUnknown_03000820 != 0)
    {
        for (i = 0; i < r9; i++)
        {
            r6 = &arg0->unk4[i];
            if (r6->unk3C != NULL && r6->unk26 != 0)
            {
                if (!((sp8 >> i) & 1) || (r7 = r6->unk18) != 38 || gUnknown_03000824 >= r6->unk1A)
                {
                    r7 = r6->unk2D;
                    if (!(gSoundWork->unk1 & 0x10))
                        r6->unk2D = 32;
                    gUnknown_03001F28 = r6;
                    gUnknown_03001EFC(r6, arg1, arg2, (gUnknown_03000820 == 0));
                    r6->unk2D = r7;
                }
            }
        }
    }
    else
    {
        for (i = 0; i < r9; i++)
        {
            r6 = &arg0->unk4[i];
            if (r6->unk3C != NULL && r6->unk26 != 0)
            {
                if (!((sp8 >> i) & 1))
                {
                    r6->unk26 = r6->unk28;
                    r6->unk2C = r6->unk24;
                    if (r6->unk3C->unkC9 & 1)
                        sub_08072750(r6, r6->unk3C->unk94, r6->unk32 & 1);
                    if (r6->unk3C->unk119 & 1)
                        sub_08072750((u8 *)r6 + 8, r6->unk3C->unkE4, r6->unk32 & 1);
                    r6->unk28 = r6->unk26;
                    r6->unk24 = r6->unk2C;
                    r7 = r6->unk2D;
                    if (!(gSoundWork->unk1 & 0x10))
                        r6->unk2D = 32;
                    gUnknown_03001F28 = r6;
                    gUnknown_03001EFC(r6, arg1, arg2, (gUnknown_03000820 == 0));
                    r6->unk2D = r7;
                }
                else
                {
                    r7 = r6->unk18;
                    r6->unk26 = r6->unk28;
                    r6->unk2C = r6->unk24;
                    sub_0807282C(r6);
                    r6->unk28 = r6->unk26;
                    r6->unk24 = r6->unk2C;
                    gUnknown_08B3A004[r7](r6, arg1, arg2);
                }
            }
        }
    }
}

/*
struct Struct080722A8_1
{
    u8 filler0[0x4C4];
    u8 unk4C4;
    u8 filler4C5[0x4FA-0x4C5];
    u8 unk4FA;
    u8 unk4FB;
};

struct Struct080722A8_2
{
    u8 filler0[0x1D];
    u8 unk1D;
};

void sub_080722A8(struct Struct080722A8_1 *arg0, struct Struct080722A8_2 *arg1)
{
    int r1 = -1;

    if (arg0->unk4FA <= arg0->unk4FB)
    {

    }
    //_080722F4
    else if (
}
*/

static inline void testinline3(struct Struct1F10_sub3_sub *r4)
{
    int j;
    for (j = 0; j < 76; j++)
            r4->unk0[j] = 0 /*0*/;  // r12
}

// nonmatching
void sub_080734F8(struct Struct1F10_sub3 *arg0, void *arg1)
{
    int i;  // r5
    u32 j;  // r2
    //int r12 = 0;

    arg0->unk14BA = -1;
    arg0->unk0 = arg1;
    for (i = 0; i < 16; i++)
    {
        struct Struct1F10_sub3_sub *r3 = &arg0->unk4[i];
        u8 *r1 = arg0->unk0->unk244[i];
        struct Struct1F10_sub3_sub *r4 = r3;
        //u8 *arr = r4->unk0;

        //testinline3(r3);
        for (j = 0; j < 76; j++)
            r4->unk0[j] = 20 /*0*/;  // r12
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
    arg0->unk4E8 = 0;
    arg0->unk4EE = 0;
    sub_080735D0(arg0);
    arg0->unk14BA = -1;
}

void sub_080735D0(struct Struct1F10_sub3 *arg0)
{
    int i;

    arg0->unk500 = 0;
    arg0->unk504 = 0;
    arg0->unk4EA = arg0->unk0->unk40 * 50 / 125;
    arg0->unk4EC = arg0->unk0->unk3E;
    arg0->unk508 = (arg0->unk4EC << 14) / arg0->unk4EA;
    arg0->unk50C = arg0->unk508 / arg0->unk4EC;
    arg0->unk4F6 = 0;
    arg0->unk4F4 = 0;
    arg0->unk4FC = 0;
    arg0->unk4F0 = -1;
    arg0->unk14C0 = -1;
    arg0->unk14BA = 0;

    for (i = 0; i < arg0->unk4FB; i++)
    {
        if (arg0->unk4C4[i] != 1)
            arg0->unk4C4[i] = 0;
    }
}

// copies (and mixes?) audio?
int sub_080736A0(struct Struct1F10_sub3 *arg0, void *dest, int length)
{
    struct SongData *r3 = arg0->unk0;
    s32 r6;
    s32 r7;
    struct SongData_sub *temp;

    if (arg0->unk4F2 < 0)
        return length;
    r6 = arg0->unk504;
    r7 = arg0->unk500;
    if (r6 == 0 && r7 == 0)
    {
        if (arg0->unk4F0 != arg0->unk4F2)
            arg0->unk4E4 = (u8 *)r3 + r3->unk284[r3->unk44[arg0->unk4F2]].unk4;
        arg0->unk4F0 = arg0->unk4F2;
        arg0->unk4F4 = arg0->unk4F6;
        arg0->unk4F6++;
    }

    temp = &r3->unk284[r3->unk44[arg0->unk4F0]];
    if (arg0->unk4F6 >= temp->unk0)
    {
        arg0->unk4F6 = 0;
        do
        {
            arg0->unk4F2++;
            if (arg0->unk4F2 >= r3->unk34)
            {
                if (arg0->unk4EE & 1)
                {
                    arg0->unk4F0 = -1;
                    arg0->unk4F2 = r3->unk36;
                }
                else
                    arg0->unk4F2 = -2;
                break;
            }
        } while (r3->unk44[arg0->unk4F2] >= r3->unk3A);
    }
    gUnknown_03001F24 = arg0->unk4E8;
    if (r6 == 0 && r7 == 0)
        sub_08072368(arg0);
    if (r6 + length >= arg0->unk50C)
        length = arg0->unk50C - r6;
    gUnknown_03000824 = r7;
    gUnknown_03000820 = r6;
    sub_08072FC8(arg0, dest, length);
    arg0->unk4E8 = gUnknown_03001F24;
    r6 += length;
    if (r6 >= arg0->unk50C)
    {
        r6 = 0;
        r7++;
        if (r7 >= arg0->unk4EC)
            r7 = 0;
    }
    arg0->unk504 = r6;
    arg0->unk500 = r7;
    return length;
}

void sub_0807387C(struct Struct1F10_sub3 *arg0, int arg1, int arg2, u8 *arg3)
{
    int i;

    arg0->unk4E8 = arg1;
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

void sub_080738D4(struct Struct1F10_sub3 *arg0, int arg1)
{
    if (arg0->unk510[arg1] == 0)
        arg1 = 7 - arg1;
    else
        arg1 = arg0->unk510[arg1] - 1;
    if ((u32)arg0->unk4C4[arg1] >= 2)
        arg0->unk4C4[arg1]->unk1D &= ~1;
    arg0->unk4C4[arg1] = (void *)1;
}

void sub_08073914(struct Struct1F10_sub3 *arg0, int arg1)
{
    if (arg0->unk510[arg1] == 0)
        arg1 = 7 - arg1;
    else
        arg1 = arg0->unk510[arg1] - 1;
    if ((u32)arg0->unk4C4[arg1] == 1)
        arg0->unk4C4[arg1] = NULL;
}

struct Struct03000840_child_sub
{
    u16 unk0;
    //u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
};

struct Struct03000840_child
{
    u8 filler0[0x26];
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
    struct Struct03000840_sub unk4[1];
    struct Struct03000840_sub unk10[1];
    u8 filler1C[0x34-0x1C];
    u32 unk34;
    u32 unk38;
    struct Struct03000840_child *unk3C;
} gUnknown_03000840;

extern struct Struct08B3A4AC
{
    volatile u16 *unk0;
    volatile u16 *unk4;
    u16 unk8;
} gUnknown_08B3A4AC[];

void sub_08073B18(void)
{
    int i;

    REG_SOUNDCNT_L |= 0xCC00;
    REG_SOUNDCNT_L &= 0xFF00;
    REG_SOUNDCNT_H |= 2;
    for (i = 0; i < 4; i++)
    {
        *gUnknown_08B3A4AC[i].unk0 = 0;
        *gUnknown_08B3A4AC[i].unk4 = 0;
    }
    gUnknown_03000840.unk0 = 0;
    gUnknown_03000840.unk3C = NULL;
    gUnknown_03000840.unk34 = 0;
    gUnknown_03000840.unk38 = 0;
    REG_TM0CNT = 0x00C1FC00;
    REG_IE |= INTR_FLAG_TIMER0;
}

// nonmatching
void sub_08073B90(void)
{
    int i;  // r7
    struct Struct03000840_child_sub *r3;
    struct Struct03000840_child_sub *r4;

    if (gUnknown_03000840.unk0 != 2)
        return;
    if (gUnknown_03000840.unk1 != 0)
        return;
    if (gUnknown_03000840.unk34 >= gUnknown_03000840.unk3C->unk26)
        return;
    gUnknown_03000840.unk1 = 1;
    for (i = 0; i < 2; i++)
    {
        struct Struct03000840_sub *r4 = &gUnknown_03000840.unk4[i];
        int r1 = r4->unk4;
        struct Struct08B3A4AC *r0;

        if (r1 == 0)
            r4->unk0 = r4->unk8;
        else if (r1 > 0)
        {
            r4->unk0 += r1;
            if (r4->unk0 >= r4->unk8)
            {
                r4->unk4 = 0;
                r4->unk0 = r1;
            }
        }
        else
        {
            r4->unk0 += r1;
            if (r4->unk0 <= r4->unk8)
            {
                r4->unk4 = 0;
                r4->unk0 = r1;
            }
        }
        r0 = &gUnknown_08B3A4AC[i];
        *r0->unk4 = (r0->unk8 & *r0->unk4) | (r4->unk0 >> 9);
        //*gUnknown_08B3A4AC[i].unk4 = (gUnknown_08B3A4AC[i].unk8 & *gUnknown_08B3A4AC[i].unk4) | (r4->unk0 >> 9);
    }

    if (gUnknown_03000840.unk38 != 0)
    {
        // to _08073CD2
        gUnknown_03000840.unk38--;
        //gUnknown_03000840.unk1 = 0;
        //return;
        gUnknown_03000840.unk1 = 0;
    }
    else
    {
        //_08073C32
        r3 = &gUnknown_03000840.unk3C->unk28[gUnknown_03000840.unk34];
        r4 = &gUnknown_03000840.unk3C->unk28[gUnknown_03000840.unk3C->unk26];

        do
        {
            if (r3->unk3 == 0)
            {
                struct Struct08B3A4AC *r0 = &gUnknown_08B3A4AC[r3->unk2];
                *r0->unk0 = r3->unk4;
                *r0->unk4 = ((u32)(gUnknown_03000840.unk4[r3->unk2].unk0 << 7) >> 16) | r3->unk6;
                /*
                volatile u16 *r0;
                volatile u16 *r2;
                r0 = gUnknown_08B3A4AC[r3->unk2].unk0;
                r2 = gUnknown_08B3A4AC[r3->unk2].unk4;
                *r2;
                *r0 = r3->unk4;
                *r2 = ((u32)(gUnknown_03000840.unk4[r3->unk2].unk0 << 7) >> 16) | r3->unk6;
                */
            }
            else if (r3->unk3 == 1)
            {
                gUnknown_03000840.unk4[r3->unk2].unk8 = (s32)(r3->unk4 << 21) >> 12;
                gUnknown_03000840.unk4[r3->unk2].unk4 = *(s32 *)&r3->unk4 >> 11;
            }
            //_08073CB0
        } while (++r3 < r4 && r3->unk0 == 0);
        //_08073CB6
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
#endif
