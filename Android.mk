#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),MiThoriumSSI)
include $(call all-makefiles-under,$(LOCAL_PATH))

MITHORIUMSSI_ROM_NAME ?= Android
MITHORIUMSSI_ROM_VERSION ?= $(PLATFORM_VERSION_LAST_STABLE)
MITHORIUMSSI_BUILD_DATE := $(shell date -u +%Y%m%d)

INSTALLED_MITHORIUMSSI_TARGET := $(PRODUCT_OUT)/MiThoriumSSI-$(MITHORIUMSSI_ROM_NAME)-$(MITHORIUMSSI_ROM_VERSION)-$(BUILD_ID)-$(MITHORIUMSSI_BUILD_DATE).zip

$(INSTALLED_MITHORIUMSSI_TARGET): $(PRODUCT_OUT)/system.img $(PRODUCT_OUT)/vbmeta.img
	$(call pretty,"Target MiThoriumSSI ZIP archive: $@")
	$(hide) /usr/bin/zip -qjX $@ $(PRODUCT_OUT)/system.img $(PRODUCT_OUT)/vbmeta.img

.PHONY: mithoriumssi
mithoriumssi: $(INSTALLED_MITHORIUMSSI_TARGET)

endif
