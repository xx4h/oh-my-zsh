# root #, user %
local xx4h_prompt_jobs="%{$fg_bold[blue]%}[%{$fg[red]%}%j%{$fg_bold[blue]%}]%{$reset_color%}"
local xx4h_prompt_char="%(?:%{$fg_bold[green]%}%(!.#.%%)ツ :%{$fg_bold[red]%}%(!.#.%%)ツ %s)%{$reset_color%}"

PROMPT=' ${xx4h_prompt_char}${xx4h_prompt_jobs}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
