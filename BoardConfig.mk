#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/MiThoriumSSI

# SELinux
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/../Mi439/sepolicy/public
