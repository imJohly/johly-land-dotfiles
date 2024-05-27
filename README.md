# My Hyprland Dotfiles

A repo for a bunch of dotfiles made for a hyprland setup

Install git & yay package manager
```bash
pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Install kitty and configurations
```bash
cd ~/.config/kitty
curl -o ~/.config/kitty/nord.conf https://raw.githubusercontent.com/connorholyday/nord-kitty/master/nord.conf
echo "include ./nord.conf" >> kitty.conf
```

Install bluetooth stuff
```bash
yay -S bluez bluez-utils blueman

modprobe btusb
systemctl enable bluetooth.service
systemctl start bluetooth.service
```

Install GTK theme (Nord)
```bash
yay -S nwg-look nordzy-icon-theme nordic-theme
gsettings set org.gnome.desktop.interface gtk-theme Nordic
gsettings set org.gnome.desktop.interface icon-theme Nordzy-cyan-dark
```

Install Spotify and Spicetify
```bash
yay -S spotify spicetify-cli

sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

cd git
git clone --depth=1 https://github.com/spicetify/spicetify-themes.git

spicetify
spicetify backup apply enable-devtools

spicetify config current_theme Sleek
spicetify config color_scheme Nord
spicetify update
```

Install ZSH and configure
```bash
yay -S zsh zoxide zsh-antidote
chsh -s $(which zsh)

# setup aliases
echo “alias p=’sudo pacman’” >> ~/.zshrc
echo “alias n=’nvim .’ >> ~/.zshrc

# configure zoxide
echo “$(zoxide init –cmd cd zsh)"

# setup antidote zsh package manager
ZDOTDIR=~/.config/zsh
git clone https://github.com/getantidote/zdotdir $ZDOTDIR
[[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
ln -s $ZDOTDIR/.zshenv ~/.zshenv
zsh

cd ~/.config/zsh
echo "source ~/.zshrc" >> .zshrc
```

Install miscellaneous apps
```bash
yay -S \
    iwgtk \
    hyprpaper hyprlock hyprpicker \
    thunar thunar-volman gvfs tumbler engrampa \
    xfce4-settings xfce-polkit \
    grim slurp wl-clipboard \
    waybar wlogout rofi-lbonn-wayland \
    firefox \
    eog zathura f3d
```
