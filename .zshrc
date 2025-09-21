export ZSH="$HOME/.config/zsh"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

ZSH_THEME="vague"

plugins=(
  git
  man
  ubuntu
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'

# - $ZSH_CUSTOM/aliases.zsh
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias v='nvim'
alias vim=nvim
alias socfg='source ~/.bashrc'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
source "$HOME/.config/zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
