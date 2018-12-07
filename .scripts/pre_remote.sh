#!/bin/bash

APP_NAME = $(grep APP_NAME .env | cut -d '=' -f2)

git init --bare /opt/$APP_NAME.git
git clone /opt/$APP_NAME.git /opt/live/$APP_NAME
cp post-receive /opt/$APP_NAME.git/hooks
chmod ug+x /opt/$APP_NAME.git/hooks/post-receive
