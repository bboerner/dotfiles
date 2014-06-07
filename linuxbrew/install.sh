#!/bin/sh
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
brew install grc coreutils spark

exit 0
