#!/bin/bash
set -e

pacman -S --noconfirm git --needed

sudo -u "$SUDO_USER" bash << EOF

rm -rf ~/.config/nvim
rm -rf ~/.config/i3
rm -rf ~/.config/conky

git clone git@github.com:ash-netizen286/nvim_config.git ~/.config/nvim
git clone git@github.com:ash-netizen286/simple-i3-config.git ~/.config/i3
git clone git@github.com:ash-netizen286/conky-configs.git ~/.config/conky

EOF
