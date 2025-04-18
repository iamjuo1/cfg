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

alias ll='ls -hl'
alias la='ls -hla'
alias du='du -h'
alias df='df -h'
alias home='cd ~ && ls'
alias bb='cd .. && ls'
alias gg='git add . && git commit'
alias gp='git push'
alias zathura='zathura --mode fullscreen'
alias src='doas nvim /etc/apk/repositories'

alias add='doas apk add'
alias del='doas apk del'

alias suspend='echo mem | doas tee /sys/power/state'
alias reboot='doas reboot'
alias poweroff='doas poweroff'

alias v=nvim

alias ms='mbsync -a && notmuch new'
alias mr='neomutt -F .config/mutt/iamjuo.com'
alias gmx='mbsync -c ~/top-secret/isyncrc -a && neomutt -F .config/mutt/gmx.com'

alias bt='transmission-daemon -p 1337'
