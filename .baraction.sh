#!/bin/sh
#baraction.sh for spectrwm status bar

SLEEP_SEC=5
#loops forever outputting a line every SLEEP_SEC secs
while :; do
 
        TEMP_STR=`acpi -t`
        POWER_STR=`acpi`
        CPUFREQ_STR=`echo "Freq : "$(cat /proc/cpuinfo | grep 'cpu MHz' | sed 's/.*: //g; s/\..*//g;')`
        DATE_STR=`date --utc`
        eval $(awk '/^MemTotal/ {printf "MTOT=%s;", $2}; /^MemFree/ {printf "MFREE=%s;",$2}' /proc/meminfo)
        MUSED=$(( $MTOT - $MFREE ))
        MUSEDPT=$(( ($MUSED * 100) / $MTOT ))
        MEM_STR="Mem : ${MUSEDPT}%"
        echo -e "        [  $DATE_STR  ]                   [  $POWER_STR  ]                  [  $TEMP_STR  ]                   [  $CPUFREQ_STR ]                   [  $MEM_STR  ]"
        
sleep $SLEEP_SEC
done
