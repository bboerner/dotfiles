if false; then
#NODE_ROOT="$HOME/usr/local/node-v0.10.32"
#NODE_ROOT="$HOME/usr/local/node-v0.10.40-linux-x64"
#NODE_ROOT="$HOME/usr/local/node-v4.0.0-linux-x64"
#NODE_ROOT="$HOME/usr/local/node-v0.12.7-linux-x64"
#NODE_ROOT="$HOME/usr/local/node-v0.12.7"
NODE_ROOT="$HOME/usr/local/node-v8.11.1-linux-x64/"

if [[ -d $NODE_ROOT/bin ]]; then
    export PATH="$NODE_ROOT/bin:$PATH"
    [[ -d $NODE_ROOT/man ]] && export MANPATH="$NODE_ROOT/man:$MANPATH"
    [[ -d $NODE_ROOT/lib ]] && export LD_LIBRARY_PATH="$NODE_ROOT/lib:$LD_LIBRARY_PATH"
fi
fi

# 3/25/19: nvm

# modules
NODE_ROOT="$HOME/usr/local/node_modules"
[[ -d $NODE_ROOT/.bin ]] && export PATH="$NODE_ROOT/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

