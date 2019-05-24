# http://virtualenvwrapper.readthedocs.org/en/latest/install.html
if $(which virtualenvwrapper.sh 2>&1 > /dev/null) ; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME="$HOME/play/python/virtualenv"
    source $(which virtualenvwrapper_lazy.sh)
fi
