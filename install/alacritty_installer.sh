#!/bin/bash
pacman -S --noconfirm alacritty --needed

sudo -u "$SUDO_USER" bash <<EOF
mkdir -p ~/.config/alacritty

echo "window:
    opacity: 0.8
" > ~/.config/alacritty/alacritty.yml
echo "[window]
opacity = 0.8" > ~/.config/alacritty/alacritty.toml

EOF
