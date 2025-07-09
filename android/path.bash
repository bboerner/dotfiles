# 3/12/20: comment out
function x_add_android() {
    echo "Adding Android"

    #ANDROIDSDK="$HOME/usr/local/android-sdk"
    ANDROIDSDK="$HOME/Android/Sdk"

    if [[ -d $ANDROIDSDK ]] ; then
        export PATH=$ANDROIDSDK/platform-tools:$ANDROIDSDK/tools/bin:$ANDROIDSDK/tools/bin64:$PATH

        PS1="[android] $PS1"

    else
        echo "error: $ANDROIDSDK not found."

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

        PS1="[android] $PS1"

    else
        echo "error: $STUDIO not found."

    fi
}
