#!/bin/bash
# ------------------------------------------------------------------------
# archblocks - modular Arch Linux install script
# ------------------------------------------------------------------------
# es@ethanschoonover.com @ethanschoonover
# http://github.com/altercation/archblocks

# INSTRUCTIONS -----------------------------------------------------------

# boot into Arch Install media and run (for this script only):
# curl https://raw.github.com/altercation/archblocks/master/install_tau.sh" > install.sh; bash install.sh

# RESPOSITORY ------------------------------------------------------------

REMOTE=https://raw.github.com/altercation/archblocks/master

# CONFIG -----------------------------------------------------------------

HOSTNAME=tau
USERNAME=es
USERSHELL=/bin/bash
FONT=Lat2-Terminus16
FONT_MAP=
LANGUAGE="en_US.UTF-8"
KEYMAP=us
TIMEZONE=US/Pacific
MODULES="dm_mod dm_crypt aes_x86_64 ext2 ext4 vfat intel_agp drm i915"
HOOKS="base udev autodetect pata scsi sata usb usbinput consolefont encrypt filesystems fsck"
KERNEL_PARAMS="quiet" # set/used in FILESYSTEM,INIT,BOOTLOADER blocks (this gets added to)
INSTALL_DRIVE=/dev/sda # this overrides any default value set in FILESYSTEM block

# BLOCKS -----------------------------------------------------------------

HARDWARE=hardware/laptop/lenovo/thinkpad_x220
TIME=common/time_ntp_utc
FILESYSTEM=filesystem/gpt_luks_passphrase_ext4
BOOTLOADER=bootloader/efi_gummiboot
NETWORK=network/wired_wireless_minimal
AUDIO=common/audio_alsa
VIDEO=common/video_intel
POWER=common/power_acpi
#XORG=xorg/default.sh
#DESKTOP=desktop/xmonad_minimal
POSTFLIGHT="common/sudo_default common/create_user"
APPSETS="appsets/cli_utils appsets/edu_utils appsets/vim_core appsets/mutt_core"

# BACKPAC file or func - future implementation ---------------------------
BACKPAC=

# EXECUTE ----------------------------------------------------------------

#eval "$(curl -fsL \"${REMOTE}/blocks/lib/helpers.sh\")"
. <(curl -fsL "${REMOTE}/blocks/_lib/helpers.sh"); _loadblock "_lib/core"

