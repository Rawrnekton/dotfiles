# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

alias tmux='tmux -2'

PROMPT_DIRTRIM=4
PS1="\[\e[1;36m\]\u\[\e[38;5;202m\]@\h\[\e[1;36m\]:\w \[\e[0;36m\]\\$ \[\e[0;37m\]"

export TERM=xterm
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# some non-significant binaries get installed here
# namely cowsay, lolcat and fortune
# /etc/profile explicitly excludes this for root
PATH=$PATH:/usr/games/

# do ls -l after each cd command
cd() { 
    builtin cd "$@" && ls -l;
}

# change into the created directory
mkcdir() { 
    mkdir -p -- "$1" && 
    cd -P -- "$1"; 
}
