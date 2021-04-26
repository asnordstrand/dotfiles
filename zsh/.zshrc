# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/annasnordstrand/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git brew osx zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# EXPORT
export TERM="xterm-256color"
export EDITOR="nvim"

# ALIAS
alias ec="$EDITOR $HOME/.zshrc"
alias sc="source $HOME/.zshrc"
alias pls="sudo"
alias cl="clear"
alias nv="nvim"
alias ..="cd ../"
alias ...="cd .../"
