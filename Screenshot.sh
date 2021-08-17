#  _  _ ___    
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              

#!/bin/sh
set -e

ScrDir="${HOME}/Pictures/Screenshot/nnw"

if [ ! -d "${ScrDir}" ]; then
  mkdir ${ScrDir}
fi

cd ${ScrDir}

help () {
echo "Usage: Screenshot.sh [-ws]
"

}

scrot 'Screenshot_%Y-%m-%d-%I-%M-%S_$wx$h.png' -e feh $f

#scrot -u 'Screenshot_%Y-%m-%d-%I-%M-%S_$wx$h.png' -e feh $f
