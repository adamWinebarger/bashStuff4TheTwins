#! /bin/bash

for f in $@
do
sort $f | uniq >> output.txt
done