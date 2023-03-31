#!/bin/bash
set -x
borg create -s --progress --list --filter AME -C zstd --exclude-from bexclude.txt /mnt/usbdisk/borg2disk::$(hostname -s)-$(date +%Y-%m-%d,%H:%M) /etc /var/lib/libvirt /root
