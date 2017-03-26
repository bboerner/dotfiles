function add_xautomation() {
    echo "Adding xautomation"

    XAUTOMATION_ROOT="$HOME/usr/local/xautomation"
    if [[ -d $XAUTOMATION_ROOT/bin ]]; then
        export PATH="$XAUTOMATION_ROOT/bin:$PATH"
        [[ -d $XAUTOMATION_ROOT/man ]] && export MANPATH="$XAUTOMATION_ROOT/man:$MANPATH"
        [[ -d $XAUTOMATION_ROOT/lib ]] && export LD_LIBRARY_PATH="$XAUTOMATION_ROOT/lib:$LD_LIBRARY_PATH"

        PS1="[xautomation] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $XAUTOMATION_ROOT not found."

    fi
}
