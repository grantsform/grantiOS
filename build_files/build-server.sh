#!/bin/bash

set -ouex pipefail

# Install core server packages
dnf5 install -y zsh git git-lfs gum glow fzf micro tmux btop rsync restic rclone syncthing hugo sbcl

dnf5 install -y dnf5-plugins

# Add GitHub CLI repo
dnf5 config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo

# Add Tailscale repo
dnf5 config-manager addrepo --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo --overwrite

# Install third-party packages
dnf5 install -y gh tailscale

# Enable Services, Sockets, and Timers
systemctl enable podman.socket
systemctl enable tailscaled