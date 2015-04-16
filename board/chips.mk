ifeq ($(AT91SAM9260), y)
CPPFLAGS += -DAT91SAM9260
ASFLAGS += -DAT91SAM9260
endif

ifeq ($(AT91SAM9261), y)
CPPFLAGS += -DAT91SAM9261
ASFLAGS += -DAT91SAM9261
endif

ifeq ($(AT91SAM9263), y)
CPPFLAGS += -DAT91SAM9263
ASFLAGS += -DAT91SAM9263
endif

ifeq ($(AT91SAM9G10), y)
CPPFLAGS += -DAT91SAM9G10
ASFLAGS += -DAT91SAM9G10
endif

ifeq ($(AT91SAM9G20), y)
CPPFLAGS += -DAT91SAM9G20
ASFLAGS += -DAT91SAM9G20
endif

ifeq ($(AT91SAM9RL), y)
CPPFLAGS += -DAT91SAM9RL
ASFLAGS += -DAT91SAM9RL
endif

ifeq ($(AT91SAM9G45), y)
CPPFLAGS += -DAT91SAM9G45
ASFLAGS += -DAT91SAM9G45
endif

ifeq ($(AT91SAM9XE), y)
CPPFLAGS += -DAT91SAM9XE
ASFLAGS += -DAT91SAM9XE
endif

ifeq ($(AT91SAM9X5), y)
CPPFLAGS += -DAT91SAM9X5
ASFLAGS += -DAT91SAM9X5
endif

ifeq ($(AT91SAM9N12), y)
CPPFLAGS += -DAT91SAM9N12
ASFLAGS += -DAT91SAM9N12
endif

ifeq ($(SAMA5D3X), y)
CPPFLAGS += -DSAMA5D3X
ASFLAGS += -DSAMA5D3X
endif

ifeq ($(SAMA5D4), y)
CPPFLAGS += -DSAMA5D4
ASFLAGS += -DSAMA5D4
endif

ifeq ($(CORE_ARM926EJS), y)
CPPFLAGS += -mcpu=arm926ej-s -mtune=arm926ej-s -mfloat-abi=soft
ASFLAGS += -mcpu=arm926ej-s -mtune=arm926ej-s -mfloat-abi=soft
endif

ifeq ($(CORE_CORTEX_A5), y)
gcc_cortexa5=$(shell $(CC) --target-help | grep cortex-a5)
ifneq (, $(findstring cortex-a5,$(gcc_cortexa5)))
CPPFLAGS += -mcpu=cortex-a5 -mtune=cortex-a5
ASFLAGS += -mcpu=cortex-a5 -mtune=cortex-a5
endif
endif
