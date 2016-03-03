# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git ruby rails rvm tmux tmuxinator)


export DOTFILES=$HOME/dotfiles/dotfiles
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source $ZSH/oh-my-zsh.sh

# My own alias
  alias nocaps='/usr/bin/setxkbmap -option "ctrl:nocaps"'
  alias gitlog="git log --all -p --"
  alias origclean="find . -name '*.orig' -exec rm -f {} \;"
  alias grr="grep -r"
