#!/usr/bin/env bash

FONT=JetBrainsMonoNerdFont-Light.ttf

if [ ! -f "$HOME/.local/share/fonts/$FONT" ]; then
    echo "Installing $FONT"
    mkdir -p ~/.local/share/fonts/
    curl -fLo ~/.local/share/fonts/$FONT "https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/JetBrainsMono/Ligatures/Light/$FONT"
    fc-cache -f
fi

