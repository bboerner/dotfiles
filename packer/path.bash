PACKER_ROOT="$HOME/usr/local/packer/"
if true ; then
    [[ -d $PACKER_ROOT ]] && export PATH="$PACKER_ROOT:$PATH"

    PS1="[packer] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
fi
