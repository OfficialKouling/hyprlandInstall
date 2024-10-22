#!/bin/bash
cp -r ./config ~/.config 
cp -r ./wallpapers ~/
cp zshrc ~/.zshrc 
grep -rl "kouling" ~/ | xargs sed -i "s/kouling/${USERNAME}/g"
sudo cp -r ~/ /root 
sudo pacman -Sy hyprland hyprpaper linux-firmware waybar sddm qt5-quickcontrols2 qt5-graphicaleffects qt5-svg --noconfirm
sudo pacman -Sy zsh ttf-jetbrains-mono-nerd thefuck python-pywal pulseaudio pulsemixer python curl wget ranger --noconfirm
sudo pacman -Sy cmake lebev lsd bat fontconfig rofi gum firefox python-uberzug grim swappy slurp --noconfirm
sudo pacman -Sy neovim qt5-quickcontrols qt5-base playerctl git  --noconfirm
sudo su << EOF
sed -i "s/twm/#twm/" /etc/X11/xinit/xinitrc
sed -i "s/xclock/#xclock/" /etc/X11/xinit/xinitrc
sed -i "s/exec/#exec/" /etc/X11/xinit/xinitrc
sed -i "s/xterm/#xterm/"  /etc/X11/xinit/xinitrc
echo "exec Hyprland" >> /etc/X11/xinit/xinitrc
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
sed -i "s/#Color/Color \nILoveCandy/" /etc/pacman.conf
EOF
mkdir ~/.shit_from_git 
(cd ~/.shit_from_git && git clone https://aur.archlinux.org/yay.git && cd ./yay && makepkg -sri && sudo pacman -U yay-1*pkg.tar.zst --noconfirm)
sudo cp -r ./rofi/themes/* /usr/share/rofi/themes/
(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)")
(git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions)
(git clone https://github.com/NvChad/starter ~/.config/nvim)
yay -Sy paru python-pywalfox swhkd-bin 
systemctl --user enable --now swhkd.service
paru wlogout
(cd /usr/share/sddm/themes && sudo tar -xzvf ~/hyprlandInstall/sugar-candy.tar.gz && sudo sed -i "s/Current=/Current=sugar-candy/" /usr/lib/sddm/sddm.conf.d/default.conf)
