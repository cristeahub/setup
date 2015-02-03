brew install caskroom/cask/brew-cask

apps=(
    blender
    dropbox
    firefox
    google-chrome
    slack
    seil
    spotify
    iterm2
    virtualbox
    flux
    mailbox
    vlc
)

echo "Installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
