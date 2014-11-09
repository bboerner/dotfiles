PERL_ROOT="$HOME/perl5"
[[ -d $PERL_ROOT/bin ]] && export PATH=$PERL_ROOT/bin:$PATH

PERL_MB_OPT="--install_base \"$PERL_ROOT\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$PERL_ROOT"; export PERL_MM_OPT;
PERL5LIB="$PERL_ROOT/lib/perl5"; export PERL5LIB;
