#!/bin/bash
echo "stopping postgres"
sudo /etc/init.d/postgresql stop

echo "stopping redis"
sudo /etc/init.d/redis-server stop
