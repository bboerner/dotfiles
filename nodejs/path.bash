function add_node() {
    NODE_ROOT="$HOME/usr/local/node-v14.16.1-linux-x64"
    [[ -d $NODE_ROOT/bin ]] && export PATH="$NODE_ROOT/bin:$PATH"

    PS1="[node] $PS1"
}

function add_nw() {
    add_node

    # NW.js (node-webkit)
    NWJS_ROOT="$HOME/usr/local/nwjs-sdk-v0.52.2-linux-x64"
    [[ -d $NWJS_ROOT/ ]] && export PATH="$NWJS_ROOT:$PATH"
    [[ -d $NWJS_ROOT/share/man ]] && export MANPATH="$NWJS_ROOT/share/man:$MANPATH"

    PS1="[nwjs] $PS1"

}

if false; then

# 3/25/19: nvm
NODE_ROOT="$HOME/usr/local/node_modules"
[[ -d $NODE_ROOT/.bin ]] && export PATH="$NODE_ROOT/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fi
