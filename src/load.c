#include "gba/gba.h"
#include "gba/flash_internal.h"
#include "global.h"

#define SECTOR_SIZE 0x1000

extern void *gSectorData_03000118;
extern s32 gFlashWriteSize_0300011C;
extern u32 gSectorNum_03000120;
extern u32 gUnknown_03000124;
extern u16 gUnknown_03000128;
extern vu16 gUnknown_0300012A;

extern void (*gUnknown_08076D70[])(void);

int sub_08029FD0(void)
{
    u32 i;
    int r6;
    u32 sp0[2];
    int r3;
    int r4;

    if (IdentifyFlash() == 0)
    {
        gUnknown_03000124 = 1;
        SetFlashTimerIntr(2, gUnknown_08076D70);
        r6 = 0;
        for (i = 0; i < 2; i++)
        {
            gUnknown_0300012A = i;
            if (sub_0802A0A8() != 0)
            {
                sp0[i] = gUnknown_03000128;
                if (sp0[i] > 0xFFFC)
                    r6 = 1;
            }
            else
                sp0[i] = -1;
        }
        if (r6 != 0)
        {
            for (i = 0; i < 2; i++)
            {
                if (sp0[i] <= 2)
                    sp0[i] += 0x10000;
            }
        }
        r3 = 0;
        r4 = 0xFFFF;
        for (i = 0; i < 2; i++)
        {
            if (sp0[i] != (u32)-1 && sp0[i] >= r3)
            {
                r4 = i;
                r3 = sp0[i];
            }
        }
        gUnknown_03000128 = r3;
        gUnknown_0300012A = r4;
    }
    else
        gUnknown_03000124 = 0;
    return gUnknown_03000124;
}

static inline u16 calc_checksum(void *data)
{
    u16 i;
    u16 cksum;
    u8 *d;

    cksum = 0;
    d = data;
    i = 0;
    for (; i < SECTOR_SIZE - 8; i++)
        cksum += d[i] + (1 + i);
    return cksum;
}

int sub_0802A0A8(void)
{
    u8 *r5 = gUnknown_02032FF8;

    if (gUnknown_03000124 != 0 && gUnknown_0300012A != 0xFFFF)
    {
        ReadFlash(gUnknown_0300012A, 0, gUnknown_02032000, 0x1000);
        if (r5[0] == 68 && r5[1] == 75
         && (gUnknown_02032FFA[0] | (gUnknown_02032FFA[1] << 8)) == 0x1000)
        {
            register u16 r4 asm("r4");
            u16 r1;

            r1 = (u8)gUnknown_02032FFE[0];
            asm(""::"r"(r1));
            r4 = (r1);
            r4 |= gUnknown_02032FFE[1] << 8;
            {
                u16 i;
                u8 *d;

                r1 = 0;
                d = gUnknown_02032000;
                for (i = 0; i < 0xFF8; i++)
                    r1 += d[i] + (1 + i);
            }
            if (r4 == r1)
            {
                u16 val = gUnknown_02032FFC[0] | (gUnknown_02032FFC[1] << 8);
                gUnknown_03000128 = val;
                return 1;
            }
        }
    }
    return 0;
}

// Writes and verifies the specified flash sector
#define WRITE_SECTOR(sectorNum, data) \
    retry = 0; \
    do \
    { \
        /* Needed to match write_flash_sector_0802A164 */ \
        asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm(""); \
        asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm(""); \
        asm("");asm("");asm("");asm("");asm(""); \
        switch (ProgramFlashSector(sectorNum, data)) \
        { \
        case 0: \
            ok = !VerifyFlashSector(sectorNum, data); \
            break; \
        case 0x80FF: ok = FALSE; break; \
        case 0x8004: ok = FALSE; break; \
        case 0xC001: ok = FALSE; break; \
        case 0xC002: ok = FALSE; break; \
        default:     ok = FALSE; break; \
        } \
        if (ok) \
            break; \
    } while (retry ++ < 2);

int write_flash_sector_0802A164(void)
{
    u16 i;
    u16 cksum;
    u32 retry;
    int ok;
    u8 *ptr = gUnknown_02032FF8;
    u16 val;

    if (gUnknown_03000124 == 0)
        return 0;
    ptr[0] = 68;
    ptr[1] = 75;
    if (gUnknown_0300012A == 0xFFFF)
    {
        gUnknown_03000128 = 0;
        gUnknown_0300012A = 0;
    }
    else
    {
        gUnknown_03000128++;
        gUnknown_0300012A = (gUnknown_0300012A + 1) % 2;
    }

    gUnknown_02032FFA[0] = 0;
    gUnknown_02032FFA[1] = 16;
    val = gUnknown_03000128;
    gUnknown_02032FFA[2] = val;
    gUnknown_02032FFA[3] = val >> 8;

    cksum = calc_checksum(gUnknown_02032000);
    gUnknown_02032FFE[0] = cksum;
    gUnknown_02032FFE[1] = cksum >> 8;

    WRITE_SECTOR(gUnknown_0300012A, gUnknown_02032000);
    return ok;
}

int write_flash_sector_0802A290(int sectorNum, void *data, int size)
{
    u32 retry;
    int ok;

    if (gUnknown_03000124 == 0)
        return TRUE;
    if (sectorNum >= 0)
    {
        gSectorNum_03000120 = sectorNum;
        gSectorData_03000118 = data;
        gFlashWriteSize_0300011C = size;
    }
    if (gFlashWriteSize_0300011C <= 0)
        return TRUE;

    WRITE_SECTOR(gSectorNum_03000120, gSectorData_03000118);

    if (ok)
    {
        gSectorNum_03000120++;
        gSectorData_03000118 += SECTOR_SIZE;
        gFlashWriteSize_0300011C -= SECTOR_SIZE;
        if (gFlashWriteSize_0300011C <= 0)
            return TRUE;
    }
    return FALSE;
}

int write_flash_sector_0802A370(u32 sectorNum, const u8 *data, int size)
{
    u32 retry;
    int ok;

    if (gUnknown_03000124 == 0)
        return FALSE;
    retry = 0;
    while (size > 0)
    {
        do
        {
            switch (ProgramFlashSector(sectorNum, (void *)data))
            {
            case 0:
                ok = !VerifyFlashSector(sectorNum, (void *)data);
                break;
            case 0x80FF: ok = FALSE; break;
            case 0x8004: ok = FALSE; break;
            case 0xC001: ok = FALSE; break;
            case 0xC002: ok = FALSE; break;
            default:     ok = FALSE; break;
            }
            if (ok)
                break;
        } while (retry++ < 2);
        if (!ok)
            break;
        sectorNum++;
        data += SECTOR_SIZE;
        size -= SECTOR_SIZE;
    }
    return ok;
}

void read_flash_sector_0802A430(int sector, void *buffer, int size)
{
    if (gUnknown_03000124 != 0)
        ReadFlash(sector, 0, buffer, size);
}

u32 sub_0802A458(void)
{
    return gUnknown_03000124;
}

int sub_0802A464(void)
{
    int i;
    u8 *r6 = gUnknown_02032000;
    u8 *r5 = gUnknown_02032FF8;

    if (gUnknown_0300012A != 0xFFFF)
        return 0;
    for (i = 0; i < 2; i++)
    {
        ReadFlash(i, 0, r6, 0x1000);
        if (r5[0] == 68 && r5[1] == 75)
            return 0;
    }
    return 1;
}
