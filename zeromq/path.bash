function add_zeromq() {
    echo "Adding zeromq"

    ZEROMQ_ROOT="$HOME/usr/local/zeromq"
    if [[ -d $ZEROMQ_ROOT/bin ]]; then
        export PATH="$ZEROMQ_ROOT/bin:$PATH"
        [[ -d $ZEROMQ_ROOT/man ]] && export MANPATH="$ZEROMQ_ROOT/man:$MANPATH"
        [[ -d $ZEROMQ_ROOT/lib ]] && export LD_LIBRARY_PATH="$ZEROMQ_ROOT/lib:$LD_LIBRARY_PATH"

        PS1="[zeromq] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $ZEROMQ_ROOT not found."

    fi
}
