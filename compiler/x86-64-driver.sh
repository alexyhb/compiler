#!/bin/bash

file_path=${@:$#:1}

if [[ $? == 0 || $log_path == $0 ]]
    echo $log_path | grep -q  "^-\w*$"
then

    exit 1
fi
cat ${file_path}>