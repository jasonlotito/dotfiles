#!/bin/sh
echo "Setting up server at http://$HOSTNAME:8000/ for current directory"
open http://$HOSTNAME:8000/ &&  python -m SimpleHTTPServer
