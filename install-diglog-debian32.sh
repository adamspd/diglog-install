#!/bin/sh

dighome=~/diglog

sudo apt-get update && sudo apt-get install libx11-dev:i386

mkdir $dighome
cp ./diglog32.patch $dighome
cd $dighome

wget http://john-lazzaro.github.io/chipmunk/pickup/sources/psys-1.61.tar.gz
wget http://john-lazzaro.github.io/chipmunk/pickup/sources/log-5.66.tar.gz

tar xzf psys-1.61.tar.gz
tar xzf log-5.66.tar.gz
patch -p1 < diglog32.patch

mkdir $dighome/bin

cd $dighome/psys/src
make

cd $dighome/log/src
make
