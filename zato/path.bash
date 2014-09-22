function add_zato() {
    echo "Adding zato"

    ZATO_ROOT="/opt/zato/1.1"
    if [[ -d $ZATO_ROOT/bin ]]; then
        export PATH="$ZATO_ROOT/bin:$PATH"
        [[ -d $ZATO_ROOT/man ]] && export MANPATH="$ZATO_ROOT/man:$MANPATH"

    else
        echo "error: $ZATO_ROOT not found."

    fi
}
