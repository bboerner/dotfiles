# http://virtualenvwrapper.readthedocs.org/en/latest/install.html
if $(which virtualenvwrapper.sh) ; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME="$HOME/.play.local/python/virtualenv"
    #export VIRTUALENVWRAPPER_SCRIPT="$(which virtualenvwrapper.sh)"
    source $(which virtualenvwrapper_lazy.sh)
fi
