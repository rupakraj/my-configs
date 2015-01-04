# FreeAgent puts the powerline style in zsh !
# Simplified version from https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme

POWERLINE_DATE_FORMAT=%D{%Y-%m-%d}
POWERLINE_RIGHT_B=%D{%H:%M:%S}
POWERLINE_USER_NAME="%n"
#POWERLINE_CURRENT_PATH="%~"
POWERLINE_CURRENT_PATH="%1~"
# POWERLINE_CURRENT_PATH="%2~"
#POWERLINE_CURRENT_PATH="${%~/s/\(\/*.\)[A-Za-z]*\//\1\//g'}"
#POWERLINE_CURRENT_PATH="${${(%):-%~}//a/aa}"
#POWERLINE_CURRENT_PATH='%{ $(pwd |sed -e "s/\/home\/shalil/~/g" -e "s/\(\/*.\)[A-Za-z]*\//\1\//g") %}'

ZSH_THEME_GIT_PROMPT_PREFIX=" \ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="✘"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"

ZSH_THEME_GIT_PROMPT_ADDED=" %F{green}✚%F{black}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %F{blue}✹%F{black}"
ZSH_THEME_GIT_PROMPT_DELETED=" %F{red}✖%F{black}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %F{yellow}✭%F{black}"
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED=" -/-"
ZSH_THEME_GIT_PROMPT_AHEAD=" ⬆"
ZSH_THEME_GIT_PROMPT_BEHIND=" ⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED=" ⬍"

POWERLINE_GIT_INFO_RIGHT="%F{white}"$'\ue0b2'"%F{black}%K{white}"$'$(git_prompt_info)'" "'$(git_prompt_status)'"%K{white}"

POWERLINE_SEC1_BG=%K{green}
POWERLINE_SEC1_FG=%F{green}

POWERLINE_SEC1_TXT=%F{black}
if [ -n "$SSH_CLIENT" ]; then
  POWERLINE_SEC1_BG=%K{red}
  POWERLINE_SEC1_FG=%F{red}
  POWERLINE_SEC1_TXT=%F{white}
fi

if [ -e ~/.rvm/bin/rvm-prompt ]; then
  RUBY_PROMPT='‹$(~/.rvm/bin/rvm-prompt i v)›'
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT='‹$(rbenv version | sed -e "s/ (set.*$//")›'
  fi
fi


PROMPT="%k%K{white}%~ %f%k
$POWERLINE_SEC1_BG$POWERLINE_SEC1_TXT $RUBY_PROMPT %k%f$POWERLINE_SEC1_FG%K{blue}"$'\ue0b0'"%k%f%F{white}%K{blue} "$POWERLINE_CURRENT_PATH"%F{blue} %k"$'\ue0b0'"%f "
#PROMPT="
#$POWERLINE_SEC1_BG$POWERLINE_SEC1_TXT $POWERLINE_USER_NAME %k%f$POWERLINE_SEC1_FG%K{blue}"$'\ue0b0'"%k%f%F{white}%K{blue} "$POWERLINE_CURRENT_PATH"%F{blue} %k"$'\ue0b0'"%f "

RPROMPT="$POWERLINE_GIT_INFO_RIGHT%F{white}"$'\ue0b2'"%k%F{black}%K{white} $POWERLINE_RIGHT_B %f%k"
