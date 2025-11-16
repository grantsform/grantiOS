#!/bin/bash

set -ouex pipefail

# Run shared setup first
/ctx/shared-between.sh

# Install desktop-specific packages
dnf5 install -y godot chibi-scheme chez-scheme papirus-icon-theme ddrescue

# Import Microsoft key and add VS Code repo
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo > /dev/null

# Install VS Code
dnf5 install -y code

# TODO: Doesn't work, ci build env storage runs out.
# Install Local AI Models Depends
#dnf5 install -y ollama llama-cpp whisper-cpp # hopefully melotts-cpp gets added upstream too.
