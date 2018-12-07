#!/bin/bash

APP_NAME = $(grep APP_NAME .env | cut -d '=' -f2)

git remote -v
git remote add live ssh://root@173.212.207.88/opt/$APP_NAME.git
