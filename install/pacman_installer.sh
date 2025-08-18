#!/bin/bash
pacman -Syu --noconfirm

pacman -S --noconfirm i3-wm --needed
pacman -S --noconfirm rofi --needed
pacman -S --noconfirm firefox --needed

pacman -S --noconfirm git base-devel --needed

pacman -S --noconfirm networkmanager --needed
systemctl enable NetworkManager

pacman -S --noconfirm conky --needed
pacman -S --noconfirm feh --needed
pacman -S --noconfirm ranger --needed
pacman -S --noconfirm pulseaudio pvaucontrol --needed
pacman -S --noconfirm xorg xorg-xinit xorg-apps --needed
pacman -S --noconfirm nvidia nvidia-utils nvidia-settings --needed

pacman -S --noconfirm lightdm lightdm-gtk-greeter --needed
systemctl enable lightdm

pacman -S --noconfirm wireguard-tools --needed
pacman -S --noconfirm trash-cli --needed
pacman -S --noconfirm picom --needed
pacman -S --noconfirm curl --needed
pacman -S --noconfirm jr --needed
pacman -S --noconfirm openssh --needed
pacman -S --noconfirm xclip --needed
pacman -S --noconfirm grub efibootmgr os-prober mtools --needed
