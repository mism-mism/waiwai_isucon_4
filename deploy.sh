#!/bin/sh

git pull origin master

cd webapp/go
./build.sh

sudo /etc/init.d/mysqld restart
sudo /etc/init.d/nginx restart
sudo /etc/init.d/supervisord restart

sudo rm /var/log/mysqld.log
sudo rm /var/log/nginx/*
sudo rm /tmp/isucon.go.log
