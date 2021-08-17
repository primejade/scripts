#  _  _ ___    
# | || | __|   Hossein Esmailzadeh
# | __ | _|    Email:  hosaidenpwr@protonmail.com
# |_||_|___|   Matrix: hosaidenpwd:matrix.org
#              

#!/bin/sh
set -e

find /usr/share/man/man1 -type f | shuf -n 1 | awk -F '/' '/1/ {print $6}' | sed 's/.gz//g' | xargs xterm -T xterm -e man
