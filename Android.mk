#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),MiThoriumSSI)
include $(call all-makefiles-under,$(LOCAL_PATH))

INSTALLED_MITHORIUMSSI_DSU_TARGET := $(PRODUCT_OUT)/mithoriumssi_dsu-$(BUILD_ID).zip

$(INSTALLED_MITHORIUMSSI_DSU_TARGET): $(PRODUCT_OUT)/system.img $(PRODUCT_OUT)/vbmeta.img
	$(call pretty,"Target Mi-Thorium DSU ZIP archive: $@")
	$(hide) /usr/bin/zip -qjX $@ $(PRODUCT_OUT)/system.img $(PRODUCT_OUT)/vbmeta.img

.PHONY: mithoriumssi_dsu
mithoriumssi_dsu: $(INSTALLED_MITHORIUMSSI_DSU_TARGET)

endif
