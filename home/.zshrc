# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [ -x /usr/bin/dircolors ]; then
   test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Load RVM into a shell session *as a function*
[[ -s "$rvm_path/scripts/rvm" ]] && source "$rvm_path/scripts/rvm"

# Local customization of zsh. .zsh_local should not be included in castle
if [ -f $HOME/.zsh_local ]; then
   source $HOME/.zsh_local
fi

if [ -f $HOME/.aliases ]; then
   source $HOME/.aliases
fi
