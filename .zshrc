source ~/aliases/.aliases
source ~/aliases/.gitalias
source ~/aliases/.yarn
source $(brew --prefix)/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle pip
antigen bundle yarn
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm

antigen bundle osx
antigen bundle web-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Load the theme.
# antigen theme avit
# Tell antigen that you're done.
antigen apply
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
eval "$(rbenv init -)"

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
