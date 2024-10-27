#!/bin/bash

# Array of extension IDs to install
extensions=(
    "user-theme@gnome-shell-extensions.gcampax.github.com"
    "dash-to-dock@micxgx.gmail.com"
    "just-perfection-desktop@just-perfection"
    "tilingshell@ferrarodomenico.com"
    "weatherornot@somepaulo.github.io"
    "forge@jmmaranan.com"
    "apps-menu@gnome-shell-extensions.gcampax.github.com"
    "background-logo@fedorahosted.org"
    "launch-new-instance@gnome-shell-extensions.gcampax.github.com"
    "places-menu@gnome-shell-extensions.gcampax.github.com"
    "window-list@gnome-shell-extensions.gcampax.github.com"
    "appindicatorsupport@rgcjonas.gmail.com"
)

# Check if gnome-extensions CLI is installed
if ! command -v gnome-extensions &> /dev/null; then
    echo "gnome-extensions tool is not installed. Installing it now."
    sudo apt update && sudo apt install gnome-shell-extensions -y
fi

# Loop through each extension
for extension in "${extensions[@]}"; do
    if gnome-extensions list | grep -q "$extension"; then
        echo "Extension $extension is already installed. Skipping..."
    else
        echo "Installing and enabling extension: $extension"
        gnome-extensions install "$extension"
        gnome-extensions enable "$extension"
    fi
done

echo "All extensions have been checked, installed if necessary, and enabled. Restart GNOME Shell to apply changes."
