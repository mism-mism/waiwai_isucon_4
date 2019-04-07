#!/bin/sh

cd webapp/go
./build.sh

sudo rm /var/log/mysqld.log
sudo rm /var/log/mysql-slow.log
sudo find /var/log/nginx -type f | sudo xargs rm
sudo find /var/log/redis -type f | sudo xargs rm
sudo rm /tmp/isucon.go.log

sudo /etc/init.d/mysqld restart
sudo /etc/init.d/redis restart
sudo /etc/init.d/nginx restart
sudo /etc/init.d/supervisord restart
