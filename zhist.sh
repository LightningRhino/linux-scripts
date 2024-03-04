#!/usr/bin/env bash
zpool history > /home/olleg/.scripts/zpool-history.txt && sed -i '/trim tank/d;/scrub/d;/zfs-auto-snap/d;/autosnap/d;/unallow/d;/allow/d;/import/d;/shutdown/d' /home/olleg/.scripts/zpool-history.txt
