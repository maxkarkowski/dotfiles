#!/bin/zsh
chsh -s $(which zsh)

# This installs homebrew itself, and also the command line tools in silent mode
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## oh-my-zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#https://sourabhbajaj.com/mac-setup/Java/sdkman.html
curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

brew bundle

# copy aliases

cp -R aliases ~/aliases/
