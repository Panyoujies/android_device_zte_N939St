# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, device/zte/N939St/full_N939St.mk)


# Inherit some common CM stuff.
$(call inherit-product, vendor/sm/config/common_full_phone.mk)
PRODUCT_BRAND := zte
PRODUCT_NAME := sm_N939St
BOARD_VENDOR := zte
PRODUCT_DEVICE := N939St
PRODUCT_MANUFACTURER := ZTE

