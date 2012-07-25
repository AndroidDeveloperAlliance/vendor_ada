PRODUCT_BRAND ?= AllianceMOD

ifneq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/ada/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \

# init.d support
PRODUCT_COPY_FILES += \
    vendor/ada/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/ada/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/ada/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/ada/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/ada/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/ada/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/ada/prebuilt/common/xbin/su:system/xbin/su \
    vendor/ada/prebuilt/common/apps/SuperSU.apk:system/app/SuperSU.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Required ABA packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    SuperSU.apk

# Optional ABA packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Launcher2 \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam


PRODUCT_PACKAGE_OVERLAYS += vendor/ada/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/ada/overlay/common

PRODUCT_VERSION_MAJOR = v1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0-Alpha1

ADA_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(ADA_BUILD)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.modversion=$(ADA_VERSION)
