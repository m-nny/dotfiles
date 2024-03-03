promt_context() {
    local icon='λ'
    if [[ -n "$SSH_CLIENT" ]]; then 
      icon=""
    fi
    echo "%{$fg[cyan]%}$icon%{$reset_color%}"
}

PROMPT='$(promt_context) %~/ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
