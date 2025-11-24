TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = Musi
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisableAdsMusi

DisableAdsMusi_FILES = \
	Tweak.xm \
	Hooks/MAppDelegateHooks.xm \
	Hooks/BackupCodeCacheHooks.xm \
	Hooks/InVocabularyHooks.xm
DisableAdsMusi_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
