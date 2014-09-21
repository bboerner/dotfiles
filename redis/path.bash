function add_redis() {
    echo "Adding redis"

    REDIS_ROOT="$HOME/usr/local/redis"
    if [[ -d $REDIS_ROOT/bin ]]; then
        export PATH="$REDIS_ROOT/bin:$PATH"
        [[ -d $REDIS_ROOT/man ]] && export MANPATH="$REDIS_ROOT/man:$MANPATH"

        PS1="[redis] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $REDIS_ROOT not found."

    fi
}
