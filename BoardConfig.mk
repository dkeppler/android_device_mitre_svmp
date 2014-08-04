#
# IA target for MOCSI
#

TARGET_ARCH=x86
DISABLE_DEXPREOPT := true
TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_NO_RECOVERY := true
TARGET_HARDWARE_3D := true
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := true
TARGET_PROVIDES_INIT_RC := true
TARGET_CPU_ABI := x86
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_BOOTIMAGE_USE_EXT2 := true

# Enable use of bootable/diskinstalled. Required for building VM disk images.
TARGET_USE_DISKINSTALLER := true

# Kernel boot command line
BOARD_KERNEL_CMDLINE := init=/init noefi console=ttyS0 verbose androidboot.hardware=svmp androidboot.console=ttyS0 video=vfb: vfb_enable=1 tsc=reliable qemu=1 consoleblank=0

TARGET_DISK_LAYOUT_CONFIG := build/target/board/vbox_x86/disk_layout.conf

BOARD_BOOTIMAGE_MAX_SIZE := 8388608
BOARD_SYSLOADER_MAX_SIZE := 7340032
BOARD_FLASH_BLOCK_SIZE := 512

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Reserve 500M  for the system partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 500000000

# Reserve 500M for the cache partition
BOARD_CACHEIMAGE_PARTITION_SIZE := 500000000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Reserve 4G for the data partition
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4000000000
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# The eth0 device should be started with dhcp on boot.
# Useful for emulators that don't provide a wifi connection.
NET_ETH0_STARTONBOOT := true

ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.heapsize=96m

# Build OpenGLES emulation host and guest libraries
BUILD_EMULATOR_OPENGL := false

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

# Use software rasterizer from Mesa
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_GPU_DRIVERS := swrast
TARGET_HARDWARE_3D := true
BOARD_EGL_CFG := device/mitre/svmp/gpu/egl_mesa.cfg
