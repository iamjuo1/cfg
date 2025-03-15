#!/bin/sh

BR=$(cat /sys/class/backlight/*/actual_brightness)
MAX=$(cat /sys/class/backlight/*/max_brightness)
STEP=$(( MAX/15 ))
OUT=$(echo /sys/class/backlight/*/brightness)

UP=$(( BR+STEP ))
DOWN=$(( BR-STEP ))

case $1 in
	+) echo $UP   > "$OUT" && herbe "$UP/$MAX Brightness"   ;;
	-) echo $DOWN > "$OUT" && herbe "$DOWN/$MAX Brightness" ;;
esac
