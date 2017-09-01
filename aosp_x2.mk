# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product-if-exists, vendor/leeco/x2/device-vendor.mk)

# Inherit from oneplus3 device
$(call inherit-product, device/leeco/x2/device.mk)

# Screen
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_LENGTH := 2560

# Vendor
TARGET_ARCH := arm64
$(call inherit-product-if-exists, vendor/aosp/config.mk)

PRODUCT_NAME := aosp_x2
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := Leeco
PRODUCT_BRAND := Letv

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR := leeco
