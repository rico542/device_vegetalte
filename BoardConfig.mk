#
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
#


# Bootloader
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(PWD)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BLUETOOTH_HCI_USE_MCT := true
FEATURE_QCRIL_UIM_SAP_SERVER_MODE := true

# Camera
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Add suffix variable to uniquely identify the board
TARGET_BOARD_SUFFIX := _32

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1556925644
BOARD_CACHEIMAGE_PARTITION_SIZE    := 405798912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 28311552
BOARD_FLASH_BLOCK_SIZE             := 131072

# Graphics
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
TARGET_USES_C2D_COMPOSITION := true

# Healthd
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Lineagehw
BOARD_HARDWARE_CLASS += device/bq/msm8916-common/lineagehw/src

# Power
TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP := device/bq/msm8916-common/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := device/bq/msm8916-common/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_EMMC_WIPE := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include device/qcom/sepolicy/legacy-sepolicy.mk
BOARD_SEPOLICY_DIRS += device/bq/msm8916-common/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib/libcamera_client.so|libcamera_parameters_shim.so

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Vendor Interface Manifest
DEVICE_MANIFEST_FILE := device/bq/msm8916-common/manifest.xml

# Widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Wifi
BOARD_HAS_QCOM_WLAN_SDK := true

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Kernel
TARGET_KERNEL_CONFIG := vegetalte_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := vegetalte,Aquaris_E5

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/vegetalte/bluetooth

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12444651356 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)

# Properties
TARGET_SYSTEM_PROP += device/bq/vegetalte/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += device/bq/vegetalte/sepolicy

# Tap to Wake
TARGET_TAP_TO_WAKE_NODE := "/proc/gesture_open"

# Wifi
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# Inherit from the proprietary version
-include vendor/bq/vegetalte/BoardConfigVendor.mk
