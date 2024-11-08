# Carrega o Powerlevel10k instant prompt se disponível
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Caminho para Oh My Zsh e tema
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Função para clonar plugin se não estiver instalado
clone_plugin() {
  local repo=$1
  local dir="$HOME/.oh-my-zsh/custom/plugins/$(basename $repo)"
  [[ -d $dir ]] || git clone https://github.com/$repo $dir
}

# Clonar plugins se necessário
clone_plugin "zsh-users/zsh-autosuggestions"
clone_plugin "zsh-users/zsh-syntax-highlighting"
clone_plugin "zsh-users/zsh-completions"
clone_plugin "Aloxaf/fzf-tab"
clone_plugin "changyuheng/zsh-interactive-cd"
clone_plugin "paulirish/git-open"
clone_plugin "zsh-users/zsh-history-substring-search"
clone_plugin "jeffreytse/zsh-vi-mode"
clone_plugin "lukechilds/zsh-nvm"
clone_plugin "djui/alias-tips"
clone_plugin "ael-code/zsh-colored-man-pages"
clone_plugin "Tarrasch/zsh-command-not-found"
clone_plugin "agkozak/zsh-z"

# Lista de plugins
plugins=(
  git
  z                    # Navegação inteligente por diretórios
  zsh-autosuggestions  # Sugestões automáticas de comandos
  zsh-syntax-highlighting # Realce de sintaxe
  colored-man-pages    # Páginas do manual coloridas
  command-not-found    # Sugere instalação de comandos ausentes
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

# Configurações adicionais do Zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
source ${(q-)ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases úteis
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

