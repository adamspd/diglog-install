#!/bin/sh

dighome=~/diglog

mkdir $dighome
cd $dighome

wget http://john-lazzaro.github.io/chipmunk/pickup/sources/psys-1.61.tar.gz
wget http://john-lazzaro.github.io/chipmunk/pickup/sources/log-5.66.tar.gz
wget http://www.ensiie.fr/~christophe.mouilleron/Teaching/ARMA/diglog.patch

tar xzf psys-1.61.tar.gz
tar xzf log-5.66.tar.gz
patch -p1 < diglog.patch

mkdir $dighome/bin

cd $dighome/psys/src
make

mkdir $dighome/bin

cd $dighome/log/src
make
