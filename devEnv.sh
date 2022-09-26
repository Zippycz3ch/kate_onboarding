#!/bin/zsh
 
# Ask for admin password
echo "Admin privileges required"
sudo echo
 
# Homebrew (https://brew.sh)
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
​echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Java 11
brew install java11
sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# Tools
brew install mc
brew install wget
brew install htop
brew install tree
brew install jq
brew install python-yq
brew install hostess
brew install broot; broot --install
brew install gnu-sed; ln -sfn gsed /usr/local/bin/sed
# AWS
brew install awscli
brew install aws-iam-authenticator
sudo pip3 install aws-adfs
# Podman (ex Docker)
# https://podman.io/getting-started/installation
brew install podman
podman machine init
# Kubernetes
brew install kubectx
brew install kubeseal
brew install kubeless
brew install octant
# Terraform
#brew install terraform
brew install warrensbox/tap/tfswitch
tfswitch 0.15.5
brew install terragrunt --ignore-dependencies
brew install tflint
brew install packer
# Git
brew install git
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
git config --global core.autocrlf input
# Maven
brew install maven
# Spring Boot CLI
brew tap spring-io/tap
brew install spring-boot
# IntelliJ IDEA Ultimate
brew install --cask intellij-idea
mkdir -p ~/IdeaProjects
# Andorid Studio
brew install --cask android-studio
# Postman
brew install --cask postman
# SoapUI
brew install --cask soapui --no-quarantine
# Applications
brew install --cask iterm2
brew install --cask vmware-horizon-client
brew install --cask slack
brew install --cask google-chrome
# System Settings
defaults write com.apple.finder AppleShowAllFiles True
defaults write NSGlobalDomain AppleShowAllExtensions True
killall Finder
# Xcode
xcode-select --install
### NKA ###
# /etc/hosts
sudo hostess add vde-tda.csob.cz 193.245.35.100
sudo hostess add vde-prod.csob.cz 193.245.35.101
sudo hostess add vde.csob.cz 193.245.72.160