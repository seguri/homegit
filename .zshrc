# Enable profiling
#zmodload zsh/zprof

autoload zmv

# See ~/.oh-my-zsh/templates/zshrc.zsh-template
#
# Debug startup time:
# - https://blog.askesis.pl/post/2017/04/how-to-debug-zsh-startup-time.html

ZSH_THEME="spaceship"
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_KUBECTL_SHOW=true
export SPACESHIP_KUBECTL_VERSION_SHOW=false
export SPACESHIP_VENV_SHOW=true
export SPACESHIP_PROMPT_ORDER=(
  time
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  kubectl
  venv
  node          # Node.js section
  dotnet        # .NET section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

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
  mvn
  nvm
  sdk
  docker
  docker-compose
  vault
  # custom
  git-open
  zsh-autosuggestions
  #zsh-kubectl-prompt
  zsh-fuzzy-wd
)

source $ZSH/oh-my-zsh.sh

# User configuration

setopt HIST_IGNORE_ALL_DUPS

# Exclude *.class files from completion
fignore=(class pyc)

# iTerm2 integration
# if [[ -f ~/.iterm2_shell_integration.zsh ]]; then
#   source ~/.iterm2_shell_integration.zsh
# fi

# SDKMAN!
if [[ -f ~/.sdkman/bin/sdkman-init.sh ]]; then
  source ~/.sdkman/bin/sdkman-init.sh
fi

# Java
if [[ -x /usr/libexec/java_home ]]; then
    #export JAVA_HOME="$(/usr/libexec/java_home -v '11.0.17')"
    export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/corretto-17.0.8.1/Contents/Home"
fi

# nodejs, after nvm
if (( $+commands[npm] )); then
    export NODE_PATH="$(npm root -g)"
fi

# This is probably created by iTerm2, oh-my-zsh or brew; let's make sure this exists
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

# Do not end this script with `exit 0` or the shell will close after startup!
# Do not end this script with a failed command or the shell will fail to start!

#export NVM_DIR="$HOME/.config/nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
