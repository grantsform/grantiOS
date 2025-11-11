#!/bin/bash

set -ouex pipefail

# Update system and install packages
dnf5 update -y

dnf5 install -y zsh git git-lfs gum tmux btop rsync restic rclone syncthing micro godot chibi-scheme chez-scheme sbcl papirus-icon-theme 

dnf5 install -y dnf5-plugins

# Import Microsoft key and add VS Code repo
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo > /dev/null

# Add GitHub CLI repo
dnf5 config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo

# Add Tailscale repo
dnf5 config-manager addrepo --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo --overwrite

# Install third-party packages
dnf5 install -y code gh tailscale

# Enable Services, Sockets, and Timers
systemctl enable podman.socket
systemctl enable tailscaled
