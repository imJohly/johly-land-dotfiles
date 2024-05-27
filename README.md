# My Hyprland Dotfiles

A repo for a bunch of dotfiles made for a hyprland setup

## Installation
Install git
```bash
sudo pacman -S git
```

Install yay package manager
```bash
pacman -S --needed git base-devel
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
yay -S bluez bluez-utils
modprobe btusb
systemctl enable bluetooth.service
systemctl start bluetooth.service
yay -S blueman
```

Allow screenshotting
```bash
yay -S grim slurp wl-clipboard
```

Install File manager stuff (currently Thunar)
```bash
yay -S thunar thunar-volman gvfs tumbler engrampa xfce4-settings
```

Install polkit stuff
```bash
yay -S xfce-polkit
```

Install Hyprland Ecosystem stuff
```bash
yay -S hyprpaper hyprlock hyprpicker
```

Aesthetics
```bash
yay -S nordzy-icon-theme nordic-theme
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

Install miscellaneous
```bash
yay -S iwgtk \
    waybar \
    rofi-lbonn-wayland \
    wlogout \
    firefox \
    nwg-look \
    f3d \
    eog
```
