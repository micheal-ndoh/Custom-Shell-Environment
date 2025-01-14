#!/bin/bash
#Check if acpi command is installed
if  ! command -v acpi &> /dev/null; then
echo "installing acpi ..."
apt-get update && apt-get install -y acpi
else
echo "acpi command exist"
fi
#using grep, awk and sed to fetch some system parameters from the the env variable
cpu=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 | cut -d'%' -f1)
#echo "%cup: $cpu"
RAM=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 | cut -d'%' -f1)

#echo "%RAM: $RAM"
#getting sys battery and temp from acpi command
temp=$(acpi -t | cut -d' ' -f4)
battery=$(acpi | cut -d' ' -f4 | cut -d'%' -f1)
#convertinf types
cpu=$(printf "%.0f" "$cpu")
RAM=$(printf "%.0f" "$RAM")
temp=$(printf "%.0f" "$temp")
battery=$(printf "%.0f" "$battery")
#defining custom values to test code
cpu=87
temp=26
#displaying the value of variables
if [ $RAM -gt 80 ]; then
    notify-send "memory over used : $RAM of mem used"
fi
if [ $cpu -gt 80 ]; then
    notify-send "cpu over used : $cpu of cpu used"
fi
if [ $temp -gt 25 ]; then
    notify-send "high temperature : $temp °C"
fi
if [ $battery -eq 100 ]; then
    notify-send "battery full : $battery % "
fi

