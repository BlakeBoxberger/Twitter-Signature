include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TwitterSignaturePreferences
TwitterSignaturePreferences_FILES = NZ9TwitterSignatureRootListController.m
TwitterSignaturePreferences_INSTALL_PATH = /Library/PreferenceBundles
TwitterSignaturePreferences_FRAMEWORKS = UIKit
TwitterSignaturePreferences_PRIVATE_FRAMEWORKS = Preferences
TwitterSignaturePreferences_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TwitterSignaturePreferences.plist$(ECHO_END)
