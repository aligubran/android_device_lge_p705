HAVE_NFC := false

include device/lge/msm7x27a-common/BoardConfigCommon.mk
LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/p705/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := p705
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

TARGET_PREBUILT_KERNEL := device/lge/p705/kernel

#kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27a-common

TARGET_KERNEL_CONFIG := cyanogenmod_u0_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/p705/recovery.fstab

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p705/recovery/graphics.c

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p705/bluetooth

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
USE_SET_METADATA := false
