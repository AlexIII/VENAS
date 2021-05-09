#!/bin/bash
PY=../pypy3.7-v7.3.4-linux64/bin/pypy
# WORKLOAD_DIR=example_data
WORKLOAD_DIR=big_data

# Part 1
echo
echo "Part 1"
echo
$PY -u parsimony-informative.py -i $WORKLOAD_DIR -m align_res.fasta -b none -r 0 -f "NC_045512.2"

# Part 2
echo
echo "Part 2"
echo
time $PY -u haplotype_network.py $WORKLOAD_DIR

# Filter net_all.txt
awk -F'\t' '{print $1","$2}' $WORKLOAD_DIR/net_all.txt > net.csv
sed -i '1i\Source,Target' net.csv

# Part 3
echo
echo "Part 3"
echo
time $PY main_path_example.py
