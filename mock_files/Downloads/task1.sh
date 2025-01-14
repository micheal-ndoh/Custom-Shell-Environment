#!/bin/bash

# threshold values
Threshold_memory=80000
Threshold_Battery=30
Threshold_temperature=25
Threshold_cpu_usage=80

file="info.txt"

# while true; do
    # Check memory usage


    FREE_MEM=$(free | grep Mem | awk '{print $4}')
# echo "$FREE_MEM -lt $Threshold_memory "

    if [ $FREE_MEM -lt $Threshold_memory ]; then
        echo "$(date) -- Small memory available" 1> "$file"
    fi

    # Check battery level
    Bat=$(acpi | awk '{print $4}' | cut -d '%' -f 1)
    BatteryState=$(acpi | awk '{print $3}')

    # echo "$Bat -lt $cpu -gt $Threshold_cpu_usage  $FREE_MEM -lt $Threshold_memory "


    if [ $Bat -lt $Threshold_Battery ] && [ "$BatteryState" == "Discharging" ]; then
        echo "$(date) -- Low Battery Please Charge" 1> "$file"
    fi

    # Check system temperature
    temp=$(acpi -t | grep "Thermal 0" | awk '{print $4}' | cut -d '.' -f1)
    # echo "temp: $temp"

    if [ $temp -gt $Threshold_temperature ]; then
        echo "$(date) -- System Temperature High $temp"°C"" 1> "$file"
    fi

    # Check CPU usage
    cpu=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 | cut -d'%' -f1)
    cpu=$(printf "%.0f" "$cpu")
    # echo "cpu : $cpu"
    if [ $cpu -gt $Threshold_cpu_usage ]; then
        echo "$(date) -- High CPU usage $cpu"%"" 1> "$file"
    fi

    # done

 echo "$(date) -- Small memory available $FREE"
 echo "$(date) -- Low Battery Please Charge"
 echo "$(date) -- System Temperature High $temp"°C""
 echo "$(date) -- High CPU usage $cpu"%""
