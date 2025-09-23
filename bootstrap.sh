#!/usr/bin/env bash

set -e

echo "==> Update system..."
sudo pacman -Syu --noconfirm

echo "==> Install pacman packages..."
if [ -f pacman.txt ]; then
  sudo pacman -S --needed --noconfirm - < pacman.txt
else
  echo "pacman.txt not found, skipping..."
fi

echo "==> Install yay (if not installed)..."
if ! command -v yay &>/dev/null; then
  echo "yay not found, installing..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay
  makepkg -si --noconfirm
  cd -
else
  echo "yay already installed."
fi

echo "==> Install AUR packages with yay..."
if [ -f yay.txt ]; then
  yay -S --needed --noconfirm - < yay.txt
else
  echo "yay.txt not found, skipping..."
fi

echo "==> Done! 🎉"
