ARCHS = armv7 armv7s arm64
GO_EASY_ON_ME=1
TARGET = iphone:clang:latest:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwitterSignature
TwitterSignature_FILES = $(wildcard *.xm) $(wildcard *.m)
TwitterSignature_LDFLAGS += -lCSPreferencesProvider
TwitterSignature_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Twitter"
after-uninstall::
	uninstall.exec "killall -9 Twitter"

SUBPROJECTS += twittersignature
include $(THEOS_MAKE_PATH)/aggregate.mk
