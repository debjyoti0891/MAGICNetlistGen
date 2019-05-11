#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./genNetlist.sh benchmarkdir/"
    exit
fi


if ! type "abc" > /dev/null; then
    echo "abc not installed" >&2
    exit
fi


for f in `ls $1*.aig`;
do
    echo $f
    
    echo "read_aiger $f" > abc_in
    echo "strash " >> abc_in
    echo "resyn3 " >> abc_in 
    echo "read_library nor_4.genlib" >> abc_in
    echo "map " >> abc_in 
    echo "write_verilog ${f}_map.v" >> abc_in 
    echo "quit" >> abc_in 
    
    #cat abc_in
    abc < abc_in
done


