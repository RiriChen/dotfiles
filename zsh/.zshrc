## ZShell Stuff ##
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
bindkey "^[[3~" delete-char

## Scripting alias ##
alias syn='./.sync_script.sh'
alias tux='ssh rc3297@tux.cs.drexel.edu'

## tmux ##
alias tmux="tmux -2"
export PS1="%F{blue}%n@%m:%F{blue}[%~]%F{reset}\$ "
alias tmux-new="tmux new-window -c $PWD"
alias tmux-split="tmux split-window -c $PWD"

## Status Line ##
##export PS1="%F{cyan}%n@%m:%F{cyan}[%~]%F{reset}\$ "
export PATH="$PATH:/home/rchen/bin"

## man pages vim themed ##
export MANPAGER="less -R"

## ls command output ##
alias lsa='ls -AlB --color'
alias lsl='ls -lB --color'
alias sl='ls'
alias ls='ls --color=tty --group-directories-first'

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
alias gitb="GIT_PAGER=cat git branch"

# handy short cuts #
alias h='history'
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

###
# cobbled together from
# https://github.com/mrzool/bash-sensible

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Get rid of annoying single-history behavior
setopt no_share_history

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
#bindkey 'C' forward-char
#bindkey 'D' backward-char
#bindkey 'A' history-search-backward
#bindkey 'B' history-search-forward
# sam's:
bindkey 'OA' history-beginning-search-backward
bindkey 'OB' history-beginning-search-forward
