#!/bin/bash
dir="/sys/class/power_supply/BAT0/"
status=$( cat $dir"status" )
capacity=$( cat $dir"charge_full" )
current=$( cat $dir"charge_now" )
percentage=$((current*100/capacity))
if [[ "${status}"=="Discharging" && ${percentage} -lt "16" ]]; then
    notify-send --urgency critical "Low battery - ${percentage}% battery remaining"
fi

