#!/bin/bash
set -e

pacman -S --noconfirm picom --needed

sudo -u "$SUDO_USER" bash <<EOF
echo "backend = "glx";

glx-no-stencil = true;
glx-copy-from-front = false;

shadow = false;

inactive-opacity = 1;
active-opacity = 1;
frame-opacity = 1;
inactive-opacity-override = false;

blur-background-fixed = false;
blur-background-exclude = [
    "window_type = 'dock'",
    "window_type = 'desktop'"
];

blur-method = "dual_kawase";
blur-strength = 5;

corner-radius = 20;

blur: {
  method = "dual_kawase";
  strength = 3;
  background = false;
  background-frame = false;
  background-fixed = false;
};

fading = false;
fade-delta = 1;
fade-in-step = 0.03;
fade-out-step = 0.03;

fade-exclude = [ ];

mark-wmwin-focused = true;
mark-ovredir-focused = true;
use-ewmh-active-win = true;
detect-rounded-corners = true;
detect-client-opacity = true;

refresh-rate = 0;
vsync = true;
dbe = false;
unredir-if-possible = true;

# focus-exclude = [ "class_g = 'Cairo-clock'" ];

detect-transient = true;
detect-client-leader = true;

wintypes : {
  tooltip : {
    fade = true;
    shadow = false;
    opacity = 0.85;
    focus = true;
  };
  fullscreen : {
    fade = true;
    shadow = false;
    opacity = 1;
    focus = true;
  };
};

xrender-sync-fence = true;

rounded-corners = true;
corner-radius = 20;
rounded-corners-exclude = [
  "!class_g = 'Conky'"
];
" >> ~/.config/picom.conf

EOF
