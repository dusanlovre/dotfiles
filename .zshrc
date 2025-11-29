# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dlovre/.zshrc'

autoload -Uz compinit
autoload -U colors && colors

# Example: Red username, blue hostname, yellow current directory
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

compinit
# End of lines added by compinstall
#
#
#
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

