#!/bin/bash
source config.sh

# Get latest cfgs
git pull

# Move cfgs
for i in "${cfgs_map[@]}"
do
    map=(${i//;/ })
    cp cfgs/${map[0]} $gmod_dir/${map[1]}
done
