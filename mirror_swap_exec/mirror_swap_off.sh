#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"

./mirror -off
./fb-rotate -d 0x1cab4f8c -r 270