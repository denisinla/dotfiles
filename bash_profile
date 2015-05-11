
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# enable color input
export CLICOLOR=1

# set directory colors
export LSCOLORS=excxFxFxBxxfxfxBxBxexe

# Added content
export PS1="\[\033[33m\]\h:\W \u$\[\033[0m\] "
