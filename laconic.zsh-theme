# Laconic zsh theme
# Author saka7
# Year 2016

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}+"

# If exit status is 0 prints green arrow (>) else red one 
local return_status="%(?:%{$fg_bold[green]%}>:%{$fg_bold[red]%}>)%{$reset_color%}"

# Current directory in white square bracket
# if user is not root else in red ones
if [[ $EUID -ne 0 ]]; then
  local working_dir="%{$fg_bold[white]%}[%{$fg_bold[yellow]%}%c%{$fg_bold[white]%}]%{$reset_color%}"
else
  local working_dir="%{$fg_bold[red]%}[%{$fg_bold[yellow]%}%c%{$fg_bold[red]%}]%{$reset_color%}"
fi

PROMPT="${working_dir}${git_info}${return_status} "