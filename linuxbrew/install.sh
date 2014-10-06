#!/usr/bin/env bash
#
# Linuxbrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Linuxbrew.

# Check for Linuxbrew
if test ! $(which brew) ; then
    if [ "$(uname -s)" == "Linux" ] ; then
        sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
        git clone https://github.com/bboerner/linuxbrew.git ~/.linuxbrew

    fi
fi

# Install homebrew packages
~/.linuxbrew/bin/brew install grc coreutils spark


exit 0

# ==> Caveats
# New shell sessions will start using GRC after you add this to your profile:
#   source "`brew --prefix`/etc/grc.bashrc"

# ==> Caveats
# All commands have been installed with the prefix 'g'.
#
# If you really need to use these commands with their normal names, you
# can add a "gnubin" directory to your PATH from your bashrc like:
#
#     PATH="$HOME/.linuxbrew/opt/coreutils/libexec/gnubin:$PATH"
#
# Additionally, you can access their man pages with normal names if you add
# the "gnuman" directory to your MANPATH from your bashrc as well:
#
#     MANPATH="$HOME/.linuxbrew/opt/coreutils/libexec/gnuman:$MANPATH"

