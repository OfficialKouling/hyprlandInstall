#!/bin/bash
cp -r ./config ~/.config 
cp -r ./wallpapers ~/
cp zshrc ~/.zshrc 
sudo cp -r ~/ /root 
sudo pacman -Sy hyprland hyprpaper linux-firmware waybar sddm qt5-quickcontrols2 qt5-graphicaleffects qt5-svg
sudo pacman -Sy zsh ttf-jetbrains-mono-nerd thefuck python-pywal rofi
sudo cp -r ./rofi/themes/* /usr/share/rofi/themes/
(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")
(git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions)
yay -Sy paru python-pywalfox swhkd-bin 
systemctl --user enable --now swhkd.service
paru wlogout
(cd /usr/share/sddm/themes & sudo tar -xzvf ~/hyprlandInstall/sugar-candy.tar.gz & sudo sed -i "s/Current=/Current=sugar-candy/" /usr/lib/sddm/sddm.conf.d/default.conf)
