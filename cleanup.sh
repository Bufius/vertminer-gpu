#!/bin/sh
if [ -a vertminer.o ]
then
  make clean
fi

mv configure.ac _configure.ac
rm config*
mv _configure.ac configure.ac

for i in `find .|grep autom4te.cache`; do rm -Rf $i; done
for i in `find .|grep Makefile$`; do rm -Rf $i; done
for i in `find .|grep Makefile.in`; do rm -Rf $i; done

