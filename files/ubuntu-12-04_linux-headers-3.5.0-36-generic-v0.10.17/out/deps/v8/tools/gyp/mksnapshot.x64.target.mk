# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := mksnapshot.x64
DEFS_Debug := \
	'-DOPENSSL_NO_SSL2=1' \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_DEBUGGER_SUPPORT' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DENABLE_EXTRA_CHECKS' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fno-strict-aliasing \
	-m64 \
	-g \
	-Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wnon-virtual-dtor \
	-Woverloaded-virtual \
	 \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions

INCS_Debug := \
	-I$(srcdir)/deps/v8/src

DEFS_Release := \
	'-DOPENSSL_NO_SSL2=1' \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_DEBUGGER_SUPPORT'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fno-strict-aliasing \
	-m64 \
	-O3 \
	-ffunction-sections \
	-fdata-sections \
	-fno-tree-vrp \
	-fno-omit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions

INCS_Release := \
	-I$(srcdir)/deps/v8/src

OBJS := \
	$(obj).target/$(TARGET)/deps/v8/src/mksnapshot.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libv8_base.x64.a $(builddir)/libv8_nosnapshot.x64.a $(obj).target/deps/v8/tools/gyp/js2c.stamp $(obj).target/deps/v8/tools/gyp/libv8_base.x64.a $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.x64.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64 \
	-Wl,--gc-sections

LIBS := \
	-lrt

$(builddir)/mksnapshot.x64: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/mksnapshot.x64: LIBS := $(LIBS)
$(builddir)/mksnapshot.x64: LD_INPUTS := $(OBJS) $(obj).target/deps/v8/tools/gyp/libv8_base.x64.a $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.x64.a
$(builddir)/mksnapshot.x64: TOOLSET := $(TOOLSET)
$(builddir)/mksnapshot.x64: $(OBJS) $(obj).target/deps/v8/tools/gyp/libv8_base.x64.a $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.x64.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/mksnapshot.x64
# Add target alias
.PHONY: mksnapshot.x64
mksnapshot.x64: $(builddir)/mksnapshot.x64

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/mksnapshot.x64

