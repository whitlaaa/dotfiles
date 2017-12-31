#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Create ~/dev/workspace
mkdir -p $HOME/dev/workspace

# Install global NPM packages
# npm install -g spaceship-zsh-theme

# Symlink the Mackup config file to the home directory
ln -s ./.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
