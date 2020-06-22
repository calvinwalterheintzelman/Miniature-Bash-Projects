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
cd ..
cd circuits
sorted=$(for circ in $sorted; do echo "circuit_$circ.dat"; done)
students=$(for circ in $sorted; do grep -E "[0-9]{5}" $circ; done)
cd ..
cd maps
students=$(for stud in $students; do grep -E $stud students.dat | cut -f1-2 -d' '; done)
echo "$students" | sort -u


#circ_list=$(for circ in $(ls); do echo $circ | cut -c9-15; done)
#for circ in $circ_list
#do
#    for thing in $sorted
#    do
#	
#    done
#done
