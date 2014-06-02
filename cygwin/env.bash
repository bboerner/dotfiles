if [[ $cygwin -eq 1 ]]; then
    eps_geometry=${eps_geometry:-""}
    eps_state=$(cygpath -m "c:\Users\bboerner\AppData\Roaming\Lugaru\Epsilon\epsilon-v13.sta")
    eps_session=$(cygpath -m "c:\Users\bboerner\AppData\Roaming\Lugaru\Epsilon\epsilon.ses")
fi

export eps_geometry eps_state eps_session
