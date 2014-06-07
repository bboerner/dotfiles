export BREW_ROOT="$HOME/.linuxbrew"
if true ; then
    [[ -d $BREW_ROOT/bin ]] && export PATH="$BREW_ROOT/bin:$PATH"
    [[ -d $BREW_ROOT/lib ]] && export LD_LIBRARY_PATH="$BREW_ROOT/lib:$LD_LIBRARY_PATH"

fi
