# Git + Hub = GitHub
# https://github.com/bboerner/hub

hub 2>&1 > /dev/null
if [[ $? -eq 0 ]] ; then
    #echo "We have hub"
    eval "$(hub alias -s)"
fi
