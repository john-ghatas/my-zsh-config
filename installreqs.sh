#!/bin/bash
cd $(dirname $0) && WORKING_DIR=$(pwd)

# Create required directories
mkdir -p ~/.local/{bin,oh-my-posh/custom/plugins}

# Install oh-my-posh and the theme
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/sonicboom_dark.omp.json -O ~/.local/oh-my-posh/sonicboom_dark.omp.json
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/bubblesextra.omp.json -O ~/.local/oh-my-posh/bubbles.omp.json

curl -s https://ohmyposh.dev/install.sh | bash -s

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.local/oh-my-posh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.local/oh-my-posh/custom/plugins/zsh-syntax-highlighting

# Backup .zshrc
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak

# Cleanup:
rm -rf ~/.programs/menlo ~/.programs/fonts

# Copy the .zshrc config
cd $WORKING_DIR
cp .zshrc ~/.zshrc
echo "Install done! Set a powerline font or a nerd font (NF) as your terminal font and open zsh. Enjoy!"
