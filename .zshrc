# The following lines were added by compinstall
zstyle :compinstall filename '/home/stolrsky/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

alias ls='ls --col -ap'

setopt PROMPT_SUBST
PROMPT='%{$(pwd|([[ $EUID == 0 ]] && GREP_COLORS="mt=01;31" grep --color=always /|| GREP_COLORS="mt=01;34" grep --color=always /))%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '


bindkey ^f  history-incremental-search-backward

# ROS
[ -f /opt/ros/electric ] && source /opt/ros/electric/setup.zsh
[ -f /opt/ros/electric ] && export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/Desktop/MRSLAM
