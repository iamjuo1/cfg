#!/bin/sh

OUTPUT=$(xrandr | grep " connected " | awk '{print $1}')
echo "Select your resolution"
echo "1. 1366x768"
echo "2. 1920x1080"

read -r MODE

case $MODE in
	1) MODE="1366x768" ;;
	2) MODE="1920x1080" ;;
	*) exit ;;
esac

xrandr --output "$OUTPUT" --mode $MODE --rate 144
