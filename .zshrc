# Debug startup time: https://blog.askesis.pl/post/2017/04/how-to-debug-zsh-startup-time.html
#zmodload zsh/zprof

autoload zmv

# History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000

# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

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

source "$(brew --prefix fzf 2>/dev/null)/shell/key-bindings.zsh"
source "$(brew --prefix fzf 2>/dev/null)/shell/completion.zsh"

# User configuration

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
spaceship remove gcloud

# dark theme support
if (( $ALACRITTY )); then
    if [[ $(defaults read -g AppleInterfaceStyle 2>/dev/null) == Dark ]]; then
        cp $HOME/.config/alacritty/Brewer.dark.toml $HOME/.config/alacritty/active_theme.toml
    else
        cp $HOME/.config/alacritty/Brewer.light.toml $HOME/.config/alacritty/active_theme.toml
    fi
fi

#TODO
#source $HOME/.config/op/plugins.sh

# Do not end this script with `exit 0` or the shell will close after startup!
# Do not end this script with a failed command or the shell will fail to start!

