# mirror_swap for bitbar
mirror_swap is a bitbar plugin that leverages two command-line utilities to swap between mirroring and two monitors - one with a 90°/270° rotation.Solves issues in MacOS with this kind of thing.

# Why this is useful
Sometimes I share my desktop remotely a la VNC/NX/RDP etc. and having a second monitor is problematic for bandwidth and simply usability reasons. It's difficult to disable a monitor without weird stuff happening in MacOS these days - especially on a hackintosh. Mirroring is a good compromise, as you can then just turn off the other monitor. MacOS can freak out if you simply enable this, especially if one or both of your monitors has a 90/270 degree rotation. Even when it works, it takes a lot of clicks.

# How to use
copy mirror_swap.sh and the mirror_swap_exec folder into your bitbar plugins directory. edit mirror_swap_exec/mirror_swap_off.sh and mirror_swap_exec/mirror_swap_on.sh to reflect the monitor id you're addressing with 'fb-rotate' and 'mirror' - they refer to monitors different ways (see their corresponding repos.)

i.e. my configuration is one monitor always in the same mode (QHD270 in 'mirror' and 0x13c03e82 in 'fb-rotate) and a monitor rotated 270° (1 in 'mirror' and 0x1cab4f8c in 'fb-rotate.)

You can also use this to simply change the rotation of your monitor or to simply enable/disable mirroring.

you may need to 'chmod +x' all bash (.sh) scripts

# Thanks to the two command line utilities and bitbar
This simply leverages https://github.com/fcanas/mirror-displays (thanks to Fabian Cañas) and https://github.com/CdLbB/fb-rotate (thanks to Eric Nitardy) and https://github.com/matryer/bitbar (thanks Mat Ryer)

# Yes I know this is kludgy
But it works for me.

Tested in MacOS Mojave 10.14 on a Radeon RX 560 Hackintosh. *should* work for others as this is pretty basic functionality just automated.
