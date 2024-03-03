#!/bin/bash

# Eintrag in /etc/fstab:
# //192.168.178.201/backup/borg/end /mnt/borg cifs defaults,noauto,credentials=/home/olleg/.smbcredentials    0 0
# oder
# 192.168.178.201:/volume1/backup/borg/end /mnt/borg2nas nfs defaults,noauto 0 0
# Warning: "--prefix" has been deprecated. Use "--glob-archives 'yourprefix*'" (-a) instead.
set -x
mount /mnt/borg2nas
/usr/bin/borg prune -v --list --keep-daily=7 --keep-weekly=4 --keep-monthly=3 -a=$(hostname -s)-* /mnt/borg2nas
umount /mnt/borg2nas
