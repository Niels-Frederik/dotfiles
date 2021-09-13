#!/bin/bash

bat_files="/sys/class/power_supply/BAT0"
full_charge=$(cat "${bat_files}/charge_full")
now_charge=$(cat "${bat_files}/charge_now")
echo $full_charge
echo $now_charge

res=($now_charge/$full_charge | bc)
echo ${res}

#echo ${now_charge}/${full_charge}
#res=$((now_charge*10/full_charge*10))
#echo print (now_charge/full_charge | perl)
#echo ${res}
#echo bc << ${res}
