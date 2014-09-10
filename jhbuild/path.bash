function add_jhbuild() {
    echo "Adding jhbuild"

    JHBUILD_ROOT="$HOME/usr/local/jhbuild"
    if [[ -d $JHBUILD_ROOT/bin/ ]]; then
        export PATH="$JHBUILD_ROOT/bin:$PATH"

    else
        echo "error: $JHBUILD_ROOT not found."

    fi
}


