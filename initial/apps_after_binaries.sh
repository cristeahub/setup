brew install caskroom/cask/brew-cask

apps=(
    blender
    dropbox
    firefox
    flux
    google-chrome
    iterm2
    mailbox
    slack
    seil
    spotify
    virtualbox
    vlc
)

echo "Installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
