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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from x2 device
$(call inherit-product, device/leeco/x2/device.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit Carbon GSM telephony parts
 $(call inherit-product, vendor/carbon/config/gsm.mk)

PRODUCT_NAME := carbon_x2
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := Leeco
PRODUCT_BRAND := Leeco


PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="shiva teja"

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR := Leeco
