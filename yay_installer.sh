#!/bin/bash
set -e

if [ "$EUID" -ne 0 ]; then
  echo "Root can't run this script"
  exit 1
fi

echo "Install dependens..."
sudo pacman -S --needed --noconfirm git base-devel

echo "Copy yay repo..."
if [ -d "$HOME/yay" ]; then
  echo "Die ~/yay already excist, pass clone."
else
  git clone https://aur.archlinux.org/yay.git ~/yay
fi

cd ~/yay

echo "Build and install yay..."
sudo -u "$SUDO_USER" makepkg -si --noconfirm

cd ..
rm -rf ~/yay

echo "Install successed!"

sudo -u "$SUDO_USER" yay -S --noconfirm 64gram-desktop-bin
sudo -u "$SUDO_USER" yay -S --noconfirm obsidian
sudo -u "$SUDO_USER" yay -S --noconfirm bat
