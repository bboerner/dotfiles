#
# Epsilon
#

# tbd1234: make this smarter (check for file)
#eps_geometry=${eps_geometry:-"100x50"}
eps_geometry=${eps_geometry:-""}
eps_state=${eps_state:-""}
eps_session=${eps_session:-""}

function epx {
    tgt=epsilon

    parms="$*"
    if $(which strip_mnt.sh 2>&1 > /dev/null) ; then
        parms="$(strip_mnt.sh $*)"
    fi

    if [[ -f $eps_state && -f $eps_session ]] ; then
        #echo "Using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry -p"$eps_session" -s"$eps_state" $parms
    else
        #echo "Not using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry $parms
    fi
}

export eps_geometry eps_state eps_session

#
# end Epsilon
#
