
#main block
cd $HOME
sudo pacman -S rofi
sudo pacman -S feh
sudo pacman -S picom
sudo pacman -S pcmanfm
sudo pacman -S light
sudo pacman -S alsa-utils
sudo pacman -S flameshot
sudo pacman -S min
sudo pacman -S neofetch
sudo pacman -S lxappearance
sudo pacman -S terminator
sudo pacman -S qbittorrent
sudo pacman -S virtualbox-host-modules-arch
sudo pacman -S virtualbox
sudo pacman -S steam
sudo pacman -S discord
sudo pacman -S wine-mono

#git builds
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME

git clone https://github.com/PineTreePizza/Linuxi3Config.git
cd Linuxi3Config
cd Fonts
mv pine-fonts /usr/share/fonts/ 
cd Linuxi3Config

rm -R $HOME/.config/i3
mv i3 $HOME/.config/

rm -R $HOME/.config/picom.conf
mv picom.conf $HOME/.config/

rm -R $HOME/.config/rofi
mv rofi $HOME/.config/

rm -R $HOME/.config/terminator
mv terminator $HOME/.config/
cd $HOME



cd $HOME
#end
sudo pacman -Syu
sudo yay -Syu 
