if status is-interactive
# Commands to run in interactive sessions can go here
set fish_greeting

### ALIASES ###
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias ls=exa
alias ll="ls -lg --icons --hyperlink"
alias la="ll -a"
alias cat=bat
alias find=fd
alias code=vscodium
### starship prompt ###
starship init fish | source
end


### ENV  ###
export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="de_AT.UTF-8"
export LC_TIME="de_AT.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="de_AT.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="de_AT.UTF-8"
export LC_NAME="de_AT.UTF-8"
export LC_ADDRESS="de_AT.UTF-8"
export LC_TELEPHONE="de_AT.UTF-8"
export LC_MEASUREMENT="de_AT.UTF-8"
export LC_IDENTIFICATION="de_AT.UTF-8"
export LC_ALL="en_US.UTF-8"

## TIGRESS ##
export TIGRESS_HOME="/opt/tigress/3.1"
export PATH="/opt/tigress/3.1:$PATH"

## TOPGRADE ##
export TOPGRADE_NO_SELF_UPGRADE=true
