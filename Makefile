# lipoplastic setup for armv6 + arm64 compilation
THEOS_PROJECT_DIR = $(PWD)
export ARCHS = arm64
export THEOS_DEVICE_IP = 192.168.0.3

SUBPROJECTS = appdelegate zxtouch-binary pccontrol

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "chown -R mobile:mobile /var/mobile/Library/ZXTouch && killall -9 SpringBoard;"

