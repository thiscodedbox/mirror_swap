#!/bin/bash

# <bitbar.title>Monitor Mirror Settings Swap</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>ThisCodedBox</bitbar.author>
# <bitbar.author.github>ThisCodedBox</bitbar.author.github>
# <bitbar.desc>Swap between mirror mode and a rotated display to effectively disable a screen.</bitbar.desc>
# <bitbar.dependencies>python</bitbar.dependencies>
# <bitbar.abouturl>https://github.com/thiscodedbox/mirror_swap/</bitbar.abouturl>

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
mirror_stat=$($parent_path/mirror_swap_exec/mirror -q)

echo "🖥"
echo "---"

if [[ "${mirror_stat}" == "off" ]]; then
	echo "Swap Setting | bash='$parent_path/mirror_swap_exec/mirror_swap_on.sh' terminal=false refresh=true"
fi
if [[ "${mirror_stat}" == "on" ]]; then
	echo "Swap Setting | bash='$parent_path/mirror_swap_exec/mirror_swap_off.sh' terminal=false refresh=true"
fi

echo "---"

if [[ "${mirror_stat}" == "off" ]]; then
	echo "Mode: Dual Monitors"
fi

if [[ "${mirror_stat}" == "on" ]]; then
	echo "Mode: Mirrored"
fi
