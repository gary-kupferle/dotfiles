#
# PROMPT
#
PROMPT_BRACKET_BEGIN='%{$fg_bold[white]%}['
PROMPT_HOST='%{$fg_bold[cyan]%}%m'
PROMPT_SEPARATOR='%{$reset_color%}:'
PROMPT_DIR='%{$fg_bold[yellow]%}%3~'
PROMPT_BRACKET_END='%{$fg_bold[white]%}]'

PROMPT_USER='%{$fg_bold[white]%}%n'
PROMPT_SIGN='%{$reset_color%}% $ '

GIT_PROMPT_INFO='$(git_prompt_info)'

# My current prompt looks like:
# [directory] (git_prompt_info)
# [username]%
PROMPT="${PROMPT_BRACKET_BEGIN}${PROMPT_DIR}${PROMPT_BRACKET_END}${GIT_PROMPT_INFO}
${PROMPT_SIGN}"

#
# Git repository
#
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"