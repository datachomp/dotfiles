#!/bin/bash
echo "starting postgres"
sudo /etc/init.d/postgresql start

echo "starting redis"
sudo /etc/init.d/redis-server start
