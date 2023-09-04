export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Charles

Charles_FILES = Tweak.x
# Charles_CFLAGS = -fobjc-arc
Charles_PRIVATE_FRAMEWORKS = FrontBoardServices
# Charles_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk
