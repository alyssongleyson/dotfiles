# Personal Dotfiles

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Personal configuration files and automation scripts for Linux environments.

## Repository Structure

```text
dotfiles/
├── config/
│   └── nvim/          # Neovim configuration and plugins setup
├── scripts/
│   └── install_fonts.sh  # JetBrainsMono Nerd Font installation script
├── .gitignore
└── LICENSE
```

## Prerequisites

Ensure the following system tools are installed before applying the configurations:

- Git
- Neovim (v0.9.0+)
- Curl & Tar (for font installation)

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/alyssongleyson/dotfiles.git ~/dotfiles
```

### 2. Install Nerd Fonts
Run the font installation script to render icons correctly in terminal UI plugins:

```bash
chmod +x ~/dotfiles/scripts/install_fonts.sh && ~/dotfiles/scripts/install_fonts.sh
```

### 3. Deploy Neovim Configuration
Create a symbolic link pointing to the system XDG configuration directory:

```bash
ln -s ~/dotfiles/config/nvim ~/.config/nvim
```

Launch Neovim to trigger automatic bootstrap via `lazy.nvim`:
```bash
nvim
```
