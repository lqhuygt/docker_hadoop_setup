#! /bin/zsh

docker-compose down
docker volume rm $(docker volume ls --filter name=docker_hadoop -q)
docker-compose up -d
# docker exec -it namenode /bin/bash
# hdfs dfsadmin -safemode leave
