#!/bin/bash
#######################################################
#   Author:     Calvin Walter Heintzelman
#   email:      cheintze@purdue.edu
#   ID:         ee364f17
#   Date:       3/20/2019
#######################################################

DataPath=~ee364/DataFolder/Lab09

cd $DataPath
cd maps
ID=$(grep -E "$1" students.dat | cut -c45-55)
cd ..
cd circuits
unsorted=$(for circ in $(ls)
  do
      if grep -E -q $ID $circ; then
	  grep -E "[A-Z]{3}-[0-9]{3}" $circ | cut -c3-9
      fi
	   done)
echo "$unsorted" | sort -u
