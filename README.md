# Log (analog/diglog) shell installation scripts
This repository contains shell scripts to install Log, from the [Chipmunk distribution](http://john-lazzaro.github.io/chipmunk/).

_Log is a graphical environment for entering circuit schematics, and for analog and digital circuit simulation._

After compilation, diglog is installed in the `~/diglog/bin` folder. The main executable for digital circuit simulation is `~/diglog/bin/diglog`.

You can safely delete the tar archives, the `psys` and `log` folders and the patch file in the `~/diglog` folder. You must keep the generated `bin` and `lib` folders.

## Debian (64-bit)
```
./diglog-install-debian64.sh
```

## Debian (32-bit) 
(may work on 64-bit systems too)

```
./diglog-install-debian32.sh
```

## General UNIX (64-bit)
Make sure you have the libX11 development librairies installed.

```
./diglog-install-unix64.sh
```

## Debian (32-bit) 
(may work on 64-bit systems too)

Make sure you have the libX11 development librairies installed.

```
./diglog-install-unix32.sh
```
