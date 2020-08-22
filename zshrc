alias rm="echo try using trash instead"
alias trash="trash -v"
alias pg="ping 8.8.8.8"

cims="jdg589@access.cims.nyu.edu"

export PS1="$ "


# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

autoload -Uz compinit && compinit
#if {  [ -z "${TMUX}" ]; } then
#  cd ~/Documents/Summer\ 2020
#fi
