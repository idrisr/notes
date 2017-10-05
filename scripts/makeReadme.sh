#!/usr/bin/env bash

dir="../"
files=$(find ${dir} -iname '*md' -type f | sed 's|.*/||')

for f in ${files}
do 
    filename=$(basename "$")
    extension="${f##*.}"
    filename_noext="${f%.*}"
    echo [${filename_noext}]\.\/\(${filename_noext}.md\)
done
