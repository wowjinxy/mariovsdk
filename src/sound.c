#include "gba/gba.h"
#include "global.h"

struct SongData
{
    u8 filler0[0x38];
    u16 unk38;
    u8 filler3A[0x3E - 0x3A];
    u16 unk3E;
    u16 unk40;
    u8 filler42[0x244-0x42];
    u8 unk244[1][2];
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
    struct Struct08B3A4E0 *unk10;
};

struct Struct1F10_sub
{
    u8 sndBufA[0x120];
    u8 sndBufB[0x120];
};

struct Struct1F10_sub3_sub
{
    u8 unk0[0x5];
    u8 unk5;
    u8 filler6[0xA-0x6];
    //u8 unk9;
    u8 fillerA[0x2D-0xA];
    u8 unk2D;
    u8 unk2E;
    u8 filler2F[0x44-0x2F];
    u8 unk44;
    u8 unk45;
    u8 filler46[0x4C-0x46];
};

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
    u8 unk9;
    u8 fillerA[0x244-0xA];
    //u8 filler50[0x244-0x50];
    //u8 unk244;
    //u8 unk245;
    u8 filler244[2];
    u8 filler246[0x4C4-0x246];
    //u32 unk4C4[1];
    struct Struct1F10_sub3_child *unk4C4[1];
    u8 filler4C8[0x4E8-0x4C8];
    u16 unk4E8;
    s16 unk4EA;
    s16 unk4EC;
    u16 unk4EE;
    u16 unk4F0;
    /*0x4F2*/ s16 unk14BA;
    u16 unk4F4;
    u16 unk4F6;
    /*0x4F8*/ s16 unk14C0;
    u8 unk4FA;
    u8 unk4FB;
    u32 unk4FC;
    u32 unk500;
    u32 unk504;
    u32 unk508;
    u32 unk50C;
    u8 unk510[1];
};  // unknown size

static_assert(offsetof(struct Struct1F10_sub3, unk4FB) == 0x4FB, b);

struct Struct1F10
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
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
    //void *unkFC8;  // data of currently playing song
    //u8 fillerFCC[0x14BA-0xFCC];
    //s16 unk14BA;
    //u8 filler14C4[0x14C0-0x14C4];
    //s16 unk14C0;
    //u8 filler14C2[1];
    //u8 unk14C3;
    u8 filler14C4[0x14DC-0xFC8-sizeof(struct Struct1F10_sub3)];
    struct Struct1F10_sub2 unk14DC[1];
};

// ARM code
extern u8 sub_0800023C[];
extern u8 sub_080002A0[];
extern u8 sound_related_08000260[];
extern u8 sub_08001760_end[];
extern u8 sub_08001968[];

extern void (*gUnknown_03001EE0)();
extern u8 *gUnknown_03001EE4;
extern void (*gUnknown_03001EE8)(void);
extern void (*gUnknown_03001EF8)();
extern u8 *gUnknown_03001EFC;
extern u32 gUnknown_03001F00;
extern u32 gUnknown_03001F04;
extern u32 gUnknown_03001F08;
extern struct Struct1F10 *gUnknown_03001F10;

#define DMA_FLAGS (DMA_ENABLE | DMA_INTR_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD)

void sound_init(void *arg0, int arg1, int arg2, int arg3, int arg4)
{
    if (arg2 == 0)
        arg2 = 1;

    sub_08072230();
    gUnknown_03001F10 = sub_0807226C((arg2 - 1) * 20 + 0x14F0);
    gUnknown_03001F10->unkFC8.unk4FB = arg4;

    gUnknown_03001EE0 = (void *)gUnknown_03001F10->unkB50;
    DmaCopy16(3, sub_0800023C, gUnknown_03001EE0, 0xE8);
    gUnknown_03001EF8 = (void *)((u8 *)gUnknown_03001EE0 + (sound_related_08000260 - sub_0800023C));
    gUnknown_03001EE8 = (u8 *)gUnknown_03001EE0 + (sub_080002A0 - sub_0800023C);

    gUnknown_03001EE4 = gUnknown_03001F10->unkC38;
    DmaCopy16(3, sub_08001760_end, gUnknown_03001F10->unkC38, 0x390);
    gUnknown_03001EFC = gUnknown_03001EE4 + (sub_08001968 - sub_08001760_end);

    gUnknown_03001F10->unk0 = arg2;
    gUnknown_03001F10->unk4 = arg4;
    gUnknown_03001F10->unk3 = arg3;
    gUnknown_03001F10->unk1 = 18;
    gUnknown_03001F10->unk8 = gUnknown_03001F10->unk6 = gUnknown_03001F10->unk7 = 2;
    gUnknown_03001F10->unk5 = 0;
    gUnknown_03001F10->unk2 = 18;
    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE;
    REG_SOUNDCNT_L = 0;
    REG_SOUNDCNT_H = SOUND_A_MIX_FULL | SOUND_A_LEFT_OUTPUT | SOUND_A_TIMER_1 | SOUND_A_FIFO_RESET
                   | SOUND_B_MIX_FULL | SOUND_B_RIGHT_OUTPUT | SOUND_B_TIMER_1 | SOUND_B_FIFO_RESET;
    REG_DMA1DAD = &REG_FIFO_A;
    REG_DMA2DAD = &REG_FIFO_B;
    REG_DMA1SAD = &gUnknown_03001F10->unk10[gUnknown_03001F10->unk6].sndBufA;
    REG_DMA2SAD = &gUnknown_03001F10->unk10[gUnknown_03001F10->unk6].sndBufB;
    REG_DMA1CNT = (DMA_FLAGS << 16) | 4;
    REG_DMA2CNT = (DMA_FLAGS << 16) | 4;
    REG_TM1CNT = ((TIMER_ENABLE | TIMER_1CLK) << 16) | 0xFC00;
    REG_IE |= INTR_FLAG_DMA1 | INTR_FLAG_DMA2;
    sub_08073B18();
}

void sub_08071800(void)
{
    u8 *r8;
    u32 size;
    void *r10;
    void *sp0;
    int sp4;
    u32 i;
    u32 r5;

    if (gUnknown_03001F10 == NULL)
        return;  // not initialized
    if (gUnknown_03001F10->unk1 & 1)
        return;
    if (gUnknown_03001F10->unk1 & 8)
        return;
    r5 = gUnknown_03001F10->unk5;
    r8 = gUnknown_03001F10->unk6D0;
    r10 = gUnknown_03001F10->unk10[r5].sndBufA;
    sp0 = gUnknown_03001F10->unk10[r5].sndBufB;
    sp4 = gUnknown_03001F00;
    size = 0x120;
    gUnknown_03001F10->unk1 |= 8;
    gUnknown_03001EE0(r8, size);
    if (gUnknown_03001F10->unkFC8.unk14BA != -1 && gUnknown_03001F10->unkFC8.unk0 != NULL)
    {
        u32 r4 = 0;
        while (r4 < size)
            r4 += sub_080736A0(&gUnknown_03001F10->unkFC8, r8 + r4 * 4, size - r4);
    }
    for (i = 0; i < gUnknown_03001F10->unk0; i++)
    {
        struct Struct1F10_sub2 *r2 = &gUnknown_03001F10->unk14DC[i];

        if ((r2->unk0 & 3) && (r2->unk0 & 1))
            sub_080714B8(r2, r8, size);
    }
    gUnknown_03001EF8(r8, r10, sp0, size);
    gUnknown_03001F10->unk8 = r5;
    r5++;
    if (r5 > 2)
        r5 = 0;
    gUnknown_03001F10->unk5 = r5;
    gUnknown_03001F04 = gUnknown_03001F00 - sp4;
    gUnknown_03001F08 += gUnknown_03001F04;
    gUnknown_03001F10->unk1 &= ~8;
}

void sub_0807194C(void)
{
    if (gUnknown_03001F10 == NULL)
        return;
    if (gUnknown_03001F10->unk1 & 2)
    {
        gUnknown_03001F10->unk1 &= ~3;
        gUnknown_03001F10->unk7 = gUnknown_03001F10->unk8;
    }
    else
    {
        gUnknown_03001F10->unk1 |= 1;
        if (!(gUnknown_03001F10->unk1 & 4))
            sub_08071C00();
    }
}

static inline int testinline(int arg6, struct Struct08B3A4E0 *r12)
{
    if (arg6 == 0)
        return r12->sampleRate;
    else
    {
        if (arg6 > 0)
            return (arg6 * r12->sampleRate) >> 13;
        else if (arg6 < 0)
            return -arg6;
    }
    return arg6;
}

int play_sound_effect_08071990(int soundID, u8 arg1, u8 arg2, u8 arg3, u8 arg4, u32 arg5, int arg6)
{
    struct Struct1F10_sub2 *r9 = NULL;
    u32 r10 = gUnknown_03001F10->unk0;
    int spC = FALSE;
    struct Struct08B3A4E0 *r12 = &gUnknown_08B3A4E0[soundID];
    u8 r7;
    struct Struct1F10_sub2 *r3;
    struct Struct1F10_sub2 *r4;
    int i;

    if (arg2 > 15)
        arg2 = r12->unk12;
    if (!(gUnknown_03001F10->unk1 & 0x10))
    {
        arg3 = 64;
        arg4 = 0;
    }
    if (r12->sampleSize == 1)
    {
        sub_08071E7C(arg2, 0);
        goto error;
    }

    arg2 <<= 4;
    r7 = arg2;

    r3 = gUnknown_03001F10->unk14DC;

    if (arg6 == 0)
        arg6 = r12->sampleRate;
    else if (arg6 > 0)
        arg6 = (arg6 * r12->sampleRate) >> 13;
    else if (arg6 < 0)
        arg6 = -arg6;

    arg5 = arg5 * r12->unk10 >> 7;

    if (arg1 & 24)
    {
        for (i = 0; i < r10; i++, r3++)
        {
            r4 = r3;
            if (r4->unk0 & 3)
            {
                u8 r1 = r4->unk0 & 240;
                if (r3->unk10 == r12)
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
        r4->unk10 = r12;
        r4->unk0 = 1;
        r4->unk0 |= (arg1 & 4) | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (arg6 << 14) >> 14;
        r4->unk4 = gUnknown_03001F10->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gUnknown_03001F10->unkFC8, r4 - gUnknown_03001F10->unk14DC);
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
        r4->unk10 = r12;
        r4->unk0 = 1;
        r4->unk0 |= arg1 | arg2;
        r4->unk1 = arg3;
        r4->unk2 = arg4;
        r4->unk3 = arg5;
        r4->unk8 = 0;
        r4->unkC = (arg6 << 14) >> 14;
        r4->unk4 = gUnknown_03001F10->unkC++ & 0x7FFFFFFF;
        sub_080738D4(&gUnknown_03001F10->unkFC8, r4 - gUnknown_03001F10->unk14DC);
        return r4->unk4;
    }

error:
    return -1;
}

void sub_08071BCC(void)
{
    gUnknown_03001EE8();
}

void sub_08071BE0(void)
{
    REG_DMA1CNT = 0;
    REG_DMA2CNT = 0;
    gUnknown_03001F10->unk1 |= 4;
}

void sub_08071C00(void)
{
    gUnknown_03001F10->unk1 &= ~4;
    REG_DMA1CNT = (DMA_FLAGS << 16) | 4;
    REG_DMA2CNT = (DMA_FLAGS << 16) | 4;
}

void sub_08071C24(void)
{
    int i;

    for (i = 0; i < gUnknown_03001F10->unk0; i++)
    {
        gUnknown_03001F10->unk14DC[i].unk0 = 0;
        sub_08073914(&gUnknown_03001F10->unkFC8, i);
    }
}

void sub_08071C6C(int arg0)
{
    int i;
    struct Struct08B3A4E0 *r7 = &gUnknown_08B3A4E0[arg0];

    for (i = 0; i < gUnknown_03001F10->unk0; i++)
    {
        if (gUnknown_03001F10->unk14DC[i].unk10 != r7)
        {
            gUnknown_03001F10->unk14DC[i].unk0 = 0;
            sub_08073914(&gUnknown_03001F10->unkFC8, i);
        }
    }
}

void sub_08071CD4(void)
{
    int i;

    for (i = 0; i < gUnknown_03001F10->unk0; i++)
    {
        if (gUnknown_03001F10->unk14DC[i].unk0 & 4)
        {
            gUnknown_03001F10->unk14DC[i].unk0 = 0;
            sub_08073914(&gUnknown_03001F10->unkFC8, i);
        }
    }
}

static inline struct Struct1F10_sub2 *testinline2(int arg0)
{
    int i;
    u8 r4 = gUnknown_03001F10->unk0;
    struct Struct1F10_sub2 *r3 = gUnknown_03001F10->unk14DC;
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
    if (!(gUnknown_03001F10->unk1 & 0x10))
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
    index = r3 - gUnknown_03001F10->unk14DC;
    r3->unk0 = 0;
    sub_08073914(&gUnknown_03001F10->unkFC8, index);
}

void sub_08071E14(int arg0)
{
    int r7 = 1;
    int i;
    struct Struct08B3A4E0 *r8 = &gUnknown_08B3A4E0[arg0];
    struct Struct1F10_sub2 *r4 = gUnknown_03001F10->unk14DC;
    u8 r6 = gUnknown_03001F10->unk0;

    for (i = 0; i < r6; i++, r4++)
    {
        if ((r4->unk0 & r7) == r7 && r4->unk10 == r8)
        {
            r4->unk0 = 0;
            sub_08073914(&gUnknown_03001F10->unkFC8, i);
        }
    }
}

void sub_08071E7C(u8 arg0, u8 arg1)
{
    int r7 = 1;
    int i;
    struct Struct1F10_sub2 *r4 = gUnknown_03001F10->unk14DC;
    u8 r6 = gUnknown_03001F10->unk0;

    arg0 <<= 4;
    if (arg1 == 0)
        r7 = 5;
    for (i = 0; i < r6; i++, r4++)
    {
        register u32 r0 asm("r0");
        if ((r7 & r4->unk0) == r7 && (r0 = (r4->unk0 & 0xF0)) == arg0)
        {
            r4->unk0 = 0;
            sub_08073914(&gUnknown_03001F10->unkFC8, i);
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
    gUnknown_03001F10 = NULL;
}

void sub_08071F10(int arg0)
{
    sub_080734F8(&gUnknown_03001F10->unkFC8, arg0);
}

void sub_08071F2C(int arg0)
{
    sub_080734F8(&gUnknown_03001F10->unkFC8, arg0);
}

void sub_08071F48(void)
{
    sub_080735D0(&gUnknown_03001F10->unkFC8);
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
    sub_080734F8(&gUnknown_03001F10->unkFC8, arg0);
    sub_0807387C(&gUnknown_03001F10->unkFC8, arg1, arg2, arg3);
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
            if (gUnknown_03001F10->unkFC8.unk0 == gMusicTable[i].data)
                return i;
        }
    }
    return -2;
}

void *sub_08072038(void)
{
    return gUnknown_03001F10->unkFC8.unk0;
}

void play_bgm(int bgmID, int volume, int arg2)
{
    sub_080734F8(&gUnknown_03001F10->unkFC8, gMusicTable[bgmID].data);
    volume = (gMusicTable[bgmID].volume * volume) >> 7;
    sub_0807387C(&gUnknown_03001F10->unkFC8, volume, arg2, gMusicTable[bgmID].unk6);
}

void sub_080720AC(void)
{
    if (gUnknown_03001F10->unkFC8.unk14BA >= 0)
        gUnknown_03001F10->unkFC8.unk14C0 = gUnknown_03001F10->unkFC8.unk14BA;
    gUnknown_03001F10->unkFC8.unk14BA = -2;
}

void sub_080720E4(void)
{
    if (gUnknown_03001F10->unkFC8.unk14BA >= 0)
    {
        gUnknown_03001F10->unkFC8.unk14C0 = gUnknown_03001F10->unkFC8.unk14BA;
        gUnknown_03001F10->unkFC8.unk14BA = -1;
    }
}

void sub_08072118(void)
{
    if (gUnknown_03001F10->unkFC8.unk14BA == -1)
        gUnknown_03001F10->unkFC8.unk14BA = gUnknown_03001F10->unkFC8.unk14C0;
}

int sub_08072144(void)
{
    return (gUnknown_03001F10->unkFC8.unk14BA == -2);
}

int sub_0807216C(void)
{
    int i;
    u8 r1 = gUnknown_03001F10->unk0;
    int r4 = 0;
    struct Struct1F10_sub2 *r3 = gUnknown_03001F10->unk14DC;

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
    return (gUnknown_03001F10->unk1 & 0x10) >> 4;
}

void sub_0807220C(int arg0)
{
    gUnknown_03001F10->unk1 &= ~0x10;
    gUnknown_03001F10->unk1 |= arg0 << 4;
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

// nonmatching
void sub_080734F8(struct Struct1F10_sub3 *arg0, void *arg1)
{
    int i;  // r5
    u32 j;  // r2
    //int r12 = 0;

    arg0->unk14BA = -1;
    for (i = 0; i < 16; i++)
    {
        struct Struct1F10_sub3_sub *r3 = &arg0->unk4[i];
        u8 *r1 = arg0->unk0->unk244[i];
        struct Struct1F10_sub3_sub *r4 = r3;

        for (j = 0; j < 76; j++)
            r4->unk0[j] = 0;
        r3->unk2E = r1[0];
        r3->unk2D = r1[1];
        r3->unk44 = 0;
        r3->unk45 = 0;
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

// nonmatching
void sub_080735D0(struct Struct1F10_sub3 *arg0)
{
    int i;
    u8 *r3;

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

    for (i = 0, r3 = &arg0->unk4[0].unk5; i < *r3; i++)
    {
        if (arg0->unk4C4[i] != 1)
            arg0->unk4C4[i] = 0;
    }
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
