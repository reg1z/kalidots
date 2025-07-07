#!/bin/bash

SCRIPTS="scripts"
USER_HOME=$(eval echo "~${SUDO_USER:-$USER}")
CURRENT_USER=$(whoami)

rm -rf $USER_HOME/.config/nvim
rm -rf $USER_HOME/.local/share/nvim
rm -rf $USER_HOME/.local/state/nvim
rm -rf $USER_HOME/.cache/nvim

mkdir -p $USER_HOME/.config/nvim

# Clone the LazyVim starter configuration
URL="https://github.com/LazyVim/starter"
git clone $URL $USER_HOME/.config/nvim
rm -rf $USER_HOME/.config/nvim/.git # Remove upstream git repo connection

# Headlessly install the LazyVim plugins
nvim --headless "+Lazy! sync" +qa
