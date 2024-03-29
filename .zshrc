# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/thales/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-z
  vscode
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/thales/.vimpkg/bin"
export PATH=$PATH:/sbin/
export PATH=$PATH:/snap/bin/
export PATH=$PATH:/home/thales/.local/bin/
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:/home/thales/Apps/kafka/kafka_2.12-2.7.0/bin/
export PETSC_DIR=/home/thales/apps/petsc/petsc-3.11.4/
export PETSC_ARCH=debug

alias aps='apt-cache search'
alias app='apt-cache policy'
alias api='sudo apt-get install'
alias apf='sudo apt-get install -f'
alias apr='sudo apt-get remove'
alias apu='sudo apt-get update'
alias apg='sudo apt-get upgrade'
alias dpkgi='sudo dpkg -i'
alias cm='clear & make'
alias envSearch='printenv | grep '
alias tccToDropbox='git archive --format=tar HEAD | (cd ~/Dropbox/TCC_Thales/; tar -xvpf -)'
alias tccToPendrive='git archive --format=tar HEAD | (cd /media/thales/THALES/tcc; tar -xvpf -)'
alias gls='git ls-tree -r HEAD --name-only'
alias gdc='git diff --cached'
alias rmv='rm -v'
alias cpv='cp -v'
alias mvv='mv -v'
alias tmuxls='tmux list-sessions'
alias tmuxns='tmux new-session -s'
alias tmuxa='tmux attach'

alias qv='qpdfview'
alias rn='ranger'
alias rmk='remarkable'

alias wifiOff="nmcli radio wifi off"
alias wifiOn="nmcli radio wifi on"

alias vsh='vim ~/.zshrc'
alias ..zshrc="source ~/.zshrc"
alias alert='paplay /usr/share/sounds/gnome/default/alerts/drip.ogg'


unalias gcp
# open neovim instead of oldvim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

#edit command line in vim
autoload -U edit-command-line
zle -N edit-command-line 
bindkey -M vicmd v edit-command-line

# open a bash terminal inside a docker container
dbash () {
    docker exec -it $1 bash
}

# search history
shis () {
   history | grep $1
}

# open vscode and close terminal
xvsc () {
	code $1 && exit
}

alias dps='docker ps'
alias dpsa='docker ps -a'
alias drmi='docker rmi'
alias drm='docker rm'
alias dbuild='docker build'
alias drun='docker run'
alias dimages='docker images'
alias dimage='docker image'
alias dkill='docker kill'
alias dstart='docker start'
alias dcstop='docker container stop'
alias dcrm='docker container rm'
alias drminone='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
ddall () {
    dcstop $1 && dcrm $1 
}

#alias dockprune48='docker image prune --all --filter "until=4320h"'
