-include vendor/lge/gt540/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_gt540_defconfig
BOARD_KERNEL_CMDLINE :=  mem=214M console=ttyMSM2,115200n8 androidboot.hardware=swift
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

TARGET_BOOTLOADER_BOARD_NAME := swift
TARGET_OTA_ASSERT_DEVICE := swift,gt540

USE_CAMERA_STUB := false

TARGET_PROVIDES_LIBAUDIO := true
# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true
