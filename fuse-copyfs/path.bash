function add_copyfs() {
    echo "Adding fuse-copyfs"

    ROOT="$HOME/usr/local/fuse-copyfs"

    if [[ -d $ROOT ]] ; then
        export PATH=$ROOT/bin:$PATH
        export MATNPATH=$ROOT/shar/man:$PATH

        PS1="[fuse-copyfs] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $ROOT not found."

    fi
}
