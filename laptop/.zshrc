# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/xircon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -Uz promptinit
promptinit
prompt redhat
#
# KEYBINDS
#
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
#
# ALIAS
#
alias "ls"="ls --color"
alias "dd"="dd status=progress"
alias "exfetch"="exfetch -p 2 -r -c 1 -a <(cat ~/.config/logo.txt) -o user,os,ver,cpu,mem,swap,shell,dewm,term,load -s ' | '"
#
# AUTORUN
#
exfetch
