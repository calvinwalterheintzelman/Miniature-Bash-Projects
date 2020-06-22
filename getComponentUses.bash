#!/bin/bash
#######################################################
#   Author:     Calvin Walter Heintzelman
#   email:      cheintze@purdue.edu
#   ID:         ee364f17
#   Date:       3/16/2019
#######################################################

DataPath=~ee364/DataFolder/Prelab09

cd $DataPath
cd circuits
total=0
for circ in $(ls)
do
    if grep -E -q $1 $circ; then
	total=$(expr $total + 1)
    fi
done
echo $total
