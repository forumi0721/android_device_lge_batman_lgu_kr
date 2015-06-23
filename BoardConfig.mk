USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/batman_lgu_kr/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8660
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := batman_lgu_kr

BOARD_KERNEL_CMDLINE := console=ttyDCC0,115200,n8 androidboot.hardware=batman_lgu_kr kgsl.mmutype=gpummu vmalloc=580M
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/batman_lgu_kr/kernel-selinux

BOARD_HAS_NO_SELECT_BUTTON := true

##Extra
#board
ifeq "$(shell grep -o Use\ BOARD_MKBOOTIMG_ARGS build/core/Makefile 2> /dev/null)" "Use BOARD_MKBOOTIMG_ARGS"
	BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x1800000
else
	BOARD_FORCE_RAMDISK_ADDRESS := 0x41a00000
endif

#target
TARGET_KERNEL_SOURCE := kernel/lge/batman_lgu_kr
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_CONFIG := batman_lgu_defconfig

#recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_FSTAB = device/lge/batman_lgu_kr/rootdir/fstab.batman_lgu_kr
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/batman_lgu_kr/src/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := roboto_23x41

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/batman_lgu_kr/src/bluetooth
