# PATH
[[ -d $HOME/bin ]] && export PATH=$HOME/bin:$PATH
[[ -d $HOME/.local/bin ]] && export PATH=$HOME/.local/bin:$PATH
[[ -d $HOME/usr/local/bin ]] && export PATH=$HOME/usr/local/bin:$PATH

# MANPATH
[[ -d $HOME/usr/local/share/man ]] && export MANPATH=$HOME/usr/local/share/man:$MANPATH

# LD_LIBRARY_PATH
[[ -d $HOME/usr/local/lib ]] && export LD_LIBRARY_PATH="$HOME/usr/local/lib:$LD_LIBRARY_PATH"
#[[ -d /lib/i386-linux-gnu ]] && export LD_LIBRARY_PATH="/lib/i386-linux-gnu:$LD_LIBRARY_PATH"
#[[ -d /lib/x86_64-linux-gnu ]] && export LD_LIBRARY_PATH="/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
#[[ -d /usr/lib/i386-linux-gnu ]] && export LD_LIBRARY_PATH="/usr/lib/i386-linux-gnu:$LD_LIBRARY_PATH"
#[[ -d /usr/lib/x86_64-linux-gnu ]] && export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
# needs to be before the rest since installs own libQt5 files
# but if present pulseaudio won't start
#[[ -d /opt/piavpn/lib ]] && export LD_LIBRARY_PATH="/opt/piavpn/lib:$LD_LIBRARY_PATH"

