#!/bin/sh

case $(setxkbmap -query | grep -o us) in
	us) setxkbmap lt ;;
	*) setxkbmap us  ;;
esac
