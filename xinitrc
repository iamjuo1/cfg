#!/bin/sh

# Auto runs on startx

doas chown "$USER" /sys/class/backlight/*/brightness

sxhkd     &
xsct 4000 &

exec dwm
