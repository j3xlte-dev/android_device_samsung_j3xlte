# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SC9830I
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sc8830

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j3xlte/prebuilt/dt.img

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/samsung/j3xlte/prebuilt/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520f
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5272223744
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# keys
BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/samsung/j3xlte/recovery/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true

TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_EXFAT_FUSE := true
TW_NEW_ION_HEAP := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
# display
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
