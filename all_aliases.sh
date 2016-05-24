#!/bin/bash

aliases=$(find . -type f -name aliases 2>&1)

for file in $aliases ; do
    cat $file >> all_aliases
done

