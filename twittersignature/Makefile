include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TwitterSignature
TwitterSignature_FILES = TSRootListController.m
TwitterSignature_INSTALL_PATH = /Library/PreferenceBundles
TwitterSignature_FRAMEWORKS = UIKit
TwitterSignature_PRIVATE_FRAMEWORKS = Preferences
TwitterSignature_CFLAGS += -fobjc-arc
TwitterSignature_LDFLAGS +=  -lCSPreferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TwitterSignature.plist$(ECHO_END)
