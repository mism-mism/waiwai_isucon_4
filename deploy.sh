#!/bin/sh

# sudo を付けて実行してね！

su - isucon
git pull origin master
exit

cd webapp/go
./build.sh

/etc/init.d/mysqld restart
/etc/init.d/nginx restart
/etc/init.d/supervisord restart

rm /var/log/mysqld.log
rm /var/log/nginx/*
rm /tmp/isucon.go.log
