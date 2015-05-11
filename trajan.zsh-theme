PROMPT='%{$fg_bold[yellow]%} λ %c: %{$reset_color%}'
RPROMPT='$(git_prompt_info) $(git_prompt_short_sha) %{$reset_color%}'
 
 ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}Branch%{$reset_color%}%{$fg[grey]%} / %{$reset_color%}%{$fg[yellow]%}"
 ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%} %{$fg[yellow]%}| SHA:%{$reset_color%}"
 ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%} / %{$reset_color%}%{$fg[red]%}SHA:%{$reset_color%}%{$fg[green]%}"
