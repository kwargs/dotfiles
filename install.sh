#!/bin/sh

for f in `cat COMMON_CONFIGS`; do
    to_file=$HOME/.$f;
    test -e $to_file && rm -rf $to_file;
    ln -sf `pwd`/$f $to_file;
done;
