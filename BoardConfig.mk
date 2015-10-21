DEVICE_FOLDER := device/meizu/m1

TARGET_OTA_ASSERT_DEVICE := m1

TARGET_NO_BOOTLOADER := true

TARGET_LDPRELOAD += libxlog.so
# Platform
TARGET_BOARD_PLATFORM := mt6752
TARGET_BOARD_PLATFORM_GPU := mali-t760mp2
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a53
MTK_BOARD_PLATFORMS := mt6752

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true 
TARGET_USES_64_BIT_BINDER := true
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
# Architecture
TARGET_ARCH := arm64
TARGET_CPU_VARIANT := generic
TARGET_ARCH_VARIANT := armv8-a
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_2ND_ARCH := arm
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# RIL

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_FOLDER)/bluetooth

#

WITH_DEXPREOPT := true

#Kernel 

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --board m71.Flyme_OS_4. --cmdline bootopt=64S3,32N2,64N2
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432


BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 512
BOARD_NAND_PAGE_SIZE := 4096


BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1515899392
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1198522368

# EGL settings
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true

BOARD_HAS_FLIPPED_SCREEN := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/kernel

#BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/mkmtkbootimg.mk
BOARD_HAS_MTK := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
DISABLE_DEXPREOPT := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
#
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/root/recovery.fstab

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_FOLDER)/include
#HAVE_SELINUX := true

BOARD_SEPOLICY_DIRS := \
device/meizu/m1/sepolicy

BOARD_SEPOLICY_UNION := \
device.te \
app.te \
system.te \
netd.te \
file_contexts



#
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_DISABLE_TRIPLE_BUFFERING := false
#BOARD_CUSTOM_GRAPHICS := $(DEVICE_FOLDER)/recovery/graphics.cwmt.c
RECOVERY_FONT := roboto_15x24.h

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Logging
#TWRP_EVENT_LOGGING := true 
