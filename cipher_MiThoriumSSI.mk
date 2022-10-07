#
# Copyright (C) 2022 The CipherOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common CipherOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Inherit from MiThoriumSSI device
$(call inherit-product, device/xiaomi/MiThoriumSSI/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := MiThoriumSSI
PRODUCT_NAME := cipher_MiThoriumSSI
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-Thorium Shared System Image
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys"

# CipherOS
TARGET_BOOT_ANIMATION_RES := 720

# MiThoriumSSI
MITHORIUMSSI_ROM_NAME := CipherOS
MITHORIUMSSI_ROM_VERSION := 4.0
