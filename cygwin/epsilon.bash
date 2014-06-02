#
# Epsilon
#

if [[ $cygwin -ne 0 ]]; then
    eps_geometry=${eps_geometry:-""}
    eps_state=$(cygpath -m "c:\Users\bboerner\AppData\Roaming\Lugaru\Epsilon\epsilon-v13.sta")
    eps_session=$(cygpath -m "c:\Users\bboerner\AppData\Roaming\Lugaru\Epsilon\epsilon.ses")

    function cyg_explorer {
        if [ "${1}" = "" ];
            then
                XPATH=".";
            else
                XPATH="$(cygpath -C ANSI -w "${1}")";
        fi
        explorer $XPATH &

    }

    function home() {
        if [[ $# -ne 1 ]]; then
            echo "usage: home <drive_letter>";
            return
        fi

        pushd .
        cd /$1/Users/$USER;
    }

    [[ -f /usr/bin/git ]] && alias git-svn="git svn"

    function u2d {
        if [[ -z $1 ]]; then
            echo "Usage: u2d <path>" ;
            return
        fi 

        echo \"$(cygpath -w -a $1)\"
    }

    function d2u {
        if [[ -z $1 ]]; then
            echo "Usage: d2u <path>" ;
            return
        fi 

        echo \"$(cygpath -u -a $1)\"
    }
fi

export eps_geometry eps_state eps_session
