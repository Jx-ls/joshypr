#!/bin/bash

echo "Linking dotfiles..."

CONFIGS=(
  dunst
  gtk-3.0
  hypr
  kitty
  qt5ct
  qt6ct
  ranger
  rofi
  spicetify
  Thunar
  waybar
  zsh
)

for config in "${CONFIGS[@]}"; do
  echo "Linking $config..."
  rm -rf "$HOME/.config/$config"
  ln -sf "$HOME/.dots/$config" "$HOME/.config/$config"
done

# Link individual files
echo "Linking standalone files..."
ln -sf ~/.dots/.tmux.conf ~/
ln -sf ~/.dots/.vimrc ~/
ln -sf ~/.dots/.zshrc ~/

echo "All done."

