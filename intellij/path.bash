function add_intellij() {
    INJELLIJ_ROOT="$HOME/usr/local/idea-IC-203.7148.57/"
    [[ -d $INJELLIJ_ROOT/bin ]] && export PATH=$INJELLIJ_ROOT/bin:$PATH

    PS1="[intellij] $PS1"

}
