# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-posh installation and general ZSH config
export ZSH="$HOME/.local/oh-my-posh"
export ZSH_CUSTOM="$HOME/.local/oh-my-posh/custom"

# History tweaks
SAVEHIST=1000
HISTSIZE=1000
HISTFILE=~/.zsh_history

# Shell theming - init oh-my-posh
eval "$(oh-my-posh init zsh --config ~/.local/oh-my-posh/bubbles.omp.json)"

# Add keybindings and source the plugins
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Tweaks
# Zstyle
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' use-cache true # Cache completion to `${ZDOTDIR}/.zcompcache`.
zstyle ':completion:*' menu 'select' # Make the menu interactive with arrow keys.

# Additional opts
setopt autocd
setopt appendhistory
setopt sharehistory

# Initialize
autoload -Uz compinit
compinit

# Load plugins
source ~/.local/oh-my-posh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/oh-my-posh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use the plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Upgrade
alias u="sudo dnf upgrade && flatpak update -y"
alias uc="sudo dnf autoremove && sudo dnf clean all"
alias setvim="sudo ln -snf /usr/bin/nvim /usr/bin/vim"
alias activate-python2="source ~/opt/python2.7/bin/activate"
# GIT aliases
alias pull="git pull --rebase"
alias push="git push"
alias scommit='git commit -S'
alias gc='git commit'
alias sign-commits="git rebase -i --root --exec 'git commit --amend --no-edit --no-verify -S'"
alias sign-commit="git rebase --root --exec 'git commit --amend --no-edit --no-verify -S' -i"
alias restart-reader="sudo systemctl restart pcscd"
alias vim="nvim"

# Other
alias format-eslint='eslint . --ext .js "--fix"'
alias update-adb='wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip -O ~/bin/platform-tools.zip; unzip platform-tools.zip -d ~/bin/; cp -r ~/bin/platform-tools/* ~/bin/;rm -rf ~/bin/platform-tools.zip ~/bin/platform-tools'


# Project
alias compose-test="docker-compose -f docker-compose.yml -f docker-compose.test.yml up --build --abort-on-container-exit"
alias compose-dev='docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --build'

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
