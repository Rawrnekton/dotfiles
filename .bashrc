# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias la='ls -la'
alias lt='ls $LS_OPTIONS -lt'   # nach Änderungsdatum sortiert
alias lS='ls $LS_OPTIONS -lS'   # nach Dateigröße sortiert
alias lr='ls $LS_OPTIONS -lrt'  # neueste Dateien zuletzt


# git status pretty
alias git-watch='watch -t --color git status --short --branch'

# Git-Branch Funktion for PS1
parse_git_branch() {
  branch=$(git branch 2>/dev/null | grep '\*' | sed 's/* //')
  if [ -n "$branch" ]; then
    echo "($branch)"
  fi
}

# shorten name
shorten_user() {
  echo "${USER:0:4}"
}

# PS1-Definition mit Git-Branch
PS1="\[\e[1;36m\]$(shorten_user):\[\e[38;5;202m\]\w \[\e[1;33m\]\$(parse_git_branch) \[\e[0;36m\]\$\[\e[0m\] "

PROMPT_DIRTRIM=2

export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim

export PATH="$PATH:/opt/nvim-linux64/bin"

#set -o vi

# do ls -l after each cd command
cd() {
  builtin cd "$@" && [ "$PS1" ] && pushd . > /dev/null && ll
}

# change into the created directory
mkcdir() {
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

# aliassssses
alias t='tmux -2'
alias tmux='tmux -2'
alias v='nvim'
alias sv='sudoedit'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias k='kubectl'
source <(kubectl completion bash)
alias kgp='kubectl get pods'
alias kgn='kubectl get nodes'

# the rest is history
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignoredups:ignorespace
#shopt -s histappend
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
