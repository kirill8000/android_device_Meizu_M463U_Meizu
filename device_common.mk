$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/meizu/m1/m1_vendor.mk)
LOCAL_PATH := device/meizu/m1

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
libxlog

# init
PRODUCT_PACKAGES += \
proj-dev-setup

# Lights
PRODUCT_PACKAGES += \
lights.mt6752

 # Audio
PRODUCT_PACKAGES += \
audio.r_submix.default \
audio_policy.default
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf
# Wifi
PRODUCT_PACKAGES += \
libwpa_client \
hostapd \
dhcpcd.conf \
wpa_supplicant \
wpa_supplicant.conf
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
$(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
$(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny





$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)


# Telecom
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml \
# GPS
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
# Keylayout
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
$(LOCAL_PATH)/configs/mtk-tpd.kl:system/usr/keylayout/mtk-tpd.kl
# Thermal
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc \
$(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
$(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf \
$(LOCAL_PATH)/configs/thermal.high.conf:system/etc/.tp/thermal.high.conf \
$(LOCAL_PATH)/configs/thermal.low.conf:system/etc/.tp/thermal.low.conf \
# Vibration
PRODUCT_PACKAGES += \
openimmvibed \

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/root/enableswap.sh:root/enableswap.sh \
$(LOCAL_PATH)/root/fstab.mt6752:root/fstab.mt6752 \
$(LOCAL_PATH)/root/init.mt6752.rc:root/init.mt6752.rc \
$(LOCAL_PATH)/root/init.mt6752.usb.rc:root/init.mt6752.usb.rc \
$(LOCAL_PATH)/root/init.recovery.mt6752.rc:root/init.recovery.mt6752.rc \
$(LOCAL_PATH)/root/init.aee.rc:root/init.aee.rc \
$(LOCAL_PATH)/root/init.modem.rc:root/init.modem.rc \
$(LOCAL_PATH)/root/init.project.rc:root/init.project.rc \
$(LOCAL_PATH)/root/init.ssd.rc:root/init.ssd.rc \
$(LOCAL_PATH)/root/init.xlog.rc:root/init.xlog.rc \
$(LOCAL_PATH)/root/ueventd.mt6752.rc:root/ueventd.mt6752.rc \

# Permissions
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
Torch

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

