#!/bin/sh

docker compose -f "./GitHub/docker/docker-compose.mysql_8_4_3.yml" up -d --build
docker ps
