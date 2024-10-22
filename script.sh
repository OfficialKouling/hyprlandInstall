#!/bin/bash
cp -r ./config ~/.config 
cp -r ./wallpapers ~/
cp zshrc ~/.zshrc 
grep -rl "kouling" ~/ | xargs sed -i "s/kouling/${USERNAME}/g"
sudo cp -r ~/ /root 
sudo pacman -Sy hyprland hyprpaper linux-firmware waybar sddm qt5-quickcontrols2 qt5-graphicaleffects qt5-svg --noconfirm
sudo pacman -Sy zsh ttf-jetbrains-mono-nerd thefuck python-pywal pulseaudio pulsemixer python curl wget ranger --noconfirm
sudo pacman -Sy cmake lebev lsd bat fontconfig rofi gum firefox python-uberzug grim swappy slurp --noconfirm
sudo pacman -Sy neovim qt5-quickcontrols qt5-base playerctl --noconfirm
sudo cp -r ./rofi/themes/* /usr/share/rofi/themes/
(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")
(git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions)
yay -Sy paru python-pywalfox swhkd-bin 
systemctl --user enable --now swhkd.service
paru wlogout
(cd /usr/share/sddm/themes & sudo tar -xzvf ~/hyprlandInstall/sugar-candy.tar.gz & sudo sed -i "s/Current=/Current=sugar-candy/" /usr/lib/sddm/sddm.conf.d/default.conf)
