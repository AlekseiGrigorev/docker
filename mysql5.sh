#!/bin/sh

docker compose -f "./docker-compose.mysql_5_7_40.yml" up -d --build
docker ps
