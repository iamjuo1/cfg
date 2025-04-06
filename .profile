#!/bin/sh

export AGE_KEY="$HOME"/.ssh/id_ed25519
export BOOKMARKS="$HOME"/top-secret/bookmarks
export BROWSER=firefox
export EDITOR=nvim
export ENV="$HOME"/top-secret/env
export HISTFILE="$HOME"/tmp/sh-history
export MAILDIR="$HOME"/mail
export NOTES="$HOME"/top-secret/notes
export NOTMUCH_CONFIG="$HOME"/.config/notmuch/cfg.ini
export PAGER=less
export PASS_DIR="$HOME"/top-secret/pass
export PATH="$HOME"/cfg:"$PATH"
export TERMINAL=st

ntpd -dd -q -p pool.ntp.org
doas chown "$USER" /sys/class/backlight/*/brightness
redshift -m drm:card=1 -O 2000
