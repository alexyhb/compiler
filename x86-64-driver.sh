#!/bin/bash


if [ $# -le 0 ]; then
	echo "ERROR: .calc-file input needed."
	exit
fi
var=${@:${#@}}
flag=`echo $var|cut -f2 -d "."`
if [ $flag != "calc" ]; then
	echo "ERROR: .calc-file input needed."
	exit
fi

fileName=`echo $var|cut -f1 -d "."`
echo $fileName
assemblyFile=$fileName.s

cat prologue.s > $assemblyFile
./bin/calc3i < $1 >> $assemblyFile
cat epilogue.s >> $assemblyFile

gcc   -fPIC $assemblyFile ./lib/lib.s -o $fileName