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
ID=$(grep -E "$1" students.dat | cut -c45-55)
cd ..
cd circuits
unsorted=$(for circ in $(ls)
do
    if grep -Fxq $ID $circ #checks if ID is in any circ file
    then
	echo $circ | cut -c9-15
    fi
	   done)
sorted=$(echo "$unsorted" | sort -u)
cd ..
cd maps
projects=$(for circ in $sorted
do
    grep -E $circ projects.dat | cut -c22-57
	   done)
echo "$projects" | sort -u

