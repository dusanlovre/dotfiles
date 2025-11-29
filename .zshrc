# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dlovre/.zshrc'

autoload -Uz compinit
autoload -U colors && colors

setopt PROMPT_SUBST

PROMPT='%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~%{$reset_color%} $(git_prompt_info)
%{$fg[red]%}%(?||✘ )%{$reset_color%}→ '

git_prompt_info() {
  local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n "$branch" ]]; then
    echo "%{$fg[cyan]%}[$branch]%{$reset_color%}"
  fi
}

# Enable LS_COLORS
alias ls='ls --color=auto'

compinit
# End of lines added by compinstall

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# FZF keybindings
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh

export PATH="$PATH:/usr/games"

