#!/bin/sh
# computer activity data collection for http://jehiah.cz/one-two/
# by Jehiah Czebotar
 
FILE="/Users/jasonlotito/bin/activity_log/`date +%Y%m%d`.log"
 
function log_activity()
{
    local UTC=`date "+%s,%Z"`
    local IDLE=$((`/usr/sbin/ioreg -c IOHIDSystem | sed -e '/HIDIdleTime/!{ d' -e 't' -e '}' -e 's/.* = //g' -e 'q'` / 1000000000 ))
    local ACTIVE_PROGRAM=$(/usr/bin/osascript -e 'tell application "System Events"' -e 'set frontApp to name of first application process whose frontmost is true' -e 'end tell')
 
    echo "$UTC,$IDLE,$ACTIVE_PROGRAM" >> $FILE
}
 
log_activity
sleep 30
log_activity
