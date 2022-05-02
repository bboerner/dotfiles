#
# Epsilon
#

# tbd1234: make this smarter (check for file)
#eps_geometry=${eps_geometry:-"100x50"}
eps_geometry=${eps_geometry:-""}
eps_state=${eps_state:-""}
eps_session=${eps_session:-""}

function apply_strip_mnt {
    args="$*"

    [[ -z $args ]] && args="."

    parms=""
    while [[ $# > 0 ]] ; do
        parms="$parms $(strip_mnt.sh "$1")"
        shift
    done

    echo $parms
}

function epx {
    tgt=epsilon

    parms="$*"
    if $(which strip_mnt.sh 2>&1 > /dev/null) ; then
        parms=$(apply_strip_mnt $*)
    fi

    if [[ -f $eps_state && -f $eps_session ]] ; then
        #echo "Using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry -p"$eps_session" -s"$eps_state" "$parms"
    else
        #echo "Not using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry "$parms"
    fi
}

export eps_geometry eps_state eps_session

#
# end Epsilon
#
