#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

#define EWRAM 0x02000000
#define IWRAM 0x03000000

void init_timer_regs(void)
{
    REG_IME = 0;
    REG_IE |= INTR_FLAG_TIMER2;
    gUnknown_03001714 = 0;
    REG_TM2CNT = (TIMER_ENABLE) << 16;
    REG_TM3CNT = (TIMER_ENABLE | TIMER_COUNT_UP) << 16;
    REG_IME = 1;
}

void sub_08033C74(void)
{
    REG_IME = 0;
    gUnknown_03001718 = (REG_TM3CNT_L << 16) | REG_TM2CNT_L;
    REG_IME = 1;
}

void sub_08033CA0(void)
{
    REG_IME = 0;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;
    REG_IE &= ~INTR_FLAG_TIMER2;
    REG_IME = 1;
}

void sub_08033CD0(void)
{
    clear_ram();
    clear_graphics_memory();
}

// 0x08033CE0
void clear_ram(void)
{
    DmaFill32(3, 0, (void *)EWRAM, 0x40000);
    DmaFill32(3, 0, (void *)IWRAM, 0x7E00);
}

void clear_graphics_memory(void)
{
    sub_08033D30();
    load_some_oam();
    sub_08033D58();
}

void sub_08033D30(void)
{
    int i;
    u16 var = 252;
    u16 *ptr = &var;  // Why would you do this?

    for (i = 0; i < 0xC000; i++)
        *((u16 *)VRAM + i) = *ptr;
}

void sub_08033D58(void)
{
    DmaFill16(3, 0, (void *)PLTT, 0x400);
}

// Maybe inline functions that got placed here?

s16 sub_08033D80(s16 a, s16 b)
{
    s32 var;

    var = a * b;
    var /= 256;
    return var;
}

s16 sub_08033D9C(s16 a, s16 b)
{
    return 256 * a / b;
}

s16 sub_08033DB4(s16 a)
{
    s32 var = 0x10000;

    return var / a;
}

void sub_08033DCC(void)
{
    set_bg_offset_regs_0802BEEC(&gUnknown_030012D0);
    sub_0802BFA4();
    sub_0802C144(gUnknown_030012D0.unk6);
    sub_0802C058();
    sub_0807194C();
    irq_enable_t();
    if (gUnknown_030012C0 != NULL)
    {
        if (gUnknown_03001700 == 0)
        {
            sub_08033EC8();
            gUnknown_03001748 = 0;
            CpuCopy16(&gBGLayerOffsets , &gUnknown_030012D0, 16);
            set_bg_offset_regs_0802BEEC(&gUnknown_030012D0);
            sub_0802BE74();
            gUnknown_030012C0();
            sub_08033EC8();
        }
    }
    else
    {
        sub_08033EC8();
        sub_08033EC8();
    }
    gUnknown_03001748++;
    sub_08071800();
    irq_disable_t();
}

void sub_08033E60(void)
{
    sub_08033EBC();
    gUnknown_030012C0 = sub_08034138;
    DmaCopy16(3, interrupt_main, gIntrMainBuffer, 0x400);
    gUnknown_03007FFC = gIntrMainBuffer;
}

void sub_08033EA0(void (*func)(void))
{
    gUnknown_030012C0 = func;
    if (gUnknown_030012C0 == NULL)
        gUnknown_030012C0 = sub_08034138;
}

void sub_08033EBC(void)
{
    gUnknown_03001700 = 0;
}

void sub_08033EC8(void)
{
    REG_IF = INTR_FLAG_VBLANK;
    gUnknown_03001700++;
}

void sub_08033EE0(void)
{
    gUnknown_03001700 = 0;
    while (gUnknown_03001700 < 2)
        ;
}

void sub_08033EF8(void (*func)(void))
{
    gUnknown_030012FC = func;
    if (gUnknown_030012FC == NULL)
        gUnknown_030012FC = sub_08034138;
}

void sub_08033F14(void)
{
    gUnknown_0300171C &= ~INTR_FLAG_HBLANK;
}

void sub_08033F28(void)
{
    REG_IF = INTR_FLAG_HBLANK;
    gUnknown_0300171C = INTR_FLAG_HBLANK;
}

void sub_08033F3C(void (*func)(void))
{
    gUnknown_030012A8 = func;
    if (gUnknown_030012A8 == NULL)
        gUnknown_030012A8 = sub_08034138;
}

void sub_08033F58(void)
{
    gUnknown_0300171C &= ~INTR_FLAG_VCOUNT;
}

void sub_08033F6C(void)
{
    REG_IF = INTR_FLAG_VCOUNT;
    gUnknown_0300171C = INTR_FLAG_VCOUNT;
}

void sub_08033F80(s16 a, s16 b)
{
    gCameraHorizontalOffset += a;
    gCameraVerticalOffset += b;
    sub_08033440();
}

void sub_08033FAC(s16 a, s16 b)
{
    gCameraHorizontalOffset = a;
    gCameraVerticalOffset = b;
    sub_08033440();
}

void sub_08033FC8(void)
{
    s32 i;

    gHeldKeys = 0xFFFF;
    gSomeKeys_030012E8 = 0;
    gUnknown_03001708 = 0;
    for (i = 0; i < 16; i++)
        gUnknown_030012B0[i] = 20;
}

u8 sub_08034004(void)
{
    if (gUnknown_03001740 != 0 && (gSomeKeys_030012E8 & 9))
        return TRUE;
    else
        return FALSE;
}

// Converts number to string. Appears to be unused.
u8 *sub_08034030(u32 num, char *str, u32 digits)
{
    u32 i;
    u32 j;

    if (str == NULL)
        str = gUnknown_030002A0;
    for (i = 0; i < digits; i++, num /= 10)
    {
        j = num % 10;
        str[i] = 48 + j;
    }
    // Reverse the string
    i--;
    for (j = 0; j <= i / 2; j++)
    {
        u8 temp = str[j];

        str[j] = str[i - j];
        str[i - j] = temp;
    }
    str[i + 1] = '\0';
    return str;
}

// TODO: Get this matching in a better way
void sub_080340A0(int unused, void *b, void *c, u32 d)
{
    if (d & 0xFFFF)
    {
        u32 r12 = d & 0x1000000;
        u32 r7 = d & 0x4000000;
        u16 *r1 = b;
        register u32 *r4 asm("r4") = b;
        u16 *r2 = c;
        register u32 *r3 asm("r3") = c;

        u32 r5;
        for (r5 = d & 0xFFFF; r5 != 0; r5--)
        {
            if (r12 != 0)
            {
                if (r7 != 0)
                    *r3 = *(u32 *)b;
                else
                    *r2 = *(u16 *)b;
            }
            else
            {
                if (r7 != 0)
                    *r3 = *r4;
                else
                    *r2 = *r1;
            }
            r1++;
            r2++;
            r4++;
            r3++;
        }
    }
}

void sub_08034100(void)
{
    if (gUnknown_030012FC != NULL)
        gUnknown_030012FC();
    sub_08033F28();
}

void sub_0803411C(void)
{
    if (gUnknown_030012A8 != NULL)
        gUnknown_030012A8();
    sub_08033F6C();
}

void sub_08034138(void)
{
}

void sub_0803413C(void)
{
    REG_IF = INTR_FLAG_TIMER2;
    gUnknown_03001714++;
}

// probably an inline function
u16 sub_08034154(void)
{
    if (gLevelType == 5)
        return sub_0806C2C4();
    else
        return 0;
}

// probably an inline function
bool32 sub_08034178(void)
{
    if ((gHeldKeys & START_BUTTON) &&  (gHeldKeys & SELECT_BUTTON) && (gHeldKeys & A_BUTTON) && (gHeldKeys & B_BUTTON)
     && gMainState != MAIN_STATE_TITLE_SCREEN && gMainState != MAIN_STATE_INIT)
    {
        change_main_state(MAIN_STATE_TITLE_SCREEN, USE_FADE);
        gLevelType = 0;
        gCurrentWorld = 0;
        gNextLevelID = 0;
        gLevelEWorldFlag = 0;
        sub_080720AC();
        sub_08071C24();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

int sub_080341E8(u16 a)
{
    int r4 = 0;

    gCameraVerticalOffset = a;

    if (gCameraVerticalOffset < 0)
    {
        gCameraVerticalOffset = 0;
        r4 = 1;
    }

    if ((gCameraVerticalOffset >> 1) + 160 >= gCurrentLevelHeight)
    {
        gCameraVerticalOffset = (gCurrentLevelHeight - 160) << 1;
        r4 = 1;
    }

    gUnknown_030012F4 = gCameraVerticalOffset >> 1;

    return r4;
}

void sub_08034238(void)
{
    gUnknown_030002B0.unk0 = gCameraHorizontalOffset * 128;
    gUnknown_030002B0.unk4 = gCameraVerticalOffset * 128;
}

void sub_0803425C(int a, int b, int c)
{
    if (gUnknown_030002B0.unk0 == a)
    {
        gUnknown_030002C8.unk0 = 0;
    }
    else
    {
        gUnknown_030002B8.unk0 = a;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + DISPLAY_WIDTH >= gCurrentLevelWidth)
            gUnknown_030002B8.unk0 = (gCurrentLevelWidth - DISPLAY_WIDTH) << 8;
        gUnknown_030002C8.unk0 = (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0) / c;
    }

    if (gUnknown_030002B0.unk4 == b)
    {
        gUnknown_030002C8.unk4 = 0;
    }
    else
    {
        gUnknown_030002B8.unk4 = b;
        if (gUnknown_030002B8.unk4 < 0)
            gUnknown_030002B8.unk4 = 0;
        if ((gUnknown_030002B8.unk4 >> 8) + DISPLAY_HEIGHT >= gCurrentLevelHeight)
            gUnknown_030002B8.unk4 = (gCurrentLevelHeight - DISPLAY_HEIGHT) << 8;
        gUnknown_030002C8.unk4 = (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4) / c;
    }
}

void sub_0803430C(void)
{
    gUnknown_030002B0.unk0 = gUnknown_030002B8.unk0 = gUnknown_030002C0.unk0;
    gUnknown_030002B0.unk4 = gUnknown_030002B8.unk4 = gUnknown_030002C0.unk4;
}

void sub_0803432C(void)
{
    gUnknown_030002C0.unk0 = gCameraHorizontalOffset * 128;
    gUnknown_030002C0.unk4 = gCameraVerticalOffset * 128;
}

void sub_08034350(void)
{
    gUnknown_030002C8.unk0 = 0;
    gUnknown_030002C0.unk0 = gUnknown_030002B8.unk0 = gUnknown_030002B0.unk0;
    gUnknown_030002C0.unk4 = gCameraVerticalOffset * 128;
}

void sub_08034384(int a, int b)
{
    if (gUnknown_030002B0.unk0 == a)
    {
        gUnknown_030002C8.unk0 = 0;
    }
    else
    {
        gUnknown_030002B8.unk0 = a;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + DISPLAY_WIDTH >= gCurrentLevelWidth)
            gUnknown_030002B8.unk0 = (gCurrentLevelWidth - DISPLAY_WIDTH) << 8;
        gUnknown_030002C8.unk0 = (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0) / b;
    }
}

void sub_080343EC(int a, int b)
{
    if (gUnknown_030002B0.unk4 == a)
    {
        gUnknown_030002C8.unk4 = 0;
    }
    else
    {
        if (ABS(gUnknown_030002B8.unk4 - a) > 255)
        {
            gUnknown_030002B8.unk4 = a;
            if (gUnknown_030002B8.unk4 < 0)
                gUnknown_030002B8.unk4 = 0;
            if ((gUnknown_030002B8.unk4 >> 8) + DISPLAY_HEIGHT >= gCurrentLevelHeight)
                gUnknown_030002B8.unk4 = (gCurrentLevelHeight - DISPLAY_HEIGHT) << 8;
            gUnknown_030002C8.unk4 = (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4) / b;
        }
    }
}

void sub_0803446C(int a, int b)
{
    if (gUnknown_030002B0.unk4 == a)
    {
        gUnknown_030002C8.unk4 = 0;
    }
    else
    {
        if (ABS(gUnknown_030002B8.unk4 - a) > 255)
        {
            gUnknown_030002B8.unk4 = a;
            if (gUnknown_030002B8.unk4 < 0)
                gUnknown_030002B8.unk4 = 0;
            if ((gUnknown_030002B8.unk4 >> 8) + DISPLAY_HEIGHT >= gCurrentLevelHeight)
                gUnknown_030002B8.unk4 = (gCurrentLevelHeight - DISPLAY_HEIGHT) << 8;
            if (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4 > 0)
                gUnknown_030002C8.unk4 = b;
            else
                gUnknown_030002C8.unk4 = -b;
        }
    }
}

int sub_080344F8(s32 a)
{
    s32 r2 = gCameraHorizontalOffset >> 1;
    
    a >>= 8;
    if (a < r2 + 64)
        return 1;
    if (a > r2 + 176)
        return 1;
    return 0;
}

int sub_08034528(s32 a)
{
    s32 r2 = gCameraVerticalOffset >> 1;
    
    a >>= 8;
    if (a < r2 + 24)
        return 1;
    if (a > r2 + 106)
        return 2;
    return 0;
}

struct UnknownStruct1
{
    u32 size1;
    u8 data[1];  // unknown length
};

void decompress_rle(struct CmprHeader *hdr, u16 *dest)
{
    u8 *romPos = (u8 *)hdr + sizeof(struct CmprHeader);  // skip over header 
    u32 dataSize = hdr->size;
    u32 uncSize = 0;
    u8 dataLeft;
    u8 uncData2;
    u16 uncData;
    
    while (uncSize < dataSize)
    {
        dataLeft = *romPos++;
        if (dataLeft & 0x80)
        {
            dataLeft &= ~0x80;
            dataLeft += 3;
            uncData2 = *romPos++;
            while (dataLeft != 0)
            {
                if (uncSize & 1)
                {
                    uncData |= uncData2 << 8;
                    *dest++ = uncData;
                    uncData = 0;
                }
                else
                {
                    uncData = uncData2;
                }
                dataLeft--;
                uncSize++;
            }
        }
        else
        {
            dataLeft++;
			
            while (dataLeft != 0) 
            {
                if (uncSize & 1)
                {
                    uncData |= *romPos++ << 8;
                    *dest++ = uncData;
                    uncData = 0;
                }
				
                else
                {
                    uncData = *romPos++;
                }
                dataLeft--;
                uncSize++;
            }
        }
    }
    if (uncSize & 1)
        *dest = uncData;
}

// TODO: This function is crazy. Fix later.
/*
void sub_08034608(struct UnknownStruct1 *a, u16 *b)
{
    u8 *r4 = a->unk4;
    u32 r5 = 0;
    u32 r9 = a->unk0 >> 8;
    u16 r6 = 0;
    u32 r3;
    u32 r2;
    u32 sp4;
    
    while (r5 < r9)
    {
        u8 r7 = *r4++;
        
        while (r5 < r9)
        {
            if (r7 & 0x80)
            {
                u8 r0 = *r4++;
                u8 *ptr;
                
                r3 = r0 >> 4;
                r2 = *r4++ | ((r0 & 0xF) << 8);
                ptr = (u8 *)b + r5;
                r2 = (u8 *)r2 + 1;
                r2 = (u16 *)(ptr - (r2 + 1));  // hrm...
                r3 = r5 + 3;
                //sp4 = r7 * 2;
                r7 <<= 1;
                while (r5 < r3)  //_08034666
                {
                    u16 r1 = *(u16 *)(r2 & ~1);
                    if (r2 & 1)
                        r1 >>= 8;
                    else
                        r1 &= 0xFF;
                    if (r5 & 1)
                    {
                        r6 |= r1 << 8;
                        b[r5 * 2] = r6;
                        r6 = 0;
                    }
                    else
                    {
                        r6 |= r1;
                        b[r5 * 2] = r6;
                    }
                    r5++;
                }
                //b _080346DE
            }
            //_080346AE
            else
            {
                if (r5 & 1)
                {
                    r6 |= *r4++ << 8;
                    b[r5 * 2] = r6;
                    r6 = 0;
                }
                else
                {
                    r6 |= *r4++;
                    b[r5 * 2] = r6;
                }
                r7 >>= 1;
            }
            r5++;
            //_080346DE
            if (r7 == 0)
                break;
        }
    }
}
*/

__attribute__((naked))
void sub_08034608(struct UnknownStruct1 *a, u16 *b)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r10\n\
	mov r6, r9\n\
	mov r5, r8\n\
	push {r5-r7}\n\
	sub sp, sp, #8\n\
	add r4, r0, #4\n\
	mov r12, r1\n\
	str r1, [sp]\n\
	mov r5, #0\n\
	ldr r0, [r0]\n\
	lsr r0, r0, #8\n\
	mov r9, r0\n\
	mov r6, #0\n\
_08034624:\n\
	cmp r5, r9\n\
	bcs _080346EE\n\
	ldrb r7, [r4]\n\
	mov r10, r7\n\
	add r4, r4, #1\n\
	mov r7, #128\n\
	cmp r5, r9\n\
	bcs _080346EE\n\
_08034634:\n\
	mov r0, r10\n\
	and r0, r0, r7\n\
	cmp r0, #0\n\
	beq _080346AE\n\
	ldrb r0, [r4]\n\
	add r4, r4, #1\n\
	lsr r3, r0, #4\n\
	ldrb r2, [r4]\n\
	mov r1, #15\n\
	and r0, r0, r1\n\
	lsl r0, r0, #8\n\
	orr r2, r2, r0\n\
	add r4, r4, #1\n\
	ldr r1, [sp]\n\
	add r0, r1, r5\n\
	add r2, r2, #1\n\
	sub r2, r0, r2\n\
	add r0, r5, #3\n\
	add r3, r0, r3\n\
	lsr r0, r7, #1\n\
	str r0, [sp, #4]\n\
	cmp r5, r3\n\
	bcs _080346DE\n\
	mov r1, #1\n\
	mov r8, r1\n\
_08034666:\n\
	mov r0, #2\n\
	neg r0, r0\n\
	and r0, r0, r2\n\
	ldrh r1, [r0]\n\
	add r0, r2, #0\n\
	mov r7, r8\n\
	and r0, r0, r7\n\
	cmp r0, #0\n\
	beq _0803467C\n\
	lsr r1, r1, #8\n\
	b _08034680\n\
_0803467C:\n\
	mov r0, #255\n\
	and r1, r1, r0\n\
_08034680:\n\
	add r0, r5, #0\n\
	mov r7, r8\n\
	and r0, r0, r7\n\
	cmp r0, #0\n\
	beq _0803469A\n\
	lsl r0, r1, #8\n\
	orr r6, r6, r0\n\
	lsr r0, r5, #1\n\
	lsl r0, r0, #1\n\
	add r0, r0, r12\n\
	strh r6, [r0]\n\
	mov r6, #0\n\
	b _080346A4\n\
_0803469A:\n\
	orr r6, r6, r1\n\
	lsr r0, r5, #1\n\
	lsl r0, r0, #1\n\
	add r0, r0, r12\n\
	strh r6, [r0]\n\
_080346A4:\n\
	add r5, r5, #1\n\
	add r2, r2, #1\n\
	cmp r5, r3\n\
	bcc _08034666\n\
	b _080346DE\n\
_080346AE:\n\
	mov r0, #1\n\
	and r0, r0, r5\n\
	cmp r0, #0\n\
	beq _080346CA\n\
	ldrb r0, [r4]\n\
	lsl r0, r0, #8\n\
	orr r6, r6, r0\n\
	add r4, r4, #1\n\
	lsr r0, r5, #1\n\
	lsl r0, r0, #1\n\
	add r0, r0, r12\n\
	strh r6, [r0]\n\
	mov r6, #0\n\
	b _080346D8\n\
_080346CA:\n\
	ldrb r0, [r4]\n\
	orr r6, r6, r0\n\
	add r4, r4, #1\n\
	lsr r0, r5, #1\n\
	lsl r0, r0, #1\n\
	add r0, r0, r12\n\
	strh r6, [r0]\n\
_080346D8:\n\
	add r5, r5, #1\n\
	lsr r0, r7, #1\n\
	str r0, [sp, #4]\n\
_080346DE:\n\
	ldr r1, [sp, #4]\n\
	lsl r0, r1, #24\n\
	lsr r7, r0, #24\n\
	cmp r7, #0\n\
	beq _08034624\n\
	cmp r5, r9\n\
	bcc _08034634\n\
	b _08034624\n\
_080346EE:\n\
	add sp, sp, #8\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0\n");
}

/*
void sub_08034700(struct UnknownStruct1 *a, u8 *b)
{
    u8 *r4 = a->unk4;
    u32 r6 = 0;
    u32 r12 = a->unk0 >> 8;
    
    while (r6 < r12)
    {
        u8 r8 = *r4++;
        u8 r7 = 0x80;
        
        while (r7 != 0 && r6 < r12)
        {
            if (r8 & r7)
            {
                u8 *r1;
                u32 r2;
                
                u8 r0_1 = *r4++;
                u32 r3 = r0_1 >> 4;
                u32 r2_2 = *r4++ | ((r0_1 & 0xF) << 8);
                r1 = b + r6 - r2_2 - 1;
                
                //r1 -= (r2 + 1);
                r2 = r6 + r3;
                //r7 /= 2;
                while (r6 < r2 + 3)
                {
                    //b[r6] = r1[r6];
                    b[r6] = *r1++;
                    r6++;
                }
                r7 >>= 1;
            }
            //_08034768
            else
            {
                b[r6] = *r4++;
                r6++;
                r7 >>= 1;
            }
        }
    }
}
*/

__attribute__((naked))
void sub_08034700(struct UnknownStruct1 *a, u8 *b)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r10\n\
	mov r6, r9\n\
	mov r5, r8\n\
	push {r5-r7}\n\
	add r4, r0, #4\n\
	mov r9, r1\n\
	mov r10, r9\n\
	mov r6, #0\n\
	ldr r0, [r0]\n\
	lsr r0, r0, #8\n\
	mov r12, r0\n\
_08034718:\n\
	cmp r6, r12\n\
	bcs _08034782\n\
	ldrb r0, [r4]\n\
	mov r8, r0\n\
	add r4, r4, #1\n\
	mov r7, #128\n\
	cmp r6, r12\n\
	bcs _08034782\n\
	mov r1, r10\n\
	add r5, r6, r1\n\
_0803472C:\n\
	mov r0, r8\n\
	and r0, r0, r7\n\
	cmp r0, #0\n\
	beq _08034768\n\
	ldrb r0, [r4]\n\
	add r4, r4, #1\n\
	lsr r3, r0, #4\n\
	ldrb r2, [r4]\n\
	mov r1, #15\n\
	and r0, r0, r1\n\
	lsl r0, r0, #8\n\
	orr r2, r2, r0\n\
	add r4, r4, #1\n\
	mov r1, r9\n\
	add r0, r1, r6\n\
	add r2, r2, #1\n\
	sub r1, r0, r2\n\
	add r0, r6, #3\n\
	add r2, r0, r3\n\
	lsr r3, r7, #1\n\
	cmp r6, r2\n\
	bcs _08034774\n\
_08034758:\n\
	ldrb r0, [r1]\n\
	strb r0, [r5]\n\
	add r1, r1, #1\n\
	add r5, r5, #1\n\
	add r6, r6, #1\n\
	cmp r6, r2\n\
	bcc _08034758\n\
	b _08034774\n\
_08034768:\n\
	ldrb r0, [r4]\n\
	strb r0, [r5]\n\
	add r4, r4, #1\n\
	add r5, r5, #1\n\
	add r6, r6, #1\n\
	lsr r3, r7, #1\n\
_08034774:\n\
	lsl r0, r3, #24\n\
	lsr r7, r0, #24\n\
	cmp r7, #0\n\
	beq _08034718\n\
	cmp r6, r12\n\
	bcc _0803472C\n\
	b _08034718\n\
_08034782:\n\
	pop {r3-r5}\n\
	mov r8, r3\n\
	mov r9, r4\n\
	mov r10, r5\n\
	pop {r4-r7}\n\
	pop {r0}\n\
	bx r0");
}

void *load_compressed_data(struct CmprHeader *src, void *dest, int toVram)
{
    struct CmprHeader header = *src;
    
    switch (header.compressionType)
    {
    case 3:  // RLE
        decompress_rle((void *)src, dest);
        break;
    case 1:  // LZ77
        if (toVram)
            LZ77UnCompVram(src, dest);
        else
            LZ77UnCompWram(src, dest);
        break;
    default:  // not compressed
        CpuCopy16((u8 *)src + sizeof(struct CmprHeader), dest, header.size);
        break;
    }
    return dest;
}

void goto_credits_init_callback(void)
{
    u8 arr[16];  // Needed to match. Probably some unused variable
    
    arena_restore_head(0);
    if (gLevelType == 1)
        movie_player_setup_data(3, 61, MAIN_STATE_LEVEL_SELECT, MOVIE_CREDITS_1); // ??, Song ID, Mode after movie finishes, Movie ID
    else
        movie_player_setup_data(3, 47, MAIN_STATE_TITLE_SCREEN, MOVIE_CREDITS_2);
    change_main_state(MAIN_STATE_MOVIE, USE_FADE);
}

void goto_credits_main(void)
{
}

void goto_credits_loop(void)
{
}

void goto_credits_end(void)
{
}

asm(".align 2, 0");
