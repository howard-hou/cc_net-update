#!/bin/bash

mode="normal"

# Check if "debug" is present in the arguments
for arg in "$@"
do
    if [ "$arg" == "--debug" ]; then
        mode="debug"
    fi
done

dump=$1
part=$2
if [ "$mode" == "debug" ]; then
    echo "Debug mode enabled"
    # Your debug commands here
    echo "start to run config/debug_chinese.json with $dump and part_index=$part"
    python -m cc_net --config config/debug_chinese.json --dump $dump --part_index $part
else
    echo "Normal mode enabled"
    # Your normal commands here
    echo "start to run config/mine_chinese.json with $dump and part_index=$part"
    python -m cc_net --config config/mine_chinese.json --dump $dump --part_index $part
fi

