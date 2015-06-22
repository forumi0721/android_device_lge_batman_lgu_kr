## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := batman_lgu_kr

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/batman_lgu_kr/device_batman_lgu_kr.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := batman_lgu_kr
PRODUCT_NAME := cm_batman_lgu_kr
PRODUCT_BRAND := lge
PRODUCT_MODEL := batman_lgu_kr
PRODUCT_MANUFACTURER := lge
