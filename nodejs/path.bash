# 3/25/19: nvm

# modules
NODE_ROOT="$HOME/usr/local/node_modules"
[[ -d $NODE_ROOT/.bin ]] && export PATH="$NODE_ROOT/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

