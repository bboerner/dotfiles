MOSQUITTO_ROOT="$HOME/usr/local/mosquitto"
if [[ -d $MOSQUITTO_ROOT/bin ]]; then
    export PATH="$MOSQUITTO_ROOT/bin:$MOSQUITTO_ROOT/sbin:$PATH"
    [[ -d $MOSQUITTO_ROOT/man ]] && export MANPATH="$MOSQUITTO_ROOT/man:$MANPATH"
    [[ -d $MOSQUITTO_ROOT/lib ]] && export LD_LIBRARY_PATH="$MOSQUITTO_ROOT/lib:$LD_LIBRARY_PATH"
fi
