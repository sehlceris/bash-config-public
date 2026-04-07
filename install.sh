#!/bin/bash

# Ensure ~/.bash-config exists
CONFIG_DIR="$HOME/.bash-config"
if [ ! -d "$CONFIG_DIR" ]; then
    echo "Error: ~/.bash-config directory does not exist. Please clone the repository into this directory first."
    exit 1
fi

# Check if ~/.bashrc exists, if not create it
BASHRC="$HOME/.bashrc"
if [ ! -f "$BASHRC" ]; then
    echo "~/.bashrc not found, creating a new one..."
    touch "$BASHRC"
fi

# Add the source line to ~/.bashrc if it isn't already there
SOURCE_LINE="for config_file in ~/.bash-config/*.bash; do source \$config_file; done"
if ! grep -Fxq "$SOURCE_LINE" "$BASHRC"; then
    echo "Adding source line to ~/.bashrc..."
    echo "" >> "$BASHRC"
    echo "# Source all bash config files in ~/.bash-config" >> "$BASHRC"
    echo "$SOURCE_LINE" >> "$BASHRC"
else
    echo "Source line already present in ~/.bashrc."
fi

# Reload the bash configuration
echo "Reloading bash configuration..."
source "$BASHRC"

echo "Installation complete. Your modular bash setup is ready!"
