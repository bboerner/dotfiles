function add_scala() {
    echo "Adding scala"

    SCALA_ROOT="$HOME/usr/local/scala-2.11.1"
    if [[ -d $SCALA_ROOT/bin ]]; then
        export PATH="$SCALA_ROOT/bin:$PATH"
        [[ -d $SCALA_ROOT/man ]] && export MANPATH="$SCALA_ROOT/man:$MANPATH"

        PS1="[scala] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $SCALA_ROOT not found."

    fi
}
