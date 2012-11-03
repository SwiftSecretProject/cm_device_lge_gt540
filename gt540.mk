PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/gt540/gt540-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/gt540/overlay

# gt540 configs
PRODUCT_COPY_FILES += \

$(LOCAL_PATH)/configs/Generic.kl:system/usr/keylayout/Generic.kl \
$(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \

$(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \

$(LOCAL_PATH)/configs/7k_headset.kl:system/usr/keylayout/7k_headset.kl \

$(LOCAL_PATH)/configs/qwerty.kl:system/usr/keylayout/qwerty.kl \
    
$(LOCAL_PATH)/configs/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
    $(LOCAL_PATH)/configs/msm_touchscreen.idc:system/usr/idc/touch_mcs6000.idc

# GT540 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.swift.rc:root/init.swift.rc \
    $(LOCAL_PATH)/ueventd.swift.rc:root/ueventd.swift.rc

# GT540 Audio
PRODUCT_PACKAGES += \
    audio_policy.swift \
    audio.primary.swift

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := gt540
PRODUCT_DEVICE := gt540
PRODUCT_MODEL := LG-GT540

