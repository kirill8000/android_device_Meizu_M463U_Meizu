LOCAL_PATH := device/Meizu/M463U_Meizu

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
Torch

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


PRODUCT_AAPT_PREF_CONFIG := xxhdpi 

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

-include $(LOCAL_PATH)/system_prop.mk

 PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=OPPO/N5206/N3:4.4.4/KTU84P/1415366188:user/release-keys \
PRIVATE_BUILD_DESC="msm8974-user 4.4.4 KTU84P eng.root.20141129.010050 dev-keys"

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/kernel:kernel \

 $(call inherit-product, vendor/cm/config/common_full.mk)
 $(call inherit-product, vendor/cm/config/telephony.mk)
 $(call inherit-product, vendor/cm/config/common.mk)
 $(call inherit-product, vendor/cm/config/themes_common.mk)
 $(call inherit-product, vendor/cm/build/core/config.mk)
 $(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_PACKAGES += \
com.android.future.usb.accessory \
libnetcmdiface \
Stk \
static_busybox \
make_ext4fs \
setup_fs

PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

$(call inherit-product-if-exists, vendor/Meizu/M463U_Meizu/m1.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := M463U_Meizu
PRODUCT_NAME := cm
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := m1 note
PRODUCT_MANUFACTURER := Meizu

PRODUCT_RELEASE_NAME := M463U_Meizu




