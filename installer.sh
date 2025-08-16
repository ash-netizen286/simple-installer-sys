pacman -Syu --noconfirm

pacman -S --noconfirm i3-wm
pacman -S --noconfirm rofi
pacman -S --noconfirm firefox
pacman -S --noconfirm alacritty

pacman -S --needed --noconfirm git base-devel

pacman -S --noconfirm networkmanager
systemctl enable NetworkManager

pacman -S --noconfirm conky
pacman -S --noconfirm polybar
pacman -S --noconfirm feh
pacman -S --noconfirm ranger
pacman -S --noconfirm pulseaudio pvaucontrol
pacman -S --noconfirm xorg xorg-xinit xorg-apps
pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

pacman -S --noconfirm lightdm lightdm-gtk-greeter
systemctl enable lightdm
