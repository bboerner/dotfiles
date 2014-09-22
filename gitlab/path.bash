GITLAB_ROOT="/opt/gitlab"
if [[ -d $GITLAB_ROOT/bin ]]; then
    export PATH="$GITLAB_ROOT/bin:$PATH"
    [[ -d $GITLAB_ROOT/man ]] && export MANPATH="$GITLAB_ROOT/man:$MANPATH"
fi
