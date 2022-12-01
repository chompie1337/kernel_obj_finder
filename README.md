# kernel_obj_finder
Simple script to find objects of a certain size in the Linux kernel

# Requirements

Needs pahole v1.22 and above. 

# Usage

```./obj_finder.sh /path/to/vmlimux size_in_bytes(decimal)```


Outputs `obj_list.txt` which lists all the structures matching the size, and `obj_defs.txt` which contains their full definitions.

Plan to improve this in the future and and add a search for function pointers, etc.
