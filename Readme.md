# Setup
## "Enable" dotfiles
```
# out of the basedir of the repo
stow ~/.
```

## Terminal - Alacritty
```
sudo apt install alacritty
```

I don't care that this is not the most recent version.

## Tools
```
sudo apt install vim-nox tmux xclip urlview
```

## TMUX TPM
Install TPM:
https://github.com/tmux-plugins/tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

open tmux and install all plugins
```
prefix + I (capital i, as in **I**nstall)
