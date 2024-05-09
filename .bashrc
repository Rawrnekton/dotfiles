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

PROMPT_DIRTRIM=4
PS1="\[\e[1;36m\]\u\[\e[38;5;202m\]@\h\[\e[1;36m\]:\w \[\e[0;36m\]\\$ \[\e[0;37m\]"

export TERM=xterm
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim

#export PATH=$PATH:/usr/games/
export PATH="$PATH:/opt/nvim-linux64/bin"

set -o vi

# do ls -l after each cd command
cd() {
	builtin cd "$@" && ls -l
}

# change into the created directory
mkcdir() {
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

# aliassssses
alias t='tmux -2'
alias v='nvim'
alias sv='sudoedit'
alias ..="cd .."
alias k='kubectl'
#source <(kubectl completion bash)
alias kgp='kubectl get pods'
alias kgn='kubectl get nodes'

# the rest is history
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace
