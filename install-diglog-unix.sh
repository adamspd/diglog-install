#!/bin/sh

MACHINETYPE=$(uname -m)

dighome=~/diglog

mkdir $dighome

rm -f $dighome/*
rm -rf $dighome/lib
rm -rf $dighome/bin
rm -rf $dighome/log
rm -rf $dighome/psys

if [ 'x86_64' = "$MACHINETYPE" ]; then
    wget https://ar1.se/GuO0RElRWT -O $dighome/diglog.patch
else
    cp ./diglog32.patch $dighome/diglog.patch
fi

cd $dighome

wget http://john-lazzaro.github.io/chipmunk/pickup/sources/psys-1.61.tar.gz
wget http://john-lazzaro.github.io/chipmunk/pickup/sources/log-5.66.tar.gz

tar xzf psys-1.61.tar.gz
tar xzf log-5.66.tar.gz
patch -p1 < diglog.patch

mkdir $dighome/bin

cd $dighome/psys/src
make

cd $dighome/log/src
make
