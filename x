#!/bin/sh

stty=$(stty -g)

(trap '' USR1 && exec X :0 vt1 -ac) &

pid=$!

trap 'DISPLAY=:0 dwm' USR1
trap 'stty $stty; kill $pid' EXIT HUP INT QUIT TERM

sleep 1 && DISPLAY=:0 xsct 4000 &

wait $pid
