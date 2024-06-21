#!/usr/bin/make -f

# This is a simple script to extract assets from baserom.gba

TMPDIR := .extract

GBAGFX := tools/gbagfx/gbagfx

# canned recipe to extract bytes from binary file
# parameters: offset, size
define romextract
 @mkdir -p $(@D)
 dd if=$< of=$@ bs=1 skip=$$(($(1))) count=$$(($(2)))
endef

FILES := \
	assets/sprites/gUnknown_085FB3D4_0.png \
	assets/sprites/gUnknown_085FB3D4_1.png \
	assets/sprites/gUnknown_085FB3D4_2.png \
	assets/sprites/gUnknown_085FB7E4_0.png \
	assets/sprites/gUnknown_085FB7E4_1.png \
	assets/sprites/gUnknown_085FB7E4_2.png \
	assets/sprites/gUnknown_085FB7E4_3.png \
	assets/sprites/gUnknown_085FB7E4_4.png \
	assets/sprites/gUnknown_085FB7E4_5.png \
	assets/sprites/gUnknown_085FB7E4_6.png \
	assets/sprites/gUnknown_085FF274_0.png \
	assets/sprites/gUnknown_085FF274_1.png \
	assets/sprites/gUnknown_085FF274_2.png \
	assets/sprites/gUnknown_085FF274_3.png \
	assets/sprites/gUnknown_085FF274_4.png \
	assets/sprites/gUnknown_085FF274_5.png \
	assets/sprites/gUnknown_085FF274_6.png \
	assets/sprites/gUnknown_08601104_0.png \
	assets/sprites/gUnknown_08601104_1.png \
	assets/sprites/gUnknown_08601104_2.png \
	assets/sprites/gUnknown_08601104_3.png \
	assets/sprites/gUnknown_08601104_4.png \
	assets/sprites/gUnknown_08601104_5.png \
	assets/sprites/gUnknown_08601104_6.png \
	assets/sprites/gUnknown_08602F94_0.png \
	assets/sprites/gUnknown_08602F94_1.png \
	assets/sprites/gUnknown_08602F94_2.png \
	assets/sprites/gUnknown_08602F94_3.png \
	assets/sprites/gUnknown_08602F94_4.png \
	assets/sprites/gUnknown_08602F94_5.png \
	assets/sprites/gUnknown_08602F94_6.png \
	assets/sprites/gUnknown_08606A24_0.png \
	assets/sprites/gUnknown_08606A24_1.png \
	assets/sprites/gUnknown_08606A24_2.png \
	assets/sprites/gUnknown_08606A24_3.png \
	assets/sprites/gUnknown_08606A24_4.png \
	assets/sprites/gUnknown_08606A24_5.png \
	assets/sprites/gUnknown_08606A24_6.png \
	assets/sprites/gUnknown_0860A4B4_0.png \
	assets/sprites/gUnknown_0860A4B4_1.png \
	assets/sprites/gUnknown_0860A4B4_2.png \
	assets/sprites/gUnknown_0860A4B4_3.png \
	assets/sprites/gUnknown_0860A4B4_4.png \
	assets/sprites/gUnknown_0860A4B4_5.png \
	assets/sprites/gUnknown_0860A4B4_6.png \
	assets/sprites/gUnknown_0860C344_0.png \
	assets/sprites/gUnknown_0860C344_1.png \
	assets/sprites/gUnknown_0860C344_2.png \
	assets/sprites/gUnknown_0860C344_3.png \
	assets/sprites/gUnknown_0860C344_4.png \
	assets/sprites/gUnknown_0860C344_5.png \
	assets/sprites/gUnknown_0860C344_6.png \
	assets/sprites/gUnknown_0860FDD4_0.png \
	assets/sprites/gUnknown_0860FDD4_1.png \
	assets/sprites/gUnknown_0860FDD4_2.png \
	assets/sprites/gUnknown_0860FDD4_3.png \
	assets/sprites/gUnknown_0860FDD4_4.png \
	assets/sprites/gUnknown_0860FDD4_5.png \
	assets/sprites/gUnknown_0860FDD4_6.png \
	assets/sprites/gUnknown_08611A48_0.png \
	assets/sprites/gUnknown_08611A48_1.png \
	assets/sprites/gUnknown_08611A48_2.png \
	assets/sprites/gUnknown_086126BC_0.png \
	assets/sprites/gUnknown_086126BC_1.png \
	assets/sprites/gUnknown_086126BC_2.png \
	assets/sprites/EReaderLogo_0.png \
	assets/sprites/EReaderLogo_1.png \
	assets/sprites/gUnknown_08614764.png \
	assets/sprites/gUnknown_08614BB4_0.png \
	assets/sprites/gUnknown_08614BB4_1.png \
	assets/sprites/gUnknown_08615C04_0.png \
	assets/sprites/gUnknown_08615C04_1.png \
	assets/sprites/gUnknown_086175C0_0.png \
	assets/sprites/gUnknown_086175C0_1.png \
	assets/sprites/gUnknown_08617080_0.png \
	assets/sprites/gUnknown_08617080_1.png \
	assets/sprites/gUnknown_08617B04_00.png \
	assets/sprites/gUnknown_08617B04_01.png \
	assets/sprites/gUnknown_08617B04_02.png \
	assets/sprites/gUnknown_08617B04_03.png \
	assets/sprites/gUnknown_08617B04_04.png \
	assets/sprites/gUnknown_08617B04_05.png \
	assets/sprites/gUnknown_08617B04_06.png \
	assets/sprites/gUnknown_08617B04_07.png \
	assets/sprites/gUnknown_08617B04_08.png \
	assets/sprites/gUnknown_08617B04_09.png \
	assets/sprites/gUnknown_08617B04_10.png \
	assets/sprites/gUnknown_08617CB4_0.png \
	assets/sprites/gUnknown_08617CB4_1.png \
	assets/sprites/gUnknown_086180B4_0.png \
	assets/sprites/gUnknown_086180B4_1.png \

all: $(FILES)

clean:
	$(RM) -r $(FILES) $(TMPDIR)

# TODO: find the correct palettes

assets/sprites/gUnknown_085FB3D4_%.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085FB3D4_0.4bpp: baserom.gba ; $(call romextract,0x5FB3D4,0x80)
$(TMPDIR)/sprites/gUnknown_085FB3D4_1.4bpp: baserom.gba ; $(call romextract,0x5FB454,0x80)
$(TMPDIR)/sprites/gUnknown_085FB3D4_2.4bpp: baserom.gba ; $(call romextract,0x5FB4D4,0x80)

assets/sprites/gUnknown_085FB7E4_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FB7E4_0.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_1.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_2.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x1000,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_3.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x1800,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_4.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x2000,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_5.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x2800,0x800)
$(TMPDIR)/sprites/gUnknown_085FB7E4_6.4bpp: baserom.gba ; $(call romextract,0x5FB7E4+0x3000,0x800)

assets/sprites/gUnknown_085FF274_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FF274_0.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x0000,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_1.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x0400,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_2.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x0800,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_3.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x0C00,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_4.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x1000,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_5.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x1400,0x400)
$(TMPDIR)/sprites/gUnknown_085FF274_6.4bpp: baserom.gba ; $(call romextract,0x5FF274+0x1800,0x400)

assets/sprites/gUnknown_08601104_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08601104_0.4bpp: baserom.gba ; $(call romextract,0x601104+0x0000,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_1.4bpp: baserom.gba ; $(call romextract,0x601104+0x0400,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_2.4bpp: baserom.gba ; $(call romextract,0x601104+0x0800,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_3.4bpp: baserom.gba ; $(call romextract,0x601104+0x0C00,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_4.4bpp: baserom.gba ; $(call romextract,0x601104+0x1000,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_5.4bpp: baserom.gba ; $(call romextract,0x601104+0x1400,0x400)
$(TMPDIR)/sprites/gUnknown_08601104_6.4bpp: baserom.gba ; $(call romextract,0x601104+0x1800,0x400)

assets/sprites/gUnknown_08602F94_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08602F94_0.4bpp: baserom.gba ; $(call romextract,0x602F94+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_1.4bpp: baserom.gba ; $(call romextract,0x602F94+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_2.4bpp: baserom.gba ; $(call romextract,0x602F94+0x1000,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_3.4bpp: baserom.gba ; $(call romextract,0x602F94+0x1800,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_4.4bpp: baserom.gba ; $(call romextract,0x602F94+0x2000,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_5.4bpp: baserom.gba ; $(call romextract,0x602F94+0x2800,0x800)
$(TMPDIR)/sprites/gUnknown_08602F94_6.4bpp: baserom.gba ; $(call romextract,0x602F94+0x3000,0x800)

assets/sprites/gUnknown_08606A24_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08606A24_0.4bpp: baserom.gba ; $(call romextract,0x606A24+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_1.4bpp: baserom.gba ; $(call romextract,0x606A24+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_2.4bpp: baserom.gba ; $(call romextract,0x606A24+0x1000,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_3.4bpp: baserom.gba ; $(call romextract,0x606A24+0x1800,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_4.4bpp: baserom.gba ; $(call romextract,0x606A24+0x2000,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_5.4bpp: baserom.gba ; $(call romextract,0x606A24+0x2800,0x800)
$(TMPDIR)/sprites/gUnknown_08606A24_6.4bpp: baserom.gba ; $(call romextract,0x606A24+0x3000,0x800)

assets/sprites/gUnknown_0860A4B4_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860A4B4_0.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x0000,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_1.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x0400,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_2.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x0800,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_3.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x0C00,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_4.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x1000,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_5.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x1400,0x400)
$(TMPDIR)/sprites/gUnknown_0860A4B4_6.4bpp: baserom.gba ; $(call romextract,0x60A4B4+0x1800,0x400)

assets/sprites/gUnknown_0860C344_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860C344_0.4bpp: baserom.gba ; $(call romextract,0x60C344+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_1.4bpp: baserom.gba ; $(call romextract,0x60C344+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_2.4bpp: baserom.gba ; $(call romextract,0x60C344+0x1000,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_3.4bpp: baserom.gba ; $(call romextract,0x60C344+0x1800,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_4.4bpp: baserom.gba ; $(call romextract,0x60C344+0x2000,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_5.4bpp: baserom.gba ; $(call romextract,0x60C344+0x2800,0x800)
$(TMPDIR)/sprites/gUnknown_0860C344_6.4bpp: baserom.gba ; $(call romextract,0x60C344+0x3000,0x800)

assets/sprites/gUnknown_0860FDD4_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860FDD4_0.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x0000,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_1.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x0400,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_2.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x0800,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_3.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x0C00,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_4.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x1000,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_5.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x1400,0x400)
$(TMPDIR)/sprites/gUnknown_0860FDD4_6.4bpp: baserom.gba ; $(call romextract,0x60FDD4+0x1800,0x400)

assets/sprites/gUnknown_08611A48_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08611A48_0.4bpp: baserom.gba ; $(call romextract,0x611A48+0x000,0x400)
$(TMPDIR)/sprites/gUnknown_08611A48_1.4bpp: baserom.gba ; $(call romextract,0x611A48+0x400,0x400)
$(TMPDIR)/sprites/gUnknown_08611A48_2.4bpp: baserom.gba ; $(call romextract,0x611A48+0x800,0x400)

assets/sprites/gUnknown_086126BC_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_086126BC_0.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_086126BC_1.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_086126BC_2.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x1000,0x800)

assets/sprites/EReaderLogo_%.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/EReaderLogo_0.4bpp: baserom.gba ; $(call romextract,0x613F0C,0x200)
$(TMPDIR)/sprites/EReaderLogo_1.4bpp: baserom.gba ; $(call romextract,0x61410C,0x200)

assets/sprites/gUnknown_08614764.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08614764.4bpp: baserom.gba ; $(call romextract,0x614764+0x0000,0x400)

assets/sprites/gUnknown_08614BB4_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08614BB4_0.4bpp: baserom.gba ; $(call romextract,0x614BB4+0x000,0x800)
$(TMPDIR)/sprites/gUnknown_08614BB4_1.4bpp: baserom.gba ; $(call romextract,0x614BB4+0x800,0x800)

assets/sprites/gUnknown_08615C04_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08615C04_0.4bpp: baserom.gba ; $(call romextract,0x615C04+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_08615C04_1.4bpp: baserom.gba ; $(call romextract,0x615C04+0x0800,0x800)

assets/sprites/gUnknown_08617080_%.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08617080_0.4bpp: baserom.gba ; $(call romextract,0x617080+0x0000,0x80)
$(TMPDIR)/sprites/gUnknown_08617080_1.4bpp: baserom.gba ; $(call romextract,0x617080+0x0080,0x80)

assets/sprites/gUnknown_086175C0_%.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086175C0_0.4bpp: baserom.gba ; $(call romextract,0x6175C0+0x0000,0x80)
$(TMPDIR)/sprites/gUnknown_086175C0_1.4bpp: baserom.gba ; $(call romextract,0x6175C0+0x0080,0x80)

assets/sprites/gUnknown_08617B04_%.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617B04_00.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0000,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_01.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0020,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_02.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0040,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_03.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0060,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_04.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0080,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_05.4bpp: baserom.gba ; $(call romextract,0x617B04+0x00A0,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_06.4bpp: baserom.gba ; $(call romextract,0x617B04+0x00C0,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_07.4bpp: baserom.gba ; $(call romextract,0x617B04+0x00E0,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_08.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0100,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_09.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0120,0x20)
$(TMPDIR)/sprites/gUnknown_08617B04_10.4bpp: baserom.gba ; $(call romextract,0x617B04+0x0140,0x20)

assets/sprites/gUnknown_08617CB4_%.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08617CB4_0.4bpp: baserom.gba ; $(call romextract,0x617CB4+0x0000,0x80)
$(TMPDIR)/sprites/gUnknown_08617CB4_1.4bpp: baserom.gba ; $(call romextract,0x617CB4+0x0080,0x80)

assets/sprites/gUnknown_086180B4_%.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086180B4_0.4bpp: baserom.gba ; $(call romextract,0x6180B4+0x0000,0x80)
$(TMPDIR)/sprites/gUnknown_086180B4_1.4bpp: baserom.gba ; $(call romextract,0x6180B4+0x0080,0x80)

# convert files to PNG (with or without palette)
assets/%.png: $(TMPDIR)/%.4bpp $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
assets/%.png: $(TMPDIR)/%.8bpp $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
assets/%.png: $(TMPDIR)/%.4bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)
assets/%.png: $(TMPDIR)/%.8bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)

# build tools
$(GBAGFX):
	$(MAKE) -C $(@D)
