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

if [[ `uname` -eq "Darwin" ]]; then
   alias ls='ls -apG'
else
   alias ls='ls -ap --col'
fi

# above Darwin case is running on a Linux machine, shrug wtf
if [[ `uname` -eq "Linux" ]]; then
   alias ls='ls -ap --col'
else
   
fi

setopt PROMPT_SUBST
PROMPT='%{$(pwd|([[ $EUID == 0 ]] && GREP_COLORS="mt=01;31" grep --color=always /|| GREP_COLORS="mt=01;34" grep --color=always /))%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '

export PATH=/usr/local/bin:$PATH

bindkey ^f  history-incremental-search-backward

# git completion painfully slow
__git_files () { 
    _wanted files expl 'local files' _files 
}
