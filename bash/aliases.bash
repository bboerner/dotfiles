#alias reload!='. ~/.bashrc

# User specific aliases and functions
alias c=cat
alias cd='cd -P'
alias cls=clear
alias del='rm'
alias dotfiles='pushd ~/.dotfiles'
#alias dir='ls -lF'
alias ep='epsilon -server:ept -add -vt'
alias epnoadd='epsilon -vt'
alias epxnoadd='epsilon -geometry 110x50+0+0 $*'

alias grep='grep --color=auto'
alias h=history
alias hg='h | grep'
alias j=jobs
alias l=less
alias rd=rmdir
alias m=more
alias md=mkdir
alias psawx='ps awx | grep'
alias psaux='ps auxww | grep'
alias psssh='ps awx | grep ssh'
alias ssync='rsync -essh'
alias ssyncz='ssync -z'
alias vg='xfsstart&&wm=gnome-session vncserver -name gnome-bboerner -geometry 1152x896'

# Project specific

# 'Project X'
alias avida='cd /home/bboerner/opensrc/avida-2.3.0/'
alias px='cd /home/bboerner/projects/x'
alias cppsandbox='cd /home/bboerner/projects/c++/sandbox'
alias libmp='cd /home/bboerner/projects/c++/libmp'
alias platform='cd /home/bboerner/projects/platform'

