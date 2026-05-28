#!/bin/bash

while true; do
	if grep "1" -q /sys/class/power_supply/AC0/online; then
		tuned-adm profile "throughput-performance"
	else
		tuned-adm profile "powersave"
	fi

	sleep 5;
done
