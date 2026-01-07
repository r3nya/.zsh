git_branch() {
  local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n "$branch" ]]; then
    local dirty=""
    [[ -n $(git status --porcelain 2>/dev/null) ]] && dirty=" %{$fg[yellow]%}✗"
    echo " %{$fg_bold[blue]%}git:(%{$fg[red]%}$branch%{$fg[blue]%})$dirty%{$reset_color%}"
  fi
}

PROMPT='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}$(git_branch) '
