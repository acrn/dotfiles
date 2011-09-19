#!/bin/bash

TARGET=$HOME

for f in * ; do
    if [ "$(readlink -f $0)" != "$(readlink -f $f)" ]
    then
        ln -sf "$(readlink -f $f)" "$TARGET/.$f";
    fi
done
