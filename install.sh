#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "======================================"
echo "       Installing Roubian v0.19"
echo "======================================"

# Comprobar Debian
if ! command -v apt >/dev/null; then
    echo "ERROR: Roubian requiere Debian o una distribución basada en Debian."
    exit 1
fi


echo
echo "[1/7] Actualizando repositorios..."

sudo apt update


echo
echo "[2/7] Instalando paquetes necesarios..."

PACKAGES=(
    i3-wm
    kitty
    polybar
    rofi
    picom
    zsh
    feh
    playerctl
    brightnessctl
    git
    curl
    unzip
    fontconfig
)

sudo apt install -y "${PACKAGES[@]}"


echo
echo "[3/7] Instalando JetBrains Mono Nerd Font..."

FONT_DIR="$HOME/.local/share/fonts/JetBrainsMono"

mkdir -p "$FONT_DIR"

if [ ! -f "$FONT_DIR/JetBrainsMonoNerdFont-Regular.ttf" ]; then

    curl -L \
    https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip \
    -o /tmp/JetBrainsMono.zip

    unzip -o /tmp/JetBrainsMono.zip -d "$FONT_DIR"

    rm /tmp/JetBrainsMono.zip

else
    echo "JetBrains Mono Nerd Font ya está instalada."
fi

fc-cache -fv


echo
echo "[4/7] Instalando Oh My Zsh..."

if [ ! -d "$HOME/.oh-my-zsh" ]; then

    RUNZSH=no CHSH=no \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

else
    echo "Oh My Zsh ya está instalado."
fi


echo
echo "[5/7] Instalando plugins de Zsh..."

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"


if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone \
    https://github.com/zsh-users/zsh-autosuggestions \
    "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi


if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting \
    "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi


echo
echo "[6/7] Copiando configuración Roubian..."

mkdir -p "$HOME/.config"

cp -r "$DOTFILES_DIR/.config/"* "$HOME/.config/"

cp "$DOTFILES_DIR/.zshrc" "$HOME/"


echo
echo "[7/7] Instalando wallpapers y permisos..."

mkdir -p "$HOME/.local/share/wallpapers"

cp "$DOTFILES_DIR/wallpapers/"* \
"$HOME/.local/share/wallpapers/"


chmod +x "$HOME/.config/polybar/launch.sh"


if [ -d "$HOME/.config/polybar/scripts" ]; then
    chmod +x "$HOME/.config/polybar/scripts/"*
fi


echo
echo "Configurando Zsh como shell por defecto..."

CURRENT_SHELL=$(getent passwd "$USER" | cut -d: -f7)

if [ "$CURRENT_SHELL" != "$(which zsh)" ]; then
    chsh -s "$(which zsh)"
fi


echo
echo "======================================"
echo "      Roubian v0.19 instalado"
echo "======================================"

echo
echo "Instalado:"
echo " ✓ i3wm"
echo " ✓ Kitty"
echo " ✓ Polybar"
echo " ✓ Rofi"
echo " ✓ Picom"
echo " ✓ Zsh + Oh My Zsh"
echo " ✓ Plugins Zsh"
echo " ✓ JetBrains Mono Nerd Font"
echo " ✓ Wallpapers"
echo
echo "Reinicia sesión para aplicar Zsh."
echo "Recarga i3 con Mod+Shift+R."
echo
echo "¡Disfruta Roubian!"
