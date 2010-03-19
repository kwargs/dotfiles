#!/bin/sh

for f in `ls|grep -v install| grep -v README`; do
    to_file=$HOME/.$f;
    if [ -f "$to_file" ]; then
        #echo "file $to_file exsits, save to $to_file.prev";
        rm -rf $to_file;
        # mv $to_file $to_file.prev;
    fi;
    ln -sf `pwd`/$f $to_file;
done;
