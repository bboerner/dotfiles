function add_rust() {
    echo "Adding rust"

    RUST_ROOT="$HOME/.gem/ruby/1.9.1/gems/irust-1.1.2/"
    if [[ -d $RUST_ROOT/bin ]]; then
        export PATH="$RUST_ROOT/bin:$PATH"
        [[ -d $RUST_ROOT/man ]] && export MANPATH="$RUST_ROOT/man:$MANPATH"

        PS1="[rust] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $RUST_ROOT not found."

    fi
}
