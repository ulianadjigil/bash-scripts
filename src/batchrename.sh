#!/bin/bash

for file in $1/*.$2
do
   newfile="${file/.$2/.$3}"
   mv "$file" "$newfile"
   echo "rename $file to $newfile"
done

