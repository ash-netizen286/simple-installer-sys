#!/bin/bash
sudo -u "$SUDO_USER" bash <<EOF
cd ~/

mkdir Wallper
cd Wallper

wget "http://194.87.27.55:8080/wallper_miku.png"

cd ~/
EOF
