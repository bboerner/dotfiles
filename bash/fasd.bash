if $(fasd &>/dev/null)
then
    fasd_cache="$HOME/.fasd-init-bash"
    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
    fi
    source "$fasd_cache"
    unset fasd_cache

    alias a='fasd -a' # any
    alias s='fasd -si' # show / search / select
    alias d='fasd -d' # directory
    alias f='fasd -f' # file
    alias z='fasd_cd -d' # cd, same functionality as j in autojump
    alias t='fasd_cd -d -i' # interactive directory jump
fi

