# Using git-credential-gnome-keyring over ssh.
# From https://marklodato.github.io/2013/10/25/github-two-factor-and-gnome-keyring.html

if [[ -z $DBUS_SESSION_BUS_ADDRESS ]]; then
    if [[ -f ~/.dbus/session-bus/$(dbus-uuidgen --get)-0 ]]; then
        source ~/.dbus/session-bus/$(dbus-uuidgen --get)-0
        export DBUS_SESSION_BUS_ADDRESS
    fi
fi

