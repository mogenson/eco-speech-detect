#!/bin/bash

ctrl_c()
{
    echo "" # new line
    echo "killing web server"
    kill $WEB_SERVER_PID
    exit 0
}

trap ctrl_c SIGINT

python -m SimpleHTTPServer &

WEB_SERVER_PID=$!

sleep 1

google-chrome http://0.0.0.0:8000

while true
do
    sleep 1
done
