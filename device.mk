#
# Copyright (C) 2014 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := /root/cm14/device/samsung/trltechnduos

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/trltechnduos/trltechnduos-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/trltechnduos/overlay

# RIL
PRODUCT_PACKAGES += \
    init.rilduos.rc

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.ril.sh:root/init.qcom.ril.sh \

# common trlte
$(call inherit-product, device/samsung/trlte-common/trlte.mk)
