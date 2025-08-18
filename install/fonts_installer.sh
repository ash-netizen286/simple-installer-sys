#!/bin/bash
pacman -S --noconfirm 7zip wget --needed

sudo -u "$SUDO_USER" bash << EOF

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/BigBlueTerminal.zip

7z x BigBlueTerminal.zip -ofonts/

mkdir -p ~/.local/share/fonts
cd fonts
cp *.ttf ~/.local/share/fonts/

fc-cache -fv
cd ..
rm -rf fonts
rm -rf BigBlueTerminal.zip
EOF
