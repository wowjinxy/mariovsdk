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
	assets/sprites/EReaderLogo_0.png \
	assets/sprites/EReaderLogo_1.png \
	assets/sprites/gUnknown_08611A48_0.png \
	assets/sprites/gUnknown_08611A48_1.png \
	assets/sprites/gUnknown_08611A48_2.png \
	assets/sprites/gUnknown_086126BC_0.png \
	assets/sprites/gUnknown_086126BC_1.png \
	assets/sprites/gUnknown_086126BC_2.png \
	assets/sprites/gUnknown_086175C0_0.png \
	assets/sprites/gUnknown_086175C0_1.png

all: $(FILES)

clean:
	$(RM) -r $(FILES) $(TMPDIR)

assets/sprites/gUnknown_085FB3D4_%.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085FB3D4_0.4bpp: baserom.gba ; $(call romextract,0x5FB3D4,0x80)
$(TMPDIR)/sprites/gUnknown_085FB3D4_1.4bpp: baserom.gba ; $(call romextract,0x5FB454,0x80)
$(TMPDIR)/sprites/gUnknown_085FB3D4_2.4bpp: baserom.gba ; $(call romextract,0x5FB4D4,0x80)

assets/sprites/EReaderLogo_%.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/EReaderLogo_0.4bpp: baserom.gba ; $(call romextract,0x613F0C,0x200)
$(TMPDIR)/sprites/EReaderLogo_1.4bpp: baserom.gba ; $(call romextract,0x61410C,0x200)

assets/sprites/gUnknown_08611A48_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08611A48_0.4bpp: baserom.gba ; $(call romextract,0x611A48+0x000,0x400)
$(TMPDIR)/sprites/gUnknown_08611A48_1.4bpp: baserom.gba ; $(call romextract,0x611A48+0x400,0x400)
$(TMPDIR)/sprites/gUnknown_08611A48_2.4bpp: baserom.gba ; $(call romextract,0x611A48+0x800,0x400)

assets/sprites/gUnknown_086126BC_%.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_086126BC_0.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x0000,0x800)
$(TMPDIR)/sprites/gUnknown_086126BC_1.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x0800,0x800)
$(TMPDIR)/sprites/gUnknown_086126BC_2.4bpp: baserom.gba ; $(call romextract,0x6126BC+0x1000,0x800)

assets/sprites/gUnknown_086175C0_%.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086175C0_0.4bpp: baserom.gba ; $(call romextract,0x6175C0+0x0000,0x80)
$(TMPDIR)/sprites/gUnknown_086175C0_1.4bpp: baserom.gba ; $(call romextract,0x6175C0+0x0080,0x80)

# convert files to PNG (with or without palette
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
