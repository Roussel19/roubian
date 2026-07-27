#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "======================================"
echo "      Installing Roubian v0.19"
echo "======================================"

# Crear directorios necesarios
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/share/wallpapers"

echo "[*] Copiando configuraciones..."

cp -r "$DOTFILES_DIR/.config/"* "$HOME/.config/"

echo "[*] Copiando Zsh config..."

cp "$DOTFILES_DIR/.zshrc" "$HOME/"

echo "[*] Copiando wallpapers..."

cp -r "$DOTFILES_DIR/wallpapers/"* "$HOME/.local/share/wallpapers/"

echo "[*] Asignando permisos..."

# Polybar launch
if [ -f "$HOME/.config/polybar/launch.sh" ]; then
    chmod +x "$HOME/.config/polybar/launch.sh"
fi

# Scripts de Polybar
if [ -d "$HOME/.config/polybar/scripts" ]; then
    chmod +x "$HOME/.config/polybar/scripts/"*
fi

echo
echo "======================================"
echo "     Roubian instalado correctamente"
echo "======================================"
echo
echo "Archivos instalados:"
echo "  ✓ i3"
echo "  ✓ Kitty"
echo "  ✓ Picom"
echo "  ✓ Polybar"
echo "  ✓ Rofi"
echo "  ✓ Zsh"
echo "  ✓ Wallpapers"
echo
echo "Recarga i3 con:"
echo "    Mod + Shift + R"
echo
echo "¡Disfruta de Roubian v0.19!"
