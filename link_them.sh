#!/bin/bash

TARGET=$HOME

for f in $(echo * | sed 's/ .*\.sh//g'); do
    ln -sf "$(readlink -f $f)" "$TARGET/.$f";
done
