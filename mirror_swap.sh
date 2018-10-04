#!/bin/bash

# <bitbar.title>Monitor Mirror Settings Swap</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>ThisCodedBox</bitbar.author>
# <bitbar.author.github>ThisCodedBox</bitbar.author.github>
# <bitbar.desc>Swap between mirror mode and a rotated display to effectively disable a screen.</bitbar.desc>

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
mirror_stat=$($parent_path/mirror_swap_exec/mirror -q)

echo "🖥"
echo "---"
# echo "Mirror (Disable) | bash='/Users/walrusx4/Documents/Source/fb-rotate/fb-rotate -d 0x1cab4f8c -r 0 && /Users/walrusx4/mirror-screen/mirror -l QHD270 1' param1= terminal=false"

# echo "Disable (Restore) | bash='/Users/walrusx4/mirror-screen/mirror && /Users/walrusx4/Documents/Source/fb-rotate/fb-rotate -d 0x1cab4f8c -r 270' param1= terminal=false"

# echo "Mirror (Disable) | bash='/Users/walrusx4/Documents/Source/fb-rotate/fb-rotate -d 0x1cab4f8c -r 0 && /Users/walrusx4/mirror-screen/mirror -l QHD270 1'"

# echo "Disable (Restore) | bash='/Users/walrusx4/mirror-screen/mirror && /Users/walrusx4/Documents/Source/fb-rotate/fb-rotate -d 0x1cab4f8c -r 270'"

# echo "Mirror (Disable) | bash='$parent_path/mirror_swap/mirror_swap_on.sh' terminal=false"

# echo "Disable (Restore) | bash='$parent_path/mirror_swap/mirror_swap_off.sh' terminal=false"

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
