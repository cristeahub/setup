brew install caskroom/cask/brew-cask

apps=(
    blender
    dropbox
    firefox
    flux
    google-chrome
    iterm2
    slack
    seil
    spectacle,
    spotify
    virtualbox
    vlc
    wineskin-winery
    wireshark
    xquartz
)

echo "Installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
