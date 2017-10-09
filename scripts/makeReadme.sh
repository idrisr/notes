#!/usr/bin/env bash

# todo - maybe try this in swift
# move all the mds to its own dir
# make this a git hook

curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
dir=${curdir}/../
readme=${dir}/README.md
files=$(find "${dir}" -iname '*md' -type f | sed 's|.*/||')

rm "${readme}"
for f in ${files}
do 
    filename_noext="${f%.*}"
    echo \* ["${filename_noext}"]\(\./"${filename_noext}".md\) >> "${readme}"
done
