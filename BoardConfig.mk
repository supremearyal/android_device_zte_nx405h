USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/nx405h/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := nx405h

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x01e00000 --dt device/zte/nx405h/dt.img
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xc00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xc00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4b000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x76c00000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/zte/nx405h/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
