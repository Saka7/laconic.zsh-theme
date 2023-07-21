# Laconic zsh theme
# Author saka7
# Year 2016

NEWLINE=$'\n'

function error_symbol() {
    echo "%{$fg_bold[red]%}$1"
}

function success_symbol() {
    echo "%{$fg_bold[green]%}$1"
}

local GIT_INFO='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" | %{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} •"

local RETURN_STATUS="%(?:$(success_symbol)└➤ :$(error_symbol)└➤%{$reset_color%}"
local LINE_JOINT="%(?:$(success_symbol)┌:$(error_symbol)┌)"

if [[ $EUID -ne 0 ]]; then
  local WORKING_DIR="$LINE_JOINT %{$fg_bold[yellow]%}%~%{$reset_color%}"
else
  local WORKING_DIR="$LINE_JOINT %{$fg_bold[red]%}%~%{$reset_color%}"
fi

PROMPT=" ${WORKING_DIR}${GIT_INFO}${NEWLINE} ${RETURN_STATUS} "

