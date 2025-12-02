#!/bin/bash

docker swarm init --advertise-addr 192.168.56.10

WORKER_TOKEN=$(docker swarm join-token worker -q)
echo $WORKER_TOKEN > /vagrant/worker-token.txt

echo "Docker Swarm инициализирован!"
echo "Manager IP: 192.168.56.10"
echo "Worker token сохранен в worker-token.txt"

docker node ls
