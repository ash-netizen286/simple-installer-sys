#!/bin/bash
set -e

sudo -u "$SUDO_USER" bash <<EOF
cd ~/
mkdir Autorun
cd ~/Autorun

echo 'alacritty &
pid=$!

for i in {1..100}; do
    win_id=$(xdotool search --onlyvisible --pid "$pid" 2>/dev/null | head -n 1)
    if [ -n "$win_id" ]; then
        i3-msg "[id=\"$win_id\"] move scratchpad"
        exit 0
    fi
    sleep 0.1
done

exit 1' >> alacritty.sh

cd ~/
EOF
