#! /bin/bash

#./load_wallpapers.sh

WALLPAPER_DIR="$HOME/.wallpapers"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER" > /dev/null 2>&1

hyprctl hyprpaper reload ,"$WALLPAPER" > /dev/null 2>&1
hyprctl hyprpaper unload all > /dev/null 2>&1
