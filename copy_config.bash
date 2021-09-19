#!/bin/bash

# Setup bash and remove old files
shopt -s extglob
rm -rf .config

# Prepare folders
mkdir -p .config
mkdir -p .config/gtk-3.0

# Copy theme configs
cp -r ~/.config/polybar .config/
cp -r ~/.config/alacritty .config/
cp -r ~/.config/i3 .config/
cp -r ~/.config/gtk-3.0/settings.ini .config/gtk-3.0/
cp -r ~/.config/gtk-4.0 .config/
cp -r ~/.themes .