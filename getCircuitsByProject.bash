#!/bin/bash
#######################################################
#   Author:     Calvin Walter Heintzelman
#   email:      cheintze@purdue.edu
#   ID:         ee364f17
#   Date:       3/16/2019
#######################################################

DataPath=~ee364/DataFolder/Prelab09

cd $DataPath
cd maps
circuits=$(grep -E $1 projects.dat)
unsorted=$(for circ in $circuits; do if [[ ${circ:2:1} = "-" ]]; then echo $circ | cut -c1-7; fi; done)
sorted=$(echo "$unsorted" | sort -u) #u removes duplicates
echo "$sorted"

