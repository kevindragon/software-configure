#!/bin/bash
# This script run at 00:00

# The Nginx logs path
logs_path="/usr/local/nginx/logs/"
filename="lexiscnweb.access.log"
en_filename="error.log"

mv ${logs_path}${filename} ${logs_path}${filename}.$(date -d "yesterday" +"%Y")-$(date -d "yesterday" +"%m")-$(date -d "yesterday" +"%d")
mv ${logs_path}${en_filename} ${logs_path}${en_filename}.$(date -d "yesterday" +"%Y")-$(date -d "yesterday" +"%m")-$(date -d "yesterday" +"%d")
kill -USR1 `cat /usr/local/nginx/logs/nginx.pid`