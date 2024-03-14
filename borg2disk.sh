#!/bin/bash
set -x
/usr/bin/borg create -s --progress --list --filter AME -C zstd --exclude-from bexclude.txt /mnt/usbdisk/borg2disk::$(hostname -s)-$(date +%Y-%m-%d,%H:%M) /home/olleg/essentials /home/olleg/.scripts /home/olleg/.bashrc /home/olleg/docker /home/olleg/.config /root /etc /var/lib/libvirt /home/olleg/git /home/olleg/.local /tank/vagrant/machines
