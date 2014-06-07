# gls / grc / dircolors overides for ls
if $(gls &>/dev/null) ; then
    alias ls="gls -F --color"
    alias gl="gls -lAh --color"
    alias ll="gls -l --color"
    alias la='gls -A --color'
    alias dir='gls -lF --color'
    alias vdir='gls -lF --color'

elif [ -x /usr/bin/grc ]; then
    alias ls="grc --colour=auto ls -F"
    alias gl="grc --colour=auto ls -lAh"
    alias ll="grc --colour=auto ls -l"
    alias la="grc --colour=auto ls -A"
    alias dir='grc --colour=auto ls -lF'
    alias vdir='grc --colour=auto vdir -lF'

elif [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias ls='ls --color=auto'
    alias gl="ls -lAh --colour=auto"
    alias ll="ls -l --colour=auto"
    alias la="ls -A --colour=auto"
    alias dir='dir -lF --color=auto'
    alias vdir='vdir --color=auto'

fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

fi
