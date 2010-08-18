#!/bin/sh

for f in `ls|fgrep -v install | fgrep -v update | fgrep -v README`; do
    to_file=$HOME/.$f;
    if [ -e "$to_file" ]; then
        rm -rf $to_file;
    fi;
    ln -sf `pwd`/$f $to_file;
done;
