#!/bin/bash
pip install -r requirements.txt
mkdir -p loot
gunicorn --bind 0.0.0.0:5000 --workers 4 c2_server.py &
nginx -g 'daemon off;'
