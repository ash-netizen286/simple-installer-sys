#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Root can't run this script"
  exit 1
fi

pacman -S --needed --noconfirm git base-devel
sudo -u "$SUDO_USER" bash <<EOF
echo "Install dependens..."

echo "Copy yay repo..."
if [ -d "$HOME/yay" ]; then
  echo "Dir ~/yay already excist, pass clone."
else
  git clone https://aur.archlinux.org/yay.git ~/yay
fi

cd ~/yay

echo "Build and install yay..."
makepkg -si --noconfirm

cd ..
rm -rf ~/yay

echo "Install successed!"

yay -S --noconfirm 64gram-desktop-bin
yay -S --noconfirm obsidian
yay -S --noconfirm bat
EOF
