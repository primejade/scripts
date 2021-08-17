#!/bin/sh
exe=`dmenu_path | dmenu -p 'run'  -hp 'chromium' -nf '#d8d8d8' -nb '#005599' -sf '#d8d8d8' -sb '#151617' -fn 'UbuntuMono Regular-14'` && eval "exec $exe"
#exe=`dmenu_path | dmenu -p 'run'  -hp 'chromium' -nf '#151617' -nb '#d8d8d8' -sf '#d8d8d8' -sb '#151617' -fn 'UbuntuMono Regular-14'` && eval "exec $exe"
