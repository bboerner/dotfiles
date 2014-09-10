# depot-tools for building Chromium 
# http://dev.chromium.org/developers/how-tos/install-depot-tools
# Note: Add to *end* of $PATH

function add_chromium() {
    echo "Adding Chromium"

    DEPOT_TOOLS_ROOT="$HOME/usr/local/depot_tools"
    CHROME_DEVEL_SANDBOX_ROOT="$HOME/usr/local/sbin"

    if [[ -d $DEPOT_TOOLS_ROOT ]]; then
        export PATH="$PATH:$DEPOT_TOOLS_ROOT"
        [[ -d $DEPOT_TOOLS_ROOT/man ]] && export MANPATH="$DEPOT_TOOLS_ROOT/man:$PATH"
        if [[ -f $CHROME_DEVEL_SANDBOX_ROOT/chrome_sandbox ]] ; then
            export CHROME_DEVEL_SANDBOX="$CHROME_DEVEL_SANDBOX_ROOT/chrome_sandbox"
            export PATH="$PATH:$CHROME_DEVEL_SANDBOX_ROOT"
        fi

        PS1="[chromium] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

    else
        echo "error: $DEPOT_TOOLS_ROOT not found."

    fi

}
