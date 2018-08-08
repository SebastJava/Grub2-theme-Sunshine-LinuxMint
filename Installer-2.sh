#!/bin/bash
# MIT License
# Copyright (c) 2018 Sébastien Bouchard
# alias SebastJava <sebastjava@hotmail.ca>

echo # Blank line.

# CHECK running as root...
if [ ! "$EUID" -eq 0 ]; then
  echo "Please run this script AS ROOT in Terminal OR just run INSTALLER in Terminal instead."; exit
fi

# CHECK /boot/grub directory is there.
if [ ! -d "/boot/grub" ]; then
  echo "ERROR: Could not find /boot/grub directory. Installation is canceled."; exit
fi

# CHECK /etc/default/grub is there.
if [ ! -f "/etc/default/grub" ]; then
  echo "ERROR: Could not find /etc/default/grub file. Installation is canceled."; exit
fi

# CHECK update-grub program is available
if ! type "update-grub" > /dev/null 2>&1; then
  echo "ERROR: Could not find update-grub program. Installation is canceled."; exit
fi

echo "Everything is checked. Now installing..."

# Create destination directory if missing, copy Sunshine-LinuxMint and set permissions.
mkdir -p /boot/grub/themes
cp -r Sunshine-LinuxMint /boot/grub/themes
chmod -R u+rwx,g+rx-w,o+rx-w /boot/grub/themes/Sunshine-LinuxMint

# Edit /etc/default/grub
sed -i '/GRUB_GFXMODE=/d' /etc/default/grub
sed -i '/GRUB_GFXPAYLOAD_LINUX=/d' /etc/default/grub
sed -i '/GRUB_BACKGROUND=/d' /etc/default/grub
sed -i '/GRUB_THEME=/d' /etc/default/grub
echo "
GRUB_GFXMODE=1024x768,800x600,640x480,auto
GRUB_GFXPAYLOAD_LINUX=1024x768,800x600,640x480,auto
#GRUB_BACKGROUND=
GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme.txt
" >> /etc/default/grub

# Update Grub
echo "Running update-grub..."; echo 
update-grub

echo; echo "Installation completed.
Now you can close this window and restart your computer to check your new Grub screen!"
exit
