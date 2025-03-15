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
export STAGIT="$HOME"/tmp/stagit
export TERMINAL=st
export PUB_GIT="
$HOME/cfg
$HOME/src/sfm
$HOME/src/patches
$HOME/src/man
$HOME/src/automail
"
