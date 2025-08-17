if [ "$EUID" -ne 0 ]; then
  echo "Root can't run this script"
  exit 1
fi

bash ./pacman_installer.sh
bash ./yay_installer.sh
bash ./autorun_installer.sh
bash ./wallper_installer.sh
bash ./zsh_install.sh
