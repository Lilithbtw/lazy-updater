# Arch Update Popup

A simple popup notification for Arch Linux that prompts the user to update their system.
This script uses `yay` for package management and works for both official and AUR packages.

## Features

- Detects available updates for the system.
- Prompts the user with a GUI popup to perform the update.
- Requires `yay` to manage updates.

## Requirements

- **Arch Linux** or Arch-based distributions
- **yay** installed and configured
- **git** installed
- Bash shell

## Installation
1. Clone this repository (or download the script):
```bash
git clone https://github.com/Lilithbtw/lazy-updater.git
cd arch-update-popup
```
2. Make the script executable:
```bash
chmod +x begin_update.sh
```
3. Add it as a service
```bash
mkdir -p ~/.config/systemd/user
mv update-prompt.service ~/.config/systemd/user
```
4. Enable the service
```bash
systemctl --user daemon-reload
systemctl --user enable update-prompt.service
systemctl --user start update-prompt.service
```