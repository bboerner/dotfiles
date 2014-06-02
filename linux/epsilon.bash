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

    if false; then
        winetgt=/home/bboerner/.wine/drive_c/Program\ Files/Eps13/bin/epsilon.exe
        if [[ -f $winetgt ]] ; then
            tgt="wine \"$winetgt\""
            echo "tgt: $tgt"
        else
            echo "Didn't find Epsilon at \"$winetgt\"."
        fi
    fi

    if [[ -f $eps_state && -f $eps_session ]] ; then
        #echo "Using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry -p"$eps_session" -s"$eps_state" $*
    else
        #echo "Not using eps_state / eps_session"
        $tgt -server:epx -add $eps_geometry $*
    fi
}

export eps_geometry eps_state eps_session

#
# end Epsilon
#
