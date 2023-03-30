#!/bin/sh
set -x
/usr/bin/borg prune -v --list --keep-daily=7 --keep-weekly=4 --keep-monthly=3 -a=$(hostname -s)-* /mnt/usbdisk/borg2disk
