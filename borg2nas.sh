#!/bin/bash
set -x
# Eintrag in /etc/fstab:
# //192.168.178.201/backup/borg/end /mnt/borg2nas cifs defaults,noauto,credentials=/home/olleg/.smbcredentials    0 0
# oder
# 192.168.178.201:/volume1/backup/borg/end /mnt/borg2nas nfs defaults,noauto 0 0
mount /mnt/borg2nas
/usr/bin/borg create -s --progress --list --filter AME -C zstd --exclude-from bexclude.txt /mnt/borg2nas::$(hostname -s)-$(date +%Y-%m-%d,%H:%M) /home/olleg/essentials /home/olleg/.scripts /home/olleg/.bashrc /home/olleg/docker /home/olleg/.config /root /etc /usr/share/edk2/x64 /var/lib/libvirt /home/olleg/git /home/olleg/.local
umount /mnt/borg2nas
