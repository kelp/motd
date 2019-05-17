#!/usr/bin/fish
#
# Generate a nice motd
#

set TMP (mktemp)
set MOTD $HOME/.config/motd/motd

neofetch >> $TMP

last -n 3 | grep -v wtmp >> $TMP

mv $TMP $HOME/.config/motd/motd

rm -f $TMP
