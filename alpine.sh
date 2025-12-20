#!/bin/sh

set -e
# set -x

ADD='doas apk add'
DEL='doas apk del'

BUILD_DIR=/tmp/src
BUILD_DEPS='
gcc musl-dev ncurses
libx11-dev libxft-dev libxinerama-dev
'
BUILD_SOURCES='
https://git.suckless.org/dmenu
https://git.suckless.org/dwm
https://git.suckless.org/st
https://github.com/dudik/herbe
https://github.com/iamjuo1/sfm
'

PKGS='
curl make git
rsync mandoc
neovim tmux htop shellcheck
isync msmtp neomutt notmuch
alsa-utils ffmpeg mpv yt-dlp
transmission-daemon
xclip xsct slock setxkbmap
ttf-dejavu
firefox-esr
zathura zathura-pdf-mupdf
'

$ADD $PKGS

doas adduser "$USER" video
doas adduser "$USER" audio
doas adduser "$USER" input

cd ~ || exit

mkdir -p $BUILD_DIR mail video audio mnt down

# Make from source

$ADD $BUILD_DEPS

cd $BUILD_DIR || exit

for SRC in $BUILD_SOURCES
do
	git clone "$SRC" || true
done

for DIR in *
do
	cd "$DIR"
	git restore . && git clean -fdx && git pull
	make
	ls ~/cfg/patches/"$DIR"* && git apply ~/cfg/patches/"$DIR"*
	make && doas make install clean
	cd ..
done

doas chown -R "$USER":"$USER" /usr/local/bin

$DEL $BUILD_DEPS
