#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Time"
head -n 1 *slurm*.out
echo "End Times"
tail -n 5 *slurm*.out


