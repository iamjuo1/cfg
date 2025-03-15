#!/bin/sh

case $1 in
	router)
		ip link set dev eth0 address 00:ad:24:e5:50:f7
		;;
	hp)
		ip link set dev eth0 address 30:24:a9:0a:5b:53
		;;
esac

rc-service networking restart
