#!/bin/bash

while [ ! -f /vagrant/worker-token.txt ]; do
  echo "Ожидаем токен от manager..."
  sleep 5
done

WORKER_TOKEN=$(cat /vagrant/worker-token.txt)

docker swarm join --token $WORKER_TOKEN 192.168.56.10:2377
echo "Worker узел подключен к Swarm!"
