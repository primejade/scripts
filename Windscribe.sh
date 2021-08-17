#  _  _ ___    
# | || | __|   Hossein Esmailzadeh
# | __ | _|    Email:  hosaidenpwr@protonmail.com
# |_||_|___|   Matrix: hosaidenpwd:matrix.org
#              

#!/bin/sh
set -e

con () {
clear;
  echo 'enabling windscribe service...'
  sleep 1
  sudo systemctl start windscribe

  echo 'please wait'
  sleep 3
  ping -c 20 8.8.8.8

  echo ""
  echo 'connecting..'
  sleep 1
  windscribe connect us
}

dcon () {
clear;
  echo 'disconnecting..'
  sleep 1
  windscribe disconnect
  
  echo ''
  echo 'reconfigure dns settings...'
  sleep 1
  sudo cp /etc/resolv.conf.bak /etc/resolv.conf.back

  echo 'please wait..'
  sleep 3
  ping -c 20 8.8.8.8

  echo ''
  echo 'stoping windscribe service..'
  sleep 1
  sudo systemctl stop windscribe

  echo ''
  echo 'done'
}

help () {
echo 'simple script to manage Windscribe VPN
useage: 

-h    print out this message
-c    run the windscribe service and connect to an us server
-d    disconnect the windscribe VPN and stop the windcribe service
'
}

case $@ in
  -h)
    help
  ;;
  -c)
    con
  ;;
  -d)
    dcon
  ;;
  *)
    echo 'This is a simple shell script
in less that 100 lines of code

Author: H.E'
  ;;
esac
