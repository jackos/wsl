set -U fish_user_paths /home/jacko/.local/bin $fish_user_paths
fish_vi_key_bindings
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
alias python="python3"
alias pip="pip3"
alias ie="google-chrome-stable &"
export VISUAL=vim
export EDITOR="$VISUAL"
