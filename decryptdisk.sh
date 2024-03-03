#!/bin/bash
set -x
#cryptsetup open --key-file=/home/olleg/sntls/cryptkey --type luks2 /dev/sdb usbdisk
#mount /dev/mapper/usbdisk /mnt/usbdisk
/usr/bin/cryptsetup open --key-file=/home/olleg/essentials/cryptkey --type luks2 /dev/disk/by-uuid/e99fe78d-d11e-4023-a398-ff1a64b66a3a usbdisk
mount /dev/disk/by-uuid/707f43ee-9d97-4aed-9d8e-5e25faec6387 /mnt/usbdisk
#unmount with: $ umount /mnt/usbdisk && cryptsetup close usbdisk
