#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Cryptfshw
TARGET_EXCLUDE_CRYPTFSHW := true

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Platform
TARGET_BOARD_PLATFORM := msm8953

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/mithorium.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# GSI
PRODUCT_PACKAGES += \
    gsi_skip_mount.cfg \
    init.gsi.rc

# Partitions
PRODUCT_BUILD_BOOT_IMAGE := false
PRODUCT_BUILD_CACHE_IMAGE := false
PRODUCT_BUILD_DEBUG_BOOT_IMAGE := false
PRODUCT_BUILD_RAMDISK_IMAGE := false
PRODUCT_BUILD_RECOVERY_IMAGE := false
PRODUCT_BUILD_USERDATA_IMAGE := false
PRODUCT_BUILD_VENDOR_IMAGE := false
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Extra
PRODUCT_EXCLUDE_IH8SN := true
