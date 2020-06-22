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
total1=0
total2=0
for circ in $(ls)
do
    if grep -E -q $1 $circ; then
	total1=$(expr $total1 + 1)
    fi
    if grep -E -q $2 $circ; then
	total2=$(expr $total2 + 1)
    fi
done
if [[ $total1 > $total2 ]]; then
    echo $1
else
    echo $2
fi

