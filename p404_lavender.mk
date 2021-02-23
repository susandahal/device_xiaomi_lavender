#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common PixelExperience stuff
$(call inherit-product, vendor/404/configs/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Inherit Gapps
$(call inherit-product, vendor/google/pixel/config.mk)
$(call inherit-product, vendor/google/gms/gapps.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := p404_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V11.0.5.0.PFGMIXM release-keys"

BUILD_FINGERPRINT :="xiaomi/lavender/lavender:9/QKQ1.190910.002/V11.0.1.0.QFGMIXM:user/release-keys"
