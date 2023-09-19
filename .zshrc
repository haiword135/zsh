# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILESIZE=100000
HISTFILE=~/.config/zsh/.history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' hosts $(cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e 's/,.*//' | uniq)
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# share history in different terminal
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

#自动补全使用大小写不敏感
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Load zsh-syntax-highlighting; should be last.
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh 2> /dev/null

source  ~/.config/zsh/.alias

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
#export GOPROXY=https://goproxy.cn
#export GO111MODULE=off
#export GOPATH=$HOME/Code/Go
#export PATH=$PATH:/usr/local/go/bin
#export GOPROXY=https://goproxy.cn
