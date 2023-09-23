#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/lancelot/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lancelot
PRODUCT_DEVICE := lancelot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi



#flags
RISING_CHIPSET := "Mt6768"
RISING_MAINTAINER := "Asce||エース°"
RISING_PACKAGE_TYPE := "AOSP"
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := false
TARGET_USE_PIXEL_FINGERPRINT := true

#GMS
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true



PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lancelot-user 11 RP1A.200720.011 V12.5.6.0.RJCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lancelot_global/lancelot:11/RP1A.200720.011/V12.5.6.0.RJCMIXM:user/release-keys
