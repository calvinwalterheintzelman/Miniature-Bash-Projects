#!/bin/bash
#######################################################
#   Author:     Calvin Walter Heintzelman
#   email:      cheintze@purdue.edu
#   ID:         ee364f17
#   Date:       3/20/2019
#######################################################

DataPath=~ee364/DataFolder/Lab09

cd $DataPath
cd circuits
unsorted=$(for circ in $(ls)
do
    if [[ $(wc -c $circ | cut -f1 --delimiter=" ") > 200 ]]
    then
	echo $circ | cut -c9-15
    fi
	   done)
echo "$unsorted" | sort -u

