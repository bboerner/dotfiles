if false; then
BREW_ROOT="$HOME/.linuxbrew"
BREW_OPT_LIBEXEC="$BREW_ROOT/Cellar/coreutils/8.22/libexec"

# Use the 'g' prefixed commands
[[ -d $BREW_ROOT/bin ]] && export PATH="$BREW_ROOT/bin:$PATH"
[[ -d $BREW_ROOT/lib ]] && export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$BREW_ROOT/lib"
[[ -d $BREW_ROOT/share/man ]] && export MANPATH="$BREW_ROOT/share/man:$MANPATH"
[[ -d $BREW_ROOT/share/info ]] && export INFOPATH="$BREW_ROOT/share/info:$INFOPATH"

# w/o the 'g' prefix
#[[ -d $BREW_OPT_LIBEXEC/gnubin ]] && export PATH="$BREW_OPT_LIBEXEC/gnubin:$PATH"
#[[ -d $BREW_OPT_LIBEXEC/gnuman ]] && export MANPATH="$BREW_OPT_LIBEXEC/gnuman:$MANPATH"
fi

# 5/14/19
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# w/o the 'g' prefix
#PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
