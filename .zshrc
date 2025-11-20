#### ─────────────────────────────────────────────
#### PATH & ENVIRONMENT
#### ─────────────────────────────────────────────

export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.config/oh-my-posh"
export ZSH_C="$ZSH/plugins"

export NVM_DIR="$HOME/.nvm"

# Load NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"


#### ─────────────────────────────────────────────
#### HISTORY
#### ─────────────────────────────────────────────

HISTSIZE=1500
SAVEHIST=1500
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt NO_CASE_GLOB

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#### ─────────────────────────────────────────────
#### KEYBINDINGS
#### ─────────────────────────────────────────────

# Ctrl+Left: backward word
bindkey "\e[1;5D" backward-word
bindkey "\e[5D"     backward-word
bindkey "\e[1;3D"   backward-word

# Ctrl+Right: forward word
bindkey "\e[1;5C" forward-word
bindkey "\e[5C"     forward-word
bindkey "\e[1;3C"   forward-word


#### ─────────────────────────────────────────────
#### COMPLETIONS
#### ─────────────────────────────────────────────

autoload -U compinit
compinit


#### ─────────────────────────────────────────────
#### PLUGINS
#### ─────────────────────────────────────────────

# Git plugin from Oh My Posh
source "$ZSH_C/git/git.plugin.zsh"

# Autosuggestions
source "$ZSH_C/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

# Syntax highlighting (MUST be last)
source "$ZSH_C/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"


#### ─────────────────────────────────────────────
#### ALIASES
#### ─────────────────────────────────────────────

# System
alias vim="nvim"

# Git
alias pull="git pull --rebase"
alias push="git push"
alias gc="git commit"
alias scommit="git commit -S"
alias sign-commits="git rebase -i --root --exec 'git commit --amend --no-edit --no-verify -S'"
alias sign-commit="git rebase --root --exec 'git commit --amend --no-edit --no-verify -S' -i"

# Other
alias restart-reader="sudo systemctl restart pcscd"

# Projects
alias compose-test="docker-compose -f docker-compose.yml -f docker-compose.test.yml up --build --abort-on-container-exit"
alias compose-dev="docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --build"


#### ─────────────────────────────────────────────
#### GPG + SSH Agent
#### ─────────────────────────────────────────────

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
gpgconf --launch gpg-agent


#### ─────────────────────────────────────────────
#### OH-MY-POSH
#### ─────────────────────────────────────────────

eval "$(oh-my-posh init zsh --config "$HOME/.cache/oh-my-posh/themes/slimfat.omp.json")"
