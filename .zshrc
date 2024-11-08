if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
  git
  z                    # Navegação inteligente por diretórios
  zsh-autosuggestions  # Sugestões automáticas de comandos
  zsh-syntax-highlighting # Realce de sintaxe
  colored-man-pages    # Páginas do manual coloridas
  command-not-found    # Sugere instalação de comandos ausentes
  docker               # Alias e funções para Docker
  kubectl              # Alias e funções para Kubernetes
  zsh-completions      # Autocompletes adicionais
  fzf-tab              # Navegação de autocomplete com fzf
  zsh-interactive-cd   # Navegação interativa com cd
  git-open             # Abre o repositório remoto no navegador
  zsh-history-substring-search # Pesquisa por substrings no histórico
  zsh-vi-mode          # Modo vi para navegação e edição
  zsh-nvm              # Integração com NVM para Node.js
  alias-tips           # Sugestão de aliases conforme você digita
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
source ${(q-)ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias gs="git status"
alias gp="git pull"
alias gc="git commit"
alias gl="git log"

export PATH="$PATH:/usr/local/bin"
alias rofi-drun="rofi -show drun"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
setopt auto_cd
setopt append_history
setopt correct

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export EDITOR='nvim'
export VISUAL="$EDITOR"
export TERMINAL="alacritty"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="$NVM_DIR/versions/node/$(nvm current)/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

alias dk="docker"
alias k="kubectl"
alias gcm="git commit -m"
alias gp="git push"

autoload -U compinit && compinit
autoload -U colors && colors
setopt rmstarsilent

source $ZSH/oh-my-zsh.sh
export NODE_TLS_REJECT_UNAUTHORIZED=0

