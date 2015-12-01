function add_android() {
    echo "Adding Android"

    ANDROIDSDK="$HOME/usr/local/android-sdk-linux"
    ANDROIDNDK="$HOME/usr/local/android-ndk-r9b"

    if [[ -d $ANDROIDSDK && -d $ANDROIDNDK ]] ; then
        export ANDROIDAPI=19
        export ANDROIDNDKVER=r9b
        export PATH=$ANDROIDNDK:$ANDROIDSDK/platform-tools:$ANDROIDSDK/tools:$PATH

        export ANDROIDSDK ANDROIDNDK

        PS1="[android] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $ANDROIDSDK or $ANDROIDNDK not found."

    fi
}

function add_studio() {
    echo "Adding Android Studio"

    STUDIO_ROOT="$HOME/usr/local/android-studio"
    STUDIO="$STUDIO_ROOT/bin"

    if [[ -d $STUDIO ]] ; then
        export ANDROIDAPI=19
        export ANDROIDNDKVER=r9b
        export PATH=$STUDIO:$PATH

        #export STUDIO

        PS1="[android studio] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $STUDIO not found."

    fi
}
