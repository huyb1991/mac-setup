#!/bin/sh
echo 'My personal sheel script to install apps and packages!'
read -p "Press any key to continue..." -n1 -s
echo '\n'

echo 'Install Homebrew and cask...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Apps from AppStore

# Core Apps
echo 'Install Core Apps'
brew cask install google-chrome
brew cask install skype
brew cask install slack
brew cask install telegram
brew cask install skitch

# Development
echo 'Install Dev Apps'
brew install bash-completion
brew install git
brew install nvm
brew cask install postman

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
