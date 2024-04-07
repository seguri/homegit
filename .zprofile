#
# Read at login
# Put sensitive data like API keys into ~/.oh-my-zsh/custom
#

#
# LEVEL 0
#

export ANDROID_HOME="$HOME/Library/Android/sdk"
export BAT_THEME="GitHub"
export BIZ_HOME="$HOME/biz"
export BREW_HOME="$(brew --prefix)"
export CALIBRE_HOME="$HOME/Calibre"
export EDITOR=vim
export FZF_DEFAULT_COMMAND="fd --type f --strip-cwd-prefix --follow --exclude .git --exclude .DS_Store"
export FZF_DEFAULT_OPTS='--multi --exit-0 --select-1 --color=light --bind ctrl-b:preview-page-up,ctrl-f:preview-page-down,ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down --query "!node_modules/ !target/ !class$ !pyc$ "'
export GPG_TTY=$(tty)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home"
export JOHNNY_DECIMAL_HOME="$HOME/OneDrive/Johnny.Decimal"
export LC_NUMERIC=it_IT
export LC_TIME=it_IT
export LC_COLLATE=it_IT
export LC_MONETARY=it_IT
export LESS="--no-init --quit-if-one-screen --RAW-CONTROL-CHARS"
#export PYTHONSTARTUP="$HOME/.pythonstartup"
export TZ=Europe/Zurich
export VOLTA_HOME="$HOME/.volta"
export VSCODE_HOME="/Applications/Visual Studio Code.app/Contents/Resources/app"
export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"

#
# LEVEL 1
#

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export SEGURI_HOME="$BIZ_HOME/seguri"

#
# LEVEL 2
#

export NOTABLE_HOME="$SEGURI_HOME/notable"
export TASKDATA="$SEGURI_HOME/taskwarrior"
export VIMWIKI_HOME="$SEGURI_HOME/vimwiki"
export ZSH_CUSTOM="$SEGURI_HOME/oh-my-zsh/custom"

#
# PATH
#

PATH="/opt/apache-maven-3.9.6/bin:$PATH"
PATH="/opt/google-cloud-sdk/bin:$PATH"
PATH="$ANDROID_HOME/platform-tools:$PATH"
PATH="$VOLTA_HOME/bin:$PATH"
PATH="$VSCODE_HOME/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
PATH="$HOME/bin:$PATH"
export PATH

typeset -U PATH
# typeset -U NODE_PATH

