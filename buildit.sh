#!/bin/sh
CFLAGS="-O2 -march=native -msse2" ./configure --enable-scrypt --enable-opencl
make

if [ -a vertminer.exe ]
then
  echo "stripping vertminer.exe"
  strip vertminer.exe
else
  echo "stripping vertminer"
  strip vertminer
fi

