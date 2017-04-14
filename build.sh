#!/bin/bash

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose.yml scale redis-slave=2
docker-compose -f docker-compose.yml scale sentinel=3
