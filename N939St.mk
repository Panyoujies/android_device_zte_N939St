#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_0.png:root/res/images/charger/battery_level_720p_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_1.png:root/res/images/charger/battery_level_720p_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_2.png:root/res/images/charger/battery_level_720p_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_3.png:root/res/images/charger/battery_level_720p_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_4.png:root/res/images/charger/battery_level_720p_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_5.png:root/res/images/charger/battery_level_720p_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_6.png:root/res/images/charger/battery_level_720p_6.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_7.png:root/res/images/charger/battery_level_720p_7.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_8.png:root/res/images/charger/battery_level_720p_8.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_9.png:root/res/images/charger/battery_level_720p_9.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_720p_10.png:root/res/images/charger/battery_level_720p_10.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_0.png:root/res/images/charger/battery_level_1080p_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_1.png:root/res/images/charger/battery_level_1080p_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_2.png:root/res/images/charger/battery_level_1080p_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_3.png:root/res/images/charger/battery_level_1080p_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_4.png:root/res/images/charger/battery_level_1080p_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_5.png:root/res/images/charger/battery_level_1080p_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_6.png:root/res/images/charger/battery_level_1080p_6.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_7.png:root/res/images/charger/battery_level_1080p_7.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_8.png:root/res/images/charger/battery_level_1080p_8.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_9.png:root/res/images/charger/battery_level_1080p_9.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_level_1080p_10.png:root/res/images/charger/battery_level_1080p_10.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_0.png:root/res/images/charger/battery_num_720p_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_1.png:root/res/images/charger/battery_num_720p_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_2.png:root/res/images/charger/battery_num_720p_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_3.png:root/res/images/charger/battery_num_720p_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_4.png:root/res/images/charger/battery_num_720p_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_5.png:root/res/images/charger/battery_num_720p_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_6.png:root/res/images/charger/battery_num_720p_6.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_7.png:root/res/images/charger/battery_num_720p_7.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_8.png:root/res/images/charger/battery_num_720p_8.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_9.png:root/res/images/charger/battery_num_720p_9.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_720p_percent.png:root/res/images/charger/battery_num_720p_percent.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_0.png:root/res/images/charger/battery_num_1080p_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_1.png:root/res/images/charger/battery_num_1080p_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_2.png:root/res/images/charger/battery_num_1080p_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_3.png:root/res/images/charger/battery_num_1080p_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_4.png:root/res/images/charger/battery_num_1080p_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_5.png:root/res/images/charger/battery_num_1080p_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_6.png:root/res/images/charger/battery_num_1080p_6.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_7.png:root/res/images/charger/battery_num_1080p_7.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_8.png:root/res/images/charger/battery_num_1080p_8.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_9.png:root/res/images/charger/battery_num_1080p_9.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_num_1080p_percent.png:root/res/images/charger/battery_num_1080p_percent.png \
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/ramdisk/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.bms.sh:root/init.qcom.bms.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.factory.rc:root/init.qcom.factory.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8916 \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix
    
# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_General_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Global_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Handset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Hdmi_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Headset_cal.acdb \
    $(LOCAL_PATH)/configs/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb:system/etc/acdbdata/MTP/msm8939-tapan-snd-card/MTP_WCD9306_Speaker_cal.acdb \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libion \
    libtinyxml \
    memtrack.msm8916

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Goodix-TS.kl:system/usr/keylayout/Goodix-TS.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/etc/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/etc/init.qcom.debug.sh:system/etc/init.qcom.debug.sh \
    $(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/etc/init.qcom.power.sh:system/etc/init.qcom.power.sh \
    $(LOCAL_PATH)/etc/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    $(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/etc/init.qti.ims.sh:system/etc/init.qti.ims.sh \
    $(LOCAL_PATH)/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/etc/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/etc/sec_config:system/etc/sec_config

# firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a420_pfp.fw:system/etc/firmware/a420_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a420_pm4.fw:system/etc/firmware/a420_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_4_0.fw:system/etc/firmware/cpp_firmware_v1_4_0.fw \
    $(LOCAL_PATH)/etc/firmware/ice40.bin:system/etc/firmware/ice40.bin \
    $(LOCAL_PATH)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    $(LOCAL_PATH)/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    $(LOCAL_PATH)/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    $(LOCAL_PATH)/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    $(LOCAL_PATH)/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    $(LOCAL_PATH)/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    $(LOCAL_PATH)/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    $(LOCAL_PATH)/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt
	
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libc2dcolorconvert \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdecHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml

# lights
PRODUCT_PACKAGES += \
    lights.msm8916

PRODUCT_BOOT_JARS += qcom.fmradio

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# QC 
ifneq ($(QCPATH),)
PRODUCT_BOOT_JARS += WfdCommon

# Connectivity Engine support
ifeq ($(BOARD_USES_QCNE),true)
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext \
    init.cne.rc

PRODUCT_PROPERTY_OVERRIDES +=
    persist.cne.feature=4

endif
endif

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m

PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    ro.sf.lcd_density=456 \
    keyguard.no_require_sim=true \
    ro.carrier=unknown \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60 \
    ro.com.google.clientidbase=android-zte \
    ro.com.google.clientidbase.ms=android-zte \
    ro.com.google.clientidbase.am=android-zte \
    ro.com.google.clientidbase.gmm=android-zte \
    ro.com.google.clientidbase.yt=android-zte \
    ro.com.android.dataroaming=true

# Wifi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service \
    libwpa_client \
    dhcpcd.conf \
    hostapd \
    libxml2 \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat

$(call inherit-product, device/zte/N939St/vendor/copyfiles.mk)
