binaries=(
    git
    python
    node
    tree
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup
