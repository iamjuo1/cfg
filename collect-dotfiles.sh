#!/bin/sh

mkdir -p boot etc .ssh .config/transmission-daemon || true
cp -ru ~/.profile                      ~/cfg
cp -ru ~/.config/zathura               ~/cfg/.config
cp -ru ~/.config/sxhkd                 ~/cfg/.config
cp -ru ~/.config/nvim                  ~/cfg/.config
cp -ru ~/.config/tmux                  ~/cfg/.config
cp -ru ~/.config/git                   ~/cfg/.config
cp -ru ~/.config/mutt                  ~/cfg/.config
cp -ru ~/.config/msmtp                 ~/cfg/.config
cp -ru ~/.config/notmuch               ~/cfg/.config
cp -ru ~/.config/isyncrc               ~/cfg/.config
cp -ru ~/.config/mpv                   ~/cfg/.config
cp -ru ~/.config/transm*/settings.json ~/cfg/.config/transmission-daemon
cp -ru ~/.ssh/config                   ~/cfg/.ssh
cp -ru /boot/limine.conf               ~/cfg/boot/limine.conf

doas cp -ru /etc/wpa_supplicant/wpa_supplicant.conf ~/cfg/etc
doas cp -ru /etc/doas.conf                          ~/cfg/etc
doas cp -ru /etc/asound.conf                        ~/cfg/etc
doas cp -ru /etc/inittab                            ~/cfg/etc
doas chown "$USER" ~/cfg/etc/*
