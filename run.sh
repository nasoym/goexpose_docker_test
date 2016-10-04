#!/bin/bash

docker-compose up -d

curl "http://localhost:8080/hello"
curl -X POST -d'bbbb' "http://localhost:8080/body"

docker-compose stop
docker-compose rm -f

