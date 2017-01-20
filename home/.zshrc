# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# pure,dst
if [[ $EUID == 0 ]]
then
	ZSH_THEME="imajes"
else
	ZSH_THEME="kennethreitz"
fi

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

DISABLE_AUTO_TITLE="false"

# disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    history-substring-search
    command-not-found
    docker
    gitfast
    gradle
    mosh
    mvn
    pass
    pj
    redis-cli
    sudo 
    themes
    tmuxinator
    vagrant
    )

# pj plugin
PROJECT_PATHS=(~/Workspace/)

source $ZSH/oh-my-zsh.sh

# User configuration

# Common vars definitions
if [ -f $HOME/.env ]; then
    source $HOME/.env
fi

if [ -f $HOME/.aliases ]; then
   source $HOME/.aliases
fi

if [ -f $HOME/.xvm ]; then
    source $HOME/.xvm
fi

# Local customization of zsh. .zsh_local should not be included in castle
if [ -f $HOME/.zsh_local ]; then
   source $HOME/.zsh_local
fi
