if [[ -d $HOME/go ]] ; then
    export GOROOT="$HOME/go" ;
    export PATH="$GOROOT/bin:$PATH" ;
fi

if false ; then

GOLANG_ROOT="$HOME/usr/local/go"
if [[ -d $GOLANG_ROOT/bin ]]; then
    export PATH="$GOLANG_ROOT/bin:$GOLANG_ROOT/sbin:$PATH"
    [[ -d $GOLANG_ROOT/man ]] && export MANPATH="$GOLANG_ROOT/man:$MANPATH"
    [[ -d $GOLANG_ROOT/lib ]] && export LD_LIBRARY_PATH="$GOLANG_ROOT/lib:$LD_LIBRARY_PATH"
fi

[[ -d $HOME/go ]] && export GOPATH="$HOME/go"

fi
