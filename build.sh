#!/bin/bash

build_type=$1

if [ "$build_type" == "c++" ]; then
    cmake
    make
    mv TubeFetchr dist/
elif [ "$build_type" == "python" ]; then
    pyinstaller cli.spec
elif [ "$build_type" == "both" ]; then
    cmake
    make
    mv TubeFetchr dist/

    pyinstaller cli.spec
fi
