#!/bin/bash

GREPOPS=""

for ((i=$2;i<=$3-1;i++))
do
  GREPOPS+="$(printf '\x09')$i$(printf '\x09')\|"
done
GREPOPS+="$(printf '\x09')$3$(printf '\x09')"


pahole --sizes $1 | grep -e "$GREPOPS" | cut -f 1 > obj_list.txt

while read line; do
  echo "pahole -C $line $1" | awk '{system($1" "$2" "$3 " "$4)}' >> obj_defs.txt
done < obj_list.txt