#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from OP4AED device
$(call inherit-product, device/oppo/OP4AED/device.mk)

PRODUCT_DEVICE := OP4AED
PRODUCT_NAME := omni_OP4AED
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PDBM00
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6765_19181-user 9 PPR1.180610.011 eng.root.20220111.220514 release-keys"

BUILD_FINGERPRINT := OPPO/PDBM00/OP4AED:9/PPR1.180610.011/1641904128:user/release-keys
