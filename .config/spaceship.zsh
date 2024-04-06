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
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

