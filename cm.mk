
## Specify phone tech before including full_phone
# Release name
PRODUCT_RELEASE_NAME := m1
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
# Inherit device configuration
$(call inherit-product, device/meizu/m1/device_m1.mk)


PRODUCT_GMS_CLIENTID_BASE := android-meizu
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m1
PRODUCT_NAME := cm_m1
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M1
PRODUCT_MANUFACTURER := Meizu

PRODUCT_RELEASE_NAME := M1




