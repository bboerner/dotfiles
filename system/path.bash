# PATH
[[ -d $HOME/bin ]] && export PATH=$HOME/bin:$PATH
[[ -d $HOME/.local/bin ]] && export PATH=$HOME/.local/bin:$PATH
[[ -d $HOME/usr/local/bin ]] && export PATH=$HOME/usr/local/bin:$PATH

# MANPATH
[[ -d $HOME/usr/local/share/man ]] && export MANPATH=$HOME/usr/local/share/man:$MANPATH

# LD_LIBRARY_PATH
[[ -d $HOME/usr/local/lib ]] && export LD_LIBRARY_PATH=$HOME/usr/local/lib:$LD_LIBRARY_PATH
