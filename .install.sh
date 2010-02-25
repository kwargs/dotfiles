#!/bin/sh

for f in `ls`; do
    echo $f;
    ln -s `pwd`/$f $HOME/.$f
done;
