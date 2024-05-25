#!/bin/bash

# Update package list and install zsh
sudo apt-get update
sudo apt-get install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set Zsh as default shell
chsh -s $(which zsh)

# Configure .zshrc
cat <<EOT >> ~/.zshrc
# Set theme to Powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Add other configurations here
EOT

# Apply new Zsh configuration
source ~/.zshrc
