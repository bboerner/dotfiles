CLING_ROOT="$HOME/usr/local/cling"

if [[ -d $CLING_ROOT/bin ]] ; then
    export PATH="$CLING_ROOT/bin:$PATH"
    export MANPATH="$CLING_ROOT/share/man:$MANPATH"
fi
