#!/bin/bash
set -e

pacman -S --noconfirm zsh git curl --needed

sudo -u "$SUDO_USER" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s /bin/zsh "$SUDO_USER"

sudo -u "$SUDO_USER" bash <<EOF
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-\$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-\$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
EOF

cat <<'EOL' > "/home/$SUDO_USER/.zshrc"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME='robbyrussell'
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
alias rm="trash-put"
EOL
