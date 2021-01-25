#!/usr/bin/env bash

# This is heavily inspired by the amazing Michelle, Luke and Avi
# https://github.com/craychee/loki-init
# https://github.com/lukewertz/gabriel-init
# https://github.com/froboy/durandal-init

function pause() {
  read -p "$*"
}

CWD=($PWD)

cd ~
mkdir -p Unix/env

# We can't get them directly, but just click this button :)
xcode-select --install

pause 'Press [Enter] once you have installed XCode and XCode Command Line Tools.'

# Just make sure...
sudo xcodebuild -license accept

# DANGER, DANGER Will Robinson! 🤖
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew
brew install cairo
brew install flake8
brew install gdk-pixbuf
brew install jq
brew install jsmin
brew install libffi
brew install mysql
brew install npm
brew install pango
brew install python
brew install python3
brew install ruby
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install gpg
brew install black
brew install mas
brew install brew-cask

brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/binary

# Applications
brew cask install Acorn
brew cask install Aviatrix VPN Client
brew cask install BBEdit
brew cask install Docker
brew cask install Google Chrome
brew cask install Hazel
brew cask install Keyboard Maestro
brew cask install NetNewsWire
brew cask install OmniFocus
brew cask install OmniGraffle
brew cask install OmniOutliner
brew cask install Pastebot
brew cask install Transmit

# MAS Apps
# Update as needed!
mas signin mas@example.com
mas install 1333542190 # 1Password
mas install 1121192229 # Better blocker
mas install 1055511498 # Day One
mas install 882637653 # Debit & Credit
mas install 1544743900 # Hush
mas install 1458866808 # Mac Family Tree
mas install 1289197285 # MindNode
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 413965349 # Soulver
mas install 408981434 # iMovie

# Setup Python, Virtualenv
# http://gmvault.org/
python3 -m venv ~/Unix/env/virtualenv
source ~/Unix/env/virtualenv
pip install virtualenv
virtualenv -p /usr/bin/python ~/Unix/env/py2env
deactivate

cd ~


# Get git things
#curl -o /usr/local/etc/bash_completion.d/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
#curl -o /usr/local/etc/bash_completion.d/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

echo "NICE WORK! Time to do the things."
