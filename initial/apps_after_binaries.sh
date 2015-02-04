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
    wineskin-winery
    wireshark
)

echo "Installing apps"
brew cask install --appdir="/Applications" ${apps[@]}
