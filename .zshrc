source ~/aliases/.aliases
source ~/aliases/.gitalias
source ~/aliases/.yarn
# source $(brew --prefix)/share/antigen/antigen.zsh
# # Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle zsh-users/zsh-completions
# antigen bundle heroku
# antigen bundle pip
# antigen bundle yarn
# antigen bundle command-not-found
# antigen bundle autojump
# antigen bundle brew
# antigen bundle common-aliases
# antigen bundle compleat
# antigen bundle git-extras
# antigen bundle git-flow
# antigen bundle npm

# antigen bundle osx
# antigen bundle web-search
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# # Load the theme.
# # antigen theme avit
# # Tell antigen that you're done.
# antigen apply
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_SYMLINK_CURRENT=true
export NVM_AUTO_USE=true
export NVM_DIR="$HOME/.nvm"
export VAULT_ADDR="https://vault.ops-wirk.narf.tech/"
export NPM_TOKEN=<ADD_NPMTOKEN_>
export CONGSTAR_GITLAB_NPM_TOKEN=<ADD_NPMTOKEN_>
export CONGSTAR_GITLAB_FAIR_NPM_TOKEN=<ADD_NPMTOKEN_>
export BUILD_CACHE_USERNAME=developer
export BUILD_CACHE_PASSWORD=BUILD_CACHE_PASSWORD



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

export PATH="/opt/homebrew/sbin:$PATH"
export PNPM_HOME="/Users/max.karkowski/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
