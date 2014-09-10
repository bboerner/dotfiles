function add_dart() {
    echo "Adding Dart"

    DART_ROOT="$HOME/.local/dart/dart-sdk/bin"
    if [[ -d $DART_ROOT/bin ]]; then
        export PATH=$DART_ROOT/bin:$PATH

        PS1="[dart] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $DART_ROOT not found."

    fi
}
