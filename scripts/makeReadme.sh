#!/usr/bin/env bash

# todo - maybe try this in swift
# move all the mds to its own dir
# make this a git hook

dir="../"
files=$(find ${dir} -iname '*md' -type f | sed 's|.*/||')

for f in ${files}
do 
    filename=$(basename "$")
    extension="${f##*.}"
    filename_noext="${f%.*}"
    echo \* [${filename_noext}]\(\.\/${filename_noext}.md\)
done
