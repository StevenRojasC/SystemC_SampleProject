#!/usr/bin/env bash

set -e

[ ! -d build ] && mkdir build
(
    cd build
    cmake ..
    cmake --build .
)