#!/bin/bash
set -euo pipefail

# Determine working directory
WORKING_DIR="$(cd "$(dirname "$0")" && pwd)"

# Directories
OMP_BIN="$HOME/.local/bin"
OMP_CONFIG="$HOME/.config/oh-my-posh"
OMP_PLUGINS="$OMP_CONFIG/plugins"

#### ─────────────────────────────────────────────
#### Oh My Posh installation
#### ─────────────────────────────────────────────

echo "[+] Installing Oh My Posh..."

rm -rf "$OMP_BIN/oh-my-posh" "$OMP_PLUGINS"
mkdir -p "$OMP_BIN" "$OMP_PLUGINS"

curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "$OMP_BIN"


#### ─────────────────────────────────────────────
#### ZSH plugins installation
#### ─────────────────────────────────────────────

echo "[+] Installing Zsh plugins..."

# Autosuggestions
if [ ! -d "$OMP_PLUGINS/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git \
        "$OMP_PLUGINS/zsh-autosuggestions"
fi

# Syntax highlighting
if [ ! -d "$OMP_PLUGINS/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
        "$OMP_PLUGINS/zsh-syntax-highlighting"
fi


#### ─────────────────────────────────────────────
#### Oh My Zsh Git plugin and common aliases (manual pull)
#### ─────────────────────────────────────────────

echo "[+] Fetching oh-my-zsh git and aliases plugin..."

mkdir -p $OMP_PLUGINS/{git,aliases}
curl -fsSL \
    -o "$OMP_PLUGINS/git/git.plugin.zsh" \
    https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh

curl -fsSL \
   -o "$OMP_PLUGINS/aliases/aliases.plugin.zsh" \
   https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/common-aliases/common-aliases.plugin.zsh

#### ─────────────────────────────────────────────
#### .zshrc Backup & Install
#### ─────────────────────────────────────────────

echo "[+] Updating .zshrc..."

if [ -f "$HOME/.zshrc" ]; then
    cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
    echo "[-] Backup created: ~/.zshrc.bak"
fi

cp "$WORKING_DIR/.zshrc" "$HOME/.zshrc"


echo "[✔] Install done!"
echo "→ Set a Nerd Font (NF) or Powerline font in your terminal."
echo "→ Open a new Zsh session to enjoy your environment."
