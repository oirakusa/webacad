#!/bin/bash
set -e

docker network create flask
docker run -d -v /redis-data/:/data --network flask --name redis wa-redis
docker run -d -p --network flask --name flask 8080:8080 wa-flask