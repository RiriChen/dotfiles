## ZShell ##
exec zsh

## Scripting alias ##
alias syn='.sync_script.sh'
alias 'ssh tux'='ssh rc3297@tux.cs.drexel.edu'

## Status Line ##
export PS1="\[\033[1;36m\u@\h:[\w]\$ \]\033[0;0m"
export PATH="$PATH:/home/rchen/bin"

## ls command output ##
alias lsa='ls -AlB --color'
alias lsl='ls -lB --color'
alias ls.='ls -d'

## quick way to get out of current directory ##
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## git command ##
alias glog='git log --oneline --all --decorate --graph'
alias gitl='git log --oneline --all --decorate --graph'
alias gits='git status'

## rm command ##
alias rm='rm -i' # prompt before deleting

# handy short cuts #
alias h='history'
alias j='jobs -l'
alias q='exit'
alias c='clear'

## Misc ##
alias tree="tree -C --dirsfirst"
alias hist="history | grep -v '^ *[0-9]* *hists' | grep $@"
alias cp='cp -v'
alias ls='ls --color=tty --group-directories-first'
alias ag='ag --color-path='35' --color-match='32' --nobreak --noheading --ignore=cscope.out'

## time and date ##
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

## vim commands ##
alias vi=vim
alias edit='vim'

alias cwd='pwd'

set -C # regular files cant be overwritten with >, must use >|

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'
