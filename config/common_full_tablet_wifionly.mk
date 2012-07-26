# Inherit common ADA stuff
$(call inherit-product, vendor/ada/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

ifeq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/ada/prebuilt/common/bootanimation/bootanimation_n7.zip:system/media/bootanimation.zip
endif
