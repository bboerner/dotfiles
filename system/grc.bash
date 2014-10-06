# GRC colorizes nifty unix tools all over the place

[[ -f $BREW_ROOT/etc/grc.bashrc ]] && source "$BREW_ROOT/etc/grc.bashrc"

if false ; then
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi
fi
