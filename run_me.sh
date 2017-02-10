#!/bin/bash

python -m SimpleHTTPServer &

sleep 1

google-chrome http://0.0.0.0:8000
