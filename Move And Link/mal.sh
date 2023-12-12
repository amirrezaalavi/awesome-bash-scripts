#!/bin/bash
# See More github.com/sepsoh/awesome-bash-scripts

if [ $# -ne 2 ]; then
		echo "Usage: mal <file_or_directory> <destination_directory>"
		return 1
fi

if [ ! -e "$1" ]; then
		echo "Error: $1 does not exist"
		return 1
fi

if [ ! -d "$2" ]; then
		echo "Error: $2 is not a directory"
		return 1
fi

local source_path=$(readlink -f "$1")
local destination_path=$(readlink -f "$2")

local source_basename=$(basename "$source_path")
local destination_file_path="$destination_path/$source_basename"

if [ -e "$destination_file_path" ]; then
		echo "Error: $destination_file_path already exists"
		return 1
fi

