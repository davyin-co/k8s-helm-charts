#!/bin/bash
for dir in `ls -d */`
do
    echo $dir
    helm cm-push $dir --force $1
done
