MOSQUITTO_ROOT="$HOME/usr/local/mosquitto"
if [[ -d $MOSQUITTO_ROOT/bin ]]; then
    export PATH="$MOSQUITTO_ROOT/bin:$PATH"
    [[ -d $MOSQUITTO_ROOT/man ]] && export MANPATH="$MOSQUITTO_ROOT/man:$MANPATH"
fi
