#!/bin/bash
source config.sh

# Update game
$steam_dir +login anonymous +force_install_dir $gmod_dir +app_update 4020 +quit

# Get latest cfgs
git pull

# Move cfgs
for i in "${cfgs_map[@]}"
do
    map=(${i//;/ })
    cp cfgs/${map[0]} $gmod_dir/${map[1]}
done
