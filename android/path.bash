function add_android() {
    echo "Adding Android"

    ANDROIDSDK="/home/bboerner/usr/local/android-sdk-linux"
    ANDROIDNDK="/home/bboerner/usr/local/android-ndk-r9b"

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