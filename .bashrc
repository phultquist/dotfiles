alias c="clear"
alias gs="g s"
alias g="git"
source /usr/share/bash-completion/completions/git
complete -o default -o nospace -F _git g

cl() { cd "$@" && ls; }
cf() { cd "$@" && ls; }

# Save allllll history
export HISTFILESIZE=9999999999
export HISTSIZE=9999999999
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
