#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Android Open Source Project Common Stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

TARGET_AOSP_BASED := true

# Bootanimation size
TARGET_BOOT_ANIMATION_RES := 1080

# Device
$(call inherit-product, device/huawei/hi6250/full_hi6250.mk)

# Inherit some common Pixys stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# We are Official? Of course!
PIXYS_BUILD_TYPE=OFFICIAL

PRODUCT_NAME := pixys_hi6250
PRODUCT_DEVICE := hi6250
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Huawei Phone