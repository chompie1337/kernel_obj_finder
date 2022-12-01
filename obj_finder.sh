#! /bin/bash

pahole --sizes $1 | grep "$(printf '\t')$2$(printf '\t')" | cut -f 1 > obj_list.txt

while read line; do
  echo "pahole -C $line $1" | awk '{system($1" "$2" "$3 " "$4)}' >> obj_defs.txt
done < obj_list.txt