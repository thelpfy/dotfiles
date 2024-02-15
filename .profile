#
# ~/.profile
#

### COMMANDS 

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias cp="cp -i"                          # confirm before overwriting something

# replace commands
alias more=less
alias cat='bat -p ' # plain
alias find=fd
alias code=vscodium

# ls commands
alias ls='eza -l --color=always --group-directories-first' # my preferred listing
alias la='eza -la --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT -I ".git" --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

### ENVIRONMENT

# EXPORT
export TERM="xterm-256color" 
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries

# FORMATING
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

# program settings
export TOPGRADE_NO_SELF_UPGRADE=true
