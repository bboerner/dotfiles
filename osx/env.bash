
#
# Mac OS X - Pythong
#

PYTHON_ROOT="$HOME/Library/Python/2.7"
if [[ -d $PYTHON_ROOT/bin ]]; then
    export PATH="$PYTHON_ROOT/bin:$PATH"
    [[ -d $PYTHON_ROOT/man ]] && export MANPATH="$PYTHON_ROOT/man:$MANPATH"
    [[ -d $PYTHON_ROOT/lib ]] && export LD_LIBRARY_PATH="$PYTHON_ROOT/lib:$LD_LIBRARY_PATH"
fi
unset PYTHON_ROOT

if false; then
#
# Mac OS X - MacPorts
#

if [ -d /opt/local/bin ]; then
    #echo_i Using DarwinPorts
    #export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    #export MANPATH=/opt/local/man:$MANPATH
    [[ -d /opt/local/bin ]] && modlist PATH /opt/local/bin
    [[ -d /opt/local/man ]] && modlist MANPATH /opt/local/man
fi

# Setting PATH for EPD v5.1.1
[[ -d "/Library/Frameworks/Python.framework/Versions/Current/bin" ]] && modlist PATH "/Library/Frameworks/Python.framework/Versions/Current/bin"

# Wireshark
#[[ -d "$HOME/usr/local/wireshark/bin" ]] && modlist PATH "$HOME/usr/local/wireshark/bin"

if [[ -f /opt/local/bin/python2.5 ]]; then
    alias python=python2.5
fi

fi
