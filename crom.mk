#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2014 The C-RoM Project
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

# name
PRODUCT_RELEASE_NAME := N5

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# device
$(call inherit-product-if-exists, device/lge/hammerhead/full_hammerhead.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# phone
$(call inherit-product, vendor/crom/config/common_phone.mk)

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/crom/prebuilt/common/media/xxhdpi/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip

# products
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := google
PRODUCT_NAME := crom_hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=crom.hammerhead.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.2 KOT49H 937116 release-keys" \
    BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4.2/KOT49H/937116:user/release-keys"
