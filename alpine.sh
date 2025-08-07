#!/bin/sh

SRC=~/src
INSTALL=doas apk add

$INSTALL curl make git gcc musl-dev   \
rsync libarchive-tools mandoc ncurses \
neovim tmux htop shellcheck           \
isync msmtp neomutt notmuch           \
alsa-utils ffmpeg mpv yt-dlp          \
transmission-daemon                   \
libx11-dev libxft-dev libxinerama-dev \
xrandr xclip xsct slock setxkbmap     \
ttf-dejavu                            \
firefox-esr                           \
zathura zathura-pdf-mupdf

doas adduser "$USER" video
doas adduser "$USER" audio
doas adduser "$USER" input

cd ~ || exit

mkdir $SRC
mkdir ~/mail
mkdir ~/video
mkdir ~/audio
mkdir ~/bt
mkdir ~/down

{
echo "permit persist $USER as root"
echo "permit nopass  $USER cmd chown"
} | doas tee /etc/doas.conf

{
echo 'defaults.pcm.card 1'
echo 'defaults.ctl.card 1'
} | doas tee /etc/asound.conf

git clone git@gitlab.com:iamjuo/top-secret.git
git clone git@gitlab.com:iamjuo/scripts.git
git clone git@gitlab.com:iamjuo/man.git

cp ~/scripts/.xinitrc  ~/.xinitrc
cp ~/scripts/.profile  ~/.profile
cp ~/scripts/.mbsyncrc ~/.mbsyncrc

# NeoVim plugin manager
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

# Make from source
cd $SRC || exit
git clone git@gitlab.com:iamjuo/sfm.git
git clone git@gitlab.com:iamjuo/st.git
git clone git@gitlab.com:iamjuo/dmenu.git
git clone git@gitlab.com:iamjuo/dwm.git
git clone git@gitlab.com:iamjuo/herbe.git

for DIR in *
do
	cd "$DIR" && make && doas make install clean && cd ..
done
