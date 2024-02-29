if [ ! -d ~/wallpaper ]; then
    if [ -d ~/wallpaper/ ]; then
        echo "wallpaper folder already exists."
    else
        mkdir ~/wallpaper
    fi
    cp ~/.config/wallpapers/* ~/wallpaper
    echo "Default wallpapers installed successfully."
else
    echo ":: ~/wallpaper folder already exists."
fi
echo ""

# ------------------------------------------------------
# Copy default wallpaper files to .cache
# ------------------------------------------------------

# Cache file for holding the current wallpaper
cache_file="$HOME/.cache/current_wallpaper"
rasi_file="$HOME/.cache/current_wallpaper.rasi"

# Create cache file if not exists
if [ ! -f $cache_file ] ;then
    touch $cache_file
    echo "$HOME/wallpaper/default.jpg" > "$cache_file"
fi

# Create rasi file if not exists
if [ ! -f $rasi_file ] ;then
    touch $rasi_file
    echo "* { current-image: url(\"$HOME/wallpaper/default.jpg\", height); }" > "$rasi_file"
fi
