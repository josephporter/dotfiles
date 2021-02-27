# dotfiles
my dotfiles

# On fresh (Mac)
## Install Apple's CLI Tools (pre-req for Git and Homebrew)
xcode-select --install

## Cloen repo into hidden directory
git clone 'this repo' ~/.dotfiles

#TODO:Work the following into a script
## Create symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

## Install Homebrew

## Pass in the Brewfile location
brew bundle --file ~/.dotfiles/Brewfile

## ... or move into the directory first
cd ~/.dotfiles && brew bundle

#
https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/?referralCode=445BE0B541C48FE85276
