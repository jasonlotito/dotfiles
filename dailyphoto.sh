#!/bin/sh
IDLE=$((`/usr/sbin/ioreg -c IOHIDSystem | sed -e '/HIDIdleTime/!{ d' -e 't' -e '}' -e 's/.* = //g' -e 'q'` / 1000000000 ))
export SUDO_ASKPASS=/Users/jasonlotito/bin/get_pass.sh
if [ $IDLE -lt 61 ]; then
    PID=`ps auxww  |grep loginwindow | grep -v grep | awk '{print $2}'`
    D=`date +%Y%m%d_%H%M%S`
    sudo -A /bin/launchctl bsexec $PID /Users/jasonlotito/bin/isightcapture -t png /Users/jasonlotito/bin/data/daily_photo/$D.png
fi
