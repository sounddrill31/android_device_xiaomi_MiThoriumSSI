#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/arrow_MiThoriumSSI.mk

COMMON_LUNCH_CHOICES := \
    arrow_MiThoriumSSI-user \
    arrow_MiThoriumSSI-userdebug \
    arrow_MiThoriumSSI-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/aosp_MiThoriumSSI.mk

COMMON_LUNCH_CHOICES += \
    aosp_MiThoriumSSI-user \
    aosp_MiThoriumSSI-userdebug \
    aosp_MiThoriumSSI-eng
