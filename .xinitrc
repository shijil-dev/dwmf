#!bin/bash
while [ true ] ; do
	pow=$(cat /sys/class/power_supply/AC/online)
	if [ $pow -eq 1 ] ; then
		stat="Charging"
	else
		stat=" "
	fi
	xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% $stat $(date +"%R %a %F")"
	sleep 1s
done &
exec dwm
