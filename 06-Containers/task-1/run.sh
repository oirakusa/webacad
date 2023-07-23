#!/bin/bash
set -e

docker run -d -v /redis-data/:/data --name redis wa-redis
docker run -d -p --name flask 8080:8080 wa-flask