#!/bin/sh

for f in `ls|grep -v install| grep -v README`; do
    to_file=$HOME/.$f;
    if [ -e "$to_file" ]; then
        rm -rf $to_file;
    fi;
    ln -sf `pwd`/$f $to_file;
done;
