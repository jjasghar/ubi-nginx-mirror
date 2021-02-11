#!/bin/bash

BASENAME_FILE=$(basename $URL_FILE)
NGINX_HOME=/usr/share/nginx/html

sed -i s/MIRROREDFILE/$BASENAME_FILE/g /index.html
mv /index.html $NGINX_HOME/index.html 

wget $URL_FILE -O $NGINX_HOME/$BASENAME_FILE

nginx

tail -f /var/log/nginx/access.log
