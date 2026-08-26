#!/usr/bin/env bash

set -euo pipefail

FONT_DIR="$HOME/.local/share/fonts"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz"
TEMP_DIR="/tmp/jetbrains_font"

echo "==> Creating local fonts directory if it does not exist..."
mkdir -p "$FONT_DIR"

echo "==> Downloading JetBrainsMono Nerd Font..."
mkdir -p "$TEMP_DIR"
curl -fLo "$TEMP_DIR/JetBrainsMono.tar.xz" "$FONT_URL"

echo "==> Extracting font files to $FONT_DIR..."
tar -xf "$TEMP_DIR/JetBrainsMono.tar.xz" -C "$FONT_DIR"

echo "==> Updating font cache..."
fc-cache -fv

echo "==> Cleaning up temporary files..."
rm -rf "$TEMP_DIR"

echo "==> JetBrainsMono Nerd Font installed successfully."

