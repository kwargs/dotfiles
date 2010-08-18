#!/bin/bash

DF_TAR='dotfiles.tar.gz'
DF_TAR_LOG='/tmp/.df.log'
DF_DIR='dotfiles'

if [ -x /usr/bin/git ]; then
    git pull;
else 
    cd ..;
    wget -O $DF_TAR 'http://github.com/kwargs/dotfiles/tarball/master';
    tar -xvf $DF_TAR > $DF_TAR_LOG;
    test -d $DF_DIR && rm -rf $DF_DIR;
    mv $(head -n1 $DF_TAR_LOG|xargs) $DF_DIR && rm -f $DF_TAR_LOG;
    cd $DF_DIR;
fi;
