# Inherit common ADA stuff
$(call inherit-product, vendor/ada/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

PRODUCT_PACKAGES += \
  Mms

ifeq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/ada/prebuilt/common/bootanimation/vertical-320x480.zip:system/media/bootanimation.zip
endif
