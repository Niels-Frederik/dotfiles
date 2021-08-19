#!/usr/bin/env bash

NOTIFY_ICON=/usr/share/icons/Papirus/32x32/apps/system-software-update.svg

get_total_updates() { UPDATES=$(checkupdates 2>/dev/null | wc -l); }

while true; do
    get_total_updates

    if (( UPDATES >= 1 )); then
        echo " $UPDATES"
    else
        echo " None"
    fi
    sleep 900
done
