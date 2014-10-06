NODE_ROOT="$HOME/usr/local/node-v0.10.32"
if [[ -d $NODE_ROOT/bin ]]; then
    export PATH="$NODE_ROOT/bin:$PATH"
    [[ -d $NODE_ROOT/man ]] && export MANPATH="$NODE_ROOT/man:$MANPATH"
    [[ -d $NODE_ROOT/lib ]] && export LD_LIBRARY_PATH="$NODE_ROOT/lib:$LD_LIBRARY_PATH"
fi
