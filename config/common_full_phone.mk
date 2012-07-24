# Inherit common ADA stuff
$(call inherit-product, vendor/ada/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

PRODUCT_PACKAGES += \
  Mms

ifeq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/ada/prebuilt/common/bootanimation/vertical-480x800.zip:system/media/bootanimation.zip
endif
