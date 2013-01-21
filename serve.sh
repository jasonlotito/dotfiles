#!/bin/sh

verbose=0
start=0
stop=0
app="start"
pid=0
port=8000

function startServer {
	if [ $verbose = 1 ]
		then
		echo "Setting up server at http://$HOSTNAME:$port/ for current directory"
		python -m SimpleHTTPServer &
	else
		python -m SimpleHTTPServer &>/dev/null &	
	fi
	echo $! > "/tmp/simple.server.$USER.$port"
	
	open http://$HOSTNAME:$port/ 	
}

function stopServer {
	kill -HUP $(cat "/tmp/simple.server.$USER.$port")
}

function showHelp {
	echo "
Server
version 0.1
Author: Jason Lotito <jasonlotito@gmail.com>

Commands
	start 		Start server in current directory
	stop 		Stop server

Options
	-v	 	Verbose output
"
}

for arg in "$@"
do
	case "$arg" in
		start)
			app="start"
		;;
		stop) 
			app="stop"
		;;
		help)
			app="help"
		;;
		-v)
			verbose=1
	esac
done

case "$app" in
	start)
		startServer
		;;
	stop)
		stopServer
		;;
	help)
		showHelp
esac