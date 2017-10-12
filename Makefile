include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwitterSignature
TwitterSignature_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Twitter"
after-uninstall::
	uninstall.exec "killall -9 Twitter"
SUBPROJECTS += twittersignaturepreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
