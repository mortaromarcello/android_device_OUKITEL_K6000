## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := K6000

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/OUKITEL/K6000/device_K6000.mk)
$(call inherit-product, device/OUKITEL/K6000/vendor/copyfiles.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk                                                                                                )

TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := K6000
PRODUCT_NAME := cm_K6000
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := K6000
PRODUCT_MANUFACTURER := OUKITEL
