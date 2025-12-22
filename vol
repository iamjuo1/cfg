#!/bin/sh

case $1 in
	+) amixer sset Master 5%+ && herbe "$( amixer sget Master | grep % )" ;;
	-) amixer sset Master 5%- && herbe "$( amixer sget Master | grep % )" ;;
esac
