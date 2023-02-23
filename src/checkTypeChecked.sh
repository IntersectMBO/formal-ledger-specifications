#!/bin/sh

checkTypeChecked()
{
res=0

for file in $(find . -name '*.agda')
do
    if ! [ -f "${file%.agda}.agdai" ]; then
        echo "${file%.agda}.agdai doesn't exist"
        res=1
    fi
done

for file in $(find . -name '*.lagda')
do
    if ! [ -f "${file%.lagda}.agdai" ]; then
        echo "${file%.lagda}.agdai doesn't exist"
        res=1
    fi
done

return $res
}

checkTypeChecked
