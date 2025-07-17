#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)


# Axion flags
AXION_CAMERA_REAR_INFO := 48,8,5,2
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := grepfox
AXION_PROCESSOR := Snapdragon_860
BYPASS_CHARGE_SUPPORTED := false
AXION_CPU_SMALL_CORES ?= 4,5,6,7
AXION_CPU_BIG_CORES ?= 0,1,2,3
AXION_CPU_BG ?= 0-2
AXION_CPU_FG ?= 0-5
AXION_CPU_LIMIT_BG ?= 0-1
AXION_DEBUGGING_ENABLED := false
TARGET_INCLUDE_VIPERFX := false
TARGET_ENABLE_BLUR := false
TARGET_INCLUDES_LOS_PREBUILTS := true

# AxionOS scheduling properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.axion_cpu_big=$(AXION_CPU_BIG_CORES) \
    persist.sys.axion_cpu_small=$(AXION_CPU_SMALL_CORES) \
    persist.sys.axion_cpu_bg=$(AXION_CPU_BG) \
    persist.sys.axion_cpu_limit_bg=$(AXION_CPU_LIMIT_BG) \
    persist.sys.axion_cpu_fg=$(AXION_CPU_FG)
    ro.sys.axion_userdebug_enabled=$(AXION_DEBUGGING_ENABLED)

PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys" \
    BuildFingerprint=Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys
