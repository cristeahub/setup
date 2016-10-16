brew install caskroom/cask/brew-cask

apps=(
    blender
    caffeine
    dropbox
    firefox
    flux
    google-chrome
    iterm2
    karabiner-elements
    slack
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
