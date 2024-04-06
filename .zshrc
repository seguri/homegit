# Enable profiling
#zmodload zsh/zprof

autoload zmv

# See ~/.oh-my-zsh/templates/zshrc.zsh-template
#
# Debug startup time:
# - https://blog.askesis.pl/post/2017/04/how-to-debug-zsh-startup-time.html

ZSH_THEME="spaceship"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  # builtin
  brew
  #fasd
  wd
  zoxide
  history-substring-search
  gitfast
  #mvn
  volta
  sdk
  docker
  docker-compose
  vault
  heroku
  # custom
  git-open
  zsh-autosuggestions
  #zsh-kubectl-prompt
  zsh-fuzzy-wd
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh_aliases

# User configuration

setopt HIST_IGNORE_ALL_DUPS

# Exclude *.class files from completion
fignore=(class pyc)

# Symlinks without spaces
if [[ -d ~/Library/Application\ Support && ! -L ~/Library/ApplicationSupport ]]; then
  ln -sv ~/Library/Application\ Support ~/Library/ApplicationSupport
fi
if [[ -d ~/Google\ Drive/My\ Drive && ! -L ~/GoogleDrive ]]; then
  ln -sv ~/Google\ Drive/My\ Drive ~/GoogleDrive
elif [[ -d ~/Google\ Drive && ! -L ~/GoogleDrive ]]; then
  ln -sv ~/Google\ Drive ~/GoogleDrive
fi

if [[ -d ~/Library/CloudStorage/OneDrive-Personal && ! -L ~/OneDrive ]]; then
  ln -sv ~/Library/CloudStorage/OneDrive-Personal ~/OneDrive
fi

# sindresorhus/pure
#fpath+=("$HOME/.zsh/pure")
#autoload -U promptinit; promptinit
#prompt pure

# spaceship prompt
source $HOME/.zsh/spaceship/spaceship.zsh

#TODO
#source $HOME/.config/op/plugins.sh

# Do not end this script with `exit 0` or the shell will close after startup!
# Do not end this script with a failed command or the shell will fail to start!

