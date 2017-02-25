#!/bin/sh

dighome=~/diglog

mkdir $dighome
cd $dighome

wget http://john-lazzaro.github.io/chipmunk/pickup/sources/psys-1.61.tar.gz
wget http://john-lazzaro.github.io/chipmunk/pickup/sources/log-5.66.tar.gz
wget https://ar1.se/GuO0RElRWT -o diglog.patch

tar xzf psys-1.61.tar.gz
tar xzf log-5.66.tar.gz
patch -p1 < diglog.patch

mkdir $dighome/bin

cd $dighome/psys/src
make

cd $dighome/log/src
make
