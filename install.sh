#!/bin/bash

# Install Yay package manager if not already installed
if ! command -v yay &>/dev/null; then
    sudo pacman -Syu --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi
if ! command -v git &>/dev/null; then
    echo "Git is not installed. Please install Git and try again."
    sudo pacman -Sy git
    exit
fi

# Install desired packages
yay -S ttf-font-awesome hyprland-git waybar-hyprland rofi dunst kitty swaybg swaylock-fancy-git swayidle pamixer light brillo
git clone -b late-night-🌃 https://github.com/1amSimp1e/dots.git
cd dots
cp -r ./configs/* ~/.config/
fc-cache -fv
echo "Success"
