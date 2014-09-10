function add_packer() {
    echo "Adding packer"

    PACKER_ROOT="$HOME/usr/local/packer"
    if [[ -d $PACKER_ROOT ]]; then
        export PATH="$PACKER_ROOT:$PATH"

        PS1="[packer] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $PACKER_ROOT not found."

    fi
}
