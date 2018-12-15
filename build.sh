#!/bin/bash

APP_NAME=identiform

# also needs server setup
ssh root@123.123.123.123 "npm i -g pm2"
ssh root@123.123.123.123 "cd /opt && git init --bare $APP_NAME.git && git clone $APP_NAME.git $APP_NAME"
cp ./.scripts/post-receive "root@123.123.123.123:/opt/$APP_NAME.git/hooks"
ssh root@123.123.123.123 "chmod ug+x /opt/$APP_NAME.git/hooks/post-receive"
cp -r ./ "root@123.123.123.123:/opt/$APP_NAME"

pm2 start ./index.js --name "$APP_NAME" --watch -i max

git remote add production "ssh://root@123.123.123.123/opt/$APP_NAME.git"
git remote -v
