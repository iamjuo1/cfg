#!/bin/sh

TMUX='tmux new-window'

VIDEO="-o $HOME/video/%(title)s.%(ext)s"
AUDIO="-o $HOME/audio/%(title)s.%(ext)s"
DL_VIDEO="yt-dlp --format bv*+ba/b $VIDEO"
DL_AUDIO="yt-dlp --extract-audio --audio-format opus --audio-quality 0 $AUDIO"

FFREC="ffmpeg -f alsa -i default -f x11grab -r 60 -s 1366x768 -i :0.0 \
-vcodec libx264rgb -preset ultrafast -crf 0 -threads 0 \
-acodec libopus -y"
FFOUT="$HOME/video/"

INPUT=$(< "$BOOKMARKS" dmenu -i -p Go: ) || exit 1

case $INPUT in

	private)
		$TMUX "$EDITOR" ~/top-secret ;;

	bookmarks)
		$TMUX "$EDITOR" "$BOOKMARKS" ;;

	get-audio)
		INPUT=$(echo | dmenu -i -p URL:) || exit 1
		$DL_AUDIO "$INPUT" ;;

	get-video)
		INPUT=$(echo | dmenu -i -p URL:) || exit 1
		$DL_VIDEO "$INPUT" ;;

	record-start)
		INPUT=$(echo | dmenu -i -p Name:) || exit 1
		$FFREC "$FFOUT""$INPUT".mkv ;;

	record-stop)
		killall ffmpeg ;;

	http*)
		INPUT=$(echo "$INPUT" | awk '{print $1}')
		echo "$INPUT" | xclip -selection clipboard ;;

	file://*)
		INPUT=$(echo "$INPUT" | awk '{print $1}')
		echo "$INPUT" | xclip -selection clipboard ;;

esac
