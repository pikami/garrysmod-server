#!/bin/bash
source config.sh

$gmod_dir/srcds_run \
    +maxplayers 10 \
    -console \
    +host_workshop_collection 1652868344 \
    +gamemode prop_hunt \
    +map ph_office
