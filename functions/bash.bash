
# packlist(): given a colon separated list, remove pairs of "::" e.g.
# "a:b:c::d:e:f" becomes "a:b:c:d:e:f".

function packlist() {
    if [[ $# -lt 1 ]]; then
        return 1
    fi

    local varname=$1
    local value=${!varname}
    shift

    dirs=${value//:/ }

    result=
    for d in ${dirs}; do
	result=${result:+$result:}${d}
    done
    printf "%s" "${result}"
    return 0
}

function _modlist () {
    if [[ $# -lt 2 ]]; then
        return 1
    fi

    local newvalue=
    local p
    local varname=$1
    local value=${!varname}
    shift

    for p; do
        case ":$value:" in
            *:"$p":*) ;;
            *)
                if [[ -z $newvalue ]]; then
                    newvalue="$p"
                else
                    newvalue="$newvalue:$p"
                fi
                ;;
        esac
    done
    printf "%s" "$newvalue"
    return 0
}

function modlist () {
    local newvalue
    local varname=$1
    local value=${!varname}

    if ! newvalue=$(_modlist "$@"); then echo "usage: modlist: VARIABLE args"; return ;fi
    if [[ -z $value ]]; then
        value="$newvalue"
    else
        value="$newvalue:$value"
    fi

    eval $varname=$value
}

function modlist_end () {
    local newvalue
    local varname=$1
    local value=${!varname}

    if [[ $# -lt 2 ]]; then
        echo "usage: modlist_end: VARIABLE args"; return
    fi

    if ! newvalue=$(_modlist "$@"); then echo "usage: modlist_end: VARIABLE args"; return ;fi
    if [[ -z $value ]]; then
        value="$newvalue"
    else
        value="$value:$newvalue"
    fi

    eval $varname=$value
}

function svn_find {
    find $* | grep -v .svn
}

#
#  Theron Boerner, 12/14/12
#

function ipssh {
    ip=$(cat $HOME/Dropbox/ip.txt);
    user="bboerner"
    port=2332
    ssh $user@$ip -p $port
}

