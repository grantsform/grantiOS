#!/bin/bash

set -ouex pipefail

dnf5 install -y zsh git git-lfs gum tmux btop rsync restic rclone syncthing micro godot chibi-scheme chez-scheme sbcl papirus-icon-theme 

systemctl enable podman.socket
