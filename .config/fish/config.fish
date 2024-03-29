#
# ~/.config/fish/config.fish
#

### Source .profile
source ~/.profile

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin  $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications /var/lib/flatpak/exports/bin/ $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

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

# Function for extracting compressed files
function extract --argument-names file
  if set -q file
    if test -f $file
      switch $file
        case "*.tar.bz2"
          tar -jxvf $file $argv[2..-1]
        case "*.tar.gz"
          tar -zxvf $file $argv[2..-1]
        case "*.bz2"
          bunzip2 $file $argv[2..-1]
        case "*.dmg"
          hdiutil mount $file $argv[2..-1]
        case "*.gz"
          gunzip $file $argv[2..-1]
        case "*.tar"
          tar -xvf $file $argv[2..-1]
        case "*.tbz2"
          tar -jxvf $file $argv[2..-1]
        case "*.tgz"
          tar -zxvf $file $argv[2..-1]
        case "*.zip"
          unzip $file $argv[2..-1]
        case "*.Z"
          uncompress $file $argv[2..-1]
        case '*'
          echo "'$file' cannot be extracted/mounted via extract"
      end
    else
      echo "'$file' is not a valid file"
    end
  end
end

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end

### starship prompt ###
starship init fish | source
