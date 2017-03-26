if false; then
BREW_ROOT="$HOME/.homebrew"
#BREW_ROOT="$(brew --prefix)"
BREW_OPT_LIBEXEC="$BREW_ROOT/Cellar/coreutils/8.22/libexec"

HOMEBREW_CACHE=$HOME/Library/Caches
#mkdir $HOMEBREW_CACHE > /dev/null 2>&1


# Use the 'g' prefixed commands
[[ -d $BREW_ROOT/bin ]] && export PATH="$BREW_ROOT/bin:$PATH"
[[ -d $BREW_ROOT/lib ]] && export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$BREW_ROOT/lib"

# w/o the 'g' prefix
#[[ -d $BREW_OPT_LIBEXEC/gnubin ]] && export PATH="$BREW_OPT_LIBEXEC/gnubin:$PATH"
#[[ -d $BREW_OPT_LIBEXEC/gnuman ]] && export MANPATH="$BREW_OPT_LIBEXEC/gnuman:$MANPATH"

fi
