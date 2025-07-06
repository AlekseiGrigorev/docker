#!/bin/sh

docker compose -f "./docker-compose.clickhouse_23_12.yml" up -d --build
docker ps
