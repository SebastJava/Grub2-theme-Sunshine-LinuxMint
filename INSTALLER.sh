#!/bin/bash
# MIT License
# Copyright (c) 2018 Sébastien Bouchard
# alias SebastJava <sebastjava@hotmail.ca>

echo
echo "This installer only works with Linux Mint, Ubuntu, and Debian distributions. These things will be automatically checked before installation."
echo
echo "This installer will write to /boot/grub/themes directory, then edit /etc/default/grub file, and then run update-grub. Please enter your password for all this."
echo
sudo ./Installer-2.sh
exit
