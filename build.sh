#!/usr/bin/env bash

set -e

[ ! -d build ] && mkdir build
(
    cd build
    cmake ..
    cmake --build .
    while getopts "t" flags; do
        case $flags in
            t)
                printf "\n\nRunning tests...\n\n"
                ../build/test/test
                ;;
        esac
    done
)