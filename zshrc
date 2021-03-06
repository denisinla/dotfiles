# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="trajan"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Plugins
plugins=(git tmux)

# user configuration
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# RVM to PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# GPG
export GPG_TTY=$(tty)

# Always work in a tmux session if tmux is installed
if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t dev || tmux new -s dev; exit
  fi
fi

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/exports
source $HOME/dotfiles/aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
PATH="$HOME/.themekit:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias craftman="$HOME/.craftman/bin/craftman"
