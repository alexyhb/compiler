#!/bin/bash

if [ $# -le 0 ]; then
	echo "ERROR: .calc-file input needed."
	exit
fi

if [ "'echo "$1" | cut -d"." -f2'" != "calc" ]; then
	echo "ERROR: .calc-file input needed."
	exit
fi

fileName='echo $1|cut -d'.' -f'

assemblyFile=$fileName.s

cat prologue.s > $assemblyFile
./calc3i < $1 >> $assemblyFile
cat epilogue.s >> $assemblyFile

gcc $assemblyFile lib.s -o$fileName