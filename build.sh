#!/bin/bash

if [ "$1" = "rebuild" ] | [ ! -d build/ ]; then
    rm -rf build/
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
fi

cmake --build build
./build/bin/InitialSFMLProject
