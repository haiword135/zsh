# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/.history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#自动补全使用大小写不敏感
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Load zsh-syntax-highlighting; should be last.
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh 2> /dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh 2> /dev/null


source  ~/.config/zsh/.alias

export GO111MODULE=auto
export GOPATH=$HOME/Code/Go
export PATH=$PATH:/usr/local/go/bin
