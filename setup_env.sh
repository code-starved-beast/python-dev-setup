# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# update homebrew
brew update

# install pyenv and p10k
brew install romkatv/powerlevel10k/powerlevel10k pyenv

# set up .zshrc for pyenv and p10k
cat .zshrc >> ~/.zshrc
