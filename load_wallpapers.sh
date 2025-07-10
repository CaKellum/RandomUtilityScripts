#! /bin/bash


for file in $HOME/.wallpapers/*; do
    if [ -f "$file" ]; then
        hyprctl hyprpaper preload "$file"
    fi
done
