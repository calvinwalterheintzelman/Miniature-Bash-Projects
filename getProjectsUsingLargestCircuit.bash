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
circ=$(echo $(ls -S) | cut -f1 -d' ' | cut -c9-15)
cd ..
cd maps
grep -E $circ projects.dat | cut -c22-57 | sort -u
