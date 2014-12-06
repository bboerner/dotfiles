function add_flex() {
    echo "Adding flex"

    FLEX_ROOT="$HOME/usr/local/flex"
    if [[ -d $FLEX_ROOT/bin ]]; then
        export PATH="$FLEX_ROOT/bin:$PATH"

        PS1="[flex] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $FLEX_ROOT not found."

    fi
}
