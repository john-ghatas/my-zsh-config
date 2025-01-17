#!/bin/bash

cd $(dirname $0) && WORKING_DIR=$(pwd)

# Install oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install ZSH plugins and Power10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Backup .zshrc
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak

# Cleanup
rm -rf ~/.programs/menlo ~/.programs/fonts

# Copy the .zshrc config
cd $WORKING_DIR
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
echo "Install done! Set a powerline font or a nerd font (NF) as your terminal font and open zsh. Enjoy!"
