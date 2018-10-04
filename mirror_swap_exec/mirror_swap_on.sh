#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"

./fb-rotate -d 0x1cab4f8c -r 0
./mirror -l QHD270 1