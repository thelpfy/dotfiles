#
# ~/.config/fish/config.fish
#

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin  $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications /var/lib/flatpak/exports/bin/ $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set XDG_DATA_DIRS "/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

## Correct formating
set LANG "en_US.UTF-8"
set LC_CTYPE "en_US.UTF-8"
set LC_NUMERIC "de_AT.UTF-8"
set LC_TIME "de_AT.UTF-8"
set LC_COLLATE "en_US.UTF-8"
set LC_MONETARY "de_AT.UTF-8"
set LC_MESSAGES "en_US.UTF-8"
set LC_PAPER "de_AT.UTF-8"
set LC_NAME "de_AT.UTF-8"
set LC_ADDRESS "de_AT.UTF-8"
set LC_TELEPHONE "de_AT.UTF-8"
set LC_MEASUREMENT "de_AT.UTF-8"
set LC_IDENTIFICATION "de_AT.UTF-8"
set LC_ALL "en_US.UTF-8"

### Program settings
export TOPGRADE_NO_SELF_UPGRADE=true

### FUNCTIONS ###

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ "$fish_key_bindings" = "fish_vi_key_bindings" ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end

### ALIASES ###
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "eza"
alias ls='eza --color=always --group-directories-first'     # my preferred listing
alias la='eza -la --color=always --group-directories-first' # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT -I ".git" --color=always --group-directories-first ' # tree listing
alias l.='eza -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias cp='cp -i'                          # confirm before overwriting

# replace commands
 alias more=less
 alias cat=bat
 alias find=fd
 alias code=vscodium

### starship prompt ###
starship init fish | source
