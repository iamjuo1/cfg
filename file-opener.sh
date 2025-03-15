#!/bin/sh

case $1 in
	*.mp3|*.flac|*.FLAC|*.wav|*.opus)
		mpv --no-video "$1"
	;;

	*.mp4|*.mkv|*.webm|*.avi|*.flv)
		mpv --fullscreen "$1"
	;;

	*.png|*.gif|*.jpg|*.jpe|*.jpeg|*.webp|*.ico|*.bmp)
		nsxiv "$1"
	;;

	*.epub|*.pdf)
		zathura --mode fullscreen "$1"
	;;

	# all other files
	*)
		"${EDITOR:=vi}" "$1"
	;;
esac
