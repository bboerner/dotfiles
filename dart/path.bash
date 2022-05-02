function add_dart() {
    #DART_SDK_ROOT="$DART_ROOT/dart-sdk"
    DART_SDK_ROOT="$HOME/flutter/flutter"
    [[ -d $DART_SDK_ROOT/bin ]] && export PATH=$DART_SDK_ROOT/bin:$PATH
    [[ -d $DART_SDK_ROOT/.pub-cache/bin ]] && export PATH=$DART_SDK_ROOT/.pub-cache/bin:$PATH

    PS1="[dart] $PS1"

}
