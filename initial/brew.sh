# Setup brew

if test ! "$(which brew)"; then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Brew installed, please check this file manually. Exiting"
    exit
fi

brew update
brew cleanup

echo ""
echo ""
echo "Remember to correct local files to use the versions installed by homebrew!"
echo "This goes for for instance coreutils and bash"
echo ""
echo ""
