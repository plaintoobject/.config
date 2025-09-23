#!/bin/zsh env

alias ls='ls --color=auto -h --group-directories-first'
alias la='ls -a'
alias ll='ls -lah'
alias grep='ripgrep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias spacsyu='sudo pacman -Syu'
alias spacs='sudo pacman -S'
alias spacrm='sudo pacman -R'
alias spac='sudo pacman'
alias pac='pacman'
alias pach='pacman -h'
alias ga="git add"
alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gcmi="git commit -m 'init'"
alias gp="git push"
alias gpum="git push -u origin main"
alias gpm="git push origin main"
alias gb="git branch"
alias gpull="git pull"
alias v='nvim'
alias vim=nvim
alias c='clear'
alias e='exit'
alias so='source ~/.zshrc'
alias vtmp='nvim /data/data/com.termux/files/home/.termux/termux.properties'
alias vtmc='nvim /data/data/com.termux/files/home/.termux/colors.properties'
alias mysqlstart="/usr/bin/mysqld --datadir=/var/lib/mariadb --user=$(whoami) --skip-grant-tables"
alias mysqlstop="mariadb -u root -p shutdown"
