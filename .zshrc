if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Podman stuff
#export DOCKER_HOST=unix:///run/user/1000/podman/podman.sock # Use podman as the docker-compose backend
#export KIND_EXPERIMENTAL_PROVIDER=podman # Use podman as the KIND driver

# Enable devbox as a global pacman
#eval "$(devbox global shellenv)"
