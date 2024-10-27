# GNOME Extensions Installation Script

This repository contains a shell script to automate the installation of my preferred GNOME Shell extensions. The script checks if each extension is already installed; if not, it installs and enables the extension. Extensions that are already installed will be skipped, and only newly installed extensions will be enabled.

## Script Overview

The `install_gnome_extensions.sh` script will:
- Check for each specified GNOME extension.
- Install any extensions that are not yet present on the system.
- Enable newly installed extensions.

## The script will handle checking, installing, and enabling the following GNOME extensions:

- User Theme (user-theme@gnome-shell-extensions.gcampax.github.com)
- Dash to Dock (dash-to-dock@micxgx.gmail.com)
- Just Perfection (just-perfection-desktop@just-perfection)
- Tiling Shell (tilingshell@ferrarodomenico.com)
- Weather or Not (weatherornot@somepaulo.github.io)
- Forge (forge@jmmaranan.com)
- Apps Menu (apps-menu@gnome-shell-extensions.gcampax.github.com)
- Background Logo (background-logo@fedorahosted.org)
- Launch New Instance (launch-new-instance@gnome-shell-extensions.gcampax.github.com)
- Places Menu (places-menu@gnome-shell-extensions.gcampax.github.com)
- Window List (window-list@gnome-shell-extensions.gcampax.github.com)
- App Indicator Support (appindicatorsupport@rgcjonas.gmail.com)

## Prerequisites

- GNOME Shell should be installed.
- The `gnome-extensions` CLI tool is required, which will be automatically installed if not already present.

## Usage

1. **Download the script**: Clone this repository or download `install_gnome_extensions.sh` directly.
2. **Run script**:
   ```bash
   sh install_gnome_extensions.sh
   ```
3. **Restart GNOME Shell to apply changes.**
