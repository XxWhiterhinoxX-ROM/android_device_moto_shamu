# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

# Inherit some common infamous stuff.
$(call inherit-product, vendor/infamous/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/infamous/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-infamous

## Device identifier. This must come after all inclusions
PRODUCT_NAME := infamous_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47E/1748839:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47E 1748839 release-keys"
