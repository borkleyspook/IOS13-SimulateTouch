export THEOS_DEVICE_IP = 192.168.101.245

include $(THEOS)/makefiles/common.mk

TOOL_NAME = zxtouchb
zxtouchb_ARCH = arm64e arm64 armv7

zxtouchb_FILES = main.mm
zxtouchb_CFLAGS = -fobjc-arc -Wno-error -Wno-module-import-in-extern-c -O2 -s -DNDEBUG
zxtouchb_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/tool.mk
