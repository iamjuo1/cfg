#!/bin/sh

stty=$(stty -g)

(trap '' USR1 && exec X :0 vt1 -ac) &

pid=$!

trap 'DISPLAY=:0 $HOME/cfg/xinitrc' USR1
trap 'stty $stty; kill $pid' EXIT HUP INT QUIT TERM

wait $pid
