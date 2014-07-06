# depot-tools for building Chromium 
# http://dev.chromium.org/developers/how-tos/install-depot-tools
# Note: Add to *end* of $PATH

DEPOT_TOOLS_ROOT="$HOME/usr/local/depot_tools/"
if true ; then
    [[ -d $DEPOT_TOOLS_ROOT ]] && export PATH="$PATH:$DEPOT_TOOLS_ROOT"
    [[ -d $DEPOT_TOOLS_ROOT/man ]] && export MANPATH="$DEPOT_TOOLS_ROOT/man:$PATH"

    #PS1="[chromium] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
fi
