#!/bin/bash

TARGET=$HOME

for f in *rc ; do
    ln -sf "$(readlink -f $f)" "$TARGET/.$f";
done
