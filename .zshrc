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

# Setup history settings
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
# Enable case sensitivity
setopt NO_CASE_GLOB
# Enable changing directory
setopt AUTO_CD
setopt AUTO_PARAM_SLASH

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

# Git
source "$ZSH_C/git/git.plugin.zsh"

# Common Aliases
source "$ZSH_C/aliases/aliases.plugin.zsh"

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
alias compose-test="docker compose -f compose.yml -f compose.test.yml up --build --abort-on-container-exit"
alias compose-dev-up="docker compose -f compose.yml -f compose.dev.yml up --build"
alias compose-prd-up="docker compose up --build"
alias compose-dev-down="docker compose -f compose.yml -f compose.dev.yml down"
alias compose-prd-down="docker compose down"

#### ─────────────────────────────────────────────
#### GPG + SSH Agent
#### ─────────────────────────────────────────────

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
gpgconf --launch gpg-agent


#### ─────────────────────────────────────────────
#### OH-MY-POSH
#### ─────────────────────────────────────────────

eval "$(oh-my-posh init zsh --config "$HOME/.cache/oh-my-posh/themes/night-owl.omp.json")"
